# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/ardhy/anaconda2/lib/python2.7/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/ardhy/anaconda2/lib/python2.7/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build

# Include any dependencies generated for this target.
include CMakeFiles/sorting_circuit.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sorting_circuit.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sorting_circuit.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sorting_circuit.dir/flags.make

CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o: CMakeFiles/sorting_circuit.dir/flags.make
CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o: ../sorting_circuit.cpp
CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o: CMakeFiles/sorting_circuit.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o -MF CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o.d -o CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/sorting_circuit.cpp

CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/sorting_circuit.cpp > CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.i

CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/sorting_circuit.cpp -o CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.s

CMakeFiles/sorting_circuit.dir/comparator.cpp.o: CMakeFiles/sorting_circuit.dir/flags.make
CMakeFiles/sorting_circuit.dir/comparator.cpp.o: ../comparator.cpp
CMakeFiles/sorting_circuit.dir/comparator.cpp.o: CMakeFiles/sorting_circuit.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sorting_circuit.dir/comparator.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sorting_circuit.dir/comparator.cpp.o -MF CMakeFiles/sorting_circuit.dir/comparator.cpp.o.d -o CMakeFiles/sorting_circuit.dir/comparator.cpp.o -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/comparator.cpp

CMakeFiles/sorting_circuit.dir/comparator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sorting_circuit.dir/comparator.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/comparator.cpp > CMakeFiles/sorting_circuit.dir/comparator.cpp.i

CMakeFiles/sorting_circuit.dir/comparator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sorting_circuit.dir/comparator.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/comparator.cpp -o CMakeFiles/sorting_circuit.dir/comparator.cpp.s

CMakeFiles/sorting_circuit.dir/tools.cpp.o: CMakeFiles/sorting_circuit.dir/flags.make
CMakeFiles/sorting_circuit.dir/tools.cpp.o: ../tools.cpp
CMakeFiles/sorting_circuit.dir/tools.cpp.o: CMakeFiles/sorting_circuit.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sorting_circuit.dir/tools.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sorting_circuit.dir/tools.cpp.o -MF CMakeFiles/sorting_circuit.dir/tools.cpp.o.d -o CMakeFiles/sorting_circuit.dir/tools.cpp.o -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/tools.cpp

CMakeFiles/sorting_circuit.dir/tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sorting_circuit.dir/tools.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/tools.cpp > CMakeFiles/sorting_circuit.dir/tools.cpp.i

CMakeFiles/sorting_circuit.dir/tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sorting_circuit.dir/tools.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/tools.cpp -o CMakeFiles/sorting_circuit.dir/tools.cpp.s

# Object files for target sorting_circuit
sorting_circuit_OBJECTS = \
"CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o" \
"CMakeFiles/sorting_circuit.dir/comparator.cpp.o" \
"CMakeFiles/sorting_circuit.dir/tools.cpp.o"

# External object files for target sorting_circuit
sorting_circuit_EXTERNAL_OBJECTS =

CMakeFiles/sorting_circuit.dir/cmake_device_link.o: CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: CMakeFiles/sorting_circuit.dir/comparator.cpp.o
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: CMakeFiles/sorting_circuit.dir/tools.cpp.o
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: CMakeFiles/sorting_circuit.dir/build.make
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: libcompare_cuda.a
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: libcuHE.a
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: /home/ardhy/helib_install/helib_pack/lib/libhelib.a
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: /home/ardhy/helib_install/helib_pack/lib/libntl.so
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: /home/ardhy/helib_install/helib_pack/lib/libgmp.so
CMakeFiles/sorting_circuit.dir/cmake_device_link.o: CMakeFiles/sorting_circuit.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CUDA device code CMakeFiles/sorting_circuit.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sorting_circuit.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sorting_circuit.dir/build: CMakeFiles/sorting_circuit.dir/cmake_device_link.o
.PHONY : CMakeFiles/sorting_circuit.dir/build

# Object files for target sorting_circuit
sorting_circuit_OBJECTS = \
"CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o" \
"CMakeFiles/sorting_circuit.dir/comparator.cpp.o" \
"CMakeFiles/sorting_circuit.dir/tools.cpp.o"

# External object files for target sorting_circuit
sorting_circuit_EXTERNAL_OBJECTS =

sorting_circuit: CMakeFiles/sorting_circuit.dir/sorting_circuit.cpp.o
sorting_circuit: CMakeFiles/sorting_circuit.dir/comparator.cpp.o
sorting_circuit: CMakeFiles/sorting_circuit.dir/tools.cpp.o
sorting_circuit: CMakeFiles/sorting_circuit.dir/build.make
sorting_circuit: libcompare_cuda.a
sorting_circuit: libcuHE.a
sorting_circuit: /home/ardhy/helib_install/helib_pack/lib/libhelib.a
sorting_circuit: /home/ardhy/helib_install/helib_pack/lib/libntl.so
sorting_circuit: /home/ardhy/helib_install/helib_pack/lib/libgmp.so
sorting_circuit: CMakeFiles/sorting_circuit.dir/cmake_device_link.o
sorting_circuit: CMakeFiles/sorting_circuit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable sorting_circuit"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sorting_circuit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sorting_circuit.dir/build: sorting_circuit
.PHONY : CMakeFiles/sorting_circuit.dir/build

CMakeFiles/sorting_circuit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sorting_circuit.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sorting_circuit.dir/clean

CMakeFiles/sorting_circuit.dir/depend:
	cd /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles/sorting_circuit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sorting_circuit.dir/depend

