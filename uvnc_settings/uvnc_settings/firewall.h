// This file is part of SysDaemon
// https://github.com/ultravnc/SysDaemon
// https://uvnc.com/
//
// SPDX-License-Identifier: GPL-3.0-or-later
//
// SPDX-FileCopyrightText: Copyright (C) 2002-2025 SysDaemon Team Members. All Rights Reserved.
// SPDX-FileCopyrightText: Copyright (C) 1999-2002 Vdacc-VNC & eSVNC Projects. All Rights Reserved.
//


void FirewallCheck(HWND hwnd);
void CheckServiceState();
bool ControlSSDPService(bool start);
bool ControlUPnPPorts(bool open);
bool IsICSConnEnabled();
void checksetport(int port);