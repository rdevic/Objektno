# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Users\Admin\Desktop\oop\zadaca1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Users\Admin\Desktop\oop\zadaca1\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/zadaca.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/zadaca.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zadaca.dir/flags.make

CMakeFiles/zadaca.dir/main.cpp.obj: CMakeFiles/zadaca.dir/flags.make
CMakeFiles/zadaca.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Users\Admin\Desktop\oop\zadaca1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/zadaca.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\zadaca.dir\main.cpp.obj -c D:\Users\Admin\Desktop\oop\zadaca1\main.cpp

CMakeFiles/zadaca.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zadaca.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Users\Admin\Desktop\oop\zadaca1\main.cpp > CMakeFiles\zadaca.dir\main.cpp.i

CMakeFiles/zadaca.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zadaca.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Users\Admin\Desktop\oop\zadaca1\main.cpp -o CMakeFiles\zadaca.dir\main.cpp.s

# Object files for target zadaca
zadaca_OBJECTS = \
"CMakeFiles/zadaca.dir/main.cpp.obj"

# External object files for target zadaca
zadaca_EXTERNAL_OBJECTS =

zadaca.exe: CMakeFiles/zadaca.dir/main.cpp.obj
zadaca.exe: CMakeFiles/zadaca.dir/build.make
zadaca.exe: CMakeFiles/zadaca.dir/linklibs.rsp
zadaca.exe: CMakeFiles/zadaca.dir/objects1.rsp
zadaca.exe: CMakeFiles/zadaca.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Users\Admin\Desktop\oop\zadaca1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable zadaca.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\zadaca.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zadaca.dir/build: zadaca.exe

.PHONY : CMakeFiles/zadaca.dir/build

CMakeFiles/zadaca.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\zadaca.dir\cmake_clean.cmake
.PHONY : CMakeFiles/zadaca.dir/clean

CMakeFiles/zadaca.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Users\Admin\Desktop\oop\zadaca1 D:\Users\Admin\Desktop\oop\zadaca1 D:\Users\Admin\Desktop\oop\zadaca1\cmake-build-debug D:\Users\Admin\Desktop\oop\zadaca1\cmake-build-debug D:\Users\Admin\Desktop\oop\zadaca1\cmake-build-debug\CMakeFiles\zadaca.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zadaca.dir/depend

