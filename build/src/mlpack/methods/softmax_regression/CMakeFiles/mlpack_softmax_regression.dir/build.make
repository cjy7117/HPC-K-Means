# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/jchen098/CMAKE/cmake-3.4.3-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/jchen098/CMAKE/cmake-3.4.3-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jchen098/KMEANS/mlpack-2.0.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jchen098/KMEANS/mlpack-2.0.1/build

# Include any dependencies generated for this target.
include src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/depend.make

# Include the progress variables for this target.
include src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/progress.make

# Include the compile flags for this target's objects.
include src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/flags.make

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o: src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/flags.make
src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o: ../src/mlpack/methods/softmax_regression/softmax_regression_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jchen098/KMEANS/mlpack-2.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/softmax_regression && /act/gcc-4.9.2/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o -c /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/softmax_regression/softmax_regression_main.cpp

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.i"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/softmax_regression && /act/gcc-4.9.2/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/softmax_regression/softmax_regression_main.cpp > CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.i

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.s"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/softmax_regression && /act/gcc-4.9.2/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/softmax_regression/softmax_regression_main.cpp -o CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.s

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.requires:

.PHONY : src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.requires

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.provides: src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.requires
	$(MAKE) -f src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/build.make src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.provides.build
.PHONY : src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.provides

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.provides.build: src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o


# Object files for target mlpack_softmax_regression
mlpack_softmax_regression_OBJECTS = \
"CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o"

# External object files for target mlpack_softmax_regression
mlpack_softmax_regression_EXTERNAL_OBJECTS =

bin/mlpack_softmax_regression: src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o
bin/mlpack_softmax_regression: src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/build.make
bin/mlpack_softmax_regression: lib/libmlpack.so.2.0
bin/mlpack_softmax_regression: /home/jchen098/KMEANS/armadillo-6.500.5/usr/lib64/libarmadillo.so
bin/mlpack_softmax_regression: /home/jchen098/KMEANS/boost_1_60_0/stage/lib/libboost_program_options.so
bin/mlpack_softmax_regression: /home/jchen098/KMEANS/boost_1_60_0/stage/lib/libboost_unit_test_framework.so
bin/mlpack_softmax_regression: /home/jchen098/KMEANS/boost_1_60_0/stage/lib/libboost_serialization.so
bin/mlpack_softmax_regression: src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jchen098/KMEANS/mlpack-2.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/mlpack_softmax_regression"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/softmax_regression && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mlpack_softmax_regression.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/build: bin/mlpack_softmax_regression

.PHONY : src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/build

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/requires: src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/softmax_regression_main.cpp.o.requires

.PHONY : src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/requires

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/clean:
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/softmax_regression && $(CMAKE_COMMAND) -P CMakeFiles/mlpack_softmax_regression.dir/cmake_clean.cmake
.PHONY : src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/clean

src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/depend:
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jchen098/KMEANS/mlpack-2.0.1 /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/softmax_regression /home/jchen098/KMEANS/mlpack-2.0.1/build /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/softmax_regression /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mlpack/methods/softmax_regression/CMakeFiles/mlpack_softmax_regression.dir/depend

