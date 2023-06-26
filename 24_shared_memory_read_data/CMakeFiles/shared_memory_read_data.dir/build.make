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
include 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/depend.make

# Include the progress variables for this target.
include 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/progress.make

# Include the compile flags for this target's objects.
include 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/flags.make

24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.o: 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/flags.make
24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.o: 24_shared_memory_read_data/shared_memory_read_data.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.o"
	cd /home/wht/Documents/test/CUDA_Freshman/24_shared_memory_read_data && /home/wht/anaconda3/envs/pytorch/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/wht/Documents/test/CUDA_Freshman/24_shared_memory_read_data/shared_memory_read_data.cu -o CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.o

24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target shared_memory_read_data
shared_memory_read_data_OBJECTS = \
"CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.o"

# External object files for target shared_memory_read_data
shared_memory_read_data_EXTERNAL_OBJECTS =

24_shared_memory_read_data/shared_memory_read_data: 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/shared_memory_read_data.cu.o
24_shared_memory_read_data/shared_memory_read_data: 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/build.make
24_shared_memory_read_data/shared_memory_read_data: 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable shared_memory_read_data"
	cd /home/wht/Documents/test/CUDA_Freshman/24_shared_memory_read_data && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shared_memory_read_data.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/build: 24_shared_memory_read_data/shared_memory_read_data

.PHONY : 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/build

24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/clean:
	cd /home/wht/Documents/test/CUDA_Freshman/24_shared_memory_read_data && $(CMAKE_COMMAND) -P CMakeFiles/shared_memory_read_data.dir/cmake_clean.cmake
.PHONY : 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/clean

24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/depend:
	cd /home/wht/Documents/test/CUDA_Freshman && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/24_shared_memory_read_data /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/24_shared_memory_read_data /home/wht/Documents/test/CUDA_Freshman/24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 24_shared_memory_read_data/CMakeFiles/shared_memory_read_data.dir/depend

