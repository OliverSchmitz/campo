if(UNIX)
  set(CPACK_PACKAGE_VENDOR "${${PROJECT_NAME}_ORGANISATION_NAME}")
  set(CPACK_RESOURCE_FILE_LICENSE "${PROJECT_SOURCE_DIR}/LICENSE.txt")
  set(CPACK_RESOURCE_FILE_README "${PROJECT_SOURCE_DIR}/README.md")

  set(CPACK_SOURCE_GENERATOR TBZ2)

  set(CPACK_SOURCE_PACKAGE_FILE_NAME "${PROJECT_NAME}-${${PROJECT_NAME}_VERSION}-src")

  file(READ ${CMAKE_CURRENT_LIST_DIR}/CampoPackagingExclude.cmake _cpack_ignore)
  string(REGEX REPLACE "\n" ";" _cpack_ignore ${_cpack_ignore})
  set(CPACK_SOURCE_IGNORE_FILES "${_cpack_ignore}")

  set(CPACK_PACKAGE_CHECKSUM SHA256)


  set(CPACK_GENERATOR TBZ2)

  set(CPACK_PACKAGE_FILE_NAME "${PROJECT_NAME}-${${PROJECT_NAME}_VERSION}")

  include(CPack)

endif()