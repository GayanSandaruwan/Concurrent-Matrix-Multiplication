# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/gathika/Downloads/clion-2017.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/gathika/Downloads/clion-2017.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/gathika/CLionProjects/Matrix Multiplication -Serial"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/gathika/CLionProjects/Matrix Multiplication -Serial/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Matrix_Multiplication__Serial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Matrix_Multiplication__Serial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Matrix_Multiplication__Serial.dir/flags.make

CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o: CMakeFiles/Matrix_Multiplication__Serial.dir/flags.make
CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gathika/CLionProjects/Matrix Multiplication -Serial/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o -c "/home/gathika/CLionProjects/Matrix Multiplication -Serial/main.cpp"

CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gathika/CLionProjects/Matrix Multiplication -Serial/main.cpp" > CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.i

CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gathika/CLionProjects/Matrix Multiplication -Serial/main.cpp" -o CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.s

CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.requires

CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.provides: CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Matrix_Multiplication__Serial.dir/build.make CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.provides

CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.provides.build: CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o


# Object files for target Matrix_Multiplication__Serial
Matrix_Multiplication__Serial_OBJECTS = \
"CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o"

# External object files for target Matrix_Multiplication__Serial
Matrix_Multiplication__Serial_EXTERNAL_OBJECTS =

Matrix_Multiplication__Serial: CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o
Matrix_Multiplication__Serial: CMakeFiles/Matrix_Multiplication__Serial.dir/build.make
Matrix_Multiplication__Serial: CMakeFiles/Matrix_Multiplication__Serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/gathika/CLionProjects/Matrix Multiplication -Serial/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Matrix_Multiplication__Serial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Matrix_Multiplication__Serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Matrix_Multiplication__Serial.dir/build: Matrix_Multiplication__Serial

.PHONY : CMakeFiles/Matrix_Multiplication__Serial.dir/build

CMakeFiles/Matrix_Multiplication__Serial.dir/requires: CMakeFiles/Matrix_Multiplication__Serial.dir/main.cpp.o.requires

.PHONY : CMakeFiles/Matrix_Multiplication__Serial.dir/requires

CMakeFiles/Matrix_Multiplication__Serial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Matrix_Multiplication__Serial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Matrix_Multiplication__Serial.dir/clean

CMakeFiles/Matrix_Multiplication__Serial.dir/depend:
	cd "/home/gathika/CLionProjects/Matrix Multiplication -Serial/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/gathika/CLionProjects/Matrix Multiplication -Serial" "/home/gathika/CLionProjects/Matrix Multiplication -Serial" "/home/gathika/CLionProjects/Matrix Multiplication -Serial/cmake-build-debug" "/home/gathika/CLionProjects/Matrix Multiplication -Serial/cmake-build-debug" "/home/gathika/CLionProjects/Matrix Multiplication -Serial/cmake-build-debug/CMakeFiles/Matrix_Multiplication__Serial.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Matrix_Multiplication__Serial.dir/depend
