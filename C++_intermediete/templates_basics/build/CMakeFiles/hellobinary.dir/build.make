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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build

# Include any dependencies generated for this target.
include CMakeFiles/hellobinary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hellobinary.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hellobinary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hellobinary.dir/flags.make

CMakeFiles/hellobinary.dir/src/main.cpp.o: CMakeFiles/hellobinary.dir/flags.make
CMakeFiles/hellobinary.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/hellobinary.dir/src/main.cpp.o: CMakeFiles/hellobinary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hellobinary.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hellobinary.dir/src/main.cpp.o -MF CMakeFiles/hellobinary.dir/src/main.cpp.o.d -o CMakeFiles/hellobinary.dir/src/main.cpp.o -c /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/src/main.cpp

CMakeFiles/hellobinary.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hellobinary.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/src/main.cpp > CMakeFiles/hellobinary.dir/src/main.cpp.i

CMakeFiles/hellobinary.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hellobinary.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/src/main.cpp -o CMakeFiles/hellobinary.dir/src/main.cpp.s

CMakeFiles/hellobinary.dir/utils/math.cpp.o: CMakeFiles/hellobinary.dir/flags.make
CMakeFiles/hellobinary.dir/utils/math.cpp.o: ../utils/math.cpp
CMakeFiles/hellobinary.dir/utils/math.cpp.o: CMakeFiles/hellobinary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hellobinary.dir/utils/math.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hellobinary.dir/utils/math.cpp.o -MF CMakeFiles/hellobinary.dir/utils/math.cpp.o.d -o CMakeFiles/hellobinary.dir/utils/math.cpp.o -c /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/utils/math.cpp

CMakeFiles/hellobinary.dir/utils/math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hellobinary.dir/utils/math.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/utils/math.cpp > CMakeFiles/hellobinary.dir/utils/math.cpp.i

CMakeFiles/hellobinary.dir/utils/math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hellobinary.dir/utils/math.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/utils/math.cpp -o CMakeFiles/hellobinary.dir/utils/math.cpp.s

# Object files for target hellobinary
hellobinary_OBJECTS = \
"CMakeFiles/hellobinary.dir/src/main.cpp.o" \
"CMakeFiles/hellobinary.dir/utils/math.cpp.o"

# External object files for target hellobinary
hellobinary_EXTERNAL_OBJECTS =

hellobinary: CMakeFiles/hellobinary.dir/src/main.cpp.o
hellobinary: CMakeFiles/hellobinary.dir/utils/math.cpp.o
hellobinary: CMakeFiles/hellobinary.dir/build.make
hellobinary: CMakeFiles/hellobinary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable hellobinary"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hellobinary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hellobinary.dir/build: hellobinary
.PHONY : CMakeFiles/hellobinary.dir/build

CMakeFiles/hellobinary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hellobinary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hellobinary.dir/clean

CMakeFiles/hellobinary.dir/depend:
	cd /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build /home/zahran/Desktop/EmbeddedLinuxStudy/C++_intermediete/requirements/build/CMakeFiles/hellobinary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hellobinary.dir/depend

