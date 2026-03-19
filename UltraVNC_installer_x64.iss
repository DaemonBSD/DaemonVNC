; // This file is part of SysDaemon
; // https://github.com/ultravnc/SysDaemon
; // https://uvnc.com/
; //
; // SPDX-License-Identifier: GPL-3.0-or-later
; //
; // SPDX-FileCopyrightText: Copyright (C) 2002-2025 SysDaemon Team Members. All Rights Reserved.
; // SPDX-FileCopyrightText: Copyright (C) 1999-2002 Vdacc-VNC & eSVNC Projects. All Rights Reserved.
; //


#define MyAppName          "SysDaemon"
#define MyAppID            "Ultravnc2"
#define MyAppPublisher     "SysDaemon Corpba"
#define MyAppCopyright     "Copyright © 2002-2025 SysDaemon Team Members. All Rights Reserved."
#define MyAppPublisherURL  "https://uvnc.com/"
#define MyAppSupportURL    "https://forum.uvnc.com/"
#define MyAppUpdatesURL    "https://uvnc.com/"

#define Major
#define Minor
#define Rev
#define Build
#define MyAppVersion GetVersionComponents('64\xp\sysdaemon.exe', Major, Minor, Rev, Build)
#define MyAppOutputVersion Str(Major) + Str(Minor) + Str(Rev) + Str(Build) 

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion} Development


AppPublisher={#MyAppPublisher}
AppCopyright={#MyAppCopyright}
AppPublisherURL={#MyAppPublisherURL}
AppSupportURL={#MyAppSupportURL}
AppUpdatesURL={#MyAppUpdatesURL}


DefaultDirName={pf}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppName}

WindowVisible=false
DisableStartupPrompt=true
DisableReadyPage=false
ChangesAssociations=true
PrivilegesRequired=admin
AppID={#MyAppID}
UninstallRestartComputer=false
DirExistsWarning=no
OutputDir=setupfile
OutputBaseFilename=SysDaemon_{#MyAppOutputVersion}_x64_Setup
UserInfoPage=false
ShowLanguageDialog=yes
LanguageDetectionMethod=uilanguage
AllowUNCPath=false
WindowShowCaption=false
WindowStartMaximized=false
WindowResizable=false
Compression=lzma/Ultra
AlwaysRestart=false
VersionInfoDescription={#MyAppName} installer
WizardImageBackColor=clWhite
WizardImageStretch=false
SetupIconFile=icon\SysDaemon.ico
WizardImageFile=bmp\SysDaemon-splash.bmp
WizardSmallImageFile=bmp\SysDaemon-logo.bmp
InfoAfterFile=text\Readme.txt
InfoBeforeFile=text\Whatsnew.rtf
LicenseFile=text\Licence.rtf
InternalCompressLevel=Ultra
SolidCompression=true
SignTool=signtool
VersionInfoCompany={#MyAppPublisher}
VersionInfoCopyright={#MyAppCopyright}
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
UninstallDisplayName={#MyAppName}
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
UninstallIconFile={app}\sysdaemon.exe

[Languages]
Name: en; MessagesFile: compiler:Default.isl
Name: de; MessagesFile: compiler:Languages\german.isl
Name: fr; MessagesFile: compiler:Languages\french.isl
Name: it; MessagesFile: compiler:Languages\italian.isl

[CustomMessages]

en.firewall=Configuring Windows firewall...
en.LaunchProgram=Start SysDaemon after finishing installation
en.FullInstall=Full installation
en.CustomInstall=Custom installation
en.RepeaterInstall=Repeater
en.UpgradeInstall=Upgrade
en.ServerOnly=SysDaemon Server Only
en.ServerOnlyS=SysDaemon Server Only "silent"
en.ViewerOnly=SysDaemon Viewer Only
en.InstallService=&Register %1 as a system service
en.ServerConfig=Server configuration:
en.StartService=&Start or restart %1 service
en.CreateDesktopIcons=Create %1 &desktop icons
en.Starting=Starting %1 service...
en.Stopping=Stopping %1 service...
en.Removing=Removing %1 service...
en.Registering=Registering %1 service...
en.Passwd=Check set initial password...
en.IsDonateAndMailDonateHint=Support SysDaemon - Thank you!
en.AddingTrustedPublisher=Adding trusted publisher...
en.InstallingVirtualDriver=Installing virtual driver...
en.UninstallingVirtualDriver=Uninstalling virtual driver...
en.RemovingTrustedPublisher=Removing trusted publisher...
en.AddVirtualMonitorDriverWin10=Add virtual monitor driver (Win 10)
en.ShowLatestVersions=Show latest versions

de.firewall=Die Windows Firewall wird konfiguriert...
;de.LaunchProgram=
de.FullInstall=Vollständige Installation
de.CustomInstall=Benutzerdefinierte Installation
;de.RepeaterInstall=
;de.UpgradeInstall=
de.ServerOnly=Nur SysDaemon Server
de.ServerOnlyS=Nur SysDaemon Server "silent"
de.ViewerOnly=Nur SysDaemon Viewer
de.InstallService=%1 als System-Dienst &registrieren
de.ServerConfig=Server Konfiguration:
de.StartService=%1 Dienst (erneut) &starten
de.CreateDesktopIcons=%1 &Desktop-Symbole anlegen
de.Starting=%1 Dienst starten...
de.Stopping=%1 Dienst stoppen...
de.Removing=%1 Dienst entfernen...
de.Registering=%1 Dienst registrieren...
de.Passwd=Check set initial password...
;de.IsDonateAndMailDonateHint=
;de.AddingTrustedPublisher=
;de.InstallingVirtualDriver=
;de.UninstallingVirtualDriver=
;de.RemovingTrustedPublisher=
;de.AddVirtualMonitorDriverWin10=
;de.ShowLatestVersions=

fr.firewall=Configuration du Pare Feu de Windows...
;fr.LaunchProgram=
fr.FullInstall=Installation complète
fr.CustomInstall=Installation personnalisée
;fr.RepeaterInstall=
;fr.UpgradeInstall=
fr.ServerOnly=Seulement SysDaemon Server
fr.ServerOnlyS=Seulement SysDaemon Server "mode silencieux"
fr.ViewerOnly=Seulement SysDaemon Viewer
fr.InstallService=&Installation et enregistrement d'%1 comme service système
fr.ServerConfig=Configuration serveur:
fr.StartService=&Démarrer ou redémarrer %1 le service
fr.CreateDesktopIcons=Créer les icônes d'%1 sur le &bureau
fr.Starting=Démarrage du service %1...
fr.Stopping=Arrêt du service %1...
fr.Removing=Suppression du service %1...
fr.Registering=Enregistrement du service %1...
fr.Passwd=Vérification du mot de passe initial...
;fr.IsDonateAndMailDonateHint=
;fr.AddingTrustedPublisher=
;fr.InstallingVirtualDriver=
;fr.UninstallingVirtualDriver=
;fr.RemovingTrustedPublisher=
;fr.AddVirtualMonitorDriverWin10=
;fr.ShowLatestVersions=

it.firewall=Configurazione firewall di Windows...
it.LaunchProgram=Avvia SysDaemon dopo aver cmpletato l'installazione
it.FullInstall=Installazione completa
it.CustomInstall=Installazione personalizzata
it.RepeaterInstall=Repeater
it.UpgradeInstall=Aggiorna
it.ServerOnly=Solo SysDaemon Server
it.ServerOnlyS=Solo SysDaemon Server "modalità silenziosa"
it.ViewerOnly=Solo SysDaemon Viewer
it.InstallService=&Registra '%1' come servizio di sistema
it.ServerConfig=Configurazione server:
it.StartService=&Avvia o riavvia servizio '%1'
it.CreateDesktopIcons=Crea icona &desktop %1
it.Starting=Avvio servizio '%1'...
it.Stopping=Stop servizio '%1'...
it.Removing=Rimozione servizio '%1'...
it.Registering=Registrazione servizio '%1'...
it.Passwd=Controllo password iniziale impostata...
it.IsDonateAndMailDonateHint=Supporta SysDaemon - Grazie!
it.AddingTrustedPublisher=Aggiunta di un editore attendibile...
it.InstallingVirtualDriver=Installazione driver virtuale...
it.UninstallingVirtualDriver=Disinstallazione driver virtuale...
it.RemovingTrustedPublisher=Rimozione editore attendibile...
it.AddVirtualMonitorDriverWin10=Aggiungi driver monitor virtuale (Win 10)
it.ShowLatestVersions=Visualizza ultime versioni

[Types]
Name: full; Description: {cm:FullInstall}
Name: server; Description: {cm:ServerOnly}
Name: server_silent; Description: {cm:ServerOnlyS}
Name: viewer; Description: {cm:ViewerOnly}
Name: repeater; Description: {cm:RepeaterInstall}
Name: custom; Description: {cm:CustomInstall}; Flags: iscustom
Name: Upgrade; Description: {cm:UpgradeInstall}

[Components]
Name: "SysDaemon_Repeater"; Description: "SysDaemon Repeater"; Types: full repeater; Flags: disablenouninstallwarning
Name: "SysDaemon_Server"; Description: "SysDaemon Server"; Types: full server; Flags: disablenouninstallwarning
Name: "SysDaemon_Viewer"; Description: "SysDaemon Viewer"; Types: full viewer; Flags: disablenouninstallwarning

[Tasks]
Name: "installservice"; Description: "{cm:InstallService,SysDaemon Server}"; GroupDescription: "{cm:ServerConfig}"; Components: SysDaemon_Server; MinVersion: 0,1; Check: isTaskChecked('installservice')
Name: "installservice"; Description: "{cm:InstallService,SysDaemon Server}"; GroupDescription: "{cm:ServerConfig}"; Components: SysDaemon_Server; MinVersion: 0,1; Flags: unchecked; Check: not(isTaskChecked('installservice'))
Name: "startservice"; Description: "{cm:StartService,SysDaemon}"; GroupDescription: "{cm:ServerConfig}"; Components: SysDaemon_Server ; MinVersion: 0,1; Check: isTaskChecked('startservice')
Name: "startservice"; Description: "{cm:StartService,SysDaemon}"; GroupDescription: "{cm:ServerConfig}"; Components: SysDaemon_Server ; MinVersion: 0,1; Flags: unchecked; Check: not(isTaskChecked('startservice'))
Name: "desktopicon"; Description: "{cm:CreateDesktopIcons,SysDaemon}"; Components: SysDaemon_Viewer SysDaemon_Server ; Check: isTaskChecked('desktopicon')
Name: "desktopicon"; Description: "{cm:CreateDesktopIcons,SysDaemon}"; Components: SysDaemon_Viewer SysDaemon_Server ; Flags: unchecked; Check: not(isTaskChecked('desktopicon'))
Name: "associate"; Description: "{cm:AssocFileExtension,SysDaemon Viewer,.vnc}"; Components: SysDaemon_Viewer; Check: isTaskChecked('associate')
Name: "associate"; Description: "{cm:AssocFileExtension,SysDaemon Viewer,.vnc}"; Components: SysDaemon_Viewer; Flags: unchecked; Check: not(isTaskChecked('associate'))
Name: "installDriver"; Description: "{cm:AddVirtualMonitorDriverWin10}";Components: SysDaemon_Server;  MinVersion: 10.0.1607; Flags: unchecked

[Files]
Source: "bmp\isdonate.bmp"; Flags: dontcopy
; component independent files
Source: "download\isxdl.dll"; Flags: dontcopy
; Add the ISSkin DLL used for skinning Inno Setup installations.
//Source: "style\ISSkin.dll"; DestDir: "{app}"; Flags: dontcopy
; Add the Visual Style resource contains resources used for skinning,
; you can also use Microsoft Visual Styles (*.msstyles) resources.
//Source: "style\Vista.cjstyles"; DestDir: "{tmp}"; Flags: dontcopy
Source: "icon\SysDaemon.ico"; Flags: dontcopy
Source: "bmp\WizModernSmallImage-IS.bmp"; Flags: dontcopy

Source: "helper/check_install.exe"; Flags: dontcopy; Components: SysDaemon_Server; BeforeInstall: StopVNC_S

Source: "text\Whatsnew.rtf"; DestDir: "{app}"
Source: "text\Licence.rtf"; DestDir: "{app}"
Source: "text\Readme.txt"; DestDir: "{app}"

Source: "ultravnc.cer"; DestDir: "{app}"

; server files
; sysdaemon.exe needs to be first here because it triggers stopping SysDaemon Server service/app.
Source: "64\xp\sysdaemon.exe"; DestDir: "{app}"; DestName: "sysdaemon.exe"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\vnchooks.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\ddengine64.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\UVncVirtualDisplay64\*"; DestDir: "{app}\UVncVirtualDisplay64"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\repeater.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Repeater
Source: "64\xp\SecureVNCPlugin64.dsm"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Viewer SysDaemon_Server
//Source: "64\xp\MSRC4Plugin_for_sc.dsm"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Viewer SysDaemon_Server
Source: "64\xp\uvnckeyboardhelper.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
; MS-Logon I files
Source: "64\xp\logging.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\authadmin.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\workgrpdomnt4.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\ldapauth.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\ldapauthnt4.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\logmessages.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\ldapauth9x.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
; MS-Logon II files
Source: "64\xp\authSSP.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\MSLogonACL.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
; viewer files
Source: "64\xp\sysviewer.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Viewer
Source: "64\UVNC_Launch.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Viewer
Source: "64\xp\setcad.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\setpasswd.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\createpassword.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\uvnc_settings.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "64\xp\testauth.exe"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,5.01; Components: SysDaemon_Server
Source: "preconfig\ultravnc.ini"; DestDir: "{app}"; Flags: onlyifdoesntexist; MinVersion: 0,5.01; Components: SysDaemon_Server

; Vista doesn't have a sas.dll
Source: "64\xp\sas.dll"; DestDir: "{app}"; Flags: ignoreversion replacesameversion restartreplace; MinVersion: 0,6.0; OnlyBelowVersion: 0,6.1; Components: SysDaemon_Server

[Icons]
Name: "{userdesktop}\SysDaemon Repeater"; Filename: "{app}\repeater.exe"; IconIndex: 0; Components: SysDaemon_Repeater; Tasks: desktopicon
Name: "{userdesktop}\SysDaemon Server"; Filename: "{app}\sysdaemon.exe"; IconIndex: 0; Components: SysDaemon_Server ; Tasks: desktopicon
Name: "{userdesktop}\SysDaemon Viewer"; Filename: "{app}\sysviewer.exe"; IconIndex: 0; Components: SysDaemon_Viewer; Tasks: desktopicon
Name: "{userdesktop}\SysDaemon Launcher"; Filename: "{app}\UVNC_Launch.exe"; MinVersion: 0,6.0; Components: SysDaemon_Viewer; Tasks: desktopicon

Name: "{group}\SysDaemon Repeater"; Filename: "{app}\repeater.exe"; WorkingDir: "{app}"; IconIndex: 0; Components: SysDaemon_Repeater
Name: "{group}\SysDaemon Server"; Filename: "{app}\WinVNC.exe"; WorkingDir: "{app}"; IconIndex: 0; Components: SysDaemon_Server
Name: "{group}\SysDaemon Viewer"; Filename: "{app}\sysviewer.exe"; WorkingDir: "{app}"; IconIndex: 0; Components: SysDaemon_Viewer
Name: "{group}\SysDaemon Launcher"; Filename: "{app}\UVNC_Launch.exe"; WorkingDir: "{app}"; MinVersion: 0,6.0; Components: SysDaemon_Viewer

Name: "{group}\SysDaemon Server Settings"; Filename: "{app}\uvnc_settings.exe"; WorkingDir: "{app}"; Components: SysDaemon_Server
Name: "{group}\SysDaemon Viewer\SysDaemon Viewer (Listen Mode)"; Filename: "{app}\sysviewer.exe"; WorkingDir: "{app}"; Parameters: "-listen"; Components: SysDaemon_Viewer
Name: "{group}\SysDaemon Viewer\SysDaemon Viewer (Listen Mode Encrypt))"; Filename: "{app}\sysviewer.exe"; WorkingDir: "{app}"; Parameters: "-dsmplugin SecureVNCPlugin.dsm -listen 5500"; Components: SysDaemon_Viewer

[Registry]
Root: HKCR; Subkey: .vnc; ValueType: string; ValueName: ; ValueData: VncViewer.Config; Flags: uninsdeletevalue; Tasks: associate
Root: HKCR; Subkey: VncViewer.Config; ValueType: string; ValueName: ; ValueData: VNCviewer Config File; Flags: uninsdeletekey; Tasks: associate
Root: HKCR; Subkey: VncViewer.Config\DefaultIcon; ValueType: string; ValueName: ; ValueData: {app}\sysviewer.exe,0; Tasks: associate
Root: HKCR; Subkey: VncViewer.Config\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\sysviewer.exe"" -config ""%1"""; Tasks: associate

[Run]
Filename: "certutil.exe"; Parameters: "-addstore ""TrustedPublisher"" ""{app}\ultravnc.cer"""; Flags: runhidden; StatusMsg: "{cm:AddingTrustedPublisher}"; Components: SysDaemon_Server ; Tasks: installDriver
Filename: "{app}\sysdaemon.exe"; Parameters: "-installdriver"; Flags: runhidden; StatusMsg: "{cm:InstallingVirtualDriver}"; Components: SysDaemon_Server ; Tasks: installDriver
Filename: "certutil.exe"; Parameters: "-delstore trustedpublisher 01302f6c9f56b5a7b00d148510a5a59e"; Flags: runhidden; StatusMsg: "{cm:RemovingTrustedPublisher}"; Components: SysDaemon_Server ; Tasks: installDriver

Filename: "{app}\setpasswd.exe"; Parameters: "{param:setpasswd|}"; Flags: runhidden; Components: SysDaemon_Server
Filename: "{app}\setcad.exe"; Flags: runhidden; Components: SysDaemon_Server
Filename: "{app}\sysdaemon.exe"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#MyAppName}}"; Components: SysDaemon_Server ; Tasks: not installservice
Filename: "{app}\WinVNC.exe"; Parameters: "-install"; Flags: runhidden; StatusMsg: "{cm:Registering, SysDaemon}"; Components: SysDaemon_Server ; Tasks: installservice
Filename: "net"; Parameters: "start sysdaemon_sv"; Flags: runhidden; StatusMsg: "{cm:Starting,SysDaemon}"; Components: SysDaemon_Server ; Tasks: startservice
Filename: "{syswow64}\netsh"; Parameters: "firewall add portopening TCP 5900 vnc5900"; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Server
Filename: "{syswow64}\netsh"; Parameters: "firewall add portopening TCP 5800 vnc5800"; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Server
Filename: "{syswow64}\netsh"; Parameters: "firewall add allowedprogram ""{app}\sysdaemon.exe"" ""sysdaemon.exe"" ENABLE ALL"; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Server
Filename: "{syswow64}\netsh"; Parameters: "firewall add allowedprogram ""{app}\sysviewer.exe"" ""sysviewer.exe"" ENABLE ALL"; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Viewer
Filename: "https://uvnc.com/downloads/ultravnc.html"; Flags: nowait postinstall shellexec runasoriginaluser skipifsilent; Description: "{cm:ShowLatestVersions}"

[UninstallRun]
Filename: "pnputil.exe"; Parameters: "/delete-driver ""{app}\UVncVirtualDisplay64\UVncVirtualDisplay.inf"" /uninstall"; WorkingDir: "{app}\UVncVirtualDisplay64"; Flags: 64bit runhidden; StatusMsg: "{cm:UninstallingVirtualDriver}"
Filename: "pnputil.exe"; Parameters: "/delete-driver ""{app}\UVncVirtualDisplay\UVncVirtualDisplay.inf"" /uninstall"; WorkingDir: "{app}\UVncVirtualDisplay"; Flags: 64bit runhidden; StatusMsg: "{cm:UninstallingVirtualDriver}"
Filename: "certutil.exe"; Parameters: "-delstore trustedpublisher 01302f6c9f56b5a7b00d148510a5a59e"; Flags: runhidden; StatusMsg: "{cm:RemovingTrustedPublisher}"
Filename: "net"; Parameters: "stop sysdaemon_sv"; Flags: runhidden; StatusMsg: "{cm:Stopping, SysDaemon}"; RunOnceId: "StopVncService"; Components: SysDaemon_Server
Filename: "{app}\WinVNC.exe"; Parameters: "-uninstall"; Flags: runhidden; StatusMsg: "{cm:Removing,SysDaemon}"; RunOnceId: "RemoveVncService"; Components: SysDaemon_Server
Filename: "{syswow64}\netsh"; Parameters: "firewall delete portopening TCP 5900 vnc5900"; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Server
Filename: "{syswow64}\netsh"; Parameters: "firewall delete portopening TCP 5800 vnc5800"; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Server
Filename: "{syswow64}\netsh"; Parameters: "firewall delete allowedprogram program=""{app}\sysviewer.exe"""; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Viewer
Filename: "{syswow64}\netsh"; Parameters: "firewall delete allowedprogram program=""{app}\sysdaemon.exe"""; Flags: runhidden; StatusMsg: "{cm:firewall}"; MinVersion: 0,5.01; Components: SysDaemon_Server

[_ISTool]
UseAbsolutePaths=true

[ThirdParty]
CompileLogMethod=append

[Code]
var
SelectedTasks: String;
ConCont: Integer;
Fullpassword: STring;

// Importing LoadSkin API from ISSkin.DLL
//procedure LoadSkin(lpszPath: String; lpszIniFileName: String);
//external 'LoadSkin@files:isskin.dll stdcall';
// Importing UnloadSkin API from ISSkin.DLL
//procedure UnloadSkin();
//external 'UnloadSkin@files:isskin.dll stdcall';
// Importing ShowWindow Windows API from User32.DLL
function ShowWindow(hWnd: Integer; uType: Integer): Integer;
external 'ShowWindow@user32.dll stdcall';

//Preinstall is needed to make sure no service
// is running
function Can_cont(): Boolean;
begin
if ConCont <> 5 then
Result := false;
if ConCont = 5  then
  Result := true;
end;

procedure StopVNC_S();
begin
  if UsingWinNT() = True then
  ExtractTemporaryFile('check_install.exe');
  if Exec(ExpandConstant('{tmp}\check_install.exe'), 'silent', '', SW_HIDE, ewWaitUntilTerminated, ConCont) then
  begin
    Log('Checking system status');
  end
  else begin
    Log('Checking system status');
  end;
end;

procedure StopVNC();
begin
  if UsingWinNT() = True then
  ExtractTemporaryFile('check_install.exe');
  if Exec(ExpandConstant('{tmp}\check_install.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ConCont) then
  begin
    Log('Checking system status');
  end
  else begin
    Log('Checking system status');
  end;
end;


function IsTaskChecked(Taskname: String): Boolean;
begin
  Log('SelectedTasks='+SelectedTasks);
  if CompareStr(SelectedTasks, '?') <> 0 then
    Result := (Pos(Taskname, SelectedTasks) > 0)
  else
  begin
    // default if not set through inf file
    Result := false;
    case Taskname of
    'desktopicon':
      Result := true;
    'associate':
      Result := true;
  end;
  end;
end;

function InitializeSetup(): Boolean;
begin
   //ExtractTemporaryFile('Vista.cjstyles');
   //LoadSkin(ExpandConstant('{tmp}\Vista.cjstyles'), '');
   Result := True;
end; 

procedure DeinitializeSetup();
begin
   // Hide Window before unloading skin so user does not get
   // a glimpse of an unskinned window before it is closed.
   ShowWindow(StrToInt(ExpandConstant('{wizardhwnd}')), 0);
   //UnloadSkin();
end;

procedure DonateImageOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExecAsOriginalUser('open', 'https://www.paypal.com/donate/?hosted_button_id=33JBVEGHJNRUC', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

<event('InitializeWizard')>
procedure IsDonateAndMailInitializeWizard;
var
  ImageFileName: String;
  DonateImage, MailImage: TBitmapImage;
  BevelTop: Integer;
begin
  if WizardSilent then
    Exit;

  ImageFileName := ExpandConstant('{tmp}\isdonate.bmp');
  ExtractTemporaryFile(ExtractFileName(ImageFileName));

  DonateImage := TBitmapImage.Create(WizardForm);
  DonateImage.AutoSize := True;
  DonateImage.Bitmap.LoadFromFile(ImageFileName);
  DonateImage.Hint := CustomMessage('IsDonateAndMailDonateHint');
  DonateImage.ShowHint := True;
  DonateImage.Anchors := [akLeft, akBottom];
  BevelTop := WizardForm.Bevel.Top;
  DonateImage.Top := BevelTop + (WizardForm.ClientHeight - BevelTop - DonateImage.Bitmap.Height) div 2;
  DonateImage.Left := DonateImage.Top - BevelTop;
  DonateImage.Cursor := crHand;
  DonateImage.OnClick := @DonateImageOnClick;
  DonateImage.Parent := WizardForm;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  SourceFile, TargetDir, TargetFile: String;
begin
  // Check if we're at the "PostInstall" step
  if CurStep = ssPostInstall then
  begin
    SourceFile := ExpandConstant('{app}\ultravnc.ini');
    TargetDir := ExpandConstant('{commonappdata}\SysDaemon');
    TargetFile := TargetDir + '\ultravnc.ini';

    // Check if the source file exists
    if FileExists(SourceFile) then
    begin
      // Check if the target file already exists
      if not FileExists(TargetFile) then
      begin
        // Ensure the target directory exists
        if not DirExists(TargetDir) then
        begin
          if not CreateDir(TargetDir) then
          begin
            MsgBox('Failed to create target directory: ' + TargetDir, mbError, MB_OK);
            Exit;
          end;
        end;

        // Copy the file to the destination
        if not FileCopy(SourceFile, TargetFile, False) then
        begin
          MsgBox('Failed to copy "' + SourceFile + '" to "' + TargetFile + '".', mbError, MB_OK);
        end
        else
        begin
          MsgBox('File "' + SourceFile + '" successfully copied to "' + TargetFile + '".', mbInformation, MB_OK);
        end;
      end
      else
      begin
        MsgBox('Target file "' + TargetFile + '" already exists. Skipping copy.', mbInformation, MB_OK);
      end;
    end
    else
    begin
      MsgBox('Source file "' + SourceFile + '" does not exist.', mbInformation, MB_OK);
    end;
  end;
end;

[Dirs]

[InnoIDE_Settings]
LogFileOverwrite=false
