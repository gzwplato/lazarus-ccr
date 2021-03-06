; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=FPChess
AppVerName=FPChess v0.6
AppPublisherURL=http://wiki.lazarus.freepascal.org/fpChess
AppSupportURL=http://wiki.lazarus.freepascal.org/fpChess
AppUpdatesURL=http://wiki.lazarus.freepascal.org/fpChess
DefaultDirName={pf}\FPChess
DefaultGroupName=Free Pascal Applications Suite
; LicenseFile=..\license.txt
OutputDir=.\
OutputBaseFilename=FPChess0.6_install
Compression=lzma
SolidCompression=yes
VersionInfoVersion=0.6
AllowNoIcons=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\fpchess.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\skins\classic\*.png"; DestDir: "{app}\skins\classic"; Flags: ignoreversion
; Source: "..\Images\*.png"; DestDir: "{app}\Images"; Flags: ignoreversion
; Source: "..\libraries\pas_overlays\pas_overlays.dll"; DestDir: "{app}"; Flags: ignoreversion
; Source: "..\libraries\videocard_checker\videocard_checker.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\FPChess"; Filename: "{app}\fpchess.exe"
Name: "{group}\{cm:ProgramOnTheWeb,FPChess}"; Filename: "http://wiki.lazarus.freepascal.org/fpChess"
Name: "{group}\{cm:UninstallProgram,FPChess}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\FPChess"; Filename: "{app}\fpchess.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\fpchess.exe"; Description: "{cm:LaunchProgram,FPChess}"; Flags: nowait postinstall skipifsilent



