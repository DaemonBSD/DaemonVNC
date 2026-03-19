# // This file is part of SysDaemon
# // https://github.com/sysdaemon/SysDaemon
# // https://uvnc.com/
# //
# // SPDX-License-Identifier: GPL-3.0-or-later
# //
# // SPDX-FileCopyrightText: Copyright (C) 2002-2025 SysDaemon Team Members. All Rights Reserved.
# // SPDX-FileCopyrightText: Copyright (C) 1999-2002 Vdacc-VNC & eSVNC Projects. All Rights Reserved.
# //


project(librdr LANGUAGES CXX RC)

find_package(zstd CONFIG REQUIRED)
find_package(LibLZMA REQUIRED)

if (NOT TARGET ZLIB::ZLIB)
  if (ZLIB_LIBRARY AND ZLIB_INCLUDE_DIR)
    add_library(ZLIB::ZLIB UNKNOWN IMPORTED)
    set_target_properties(ZLIB::ZLIB PROPERTIES
      IMPORTED_LOCATION "${ZLIB_LIBRARY}"
      INTERFACE_INCLUDE_DIRECTORIES "${ZLIB_INCLUDE_DIR}"
    )
    set(ZLIB_FOUND TRUE)
  else()
    find_package(ZLIB REQUIRED)
  endif()
endif()

set(${PROJECT_NAME}_SOURCES
    FdInStream.cxx
    FdOutStream.cxx
    InStream.cxx
    NullOutStream.cxx
    ZlibInStream.cxx
    ZlibOutStream.cxx
    ZstdInStream.cxx
    ZstdOutStream.cxx
    xzInStream.cxx
    xzOutStream.cxx
)
add_library(${PROJECT_NAME} STATIC)
target_compile_definitions(${PROJECT_NAME} PRIVATE _XZ _VCPKG)
foreach(file ${${PROJECT_NAME}_SOURCES})
    target_sources(${PROJECT_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/../rdr/${file}")
endforeach(file)
target_link_libraries(${PROJECT_NAME}
    PRIVATE ZLIB::ZLIB
    PRIVATE zstd::libzstd
    PRIVATE LibLZMA::LibLZMA
)
