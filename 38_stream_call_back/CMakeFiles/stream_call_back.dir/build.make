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
include 38_stream_call_back/CMakeFiles/stream_call_back.dir/depend.make

# Include the progress variables for this target.
include 38_stream_call_back/CMakeFiles/stream_call_back.dir/progress.make

# Include the compile flags for this target's objects.
include 38_stream_call_back/CMakeFiles/stream_call_back.dir/flags.make

38_stream_call_back/CMakeFiles/stream_call_back.dir/stream_call_back.cu.o: 38_stream_call_back/CMakeFiles/stream_call_back.dir/flags.make
38_stream_call_back/CMakeFiles/stream_call_back.dir/stream_call_back.cu.o: 38_stream_call_back/stream_call_back.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object 38_stream_call_back/CMakeFiles/stream_call_back.dir/stream_call_back.cu.o"
	cd /home/wht/Documents/test/CUDA_Freshman/38_stream_call_back && /home/wht/anaconda3/envs/pytorch/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/wht/Documents/test/CUDA_Freshman/38_stream_call_back/stream_call_back.cu -o CMakeFiles/stream_call_back.dir/stream_call_back.cu.o

38_stream_call_back/CMakeFiles/stream_call_back.dir/stream_call_back.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/stream_call_back.dir/stream_call_back.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

38_stream_call_back/CMakeFiles/stream_call_back.dir/stream_call_back.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/stream_call_back.dir/stream_call_back.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target stream_call_back
stream_call_back_OBJECTS = \
"CMakeFiles/stream_call_back.dir/stream_call_back.cu.o"

# External object files for target stream_call_back
stream_call_back_EXTERNAL_OBJECTS =

38_stream_call_back/stream_call_back: 38_stream_call_back/CMakeFiles/stream_call_back.dir/stream_call_back.cu.o
38_stream_call_back/stream_call_back: 38_stream_call_back/CMakeFiles/stream_call_back.dir/build.make
38_stream_call_back/stream_call_back: 38_stream_call_back/CMakeFiles/stream_call_back.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wht/Documents/test/CUDA_Freshman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable stream_call_back"
	cd /home/wht/Documents/test/CUDA_Freshman/38_stream_call_back && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stream_call_back.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
38_stream_call_back/CMakeFiles/stream_call_back.dir/build: 38_stream_call_back/stream_call_back

.PHONY : 38_stream_call_back/CMakeFiles/stream_call_back.dir/build

38_stream_call_back/CMakeFiles/stream_call_back.dir/clean:
	cd /home/wht/Documents/test/CUDA_Freshman/38_stream_call_back && $(CMAKE_COMMAND) -P CMakeFiles/stream_call_back.dir/cmake_clean.cmake
.PHONY : 38_stream_call_back/CMakeFiles/stream_call_back.dir/clean

38_stream_call_back/CMakeFiles/stream_call_back.dir/depend:
	cd /home/wht/Documents/test/CUDA_Freshman && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/38_stream_call_back /home/wht/Documents/test/CUDA_Freshman /home/wht/Documents/test/CUDA_Freshman/38_stream_call_back /home/wht/Documents/test/CUDA_Freshman/38_stream_call_back/CMakeFiles/stream_call_back.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 38_stream_call_back/CMakeFiles/stream_call_back.dir/depend
