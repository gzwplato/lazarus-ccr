{ This is an autogenerated unit using gobject introspection. Do not Edit. }
unit xlib2;

{$MODE OBJFPC}{$H+}

{$PACKRECORDS C}
{$MODESWITCH DUPLICATELOCALS+}

interface
uses
  CTypes;

const
  xlib2_library = '';

type

  PPAtom = ^PAtom;
  PAtom = ^TAtom;
  TAtom = culong;

  PPColormap = ^PColormap;
  PColormap = ^TColormap;
  TColormap = culong;

  PPCursor = ^PCursor;
  PCursor = ^TCursor;
  TCursor = culong;

  PPDisplay = ^PDisplay;
  PDisplay = ^TDisplay;

  TDisplay = record
  end;



  PPDrawable = ^PDrawable;
  PDrawable = ^TDrawable;
  TDrawable = culong;

  PPGC = ^PGC;
  PGC = ^TGC;
  TGC = pointer;

  PPKeyCode = ^PKeyCode;
  PKeyCode = ^TKeyCode;
  TKeyCode = cuint8;

  PPKeySym = ^PKeySym;
  PKeySym = ^TKeySym;
  TKeySym = culong;

  PPPicture = ^PPicture;
  PPicture = ^TPicture;
  TPicture = culong;

  PPScreen = ^PScreen;
  PScreen = ^TScreen;

  TScreen = record
  end;



  PPime = ^Pime;
  Pime = ^Time;
  Time = culong;

  PPVisual = ^PVisual;
  PVisual = ^TVisual;

  TVisual = record
  end;



  PPVisualID = ^PVisualID;
  PVisualID = ^TVisualID;
  TVisualID = culong;

  PPWindow = ^PWindow;
  PWindow = ^TWindow;
  TWindow = culong;
  TXEvent = record
  end;



  PPXConfigureEvent = ^PXConfigureEvent;
  PXConfigureEvent = ^TXConfigureEvent;

  TXConfigureEvent = record
  end;



  PPXID = ^PXID;
  PXID = ^TXID;
  TXID = culong;

  PPPixmap = ^PPixmap;
  PPixmap = ^TPixmap;
  TPixmap = culong;

  PPXImage = ^PXImage;
  PXImage = ^TXImage;

  TXImage = record
  end;



  PPXFontStruct = ^PXFontStruct;
  PXFontStruct = ^TXFontStruct;

  TXFontStruct = record
  end;



  PPXTrapezoid = ^PXTrapezoid;
  PXTrapezoid = ^TXTrapezoid;

  TXTrapezoid = record
  end;



  PPXVisualInfo = ^PXVisualInfo;
  PXVisualInfo = ^TXVisualInfo;

  TXVisualInfo = record
  end;



  PPXWindowAttributes = ^PXWindowAttributes;
  PXWindowAttributes = ^TXWindowAttributes;

  TXWindowAttributes = record
  end;



  { void }
  Tvoid = record
    { opaque type }
  end;


procedure XOpenDisplay; cdecl; external;
implementation
end.