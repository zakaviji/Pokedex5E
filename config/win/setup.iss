; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Pokedex5E"
#define MyAppVersion "1.20.0"
#define MyAppPublisher "Jerakin"
#define MyAppURL "pokemon5e.com"
#define MyAppExeName "Pokedex5E.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{9DB14A92-F464-4CA5-8D5B-46A8C2632F48}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\Jerakin\Desktop\builds
OutputBaseFilename=pokedex5e-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\Pokedex5E.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\game.arcd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\game.arci"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\game.dmanifest"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\game.projectc"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\game.public.der"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\OpenAL32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Jerakin\Downloads\Pokedex5E-windows-1.12.0\Pokedex5E\wrap_oal.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent