cmake_minimum_required(VERSION 3.12)
project(my-c-project-1 C)
# my-c-project is a executable file generated during the build and stored in /bin folder automatically
set(CMAKE_C_STANDARD 99)

# Add source files
add_executable(my-c-project-1    #same as this project executable name what you want,
        src/main.c
        lib/mylibrary.c)

# Include directories
target_include_directories(my-c-project-1 PRIVATE include)    #same as this project executable name what you want,

# Output directory for the binary
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

# Output directory for libraries (if any)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
