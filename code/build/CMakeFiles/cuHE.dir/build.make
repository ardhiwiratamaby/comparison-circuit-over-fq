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
include CMakeFiles/cuHE.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cuHE.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cuHE.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cuHE.dir/flags.make

CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o: CMakeFiles/cuHE.dir/flags.make
CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o: ../cuhe/Parameters.cu
CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o: CMakeFiles/cuHE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o -MF CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o.d -x cu -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/cuhe/Parameters.cu -o CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o

CMakeFiles/cuHE.dir/cuhe/Parameters.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuHE.dir/cuhe/Parameters.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuHE.dir/cuhe/Parameters.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuHE.dir/cuhe/Parameters.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o: CMakeFiles/cuHE.dir/flags.make
CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o: ../cuhe/DeviceManager.cu
CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o: CMakeFiles/cuHE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CUDA object CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o -MF CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o.d -x cu -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/cuhe/DeviceManager.cu -o CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o

CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/cuHE.dir/cuhe/Base.cu.o: CMakeFiles/cuHE.dir/flags.make
CMakeFiles/cuHE.dir/cuhe/Base.cu.o: ../cuhe/Base.cu
CMakeFiles/cuHE.dir/cuhe/Base.cu.o: CMakeFiles/cuHE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CUDA object CMakeFiles/cuHE.dir/cuhe/Base.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuHE.dir/cuhe/Base.cu.o -MF CMakeFiles/cuHE.dir/cuhe/Base.cu.o.d -x cu -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/cuhe/Base.cu -o CMakeFiles/cuHE.dir/cuhe/Base.cu.o

CMakeFiles/cuHE.dir/cuhe/Base.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuHE.dir/cuhe/Base.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuHE.dir/cuhe/Base.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuHE.dir/cuhe/Base.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o: CMakeFiles/cuHE.dir/flags.make
CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o: ../cuhe/CuHE.cu
CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o: CMakeFiles/cuHE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CUDA object CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o -MF CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o.d -x cu -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/cuhe/CuHE.cu -o CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o

CMakeFiles/cuHE.dir/cuhe/CuHE.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuHE.dir/cuhe/CuHE.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuHE.dir/cuhe/CuHE.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuHE.dir/cuhe/CuHE.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/cuHE.dir/cuhe/Operations.cu.o: CMakeFiles/cuHE.dir/flags.make
CMakeFiles/cuHE.dir/cuhe/Operations.cu.o: ../cuhe/Operations.cu
CMakeFiles/cuHE.dir/cuhe/Operations.cu.o: CMakeFiles/cuHE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CUDA object CMakeFiles/cuHE.dir/cuhe/Operations.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuHE.dir/cuhe/Operations.cu.o -MF CMakeFiles/cuHE.dir/cuhe/Operations.cu.o.d -x cu -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/cuhe/Operations.cu -o CMakeFiles/cuHE.dir/cuhe/Operations.cu.o

CMakeFiles/cuHE.dir/cuhe/Operations.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuHE.dir/cuhe/Operations.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuHE.dir/cuhe/Operations.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuHE.dir/cuhe/Operations.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o: CMakeFiles/cuHE.dir/flags.make
CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o: ../cuhe/Relinearization.cu
CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o: CMakeFiles/cuHE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CUDA object CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o -MF CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o.d -x cu -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/cuhe/Relinearization.cu -o CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o

CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/cuHE.dir/cuhe/Utils.cu.o: CMakeFiles/cuHE.dir/flags.make
CMakeFiles/cuHE.dir/cuhe/Utils.cu.o: ../cuhe/Utils.cu
CMakeFiles/cuHE.dir/cuhe/Utils.cu.o: CMakeFiles/cuHE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CUDA object CMakeFiles/cuHE.dir/cuhe/Utils.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuHE.dir/cuhe/Utils.cu.o -MF CMakeFiles/cuHE.dir/cuhe/Utils.cu.o.d -x cu -c /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/cuhe/Utils.cu -o CMakeFiles/cuHE.dir/cuhe/Utils.cu.o

CMakeFiles/cuHE.dir/cuhe/Utils.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuHE.dir/cuhe/Utils.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuHE.dir/cuhe/Utils.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuHE.dir/cuhe/Utils.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cuHE
cuHE_OBJECTS = \
"CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o" \
"CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o" \
"CMakeFiles/cuHE.dir/cuhe/Base.cu.o" \
"CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o" \
"CMakeFiles/cuHE.dir/cuhe/Operations.cu.o" \
"CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o" \
"CMakeFiles/cuHE.dir/cuhe/Utils.cu.o"

# External object files for target cuHE
cuHE_EXTERNAL_OBJECTS =

libcuHE.a: CMakeFiles/cuHE.dir/cuhe/Parameters.cu.o
libcuHE.a: CMakeFiles/cuHE.dir/cuhe/DeviceManager.cu.o
libcuHE.a: CMakeFiles/cuHE.dir/cuhe/Base.cu.o
libcuHE.a: CMakeFiles/cuHE.dir/cuhe/CuHE.cu.o
libcuHE.a: CMakeFiles/cuHE.dir/cuhe/Operations.cu.o
libcuHE.a: CMakeFiles/cuHE.dir/cuhe/Relinearization.cu.o
libcuHE.a: CMakeFiles/cuHE.dir/cuhe/Utils.cu.o
libcuHE.a: CMakeFiles/cuHE.dir/build.make
libcuHE.a: CMakeFiles/cuHE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CUDA static library libcuHE.a"
	$(CMAKE_COMMAND) -P CMakeFiles/cuHE.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cuHE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cuHE.dir/build: libcuHE.a
.PHONY : CMakeFiles/cuHE.dir/build

CMakeFiles/cuHE.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cuHE.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cuHE.dir/clean

CMakeFiles/cuHE.dir/depend:
	cd /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build /home/ardhy/Documents/research/new_project/bgv-comparison/comparison-circuit-over-fq/code/build/CMakeFiles/cuHE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cuHE.dir/depend

