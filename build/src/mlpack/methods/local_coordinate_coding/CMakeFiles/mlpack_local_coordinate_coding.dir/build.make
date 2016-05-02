# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liberty/UCR/MLLIB/HPC-K-Means

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liberty/UCR/MLLIB/HPC-K-Means/build

# Include any dependencies generated for this target.
include src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/depend.make

# Include the progress variables for this target.
include src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/progress.make

# Include the compile flags for this target's objects.
include src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/flags.make

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o: src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/flags.make
src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o: ../src/mlpack/methods/local_coordinate_coding/lcc_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/liberty/UCR/MLLIB/HPC-K-Means/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o"
	cd /home/liberty/UCR/MLLIB/HPC-K-Means/build/src/mlpack/methods/local_coordinate_coding && /home/liberty/software/gcc-5.3/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o -c /home/liberty/UCR/MLLIB/HPC-K-Means/src/mlpack/methods/local_coordinate_coding/lcc_main.cpp

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.i"
	cd /home/liberty/UCR/MLLIB/HPC-K-Means/build/src/mlpack/methods/local_coordinate_coding && /home/liberty/software/gcc-5.3/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/liberty/UCR/MLLIB/HPC-K-Means/src/mlpack/methods/local_coordinate_coding/lcc_main.cpp > CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.i

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.s"
	cd /home/liberty/UCR/MLLIB/HPC-K-Means/build/src/mlpack/methods/local_coordinate_coding && /home/liberty/software/gcc-5.3/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/liberty/UCR/MLLIB/HPC-K-Means/src/mlpack/methods/local_coordinate_coding/lcc_main.cpp -o CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.s

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.requires:
.PHONY : src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.requires

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.provides: src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.requires
	$(MAKE) -f src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/build.make src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.provides.build
.PHONY : src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.provides

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.provides.build: src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o

# Object files for target mlpack_local_coordinate_coding
mlpack_local_coordinate_coding_OBJECTS = \
"CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o"

# External object files for target mlpack_local_coordinate_coding
mlpack_local_coordinate_coding_EXTERNAL_OBJECTS =

bin/mlpack_local_coordinate_coding: src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o
bin/mlpack_local_coordinate_coding: src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/build.make
bin/mlpack_local_coordinate_coding: lib/libmlpack.so.2.0
bin/mlpack_local_coordinate_coding: /usr/lib/libopenblas.so
bin/mlpack_local_coordinate_coding: /usr/lib/liblapack.so
bin/mlpack_local_coordinate_coding: ../boost/lib/libboost_program_options.so
bin/mlpack_local_coordinate_coding: ../boost/lib/libboost_unit_test_framework.so
bin/mlpack_local_coordinate_coding: ../boost/lib/libboost_serialization.so
bin/mlpack_local_coordinate_coding: src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../../bin/mlpack_local_coordinate_coding"
	cd /home/liberty/UCR/MLLIB/HPC-K-Means/build/src/mlpack/methods/local_coordinate_coding && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mlpack_local_coordinate_coding.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/build: bin/mlpack_local_coordinate_coding
.PHONY : src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/build

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/requires: src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/lcc_main.cpp.o.requires
.PHONY : src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/requires

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/clean:
	cd /home/liberty/UCR/MLLIB/HPC-K-Means/build/src/mlpack/methods/local_coordinate_coding && $(CMAKE_COMMAND) -P CMakeFiles/mlpack_local_coordinate_coding.dir/cmake_clean.cmake
.PHONY : src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/clean

src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/depend:
	cd /home/liberty/UCR/MLLIB/HPC-K-Means/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liberty/UCR/MLLIB/HPC-K-Means /home/liberty/UCR/MLLIB/HPC-K-Means/src/mlpack/methods/local_coordinate_coding /home/liberty/UCR/MLLIB/HPC-K-Means/build /home/liberty/UCR/MLLIB/HPC-K-Means/build/src/mlpack/methods/local_coordinate_coding /home/liberty/UCR/MLLIB/HPC-K-Means/build/src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mlpack/methods/local_coordinate_coding/CMakeFiles/mlpack_local_coordinate_coding.dir/depend

