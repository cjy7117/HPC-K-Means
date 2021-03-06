/**
 * @file ballbound_impl.hpp
 *
 * Bounds that are useful for binary space partitioning trees.
 * Implementation of BallBound ball bound metric policy class.
 *
 * @experimental
 *
 * This file is part of mlpack 2.0.1.
 *
 * mlpack is free software; you may redstribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef __MLPACK_CORE_TREE_BALLBOUND_IMPL_HPP
#define __MLPACK_CORE_TREE_BALLBOUND_IMPL_HPP

// In case it hasn't been included already.
#include "ballbound.hpp"

#include <string>

namespace mlpack {
namespace bound {

//! Empty Constructor.
template<typename VecType, typename TMetricType>
BallBound<VecType, TMetricType>::BallBound() :
    radius(-DBL_MAX),
    metric(new TMetricType()),
    ownsMetric(true)
{ /* Nothing to do. */ }

/**
 * Create the ball bound with the specified dimensionality.
 *
 * @param dimension Dimensionality of ball bound.
 */
template<typename VecType, typename TMetricType>
BallBound<VecType, TMetricType>::BallBound(const size_t dimension) :
    radius(-DBL_MAX),
    center(dimension),
    metric(new TMetricType()),
    ownsMetric(true)
{ /* Nothing to do. */ }

/**
 * Create the ball bound with the specified radius and center.
 *
 * @param radius Radius of ball bound.
 * @param center Center of ball bound.
 */
template<typename VecType, typename TMetricType>
BallBound<VecType, TMetricType>::BallBound(const double radius,
    const VecType& center) :
    radius(radius),
    center(center),
    metric(new TMetricType()),
    ownsMetric(true)
{ /* Nothing to do. */ }

//! Copy Constructor. To prevent memory leaks.
template<typename VecType, typename TMetricType>
BallBound<VecType, TMetricType>::BallBound(const BallBound& other) :
    radius(other.radius),
    center(other.center),
    metric(other.metric),
    ownsMetric(false)
{ /* Nothing to do. */ }

//! For the same reason as the copy constructor: to prevent memory leaks.
template<typename VecType, typename TMetricType>
BallBound<VecType, TMetricType>& BallBound<VecType, TMetricType>::operator=(
    const BallBound& other)
{
  radius = other.radius;
  center = other.center;
  metric = other.metric;
  ownsMetric = false;
}

//! Move constructor.
template<typename VecType, typename TMetricType>
BallBound<VecType, TMetricType>::BallBound(BallBound&& other) :
    radius(other.radius),
    center(other.center),
    metric(other.metric),
    ownsMetric(other.ownsMetric)
{
  // Fix the other bound.
  other.radius = 0.0;
  other.center = VecType();
  other.metric = NULL;
  other.ownsMetric = false;
}

//! Destructor to release allocated memory.
template<typename VecType, typename TMetricType>
BallBound<VecType, TMetricType>::~BallBound()
{
  if (ownsMetric)
    delete metric;
}

//! Get the range in a certain dimension.
template<typename VecType, typename TMetricType>
math::Range BallBound<VecType, TMetricType>::operator[](const size_t i) const
{
  if (radius < 0)
    return math::Range();
  else
    return math::Range(center[i] - radius, center[i] + radius);
}

/**
 * Determines if a point is within the bound.
 */
template<typename VecType, typename TMetricType>
bool BallBound<VecType, TMetricType>::Contains(const VecType& point) const
{
  if (radius < 0)
    return false;
  else
    return metric->Evaluate(center, point) <= radius;
}

/**
 * Calculates minimum bound-to-point squared distance.
 */
template<typename VecType, typename TMetricType>
template<typename OtherVecType>
double BallBound<VecType, TMetricType>::MinDistance(
    const OtherVecType& point,
    typename boost::enable_if<IsVector<OtherVecType> >* /* junk */) const
{
  if (radius < 0)
    return DBL_MAX;
  else
    return math::ClampNonNegative(metric->Evaluate(point, center) - radius);
}

/**
 * Calculates minimum bound-to-bound squared distance.
 */
template<typename VecType, typename TMetricType>
double BallBound<VecType, TMetricType>::MinDistance(const BallBound& other) const
{
  if (radius < 0)
    return DBL_MAX;
  else
  {
    const double delta = metric->Evaluate(center, other.center) - radius -
        other.radius;
    return math::ClampNonNegative(delta);
  }
}

/**
 * Computes maximum distance.
 */
template<typename VecType, typename TMetricType>
template<typename OtherVecType>
double BallBound<VecType, TMetricType>::MaxDistance(
    const OtherVecType& point,
    typename boost::enable_if<IsVector<OtherVecType> >* /* junk */) const
{
  if (radius < 0)
    return DBL_MAX;
  else
    return metric->Evaluate(point, center) + radius;
}

/**
 * Computes maximum distance.
 */
template<typename VecType, typename TMetricType>
double BallBound<VecType, TMetricType>::MaxDistance(const BallBound& other)
    const
{
  if (radius < 0)
    return DBL_MAX;
  else
    return metric->Evaluate(other.center, center) + radius + other.radius;
}

/**
 * Calculates minimum and maximum bound-to-bound squared distance.
 *
 * Example: bound1.MinDistanceSq(other) for minimum squared distance.
 */
template<typename VecType, typename TMetricType>
template<typename OtherVecType>
math::Range BallBound<VecType, TMetricType>::RangeDistance(
    const OtherVecType& point,
    typename boost::enable_if<IsVector<OtherVecType> >* /* junk */) const
{
  if (radius < 0)
    return math::Range(DBL_MAX, DBL_MAX);
  else
  {
    const double dist = metric->Evaluate(center, point);
    return math::Range(math::ClampNonNegative(dist - radius),
                                              dist + radius);
  }
}

template<typename VecType, typename TMetricType>
math::Range BallBound<VecType, TMetricType>::RangeDistance(
    const BallBound& other) const
{
  if (radius < 0)
    return math::Range(DBL_MAX, DBL_MAX);
  else
  {
    const double dist = metric->Evaluate(center, other.center);
    const double sumradius = radius + other.radius;
    return math::Range(math::ClampNonNegative(dist - sumradius),
                                              dist + sumradius);
  }
}

/**
 * Expand the bound to include the given bound.
 *
template<typename VecType, typename TMetricType>
const BallBound<VecType>&
BallBound<VecType, TMetricType>::operator|=(
    const BallBound<VecType>& other)
{
  double dist = metric->Evaluate(center, other);

  // Now expand the radius as necessary.
  if (dist > radius)
    radius = dist;

  return *this;
}*/

/**
 * Expand the bound to include the given point. Algorithm adapted from
 * Jack Ritter, "An Efficient Bounding Sphere" in Graphics Gems (1990).
 * The difference lies in the way we initialize the ball bound. The way we
 * expand the bound is same.
 */
template<typename VecType, typename TMetricType>
template<typename MatType>
const BallBound<VecType, TMetricType>&
BallBound<VecType, TMetricType>::operator|=(const MatType& data)
{
  if (radius < 0)
  {
    center = data.col(0);
    radius = 0;
  }

  // Now iteratively add points.
  for (size_t i = 0; i < data.n_cols; ++i)
  {
    const double dist = metric->Evaluate(center, (VecType) data.col(i));

    // See if the new point lies outside the bound.
    if (dist > radius)
    {
      // Move towards the new point and increase the radius just enough to
      // accommodate the new point.
      arma::vec diff = data.col(i) - center;
      center += ((dist - radius) / (2 * dist)) * diff;
      radius = 0.5 * (dist + radius);
    }
  }

  return *this;
}

//! Serialize the BallBound.
template<typename VecType, typename TMetricType>
template<typename Archive>
void BallBound<VecType, TMetricType>::Serialize(
    Archive& ar,
    const unsigned int /* version */)
{
  ar & data::CreateNVP(radius, "radius");
  ar & data::CreateNVP(center, "center");

  if (Archive::is_loading::value)
  {
    // If we're loading, delete the local metric since we'll have a new one.
    if (ownsMetric)
      delete metric;
  }

  ar & data::CreateNVP(metric, "metric");
  ar & data::CreateNVP(ownsMetric, "ownsMetric");
}

} // namespace bound
} // namespace mlpack

#endif // __MLPACK_CORE_TREE_DBALLBOUND_IMPL_HPP
