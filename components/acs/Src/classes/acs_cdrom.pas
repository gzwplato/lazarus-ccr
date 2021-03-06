(*
  this file is a part of audio components suite
  see the license file for more details.
  you can contact me at mail@z0m3ie.de

  Special thanks to Thomas Grelle <grelle@online.de> for improving this unit.

$Log: acs_cdrom.pas,v $
Revision 1.11  2006/08/31 20:10:54  z0m3ie
*** empty log message ***

Revision 1.10  2006/07/04 17:12:45  z0m3ie
ACS 2.4 alt wiederhergestellt (unterschiedliche Sampleformate ...)

Revision 1.2  2005/12/26 17:31:38  z0m3ie
fixed some problems in acs_dsfiles
fixed some problems in acs_vorbis
reworked all buffers

Revision 1.1  2005/12/19 18:34:35  z0m3ie
*** empty log message ***

Revision 1.7  2005/12/18 17:01:54  z0m3ie
delphi compatibility

Revision 1.6  2005/12/04 16:54:33  z0m3ie
All classes are renamed, Style TACS... than T... to avoid conflicts with other components (eg TMixer is TACSMixer now)

Revision 1.5  2005/11/28 21:57:24  z0m3ie
mostly FileOut fixes
moved PBuffer to PBuffer8
set all to dynamically Buffering

Revision 1.4  2005/10/02 16:51:46  z0m3ie
*** empty log message ***

Revision 1.3  2005/09/15 20:59:38  z0m3ie
start translate the documentation in the source for pasdoc

Revision 1.2  2005/09/13 21:54:11  z0m3ie
acs is localizeable now (ACS_Strings)

Revision 1.1  2005/09/12 22:04:52  z0m3ie
modified structure again, fileformats are now in an sperat folder.
all File In/Out classes are capsulated from TFileIn and TFileOut

Revision 1.6  2005/09/09 21:33:42  z0m3ie
linux corrections

Revision 1.5  2005/09/08 22:18:59  z0m3ie
completed akrip based CDIn

Revision 1.4  2005/09/07 20:53:22  z0m3ie
begon to add MPEG and WMA support using DirectX

Revision 1.3  2005/09/04 17:59:37  z0m3ie
moving CDIn support to AKRip mostly
begon to add mpegin support for Win with mpg123

Revision 1.2  2005/08/28 20:31:17  z0m3ie
linux restructuring for 2.4

Revision 1.1  2005/08/25 20:18:00  z0m3ie
Version 2.4 restructure
TCDPlayer removed (fits not in component structure)
TMP3ToWavConverter removed (fits not in component structure)

Revision 1.5  2005/08/22 20:17:02  z0m3ie
changed Headers to log
changed mail adress
*)

{
@abstract(this unit introduces the base classes for acs)
@author(Andrei Borovsky (2003-2005))
@author(Christian Ulrich (2005))
}


unit acs_cdrom;

{$ifdef fpc}
{$mode delphi}
{$endif}

interface

uses
  Classes, SysUtils, ACS_Classes,ACS_Strings,ACS_Types
  {$IFDEF MSWINDOWS}
  ,Windows, MMSystem, akrip32
  {$ELSE}
  ,baseunix,cd_rom
  {$ENDIF}
  ;

type
  {$IFDEF MSWINDOWS}
  {$IFDEF FPC}
  TAuxCaps = AUXCAPS;
  {$ENDIF}
  {$ENDIF}

  TACSCDStatus = (cdsNotReady, cdsReady, cdsPlaying, cdsPaused);
  TACSTrackType = (ttAudio, ttData);
  TACSCDInfo = (cdiNoDisc, cdiDiscAudio, cdiDiscData, cdiDiscMixed, cdiUnknown);
  TACSMCN = array[0..13] of Char;

  TACSCDMSF = record
    Minute : Byte;
    Second : Byte;
    Frame : Byte;
  end;
  PACSCDMSF = ^TACSCDMSF;

  TACSCDTrackInfo = record
    TrackStart: TACSCDMSF;
    TrackLength : TACSCDMSF;
    TrackType : TACSTrackType;
  end;

  TACSCDPosition = record
    Track : Integer;
    MSF : TACSCDMSF;
  end;

const

  EndOfDisc : TACSCDPosition = (Track : 100; MSF : (Minute : 0; Second : 0; Frame : 0));
  CD_FRAMESIZE_RAW = 2352;
  BUF_SIZE = 50;  // 75 frames - 1 sec

var
  AppPath : String;
  WinPath : String;

type  

  { This is the cdreader component of acs it reads in windows with aspi
    and linux direct from device
  }

  TACSCDIn = class(TACSCustomInput)
  private
    FBuffer : array of byte;
    FCurrentDrive : Integer;
    FStartTrack, FEndTrack : Integer;
    FStartPos, FEndPos: TACSCDPosition;
    FRipEnd : Integer;
    FCDDBId: Longint;
    {$IFDEF LINUX}
    FOpened : Integer;
    FCurPos,FEndMSF : TACSCDMSF;
    FDrivesCount : Integer;
    _cd_fd : Integer;
    BufSize : Integer;
    {$ELSE}
    FToc: TOC;
    FCDList: CDLIST;
    FCDHandle : HCDROM;
    FPlaying : Boolean;
    FRipStart : LongInt;
    FiBuffer : PTRACKBUF;
    {$ENDIF}
    procedure OpenCD;
    procedure CloseCD;
    function GetStatus : TACSCDStatus;
    function GetNumTracks : Integer;
    function GetTrackInfo(const vIndex : Integer) : TACSCDTrackInfo;
    procedure SetST(Track : Integer);
    procedure SetET(Track : Integer);
    procedure SetSP(Pos : TACSCDPosition);
    procedure SetEP(Pos : TACSCDPosition);
    function GetSize : Integer;
    function GetInfo : TACSCDInfo;
    function GetDrivesCount : Integer;
    procedure SetCurrentDrive(Value : Integer);
    function GetDriveName : String;
    function GetCDDBID : LongInt;
    function GetTotalTime : real; override;
  protected
    function GetBPS : Integer; override;
    function GetCh : Integer; override;
    function GetSR : Integer; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetData(Buffer : Pointer; BufferSize : Integer): Integer; override;
    procedure Init; override;
    procedure Flush; override;
    procedure Eject;
    procedure CloseTray;
    property DiscInfo: TACSCDInfo read GetInfo;
    property Status: TACSCDStatus read GetStatus;
    property Tracks[const vIndex : Integer] : TACSCDTrackInfo read GetTrackInfo;
    property TracksCount : Integer read GetNumTracks;
    property DriveName : String read GetDriveName;
    property DrivesCount : Integer read GetDrivesCount;
    property StartPos : TACSCDPosition read FStartPos write SetSP;
    property EndPos : TACSCDPosition read FEndPos write SetEP;
    property CDDBId : LongInt read GetCDDBID;
  published
    property CurrentDrive : Integer read FCurrentDrive write SetCurrentDrive;
    property StartTrack: Integer read FStartTrack write SetSt;
    property EndTrack: Integer read FEndTrack write SetET;
  end;

  function MSFToStr(const MSF : TACSCDMSF) : String;
  procedure Frames2MSF(Frames : Integer; var MSF : TACSCDMSF);
  function MSF2Frames(const MSF : TACSCDMSF) : Integer;
  
  {$IFDEF LINUX}
  var
    DrivesCount : Integer;
    DrivesPaths : array of string;
  
  procedure CountDrives;
  {$ENDIF}

implementation

{$I ACS_CDROM.inc}

  function MSFToStr(const MSF : TACSCDMSF) : String;
  var
    sep : String;
    sec, min : Integer;
  begin
    min := MSF.Minute;
    if MSF.Frame > 37 then
    begin
      sec := MSF.Second + 1;
      if sec = 60 then
      begin
        Inc(min);
        sec := 0;
      end;
    end
    else sec := MSF.Second;
    if sec<10 then sep := ':0'
    else sep := ':';
    Result := IntToStr(min) + sep + IntToStr(sec);
  end;

  procedure Frames2MSF(Frames : Integer; var MSF : TACSCDMSF);
  var
    Temp : Integer;
  begin
    Temp := Frames div 75;
    MSF.Minute := Temp div 60;
    MSF.Second := Temp mod 60;
    MSF.Frame := Frames mod 75;
  end;

  function MSF2Frames(const MSF : TACSCDMSF) : Integer;
  begin
    Result := ((MSF.Minute * 60) + MSF.Second) * 75 + MSF.Frame;
  end;

  function TACSCDIn.GetBPS : Integer;
  begin
    Result := 16;
  end;

  function TACSCDIn.GetCh : Integer;
  begin
    Result := 2;
  end;

  function TACSCDIn.GetSR : Integer;
  begin
    Result := 44100;
  end;

  function TACSCDIn.GetTotalTime : real;
  begin
    if (SampleRate = 0) or (Channels = 0) or (BitsPerSample = 0) then
      Exit;
    Result := Size/(SampleRate*Channels*(BitsPerSample shr 3));
  end;

  function TACSCDIn.GetCDDBID: LongInt;
    FUNCTION prg_sum(n: integer): integer;
    VAR
      buf: STRING;
      ib: Integer;
    BEGIN
      buf := IntToStr(n);
      Result := 0;
      FOR ib := 1 TO Length(buf) DO
        Result := Result + (StrToInt(Copy(Buf, ib, 1)));
    END;
  VAR
    i, N, L: Longint;
    CDM: TACSCDMSF;
  BEGIN
    N := 0;
    L := 0;
    FOR i := 0 TO GetNumTracks-1 DO
      BEGIN
        WITH Tracks[i].TrackStart DO
          BEGIN
            N := N + prg_sum((minute * 60) + second + 2);
            L := L + MSF2Frames(Tracks[i].TrackLength);
            // adjust the length of last audio track if a data track is following
            IF (i > 0) AND (i = TracksCount - 2) AND (Tracks[i + 1].TrackType = ttData) THEN
              inc(L, 152 * 75);
          END;
      END;
    Frames2MSF(L, CDM);
    L := CDM.Minute * 60 + CDM.Second;
    Result := ((N MOD $0FF) SHL 24) XOR (L SHL 8) XOR TracksCount;
    FCDDBId := Result;
  end;
  
{$IFDEF LINUX}
initialization
  CountDrives;
{$ENDIF}

end.
