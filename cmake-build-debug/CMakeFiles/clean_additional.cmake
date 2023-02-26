# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Invex_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Invex_autogen.dir\\ParseCache.txt"
  "Invex_autogen"
  )
endif()
