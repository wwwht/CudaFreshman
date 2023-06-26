# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wht/Documents/test/CUDA_Freshman

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wht/Documents/test/CUDA_Freshman

# Include any dependencies generated for this target.
include 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/depend.make

# Include the progress variables for this target.
include 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/progress.make

# Include the compile flags for this target's objects.
include 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/flags.make

11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.o: 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/flags.make
11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.o: 11_simple_sum_matrix2D/simple_sum_matrix.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.o"
	cd /home/wht/Documents/test/CUDA_Freshman/11_simple_sum_matrix2D && /home/wht/anaconda3/envs/pytorch/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/wht/Documents/test/CUDA_Freshman/11_simple_sum_matrix2D/simple_sum_matrix.cu -o CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.o

11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target simple_sum_matrix
simple_sum_matrix_OBJECTS = \
"CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.o"

# External object files for target simple_sum_matrix
simple_sum_matrix_EXTERNAL_OBJECTS =

11_simple_sum_matrix2D/simple_sum_matrix: 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/simple_sum_matrix.cu.o
11_simple_sum_matrix2D/simple_sum_matrix: 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/build.make
11_simple_sum_matrix2D/simple_sum_matrix: 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable simple_sum_matrix"
	cd /home/wht/Documents/test/CUDA_Freshman/11_simple_sum_matrix2D && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_sum_matrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/build: 11_simple_sum_matrix2D/simple_sum_matrix

.PHONY : 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/build

11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/clean:
	cd /home/wht/Documents/test/CUDA_Freshman/11_simple_sum_matrix2D && $(CMAKE_COMMAND) -P CMakeFiles/simple_sum_matrix.dir/cmake_clean.cmake
.PHONY : 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/clean

11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/depend:
	cd /home/wht/Documents/test/CUDA_Freshman && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/11_simple_sum_matrix2D /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/11_simple_sum_matrix2D /home/wht/Documents/test/CUDA_Freshman/11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 11_simple_sum_matrix2D/CMakeFiles/simple_sum_matrix.dir/depend

