; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���
#define FileDir "..\Pandora\bin\Release"
; #define OutFileDir ".\"
#define OutFileWebDir "..\..\server\src\main\resources\static\software"
#define MyAppVersion "0.1.5"
#define OutFileName "PandoraBox"
#define MyAppName "PandoraBox"
#define MyAppDir "PandoraBox"
#define MyAppPublisher "PandoraBox"
#define MyAppExeName "PandoraBox.exe"


[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{19DFB321-204B-4415-B0C4-1929617CB895}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppDir}
DefaultGroupName={#MyAppName}
; OutputDir={#OutFileDir}
OutputDir={#OutFileWebDir}
OutputBaseFilename={#OutFileName}
SetupIconFile=..\Pandora\resources\icon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone;

[Files]
Source: "{#FileDir}\MaterialSkin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#FileDir}\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#FileDir}\PandoraBox.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#FileDir}\PandoraBox.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#FileDir}\System.Data.SQLite.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#FileDir}\file\Pandora.sqlite"; DestDir: "{app}\file"; Flags: ignoreversion
Source: "{#FileDir}\file\pandoraCache.txt"; DestDir: "{app}\file"; Flags: ignoreversion
Source: "{#FileDir}\x64\SQLite.Interop.dll"; DestDir: "{app}\x64"; Flags: ignoreversion
Source: "{#FileDir}\x86\SQLite.Interop.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Dirs]
Name: {app}\file
Name: {app}\x86
Name: {app}\x64

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
;[Run]
;Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

