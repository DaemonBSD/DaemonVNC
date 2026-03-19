# // This file is part of SysDaemon
# // https://github.com/sysdaemon/SysDaemon
# // https://uvnc.com/
# //
# // SPDX-License-Identifier: GPL-3.0-or-later
# //
# // SPDX-FileCopyrightText: Copyright (C) 2002-2025 SysDaemon Team Members. All Rights Reserved.
# // SPDX-FileCopyrightText: Copyright (C) 1999-2002 Vdacc-VNC & eSVNC Projects. All Rights Reserved.
# //


project(ldapauth LANGUAGES CXX RC)

set(${PROJECT_NAME}_SOURCES
    ldapAuth.cpp
)
add_library(${PROJECT_NAME} SHARED)
foreach(file ${${PROJECT_NAME}_SOURCES})
    target_sources(${PROJECT_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/../addon/ms-logon/ldapauth/${file}")
endforeach(file)
target_sources(${PROJECT_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/../addon/ms-logon/ldapauth/ldapAuth.rc")
set_source_files_properties(${CMAKE_SOURCE_DIR}/../addon/ms-logon/ldapauth/ldapAuth.rc LANGUAGE RC)
target_compile_definitions(${PROJECT_NAME} PRIVATE NDEBUG WIN32 _WINDOWS LDAPAUTH_EXPORTS UNICODE=1 _UNICODE=1)
if (MINGW)
    target_link_options(${PROJECT_NAME} PRIVATE "-municode")
endif()
set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "")
target_link_libraries(ldapauth PRIVATE activeds adsldpc uuid ole32 oleaut32 netapi32)
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_BINARY_DIR}/sysdaemon)
if (MSVC)
    install(FILES $<TARGET_PDB_FILE:${PROJECT_NAME}> DESTINATION ${CMAKE_BINARY_DIR}/sysdaemon OPTIONAL)
endif()
