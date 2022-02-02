# Install script for directory: C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files/mingw-w64/x86_64-8.1.0-posix-seh-rt_v6-rev0/mingw64/bin/objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/include" FILES_MATCHING REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.inl$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/SFML" TYPE FILE FILES "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/license.md")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/SFML" TYPE FILE FILES "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/readme.md")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY FILES "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/extlibs/bin/x64/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/extlibs/libs-mingw/x64/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SFML/SFMLSharedTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SFML/SFMLSharedTargets.cmake"
         "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/CMakeFiles/Export/lib/cmake/SFML/SFMLSharedTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SFML/SFMLSharedTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SFML/SFMLSharedTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SFML" TYPE FILE FILES "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/CMakeFiles/Export/lib/cmake/SFML/SFMLSharedTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SFML" TYPE FILE FILES "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/CMakeFiles/Export/lib/cmake/SFML/SFMLSharedTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SFML" TYPE FILE FILES
    "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/SFMLConfig.cmake"
    "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/SFMLConfigDependencies.cmake"
    "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/SFMLConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/src/SFML/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/namei/OneDrive - Washington State University (email.wsu.edu)/CPT_S 122 Fall 2019/Flappy Bird/External Libraries/SFML/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
