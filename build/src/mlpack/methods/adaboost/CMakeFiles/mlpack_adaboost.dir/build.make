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
include src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/depend.make

# Include the progress variables for this target.
include src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/progress.make

# Include the compile flags for this target's objects.
include src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/flags.make

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o: src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/flags.make
src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o: ../src/mlpack/methods/adaboost/adaboost_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jchen098/KMEANS/mlpack-2.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/adaboost && /act/gcc-4.9.2/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o -c /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/adaboost/adaboost_main.cpp

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.i"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/adaboost && /act/gcc-4.9.2/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/adaboost/adaboost_main.cpp > CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.i

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.s"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/adaboost && /act/gcc-4.9.2/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/adaboost/adaboost_main.cpp -o CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.s

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.requires:

.PHONY : src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.requires

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.provides: src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.requires
	$(MAKE) -f src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/build.make src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.provides.build
.PHONY : src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.provides

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.provides.build: src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o


# Object files for target mlpack_adaboost
mlpack_adaboost_OBJECTS = \
"CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o"

# External object files for target mlpack_adaboost
mlpack_adaboost_EXTERNAL_OBJECTS =

bin/mlpack_adaboost: src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o
bin/mlpack_adaboost: src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/build.make
bin/mlpack_adaboost: lib/libmlpack.so.2.0
bin/mlpack_adaboost: /home/jchen098/KMEANS/armadillo-6.500.5/usr/lib64/libarmadillo.so
bin/mlpack_adaboost: /home/jchen098/KMEANS/boost_1_60_0/stage/lib/libboost_program_options.so
bin/mlpack_adaboost: /home/jchen098/KMEANS/boost_1_60_0/stage/lib/libboost_unit_test_framework.so
bin/mlpack_adaboost: /home/jchen098/KMEANS/boost_1_60_0/stage/lib/libboost_serialization.so
bin/mlpack_adaboost: src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jchen098/KMEANS/mlpack-2.0.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/mlpack_adaboost"
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/adaboost && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mlpack_adaboost.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/build: bin/mlpack_adaboost

.PHONY : src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/build

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/requires: src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/adaboost_main.cpp.o.requires

.PHONY : src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/requires

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/clean:
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/adaboost && $(CMAKE_COMMAND) -P CMakeFiles/mlpack_adaboost.dir/cmake_clean.cmake
.PHONY : src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/clean

src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/depend:
	cd /home/jchen098/KMEANS/mlpack-2.0.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jchen098/KMEANS/mlpack-2.0.1 /home/jchen098/KMEANS/mlpack-2.0.1/src/mlpack/methods/adaboost /home/jchen098/KMEANS/mlpack-2.0.1/build /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/adaboost /home/jchen098/KMEANS/mlpack-2.0.1/build/src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mlpack/methods/adaboost/CMakeFiles/mlpack_adaboost.dir/depend

