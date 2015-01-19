unit fpsTypes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpimage;

type
  {@@ File formats supported by fpspreadsheet }
  TsSpreadsheetFormat = (sfExcel2, sfExcel5, sfExcel8,
   sfOOXML, sfOpenDocument, sfCSV, sfWikiTable_Pipes, sfWikiTable_WikiMedia);

  {@@ Record collection limitations of a particular file format }
  TsSpreadsheetFormatLimitations = record
    MaxRowCount: Cardinal;
    MaxColCount: Cardinal;
    MaxPaletteSize: Integer;
  end;

const
  {@@ Default binary <b>Excel</b> file extension}
  STR_EXCEL_EXTENSION = '.xls';
  {@@ Default xml <b>Excel</b> file extension (>= Excel 2007) }
  STR_OOXML_EXCEL_EXTENSION = '.xlsx';
  {@@ Default <b>OpenDocument</b> spreadsheet file extension }
  STR_OPENDOCUMENT_CALC_EXTENSION = '.ods';
  {@@ Default extension of <b>comma-separated-values</b> file }
  STR_COMMA_SEPARATED_EXTENSION = '.csv';
  {@@ Default extension of <b>wikitable files</b> in <b>pipes</b> format}
  STR_WIKITABLE_PIPES = '.wikitable_pipes';
  {@@ Default extension of <b>wikitable files</b> in <b>wikimedia</b> format }
  STR_WIKITABLE_WIKIMEDIA = '.wikitable_wikimedia';

  {@@ Maximum count of worksheet columns}
  MAX_COL_COUNT = 65535;

  {@@ Name of the default font}
  DEFAULTFONTNAME = 'Arial';
  {@@ Size of the default font}
  DEFAULTFONTSIZE = 10;

  {@@ Takes account of effect of cell margins on row height by adding this
      value to the nominal row height. Note that this is an empirical value
      and may be wrong. }
  ROW_HEIGHT_CORRECTION = 0.2;


type

  {@@ Possible encodings for a non-unicode encoded text }
  TsEncoding = (
    seLatin1,
    seLatin2,
    seCyrillic,
    seGreek,
    seTurkish,
    seHebrew,
    seArabic
    );

  {@@ Tokens to identify the <b>elements in an expanded formula</b>.

   NOTE: When adding or rearranging items
   * make sure that the subtypes TOperandTokens and TBasicOperationTokens
     are complete
   * make sure to keep the table "TokenIDs" in unit xlscommon in sync
  }
  TFEKind = (
    { Basic operands }
    fekCell, fekCellRef, fekCellRange, fekCellOffset, fekNum, fekInteger,
    fekString, fekBool, fekErr, fekMissingArg,
    { Basic operations }
    fekAdd, fekSub, fekMul, fekDiv, fekPercent, fekPower, fekUMinus, fekUPlus,
    fekConcat,  // string concatenation
    fekEqual, fekGreater, fekGreaterEqual, fekLess, fekLessEqual, fekNotEqual,
    fekParen,   // show parenthesis around expression node
    { Functions - they are identified by their name }
    fekFunc
  );

  {@@ These tokens identify operands in RPN formulas. }
  TOperandTokens = fekCell..fekMissingArg;

  {@@ These tokens identify basic operations in RPN formulas. }
  TBasicOperationTokens = fekAdd..fekParen;

type
  {@@ Flags to mark the address or a cell or a range of cells to be <b>absolute</b>
      or <b>relative</b>. They are used in the set TsRelFlags. }
  TsRelFlag = (rfRelRow, rfRelCol, rfRelRow2, rfRelCol2);

  {@@ Flags to mark the address of a cell or a range of cells to be <b>absolute</b>
      or <b>relative</b>. It is a set consisting of TsRelFlag elements. }
  TsRelFlags = set of TsRelFlag;

const
  {@@ Abbreviation of all-relative cell reference flags }
  rfAllRel = [rfRelRow, rfRelCol, rfRelRow2, rfRelCol2];

  {@@ Separator between worksheet name and cell (range) reference in an address }
  SHEETSEPARATOR = '!';

type
  {@@ Elements of an expanded formula.
    Note: If ElementKind is fekCellOffset, "Row" and "Col" have to be cast
          to signed integers! }
  TsFormulaElement = record
    ElementKind: TFEKind;
    Row, Row2: Cardinal;   // zero-based
    Col, Col2: Cardinal;   // zero-based
    Param1, Param2: Word;  // Extra parameters
    DoubleValue: double;
    IntValue: Word;
    StringValue: String;
    RelFlags: TsRelFlags;  // store info on relative/absolute addresses
    FuncName: String;
    ParamsNum: Byte;
  end;

  {@@ RPN formula. Similar to the expanded formula, but in RPN notation.
      Simplifies the task of format writers which need RPN }
  TsRPNFormula = array of TsFormulaElement;

  {@@ Describes the <b>type of content</b> in a cell of a TsWorksheet }
  TCellContentType = (cctEmpty, cctFormula, cctNumber, cctUTF8String,
    cctDateTime, cctBool, cctError);

  {@@ Error code values }
  TsErrorValue = (
    errOK,                 // no error
    errEmptyIntersection,  // #NULL!
    errDivideByZero,       // #DIV/0!
    errWrongType,          // #VALUE!
    errIllegalRef,         // #REF!
    errWrongName,          // #NAME?
    errOverflow,           // #NUM!
    errArgError,           // #N/A
    // --- no Excel errors --
    errFormulaNotSupported
  );

  {@@ List of possible formatting fields }
  TsUsedFormattingField = (uffTextRotation, uffFont, uffBold, uffBorder,
    uffBackgroundColor, uffNumberFormat, uffWordWrap,
    uffHorAlign, uffVertAlign
  );

  {@@ Describes which formatting fields are active }
  TsUsedFormattingFields = set of TsUsedFormattingField;

  {@@ Number/cell formatting. Only uses a subset of the default formats,
      enough to be able to read/write date/time values.
      nfCustom allows to apply a format string directly. }
  TsNumberFormat = (
    // general-purpose for all numbers
    nfGeneral,
    // numbers
    nfFixed, nfFixedTh, nfExp, nfPercentage,
    // currency
    nfCurrency, nfCurrencyRed,
    // dates and times
    nfShortDateTime, {nfFmtDateTime, }nfShortDate, nfLongDate, nfShortTime, nfLongTime,
    nfShortTimeAM, nfLongTimeAM, nfTimeInterval,
    // other (format string goes directly into the file)
    nfCustom);

  {@@ Identifies which "dialect" is used in the format strings:
    nfdDefault is the dialect used by fpc
    fndExcel is the dialect used by Excel }
  TsNumFormatDialect = (nfdDefault, nfdExcel);

const
  { @@ Codes for curreny format according to FormatSettings.CurrencyFormat:
       "C" = currency symbol, "V" = currency value, "S" = space character
       For the negative value formats, we use also:
       "B" = bracket, "M" = Minus

       The order of these characters represents the order of these items.

       Example: 1000 dollars  --> "$1000"  for pCV,   or "1000 $"  for pVsC
               -1000 dollars --> "($1000)" for nbCVb, or "-$ 1000" for nMCSV

       Assignment taken from "sysstr.inc" }
  pcfDefault = -1;   // use value from Worksheet.FormatSettings.CurrencyFormat
  pcfCV      = 0;    // $1000
  pcfVC      = 1;    // 1000$
  pcfCSV     = 2;    // $ 1000
  pcfVSC     = 3;    // 1000 $

  ncfDefault = -1;   // use value from Worksheet.FormatSettings.NegCurrFormat
  ncfBCVB    = 0;    // ($1000)
  ncfMCV     = 1;    // -$1000
  ncfCMV     = 2;    // $-1000
  ncfCVM     = 3;    // $1000-
  ncfBVCB    = 4;    // (1000$)
  ncfMVC     = 5;    // -1000$
  ncfVMC     = 6;    // 1000-$
  ncfVCM     = 7;    // 1000$-
  ncfMVSC    = 8;    // -1000 $
  ncfMCSV    = 9;    // -$ 1000
  ncfVSCM    = 10;   // 1000 $-
  ncfCSVM    = 11;   // $ 1000-
  ncfCSMV    = 12;   // $ -1000
  ncfVMSC    = 13;   // 1000- $
  ncfBCSVB   = 14;   // ($ 1000)
  ncfBVSCB   = 15;   // (1000 $)

type
  {@@ Text rotation formatting. The text is rotated relative to the standard
      orientation, which is from left to right horizontal:
      <pre>
       --->
       ABC </pre>

      So 90 degrees clockwise means that the text will be:
      <pre>
       |  A
       |  B
       v  C </pre>

      And 90 degree counter clockwise will be:
      <pre>
       ^  C
       |  B
       |  A</pre>

      Due to limitations of the text mode the characters are not rotated here.
      There is, however, also a "stacked" variant which looks exactly like
      the former case.
  }
  TsTextRotation = (trHorizontal, rt90DegreeClockwiseRotation,
    rt90DegreeCounterClockwiseRotation, rtStacked);

  {@@ Indicates horizontal text alignment in cells }
  TsHorAlignment = (haDefault, haLeft, haCenter, haRight);

  {@@ Indicates vertical text alignment in cells }
  TsVertAlignment = (vaDefault, vaTop, vaCenter, vaBottom);

  {@@
    Colors in fpspreadsheet are given as indices into a palette.
    Use the workbook's GetPaletteColor to determine the color rgb value as
    little-endian (with "r" being the low-value byte, in agreement with TColor).
    The data type for rgb values is TsColorValue. }
  TsColor = Word;

{@@
  These are some constants for color indices into the default palette.
  Note, however, that if a different palette is used there may be more colors,
  and the names of the color constants may no longer be correct.
}
const
  {@@ Index of <b>black</b> color in the standard color palettes }
  scBlack = $00;
  {@@ Index of <b>white</b> color in the standard color palettes }
  scWhite = $01;
  {@@ Index of <b>red</b> color in the standard color palettes }
  scRed = $02;
  {@@ Index of <b>green</b> color in the standard color palettes }
  scGreen = $03;
  {@@ Index of <b>blue</b> color in the standard color palettes }
  scBlue = $04;
  {@@ Index of <b>yellow</b> color in the standard color palettes }
  scYellow = $05;
  {@@ Index of <b>magenta</b> color in the standard color palettes }
  scMagenta = $06;
  {@@ Index of <b>cyan</b> color in the standard color palettes }
  scCyan = $07;
  {@@ Index of <b>dark red</b> color in the standard color palettes }
  scDarkRed = $08;
  {@@ Index of <b>dark green</b> color in the standard color palettes }
  scDarkGreen = $09;
  {@@ Index of <b>dark blue</b> color in the standard color palettes }
  scDarkBlue = $0A;
  {@@ Index of <b>"navy"</b> color (dark blue) in the standard color palettes }
  scNavy = $0A;
  {@@ Index of <b>olive</b> color in the standard color palettes }
  scOlive = $0B;
  {@@ Index of <b>purple</b> color in the standard color palettes }
  scPurple = $0C;
  {@@ Index of <b>teal</b> color in the standard color palettes }
  scTeal = $0D;
  {@@ Index of <b>silver</b> color in the standard color palettes }
  scSilver = $0E;
  {@@ Index of <b>grey</b> color in the standard color palettes }
  scGrey = $0F;
  {@@ Index of <b>gray</b> color in the standard color palettes }
  scGray = $0F;       // redefine to allow different spelling
  {@@ Index of a <b>10% grey</b> color in the standard color palettes }
  scGrey10pct = $10;
  {@@ Index of a <b>10% gray</b> color in the standard color palettes }
  scGray10pct = $10;
  {@@ Index of a <b>20% grey</b> color in the standard color palettes }
  scGrey20pct = $11;
  {@@ Index of a <b>20% gray</b> color in the standard color palettes }
  scGray20pct = $11;
  {@@ Index of <b>orange</b> color in the standard color palettes }
  scOrange = $12;
  {@@ Index of <b>dark brown</b> color in the standard color palettes }
  scDarkbrown = $13;
  {@@ Index of <b>brown</b> color in the standard color palettes }
  scBrown = $14;
  {@@ Index of <b>beige</b> color in the standard color palettes }
  scBeige = $15;
  {@@ Index of <b>"wheat"</b> color (yellow-orange) in the standard color palettes }
  scWheat = $16;

  // not sure - but I think the mechanism with scRGBColor is not working...
  // Will be removed sooner or later...
  scRGBColor = $FFFF;

  {@@ Identifier for transparent color }
  scTransparent = $FFFE;
  {@@ Identifier for not-defined color }
  scNotDefined = $FFFF;

type
  {@@ Data type for rgb color values }
  TsColorValue = DWord;

  {@@ Palette of color values. A "color value" is a DWord value containing
      rgb colors. }
  TsPalette = array[0..0] of TsColorValue;
  PsPalette = ^TsPalette;

  {@@ Font style (redefined to avoid usage of "Graphics" }
  TsFontStyle = (fssBold, fssItalic, fssStrikeOut, fssUnderline);

  {@@ Set of font styles }
  TsFontStyles = set of TsFontStyle;

  {@@ Font record used in fpspreadsheet. Contains the font name, the font size
      (in points), the font style, and the font color. }
  TsFont = class
    {@@ Name of the font face, such as 'Arial' or 'Times New Roman' }
    FontName: String;
    {@@ Size of the font in points }
    Size: Single;   // in "points"
    {@@ Font style, such as bold, italics etc. - see TsFontStyle}
    Style: TsFontStyles;
    {@@ Text color given by the index into the workbook's color palette }
    Color: TsColor;
  end;

  {@@ Indicates the border for a cell. If included in the CellBorders set the
      corresponding border is drawn in the style defined by the CellBorderStyle. }
  TsCellBorder = (cbNorth, cbWest, cbEast, cbSouth, cbDiagUp, cbDiagDown);

  {@@ Indicates the border for a cell }
  TsCellBorders = set of TsCellBorder;

  {@@ Line style (for cell borders) }
  TsLineStyle = (lsThin, lsMedium, lsDashed, lsDotted, lsThick, lsDouble, lsHair);

  {@@ The Cell border style reocrd contains the linestyle and color of a cell
      border. There is a CellBorderStyle for each border. }
  TsCellBorderStyle = record
    LineStyle: TsLineStyle;
    Color: TsColor;
  end;

  {@@ The cell border styles of each cell border are collected in this array. }
  TsCellBorderStyles = array[TsCellBorder] of TsCellBorderStyle;

  {@@ Border styles for each cell border used by default: a thin, black, solid line }
const
  DEFAULT_BORDERSTYLES: TsCellBorderStyles = (
    (LineStyle: lsThin; Color: scBlack),
    (LineStyle: lsThin; Color: scBlack),
    (LineStyle: lsThin; Color: scBlack),
    (LineStyle: lsThin; Color: scBlack),
    (LineStyle: lsThin; Color: scBlack),
    (LineStyle: lsThin; Color: scBlack)
  );

type
  {@@ Identifier for a compare operation }
  TsCompareOperation = (coNotUsed,
    coEqual, coNotEqual, coLess, coGreater, coLessEqual, coGreaterEqual
  );

  {@@ State flags while calculating formulas }
  TsCalcState = (csNotCalculated, csCalculating, csCalculated);

  {@@ Record combining a cell's row and column indexes }
  TsCellCoord = record
    Row, Col: Cardinal;
  end;

  {@@ Record combining row and column cornder indexes of a range of cells }
  TsCellRange = record
    Row1, Col1, Row2, Col2: Cardinal;
  end;

  {@@ Array with cell ranges }
  TsCellRangeArray = array of TsCellRange;

  {@@ Options for sorting }
  TsSortOption = (ssoDescending, ssoCaseInsensitive);
  {@@ Set of options for sorting }
  TsSortOptions = set of TsSortOption;

  {@@ Sort priority }
  TsSortPriority = (spNumAlpha, spAlphaNum);   // spNumAlpha: Number < Text

  {@@ Sort key: sorted column or row index and sort direction }
  TsSortKey = record
    ColRowIndex: Integer;
    Options: TsSortOptions;
  end;

  {@@ Array of sort keys for multiple sorting criteria }
  TsSortKeys = array of TsSortKey;

  {@@ Complete set of sorting parameters
    @param SortByCols  If true sorting is top-down, otherwise left-right
    @param Priority    Determines whether numbers are before or after text.
    @param SortKeys    Array of sorting indexes and sorting directions }
  TsSortParams = record
    SortByCols: Boolean;
    Priority: TsSortPriority;
    Keys: TsSortKeys;
  end;

  {@@ Record containing all details for cell formatting }
  TsStyle = record
    UsedFormattingFields: TsUsedFormattingFields;
    FontIndex: Integer;
    TextRotation: TsTextRotation;
    HorAlignment: TsHorAlignment;
    VertAlignment: TsVertAlignment;
    Border: TsCellBorders;
    BorderStyles: TsCelLBorderStyles;
    BackgroundColor: TsColor;
    RGBBackgroundColor: TFPColor; // only valid if BackgroundColor=scRGBCOLOR
    NumberFormat: TsNumberFormat;
    NumberFormatStr: String;
  end;


implementation

end.
