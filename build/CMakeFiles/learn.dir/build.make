# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jqz/Desktop/Learn_tips

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jqz/Desktop/Learn_tips/build

# Include any dependencies generated for this target.
include CMakeFiles/learn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/learn.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/learn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/learn.dir/flags.make

CMakeFiles/learn.dir/src/multithread.cpp.o: CMakeFiles/learn.dir/flags.make
CMakeFiles/learn.dir/src/multithread.cpp.o: /home/jqz/Desktop/Learn_tips/src/multithread.cpp
CMakeFiles/learn.dir/src/multithread.cpp.o: CMakeFiles/learn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jqz/Desktop/Learn_tips/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/learn.dir/src/multithread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/learn.dir/src/multithread.cpp.o -MF CMakeFiles/learn.dir/src/multithread.cpp.o.d -o CMakeFiles/learn.dir/src/multithread.cpp.o -c /home/jqz/Desktop/Learn_tips/src/multithread.cpp

CMakeFiles/learn.dir/src/multithread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/learn.dir/src/multithread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jqz/Desktop/Learn_tips/src/multithread.cpp > CMakeFiles/learn.dir/src/multithread.cpp.i

CMakeFiles/learn.dir/src/multithread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/learn.dir/src/multithread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jqz/Desktop/Learn_tips/src/multithread.cpp -o CMakeFiles/learn.dir/src/multithread.cpp.s

CMakeFiles/learn.dir/src/main.cpp.o: CMakeFiles/learn.dir/flags.make
CMakeFiles/learn.dir/src/main.cpp.o: /home/jqz/Desktop/Learn_tips/src/main.cpp
CMakeFiles/learn.dir/src/main.cpp.o: CMakeFiles/learn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jqz/Desktop/Learn_tips/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/learn.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/learn.dir/src/main.cpp.o -MF CMakeFiles/learn.dir/src/main.cpp.o.d -o CMakeFiles/learn.dir/src/main.cpp.o -c /home/jqz/Desktop/Learn_tips/src/main.cpp

CMakeFiles/learn.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/learn.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jqz/Desktop/Learn_tips/src/main.cpp > CMakeFiles/learn.dir/src/main.cpp.i

CMakeFiles/learn.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/learn.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jqz/Desktop/Learn_tips/src/main.cpp -o CMakeFiles/learn.dir/src/main.cpp.s

# Object files for target learn
learn_OBJECTS = \
"CMakeFiles/learn.dir/src/multithread.cpp.o" \
"CMakeFiles/learn.dir/src/main.cpp.o"

# External object files for target learn
learn_EXTERNAL_OBJECTS =

learn: CMakeFiles/learn.dir/src/multithread.cpp.o
learn: CMakeFiles/learn.dir/src/main.cpp.o
learn: CMakeFiles/learn.dir/build.make
learn: CMakeFiles/learn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/jqz/Desktop/Learn_tips/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable learn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/learn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/learn.dir/build: learn
.PHONY : CMakeFiles/learn.dir/build

CMakeFiles/learn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/learn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/learn.dir/clean

CMakeFiles/learn.dir/depend:
	cd /home/jqz/Desktop/Learn_tips/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jqz/Desktop/Learn_tips /home/jqz/Desktop/Learn_tips /home/jqz/Desktop/Learn_tips/build /home/jqz/Desktop/Learn_tips/build /home/jqz/Desktop/Learn_tips/build/CMakeFiles/learn.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/learn.dir/depend

