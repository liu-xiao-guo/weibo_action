# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/liuxg/demos/weibo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liuxg/demos/weibo

# Include any dependencies generated for this target.
include tests/gmock/gtest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include tests/gmock/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include tests/gmock/gtest/CMakeFiles/gtest_main.dir/flags.make

tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: tests/gmock/gtest/CMakeFiles/gtest_main.dir/flags.make
tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: /usr/src/gtest/src/gtest_main.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/liuxg/demos/weibo/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/liuxg/demos/weibo/tests/gmock/gtest && /usr/bin/arm-linux-gnueabihf-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /usr/src/gtest/src/gtest_main.cc

tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/liuxg/demos/weibo/tests/gmock/gtest && /usr/bin/arm-linux-gnueabihf-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usr/src/gtest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/liuxg/demos/weibo/tests/gmock/gtest && /usr/bin/arm-linux-gnueabihf-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usr/src/gtest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires:
.PHONY : tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires

tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides: tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
	$(MAKE) -f tests/gmock/gtest/CMakeFiles/gtest_main.dir/build.make tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build
.PHONY : tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides

tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build: tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

tests/gmock/gtest/libgtest_main.a: tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
tests/gmock/gtest/libgtest_main.a: tests/gmock/gtest/CMakeFiles/gtest_main.dir/build.make
tests/gmock/gtest/libgtest_main.a: tests/gmock/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libgtest_main.a"
	cd /home/liuxg/demos/weibo/tests/gmock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /home/liuxg/demos/weibo/tests/gmock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/gmock/gtest/CMakeFiles/gtest_main.dir/build: tests/gmock/gtest/libgtest_main.a
.PHONY : tests/gmock/gtest/CMakeFiles/gtest_main.dir/build

tests/gmock/gtest/CMakeFiles/gtest_main.dir/requires: tests/gmock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
.PHONY : tests/gmock/gtest/CMakeFiles/gtest_main.dir/requires

tests/gmock/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /home/liuxg/demos/weibo/tests/gmock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : tests/gmock/gtest/CMakeFiles/gtest_main.dir/clean

tests/gmock/gtest/CMakeFiles/gtest_main.dir/depend:
	cd /home/liuxg/demos/weibo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liuxg/demos/weibo /usr/src/gtest /home/liuxg/demos/weibo /home/liuxg/demos/weibo/tests/gmock/gtest /home/liuxg/demos/weibo/tests/gmock/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/gmock/gtest/CMakeFiles/gtest_main.dir/depend

