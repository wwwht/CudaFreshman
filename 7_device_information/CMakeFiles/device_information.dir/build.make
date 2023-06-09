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
include 7_device_information/CMakeFiles/device_information.dir/depend.make

# Include the progress variables for this target.
include 7_device_information/CMakeFiles/device_information.dir/progress.make

# Include the compile flags for this target's objects.
include 7_device_information/CMakeFiles/device_information.dir/flags.make

7_device_information/CMakeFiles/device_information.dir/device_information.cu.o: 7_device_information/CMakeFiles/device_information.dir/flags.make
7_device_information/CMakeFiles/device_information.dir/device_information.cu.o: 7_device_information/device_information.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object 7_device_information/CMakeFiles/device_information.dir/device_information.cu.o"
	cd /home/wht/Documents/test/CUDA_Freshman/7_device_information && /home/wht/anaconda3/envs/pytorch/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/wht/Documents/test/CUDA_Freshman/7_device_information/device_information.cu -o CMakeFiles/device_information.dir/device_information.cu.o

7_device_information/CMakeFiles/device_information.dir/device_information.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/device_information.dir/device_information.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

7_device_information/CMakeFiles/device_information.dir/device_information.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/device_information.dir/device_information.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target device_information
device_information_OBJECTS = \
"CMakeFiles/device_information.dir/device_information.cu.o"

# External object files for target device_information
device_information_EXTERNAL_OBJECTS =

7_device_information/device_information: 7_device_information/CMakeFiles/device_information.dir/device_information.cu.o
7_device_information/device_information: 7_device_information/CMakeFiles/device_information.dir/build.make
7_device_information/device_information: 7_device_information/CMakeFiles/device_information.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable device_information"
	cd /home/wht/Documents/test/CUDA_Freshman/7_device_information && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/device_information.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
7_device_information/CMakeFiles/device_information.dir/build: 7_device_information/device_information

.PHONY : 7_device_information/CMakeFiles/device_information.dir/build

7_device_information/CMakeFiles/device_information.dir/clean:
	cd /home/wht/Documents/test/CUDA_Freshman/7_device_information && $(CMAKE_COMMAND) -P CMakeFiles/device_information.dir/cmake_clean.cmake
.PHONY : 7_device_information/CMakeFiles/device_information.dir/clean

7_device_information/CMakeFiles/device_information.dir/depend:
	cd /home/wht/Documents/test/CUDA_Freshman && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/7_device_information /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/7_device_information /home/wht/Documents/test/CUDA_Freshman/7_device_information/CMakeFiles/device_information.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 7_device_information/CMakeFiles/device_information.dir/depend

