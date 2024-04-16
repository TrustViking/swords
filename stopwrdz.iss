; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Stopwrdz"
#define MyAppVersion "1.0"
#define MyAppPublisher "Volunteers of the Creative Society"
#define MyAppURL "https://creativesociety.com"
#define MyAppExeName "stopwrdz.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{160A49BA-E8C3-495D-99DB-C074FFE1A278}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
VersionInfoVersion=1.0.0.0
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=D:\scripts\stopwrdz\LICENSE.txt
InfoBeforeFile=D:\scripts\stopwrdz\befor_install.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\arago\Downloads
OutputBaseFilename=stopwrdz_setup
SetupIconFile=D:\scripts\stopwrdz\stopwrdz_.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
; Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\scripts\stopwrdz\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\scripts\stopwrdz\config.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\scripts\stopwrdz\stopwrdz_.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\scripts\stopwrdz\vocabs\*"; DestDir: "{app}\vocabs"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
; Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
; Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
; Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
;Root: HKCU; Subkey: "Software\Classes\*\shell\RunStopwrdz"; ValueType: string; ValueName: ""; ValueData: "Title to Stopwrdz"; Flags: uninsdeletevalue
;Root: HKCU; Subkey: "Software\Classes\*\shell\RunStopwrdz"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\stopwrdz_.ico"; Flags: uninsdeletevalue
;Root: HKCU; Subkey: "Software\Classes\*\shell\RunStopwrdz\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletevalue

Root: HKCU; Subkey: "Software\Classes\*\shell\RunStopwrdz"; ValueType: string; ValueName: ""; ValueData: "Title to Stopwrdz"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\*\shell\RunStopwrdz"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\stopwrdz_.ico"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\*\shell\RunStopwrdz\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

[UninstallDelete]
; �������� ����� � ����� ��� �������������
Type: filesandordirs; Name: "{app}\*.*"
Type: dirifempty; Name: "{app}"

; �������� ������ �� ������� ��� �������������
; Type: reg; Root: HKCU; Subkey: "Software\Classes\*\shell\RunStopwrdz|"; Flags: deletekey