
FIND_PACKAGE(OpenCV REQUIRED)
INCLUDE_DIRECTORIES(${OpenCV_INCLUDE_DIRS})

add_executable(warpafine affine.cu main.cpp)
target_link_libraries(warpafine ${OpenCV_LIBS})

