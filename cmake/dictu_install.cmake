include(GNUInstallDirs)
install(TARGETS dictu_api_static
    EXPORT dictu-export
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

install(DIRECTORY src/include DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

include(CMakePackageConfigHelpers)
configure_package_config_file(cmake/dictu-config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/dictu-config.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/dictu/cmake
  PATH_VARS CMAKE_INSTALL_INCLUDEDIR
)
# write_basic_package_version_file(
#   dictu-config-version.cmake
#   VERSION ${PACKAGE_VERSION}
#   COMPATIBILITY AnyNewerVersion
# )

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/dictu-config.cmake
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/dictu
)
install(EXPORT dictu-export
  FILE dictu-config-version.cmake
  NAMESPACE dictu::
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/dictu
)
