add_library(dictu ALIAS dictu_api_static)
export(
  TARGETS dictu_api_static
  FILE ${PROJECT_BINARY_DIR}/dictu-targets.cmake
)
