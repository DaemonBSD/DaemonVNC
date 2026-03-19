# // This file is part of SysDaemon
# // https://github.com/sysdaemon/SysDaemon
# // https://uvnc.com/
# //
# // SPDX-License-Identifier: GPL-3.0-or-later
# //
# // SPDX-FileCopyrightText: Copyright (C) 2002-2025 SysDaemon Team Members. All Rights Reserved.
# // SPDX-FileCopyrightText: Copyright (C) 1999-2002 Vdacc-VNC & eSVNC Projects. All Rights Reserved.
# //


project(testauth LANGUAGES CXX RC)

set(${PROJECT_NAME}_SOURCES
    ntlogon.cpp
)
add_executable(${PROJECT_NAME})
foreach(file ${${PROJECT_NAME}_SOURCES})
    target_sources(${PROJECT_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/../addon/ms-logon/testauth/${file}")
endforeach(file)
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_BINARY_DIR}/sysdaemon)
if (MSVC)
    install(FILES $<TARGET_PDB_FILE:${PROJECT_NAME}> DESTINATION ${CMAKE_BINARY_DIR}/sysdaemon OPTIONAL)
endif()
