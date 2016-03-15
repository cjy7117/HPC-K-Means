/**
 * @file nothing_initializer.hpp
 * @author Ryan Curtin
 *
 * An initializer for SparseCoding which does precisely nothing.  It is useful
 * for when you have an already defined dictionary and you plan on setting it
 * with SparseCoding::Dictionary().
 *
 * This file is part of mlpack 2.0.1.
 *
 * mlpack is free software; you may redstribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef __MLPACK_METHODS_SPARSE_CODING_NOTHING_INITIALIZER_HPP
#define __MLPACK_METHODS_SPARSE_CODING_NOTHING_INITIALIZER_HPP

#include <mlpack/core.hpp>

namespace mlpack {
namespace sparse_coding {

/**
 * A DictionaryInitializer for SparseCoding which does not initialize anything;
 * it is useful for when the dictionary is already known and will be set with
 * SparseCoding::Dictionary().
 */
class NothingInitializer
{
 public:
  /**
   * This function does not initialize the dictionary.  This will cause problems
   * for SparseCoding if the dictionary is not set manually before running the
   * method.
   */
  static void Initialize(const arma::mat& /* data */,
                         const size_t /* atoms */,
                         arma::mat& /* dictionary */)
  {
    // Do nothing!
  }
};

} // namespace sparse_coding
} // namespace mlpack

#endif
