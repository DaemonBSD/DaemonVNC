# // This file is part of SysDaemon
# // https://github.com/sysdaemon/SysDaemon
# // https://uvnc.com/
# //
# // SPDX-License-Identifier: GPL-3.0-or-later
# //
# // SPDX-FileCopyrightText: Copyright (C) 2002-2025 SysDaemon Team Members. All Rights Reserved.
# // SPDX-FileCopyrightText: Copyright (C) 1999-2002 Vdacc-VNC & eSVNC Projects. All Rights Reserved.
# //


project(logging LANGUAGES CXX RC)

set(${PROJECT_NAME}_SOURCES
    logging.cpp
)
add_library(${PROJECT_NAME} SHARED)
foreach(file ${${PROJECT_NAME}_SOURCES})
    target_sources(${PROJECT_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/../addon/ms-logon/logging/${file}")
endforeach(file)
target_sources(${PROJECT_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/../addon/ms-logon/logging/logging.rc")
set_source_files_properties(${CMAKE_SOURCE_DIR}/../addon/ms-logon/logging/logging.rc LANGUAGE RC)
target_compile_definitions(${PROJECT_NAME} PRIVATE WIN32 NDEBUG _WINDOWS LOGGING_EXPORTS)
set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "")
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_BINARY_DIR}/sysdaemon)
if (MSVC)
    install(FILES $<TARGET_PDB_FILE:${PROJECT_NAME}> DESTINATION ${CMAKE_BINARY_DIR}/sysdaemon OPTIONAL)
endif()
