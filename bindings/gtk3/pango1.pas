unit Pango1;

{$MODE OBJFPC}{$H+}

{$PACKRECORDS C}
{$BITPACKING ON}
{$MODESWITCH DUPLICATELOCALS+}

{$LINKLIB libpango-1.0.so.0}
interface
uses
  CTypes, GLib2, GObject2, cairo1;

const
  Pango1_library = 'libpango-1.0.so.0';

  ANALYSIS_FLAG_CENTERED_BASELINE = 1;
  ATTR_INDEX_FROM_TEXT_BEGINNING = 0;
  ENGINE_TYPE_LANG = 'PangoEngineLang';
  ENGINE_TYPE_SHAPE = 'PangoEngineShape';
  RENDER_TYPE_NONE = 'PangoRenderNone';
  SCALE = 1024;
  UNKNOWN_GLYPH_HEIGHT = 14;
  UNKNOWN_GLYPH_WIDTH = 10;

type
  TPangoAlignment = Integer;
const
  { PangoAlignment }
  PANGO_ALIGN_LEFT: TPangoAlignment = 0;
  PANGO_ALIGN_CENTER: TPangoAlignment = 1;
  PANGO_ALIGN_RIGHT: TPangoAlignment = 2;

type
  TPangoScript = Integer;
const
  { PangoScript }
  PANGO_SCRIPT_INVALID_CODE: TPangoScript = -1;
  PANGO_SCRIPT_COMMON: TPangoScript = 0;
  PANGO_SCRIPT_INHERITED: TPangoScript = 1;
  PANGO_SCRIPT_ARABIC: TPangoScript = 2;
  PANGO_SCRIPT_ARMENIAN: TPangoScript = 3;
  PANGO_SCRIPT_BENGALI: TPangoScript = 4;
  PANGO_SCRIPT_BOPOMOFO: TPangoScript = 5;
  PANGO_SCRIPT_CHEROKEE: TPangoScript = 6;
  PANGO_SCRIPT_COPTIC: TPangoScript = 7;
  PANGO_SCRIPT_CYRILLIC: TPangoScript = 8;
  PANGO_SCRIPT_DESERET: TPangoScript = 9;
  PANGO_SCRIPT_DEVANAGARI: TPangoScript = 10;
  PANGO_SCRIPT_ETHIOPIC: TPangoScript = 11;
  PANGO_SCRIPT_GEORGIAN: TPangoScript = 12;
  PANGO_SCRIPT_GOTHIC: TPangoScript = 13;
  PANGO_SCRIPT_GREEK: TPangoScript = 14;
  PANGO_SCRIPT_GUJARATI: TPangoScript = 15;
  PANGO_SCRIPT_GURMUKHI: TPangoScript = 16;
  PANGO_SCRIPT_HAN: TPangoScript = 17;
  PANGO_SCRIPT_HANGUL: TPangoScript = 18;
  PANGO_SCRIPT_HEBREW: TPangoScript = 19;
  PANGO_SCRIPT_HIRAGANA: TPangoScript = 20;
  PANGO_SCRIPT_KANNADA: TPangoScript = 21;
  PANGO_SCRIPT_KATAKANA: TPangoScript = 22;
  PANGO_SCRIPT_KHMER: TPangoScript = 23;
  PANGO_SCRIPT_LAO: TPangoScript = 24;
  PANGO_SCRIPT_LATIN: TPangoScript = 25;
  PANGO_SCRIPT_MALAYALAM: TPangoScript = 26;
  PANGO_SCRIPT_MONGOLIAN: TPangoScript = 27;
  PANGO_SCRIPT_MYANMAR: TPangoScript = 28;
  PANGO_SCRIPT_OGHAM: TPangoScript = 29;
  PANGO_SCRIPT_OLD_ITALIC: TPangoScript = 30;
  PANGO_SCRIPT_ORIYA: TPangoScript = 31;
  PANGO_SCRIPT_RUNIC: TPangoScript = 32;
  PANGO_SCRIPT_SINHALA: TPangoScript = 33;
  PANGO_SCRIPT_SYRIAC: TPangoScript = 34;
  PANGO_SCRIPT_TAMIL: TPangoScript = 35;
  PANGO_SCRIPT_TELUGU: TPangoScript = 36;
  PANGO_SCRIPT_THAANA: TPangoScript = 37;
  PANGO_SCRIPT_THAI: TPangoScript = 38;
  PANGO_SCRIPT_TIBETAN: TPangoScript = 39;
  PANGO_SCRIPT_CANADIAN_ABORIGINAL: TPangoScript = 40;
  PANGO_SCRIPT_YI: TPangoScript = 41;
  PANGO_SCRIPT_TAGALOG: TPangoScript = 42;
  PANGO_SCRIPT_HANUNOO: TPangoScript = 43;
  PANGO_SCRIPT_BUHID: TPangoScript = 44;
  PANGO_SCRIPT_TAGBANWA: TPangoScript = 45;
  PANGO_SCRIPT_BRAILLE: TPangoScript = 46;
  PANGO_SCRIPT_CYPRIOT: TPangoScript = 47;
  PANGO_SCRIPT_LIMBU: TPangoScript = 48;
  PANGO_SCRIPT_OSMANYA: TPangoScript = 49;
  PANGO_SCRIPT_SHAVIAN: TPangoScript = 50;
  PANGO_SCRIPT_LINEAR_B: TPangoScript = 51;
  PANGO_SCRIPT_TAI_LE: TPangoScript = 52;
  PANGO_SCRIPT_UGARITIC: TPangoScript = 53;
  PANGO_SCRIPT_NEW_TAI_LUE: TPangoScript = 54;
  PANGO_SCRIPT_BUGINESE: TPangoScript = 55;
  PANGO_SCRIPT_GLAGOLITIC: TPangoScript = 56;
  PANGO_SCRIPT_TIFINAGH: TPangoScript = 57;
  PANGO_SCRIPT_SYLOTI_NAGRI: TPangoScript = 58;
  PANGO_SCRIPT_OLD_PERSIAN: TPangoScript = 59;
  PANGO_SCRIPT_KHAROSHTHI: TPangoScript = 60;
  PANGO_SCRIPT_UNKNOWN: TPangoScript = 61;
  PANGO_SCRIPT_BALINESE: TPangoScript = 62;
  PANGO_SCRIPT_CUNEIFORM: TPangoScript = 63;
  PANGO_SCRIPT_PHOENICIAN: TPangoScript = 64;
  PANGO_SCRIPT_PHAGS_PA: TPangoScript = 65;
  PANGO_SCRIPT_NKO: TPangoScript = 66;
  PANGO_SCRIPT_KAYAH_LI: TPangoScript = 67;
  PANGO_SCRIPT_LEPCHA: TPangoScript = 68;
  PANGO_SCRIPT_REJANG: TPangoScript = 69;
  PANGO_SCRIPT_SUNDANESE: TPangoScript = 70;
  PANGO_SCRIPT_SAURASHTRA: TPangoScript = 71;
  PANGO_SCRIPT_CHAM: TPangoScript = 72;
  PANGO_SCRIPT_OL_CHIKI: TPangoScript = 73;
  PANGO_SCRIPT_VAI: TPangoScript = 74;
  PANGO_SCRIPT_CARIAN: TPangoScript = 75;
  PANGO_SCRIPT_LYCIAN: TPangoScript = 76;
  PANGO_SCRIPT_LYDIAN: TPangoScript = 77;

type
  TPangoAttrType = Integer;
const
  { PangoAttrType }
  PANGO_ATTR_INVALID: TPangoAttrType = 0;
  PANGO_ATTR_LANGUAGE: TPangoAttrType = 1;
  PANGO_ATTR_FAMILY: TPangoAttrType = 2;
  PANGO_ATTR_STYLE: TPangoAttrType = 3;
  PANGO_ATTR_WEIGHT: TPangoAttrType = 4;
  PANGO_ATTR_VARIANT: TPangoAttrType = 5;
  PANGO_ATTR_STRETCH: TPangoAttrType = 6;
  PANGO_ATTR_SIZE: TPangoAttrType = 7;
  PANGO_ATTR_FONT_DESC: TPangoAttrType = 8;
  PANGO_ATTR_FOREGROUND: TPangoAttrType = 9;
  PANGO_ATTR_BACKGROUND: TPangoAttrType = 10;
  PANGO_ATTR_UNDERLINE: TPangoAttrType = 11;
  PANGO_ATTR_STRIKETHROUGH: TPangoAttrType = 12;
  PANGO_ATTR_RISE: TPangoAttrType = 13;
  PANGO_ATTR_SHAPE: TPangoAttrType = 14;
  PANGO_ATTR_SCALE: TPangoAttrType = 15;
  PANGO_ATTR_FALLBACK: TPangoAttrType = 16;
  PANGO_ATTR_LETTER_SPACING: TPangoAttrType = 17;
  PANGO_ATTR_UNDERLINE_COLOR: TPangoAttrType = 18;
  PANGO_ATTR_STRIKETHROUGH_COLOR: TPangoAttrType = 19;
  PANGO_ATTR_ABSOLUTE_SIZE: TPangoAttrType = 20;
  PANGO_ATTR_GRAVITY: TPangoAttrType = 21;
  PANGO_ATTR_GRAVITY_HINT: TPangoAttrType = 22;

  { PangoFontMask }
  PANGO_FONT_MASK_FAMILY = 1;
  PANGO_FONT_MASK_STYLE = 2;
  PANGO_FONT_MASK_VARIANT = 4;
  PANGO_FONT_MASK_WEIGHT = 8;
  PANGO_FONT_MASK_STRETCH = 16;
  PANGO_FONT_MASK_SIZE = 32;
  PANGO_FONT_MASK_GRAVITY = 64;

type
  TPangoGravity = Integer;
const
  { PangoGravity }
  PANGO_GRAVITY_SOUTH: TPangoGravity = 0;
  PANGO_GRAVITY_EAST: TPangoGravity = 1;
  PANGO_GRAVITY_NORTH: TPangoGravity = 2;
  PANGO_GRAVITY_WEST: TPangoGravity = 3;
  PANGO_GRAVITY_AUTO: TPangoGravity = 4;

type
  TPangoStretch = Integer;
const
  { PangoStretch }
  PANGO_STRETCH_ULTRA_CONDENSED: TPangoStretch = 0;
  PANGO_STRETCH_EXTRA_CONDENSED: TPangoStretch = 1;
  PANGO_STRETCH_CONDENSED: TPangoStretch = 2;
  PANGO_STRETCH_SEMI_CONDENSED: TPangoStretch = 3;
  PANGO_STRETCH_NORMAL: TPangoStretch = 4;
  PANGO_STRETCH_SEMI_EXPANDED: TPangoStretch = 5;
  PANGO_STRETCH_EXPANDED: TPangoStretch = 6;
  PANGO_STRETCH_EXTRA_EXPANDED: TPangoStretch = 7;
  PANGO_STRETCH_ULTRA_EXPANDED: TPangoStretch = 8;

type
  TPangoStyle = Integer;
const
  { PangoStyle }
  PANGO_STYLE_NORMAL: TPangoStyle = 0;
  PANGO_STYLE_OBLIQUE: TPangoStyle = 1;
  PANGO_STYLE_ITALIC: TPangoStyle = 2;

type
  TPangoWeight = Integer;
const
  { PangoWeight }
  PANGO_WEIGHT_THIN: TPangoWeight = 100;
  PANGO_WEIGHT_ULTRALIGHT: TPangoWeight = 200;
  PANGO_WEIGHT_LIGHT: TPangoWeight = 300;
  PANGO_WEIGHT_BOOK: TPangoWeight = 380;
  PANGO_WEIGHT_NORMAL: TPangoWeight = 400;
  PANGO_WEIGHT_MEDIUM: TPangoWeight = 500;
  PANGO_WEIGHT_SEMIBOLD: TPangoWeight = 600;
  PANGO_WEIGHT_BOLD: TPangoWeight = 700;
  PANGO_WEIGHT_ULTRABOLD: TPangoWeight = 800;
  PANGO_WEIGHT_HEAVY: TPangoWeight = 900;
  PANGO_WEIGHT_ULTRAHEAVY: TPangoWeight = 1000;

type
  TPangoBidiType = Integer;
const
  { PangoBidiType }
  PANGO_BIDI_TYPE_L: TPangoBidiType = 0;
  PANGO_BIDI_TYPE_LRE: TPangoBidiType = 1;
  PANGO_BIDI_TYPE_LRO: TPangoBidiType = 2;
  PANGO_BIDI_TYPE_R: TPangoBidiType = 3;
  PANGO_BIDI_TYPE_AL: TPangoBidiType = 4;
  PANGO_BIDI_TYPE_RLE: TPangoBidiType = 5;
  PANGO_BIDI_TYPE_RLO: TPangoBidiType = 6;
  PANGO_BIDI_TYPE_PDF: TPangoBidiType = 7;
  PANGO_BIDI_TYPE_EN: TPangoBidiType = 8;
  PANGO_BIDI_TYPE_ES: TPangoBidiType = 9;
  PANGO_BIDI_TYPE_ET: TPangoBidiType = 10;
  PANGO_BIDI_TYPE_AN: TPangoBidiType = 11;
  PANGO_BIDI_TYPE_CS: TPangoBidiType = 12;
  PANGO_BIDI_TYPE_NSM: TPangoBidiType = 13;
  PANGO_BIDI_TYPE_BN: TPangoBidiType = 14;
  PANGO_BIDI_TYPE_B: TPangoBidiType = 15;
  PANGO_BIDI_TYPE_S: TPangoBidiType = 16;
  PANGO_BIDI_TYPE_WS: TPangoBidiType = 17;
  PANGO_BIDI_TYPE_ON: TPangoBidiType = 18;

type
  TPangoDirection = Integer;
const
  { PangoDirection }
  PANGO_DIRECTION_LTR: TPangoDirection = 0;
  PANGO_DIRECTION_RTL: TPangoDirection = 1;
  PANGO_DIRECTION_TTB_LTR: TPangoDirection = 2;
  PANGO_DIRECTION_TTB_RTL: TPangoDirection = 3;
  PANGO_DIRECTION_WEAK_LTR: TPangoDirection = 4;
  PANGO_DIRECTION_WEAK_RTL: TPangoDirection = 5;
  PANGO_DIRECTION_NEUTRAL: TPangoDirection = 6;

type
  TPangoGravityHint = Integer;
const
  { PangoGravityHint }
  PANGO_GRAVITY_HINT_NATURAL: TPangoGravityHint = 0;
  PANGO_GRAVITY_HINT_STRONG: TPangoGravityHint = 1;
  PANGO_GRAVITY_HINT_LINE: TPangoGravityHint = 2;

type
  TPangoCoverageLevel = Integer;
const
  { PangoCoverageLevel }
  PANGO_COVERAGE_NONE: TPangoCoverageLevel = 0;
  PANGO_COVERAGE_FALLBACK: TPangoCoverageLevel = 1;
  PANGO_COVERAGE_APPROXIMATE: TPangoCoverageLevel = 2;
  PANGO_COVERAGE_EXACT: TPangoCoverageLevel = 3;

type
  TPangoEllipsizeMode = Integer;
const
  { PangoEllipsizeMode }
  PANGO_ELLIPSIZE_NONE: TPangoEllipsizeMode = 0;
  PANGO_ELLIPSIZE_START: TPangoEllipsizeMode = 1;
  PANGO_ELLIPSIZE_MIDDLE: TPangoEllipsizeMode = 2;
  PANGO_ELLIPSIZE_END: TPangoEllipsizeMode = 3;

type
  TPangoWrapMode = Integer;
const
  { PangoWrapMode }
  PANGO_WRAP_WORD: TPangoWrapMode = 0;
  PANGO_WRAP_CHAR: TPangoWrapMode = 1;
  PANGO_WRAP_WORD_CHAR: TPangoWrapMode = 2;

type
  TPangoTabAlign = Integer;
const
  { PangoTabAlign }
  PANGO_TAB_LEFT: TPangoTabAlign = 0;

type
  TPangoRenderPart = Integer;
const
  { PangoRenderPart }
  PANGO_RENDER_PART_FOREGROUND: TPangoRenderPart = 0;
  PANGO_RENDER_PART_BACKGROUND: TPangoRenderPart = 1;
  PANGO_RENDER_PART_UNDERLINE: TPangoRenderPart = 2;
  PANGO_RENDER_PART_STRIKETHROUGH: TPangoRenderPart = 3;

type
  TPangoUnderline = Integer;
const
  { PangoUnderline }
  PANGO_UNDERLINE_NONE: TPangoUnderline = 0;
  PANGO_UNDERLINE_SINGLE: TPangoUnderline = 1;
  PANGO_UNDERLINE_DOUBLE: TPangoUnderline = 2;
  PANGO_UNDERLINE_LOW: TPangoUnderline = 3;
  PANGO_UNDERLINE_ERROR: TPangoUnderline = 4;

type
  TPangoVariant = Integer;
const
  { PangoVariant }
  PANGO_VARIANT_NORMAL: TPangoVariant = 0;
  PANGO_VARIANT_SMALL_CAPS: TPangoVariant = 1;
type

  PPPangoGlyph = ^PPangoGlyph;
  PPangoGlyph = ^TPangoGlyph;
  TPangoGlyph = guint32;

  PPPangoGlyphUnit = ^PPangoGlyphUnit;
  PPangoGlyphUnit = ^TPangoGlyphUnit;
  TPangoGlyphUnit = gint32;

  PPPangoGlyphItem = ^PPangoGlyphItem;
  PPangoGlyphItem = ^TPangoGlyphItem;

  PPPangoAttrList = ^PPangoAttrList;
  PPangoAttrList = ^TPangoAttrList;

  PPPangoLogAttr = ^PPangoLogAttr;
  PPangoLogAttr = ^TPangoLogAttr;

  PPPangoItem = ^PPangoItem;
  PPangoItem = ^TPangoItem;

  PPPangoGlyphString = ^PPangoGlyphString;
  PPangoGlyphString = ^TPangoGlyphString;
  TPangoGlyphItem = object
    item: PPangoItem;
    glyphs: PPangoGlyphString;
    function apply_attrs(text: Pgchar; list: PPangoAttrList): PGSList; cdecl; inline;
    function copy: PPangoGlyphItem; cdecl; inline;
    procedure free; cdecl; inline;
    procedure get_logical_widths(text: Pgchar; logical_widths: Pgint); cdecl; inline;
    procedure letter_space(text: Pgchar; log_attrs: PPangoLogAttr; letter_spacing: gint); cdecl; inline;
    function split(text: Pgchar; split_index: gint): PPangoGlyphItem; cdecl; inline;
  end;

  PPPangoLayoutRun = ^PPangoLayoutRun;
  PPangoLayoutRun = ^TPangoLayoutRun;
  TPangoLayoutRun = TPangoGlyphItem;

  PPPangoAlignment = ^PPangoAlignment;
  PPangoAlignment = ^TPangoAlignment;

  PPPangoEngineShape = ^PPangoEngineShape;
  PPangoEngineShape = ^TPangoEngineShape;

  TPangoEngineShape = record
    Unknown: Pointer;
  end;



  PPPangoEngineLang = ^PPangoEngineLang;
  PPangoEngineLang = ^TPangoEngineLang;

  TPangoEngineLang = record
    Unknown: Pointer;
  end;



  PPPangoFont = ^PPangoFont;
  PPangoFont = ^TPangoFont;

  PPPangoFontDescription = ^PPangoFontDescription;
  PPangoFontDescription = ^TPangoFontDescription;

  PPPangoLanguage = ^PPangoLanguage;
  PPangoLanguage = ^TPangoLanguage;

  PPPangoCoverage = ^PPangoCoverage;
  PPangoCoverage = ^TPangoCoverage;

  PPPangoFontMap = ^PPangoFontMap;
  PPangoFontMap = ^TPangoFontMap;

  PPPangoRectangle = ^PPangoRectangle;
  PPangoRectangle = ^TPangoRectangle;

  PPPangoFontMetrics = ^PPangoFontMetrics;
  PPangoFontMetrics = ^TPangoFontMetrics;
  TPangoFont = object(TGObject)
    procedure descriptions_free(descs: PPPangoFontDescription; n_descs: gint); cdecl; inline; static;
    function describe: PPangoFontDescription; cdecl; inline;
    function describe_with_absolute_size: PPangoFontDescription; cdecl; inline;
    function find_shaper(language: PPangoLanguage; ch: guint32): PPangoEngineShape; cdecl; inline;
    function get_coverage(language: PPangoLanguage): PPangoCoverage; cdecl; inline;
    function get_font_map: PPangoFontMap; cdecl; inline;
    procedure get_glyph_extents(glyph: TPangoGlyph; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    function get_metrics(language: PPangoLanguage): PPangoFontMetrics; cdecl; inline;
  end;

  PPPangoScript = ^PPangoScript;
  PPangoScript = ^TPangoScript;
  TPangoLanguage = object
    function get_sample_string: Pgchar; cdecl; inline;
    function get_scripts(num_scripts: Pgint): PPangoScript; cdecl; inline;
    function includes_script(script: TPangoScript): gboolean; cdecl; inline;
    function matches(range_list: Pgchar): gboolean; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
    function from_string(language: Pgchar): PPangoLanguage; cdecl; inline; static;
    function get_default: PPangoLanguage; cdecl; inline; static;
  end;

  PPPangoAnalysis = ^PPangoAnalysis;
  PPangoAnalysis = ^TPangoAnalysis;

  TPangoAnalysis = record
    shape_engine: PPangoEngineShape;
    lang_engine: PPangoEngineLang;
    font: PPangoFont;
    level: guint8;
    gravity: guint8;
    flags: guint8;
    script: guint8;
    language: PPangoLanguage;
    extra_attrs: PGSList;
  end;



  PPPangoAttrType = ^PPangoAttrType;
  PPangoAttrType = ^TPangoAttrType;

  PPPangoAttribute = ^PPangoAttribute;
  PPangoAttribute = ^TPangoAttribute;

  PPPangoAttrClass = ^PPangoAttrClass;
  PPangoAttrClass = ^TPangoAttrClass;
  TPangoAttribute = object
    klass: PPangoAttrClass;
    start_index: guint;
    end_index: guint;
    function copy: PPangoAttribute; cdecl; inline;
    procedure destroy_; cdecl; inline;
    function equal(attr2: PPangoAttribute): gboolean; cdecl; inline;
    procedure init(klass: PPangoAttrClass); cdecl; inline;
  end;

  TPangoAttrClass = record
    type_: TPangoAttrType;
    copy: function(attr: PPangoAttribute): PPangoAttribute; cdecl;
    destroy_: procedure(attr: PPangoAttribute); cdecl;
    equal: function(attr1: PPangoAttribute; attr2: PPangoAttribute): gboolean; cdecl;
  end;



  PPPangoColor = ^PPangoColor;
  PPangoColor = ^TPangoColor;
  TPangoColor = object
    red: guint16;
    green: guint16;
    blue: guint16;
    function copy: PPangoColor; cdecl; inline;
    procedure free; cdecl; inline;
    function parse(spec: Pgchar): gboolean; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
  end;

  PPPangoAttrColor = ^PPangoAttrColor;
  PPangoAttrColor = ^TPangoAttrColor;

  TPangoAttrColor = record
    attr: TPangoAttribute;
    color: TPangoColor;
  end;


  TPangoAttrDataCopyFunc = function(data: gpointer): gpointer; cdecl;
  TPangoAttrFilterFunc = function(attribute: PPangoAttribute; data: gpointer): gboolean; cdecl;

  PPPangoAttrFloat = ^PPangoAttrFloat;
  PPangoAttrFloat = ^TPangoAttrFloat;

  TPangoAttrFloat = record
    attr: TPangoAttribute;
    value: gdouble;
  end;



  PPPangoGravity = ^PPangoGravity;
  PPangoGravity = ^TPangoGravity;

  PPPangoFontMask = ^PPangoFontMask;
  PPangoFontMask = ^TPangoFontMask;
  TPangoFontMask = packed object(TBitObject32)
  public
    property family: DWord index 1 read GetBit write SetBit;
    property style: DWord index 2 read GetBit write SetBit;
    property variant: DWord index 4 read GetBit write SetBit;
    property weight: DWord index 8 read GetBit write SetBit;
    property stretch: DWord index 16 read GetBit write SetBit;
    property size: DWord index 32 read GetBit write SetBit;
    property gravity: DWord index 64 read GetBit write SetBit;
  end;


  PPPangoStretch = ^PPangoStretch;
  PPangoStretch = ^TPangoStretch;

  PPPangoStyle = ^PPangoStyle;
  PPangoStyle = ^TPangoStyle;

  PPPangoWeight = ^PPangoWeight;
  PPangoWeight = ^TPangoWeight;
  TPangoFontDescription = object
    function new: PPangoFontDescription; cdecl; inline; static;
    function better_match(old_match: PPangoFontDescription; new_match: PPangoFontDescription): gboolean; cdecl; inline;
    function copy: PPangoFontDescription; cdecl; inline;
    function copy_static: PPangoFontDescription; cdecl; inline;
    function equal(desc2: PPangoFontDescription): gboolean; cdecl; inline;
    procedure free; cdecl; inline;
    function get_family: Pgchar; cdecl; inline;
    function get_gravity: TPangoGravity; cdecl; inline;
    function get_set_fields: TPangoFontMask; cdecl; inline;
    function get_size: gint; cdecl; inline;
    function get_size_is_absolute: gboolean; cdecl; inline;
    function get_stretch: TPangoStretch; cdecl; inline;
    function get_style: TPangoStyle; cdecl; inline;
    function get_variant: TGVariant; cdecl; inline;
    function get_weight: TPangoWeight; cdecl; inline;
    function hash: guint; cdecl; inline;
    procedure merge(desc_to_merge: PPangoFontDescription; replace_existing: gboolean); cdecl; inline;
    procedure merge_static(desc_to_merge: PPangoFontDescription; replace_existing: gboolean); cdecl; inline;
    procedure set_absolute_size(size: gdouble); cdecl; inline;
    procedure set_family(family: Pgchar); cdecl; inline;
    procedure set_family_static(family: Pgchar); cdecl; inline;
    procedure set_gravity(gravity: TPangoGravity); cdecl; inline;
    procedure set_size(size: gint); cdecl; inline;
    procedure set_stretch(stretch: TPangoStretch); cdecl; inline;
    procedure set_style(style: TPangoStyle); cdecl; inline;
    procedure set_variant(variant: TGVariant); cdecl; inline;
    procedure set_weight(weight: TPangoWeight); cdecl; inline;
    function to_filename: Pgchar; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
    procedure unset_fields(to_unset: TPangoFontMask); cdecl; inline;
    function from_string(str: Pgchar): PPangoFontDescription; cdecl; inline; static;
  end;

  PPPangoAttrFontDesc = ^PPangoAttrFontDesc;
  PPangoAttrFontDesc = ^TPangoAttrFontDesc;
  TPangoAttrFontDesc = object
    attr: TPangoAttribute;
    desc: PPangoFontDescription;
    function new(desc: PPangoFontDescription): PPangoAttribute; cdecl; inline; static;
  end;

  PPPangoAttrInt = ^PPangoAttrInt;
  PPangoAttrInt = ^TPangoAttrInt;

  TPangoAttrInt = record
    attr: TPangoAttribute;
    value: gint;
  end;



  PPPangoAttrIterator = ^PPangoAttrIterator;
  PPangoAttrIterator = ^TPangoAttrIterator;
  TPangoAttrIterator = object
    function copy: PPangoAttrIterator; cdecl; inline;
    procedure destroy_; cdecl; inline;
    function get(type_: TPangoAttrType): PPangoAttribute; cdecl; inline;
    function get_attrs: PGSList; cdecl; inline;
    procedure get_font(desc: PPangoFontDescription; language: PPPangoLanguage; extra_attrs: PPGSList); cdecl; inline;
    function next: gboolean; cdecl; inline;
    procedure range(start: Pgint; end_: Pgint); cdecl; inline;
  end;

  PPPangoAttrLanguage = ^PPangoAttrLanguage;
  PPangoAttrLanguage = ^TPangoAttrLanguage;
  TPangoAttrLanguage = object
    attr: TPangoAttribute;
    value: PPangoLanguage;
    function new(language: PPangoLanguage): PPangoAttribute; cdecl; inline; static;
  end;

  PPPangoAttrFilterFunc = ^PPangoAttrFilterFunc;
  PPangoAttrFilterFunc = ^TPangoAttrFilterFunc;
  TPangoAttrList = object
    function new: PPangoAttrList; cdecl; inline; static;
    procedure change(attr: PPangoAttribute); cdecl; inline;
    function copy: PPangoAttrList; cdecl; inline;
    function filter(func: TPangoAttrFilterFunc; data: gpointer): PPangoAttrList; cdecl; inline;
    function get_iterator: PPangoAttrIterator; cdecl; inline;
    procedure insert(attr: PPangoAttribute); cdecl; inline;
    procedure insert_before(attr: PPangoAttribute); cdecl; inline;
    function ref: PPangoAttrList; cdecl; inline;
    procedure splice(other: PPangoAttrList; pos: gint; len: gint); cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  TPangoRectangle = record
    x: gint;
    y: gint;
    width: gint;
    height: gint;
  end;



  PPPangoAttrShape = ^PPangoAttrShape;
  PPangoAttrShape = ^TPangoAttrShape;

  PPPangoAttrDataCopyFunc = ^PPangoAttrDataCopyFunc;
  PPangoAttrDataCopyFunc = ^TPangoAttrDataCopyFunc;
  TPangoAttrShape = object
    attr: TPangoAttribute;
    ink_rect: TPangoRectangle;
    logical_rect: TPangoRectangle;
    data: gpointer;
    copy_func: TPangoAttrDataCopyFunc;
    destroy_func: TGDestroyNotify;
    function new(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle): PPangoAttribute; cdecl; inline; static;
    function new_with_data(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle; data: gpointer; copy_func: TPangoAttrDataCopyFunc; destroy_func: TGDestroyNotify): PPangoAttribute; cdecl; inline; static;
  end;

  PPPangoAttrSize = ^PPangoAttrSize;
  PPangoAttrSize = ^TPangoAttrSize;
  TPangoAttrSize = object
    attr: TPangoAttribute;
    size: gint;
    absolute: guint1 { changed from guint to accomodate 1 bitsize requirement };
    function new(size: gint): PPangoAttribute; cdecl; inline; static;
    function new_absolute(size: gint): PPangoAttribute; cdecl; inline; static;
  end;

  PPPangoAttrString = ^PPangoAttrString;
  PPangoAttrString = ^TPangoAttrString;

  TPangoAttrString = record
    attr: TPangoAttribute;
    value: Pgchar;
  end;



  PPPangoBidiType = ^PPangoBidiType;
  PPangoBidiType = ^TPangoBidiType;

  PPPangoDirection = ^PPangoDirection;
  PPangoDirection = ^TPangoDirection;

  PPPangoContext = ^PPangoContext;
  PPangoContext = ^TPangoContext;

  PPPPangoFontFamily = ^PPPangoFontFamily;
  PPPangoFontFamily = ^PPangoFontFamily;
  PPangoFontFamily = ^TPangoFontFamily;

  PPPangoFontset = ^PPangoFontset;
  PPangoFontset = ^TPangoFontset;
  TPangoFontMap = object(TGObject)
    function create_context: PPangoContext; cdecl; inline;
    procedure list_families(families: PPPPangoFontFamily; n_families: Pgint); cdecl; inline;
    function load_font(context: PPangoContext; desc: PPangoFontDescription): PPangoFont; cdecl; inline;
    function load_fontset(context: PPangoContext; desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontset; cdecl; inline;
  end;

  PPPangoGravityHint = ^PPangoGravityHint;
  PPangoGravityHint = ^TPangoGravityHint;
  TPangoFontMetrics = object
    function get_approximate_char_width: gint; cdecl; inline;
    function get_approximate_digit_width: gint; cdecl; inline;
    function get_ascent: gint; cdecl; inline;
    function get_descent: gint; cdecl; inline;
    function get_strikethrough_position: gint; cdecl; inline;
    function get_strikethrough_thickness: gint; cdecl; inline;
    function get_underline_position: gint; cdecl; inline;
    function get_underline_thickness: gint; cdecl; inline;
    function ref: PPangoFontMetrics; cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  PPPPangoFontFace = ^PPPangoFontFace;
  PPPangoFontFace = ^PPangoFontFace;
  PPangoFontFace = ^TPangoFontFace;
  TPangoFontFamily = object(TGObject)
    function get_name: Pgchar; cdecl; inline;
    function is_monospace: gboolean; cdecl; inline;
    procedure list_faces(faces: PPPPangoFontFace; n_faces: Pgint); cdecl; inline;
  end;

  PPPangoFontsetForeachFunc = ^PPangoFontsetForeachFunc;
  PPangoFontsetForeachFunc = ^TPangoFontsetForeachFunc;
  TPangoFontsetForeachFunc = function(fontset: PPangoFontset; font: PPangoFont; data: gpointer): gboolean; cdecl;
  TPangoFontset = object(TGObject)
    procedure foreach(func: TPangoFontsetForeachFunc; data: gpointer); cdecl; inline;
    function get_font(wc: guint): PPangoFont; cdecl; inline;
    function get_metrics: PPangoFontMetrics; cdecl; inline;
  end;
  TPangoContext = object(TGObject)
    function new: PPangoContext; cdecl; inline; static;
    function get_base_dir: TPangoDirection; cdecl; inline;
    function get_base_gravity: TPangoGravity; cdecl; inline;
    function get_font_description: PPangoFontDescription; cdecl; inline;
    function get_font_map: PPangoFontMap; cdecl; inline;
    function get_gravity: TPangoGravity; cdecl; inline;
    function get_gravity_hint: TPangoGravityHint; cdecl; inline;
    function get_language: PPangoLanguage; cdecl; inline;
    function get_matrix: Pcairo_matrix_t; cdecl; inline;
    function get_metrics(desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontMetrics; cdecl; inline;
    procedure list_families(families: PPPPangoFontFamily; n_families: Pgint); cdecl; inline;
    function load_font(desc: PPangoFontDescription): PPangoFont; cdecl; inline;
    function load_fontset(desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontset; cdecl; inline;
    procedure set_base_dir(direction: TPangoDirection); cdecl; inline;
    procedure set_base_gravity(gravity: TPangoGravity); cdecl; inline;
    procedure set_font_description(desc: PPangoFontDescription); cdecl; inline;
    procedure set_font_map(font_map: PPangoFontMap); cdecl; inline;
    procedure set_gravity_hint(hint: TPangoGravityHint); cdecl; inline;
    procedure set_language(language: PPangoLanguage); cdecl; inline;
    procedure set_matrix(matrix: Pcairo_matrix_t); cdecl; inline;
  end;

  PPPangoContextClass = ^PPangoContextClass;
  PPangoContextClass = ^TPangoContextClass;
  TPangoContextClass = object
  end;

  PPPangoCoverageLevel = ^PPangoCoverageLevel;
  PPangoCoverageLevel = ^TPangoCoverageLevel;
  TPangoCoverage = object
    function copy: PPangoCoverage; cdecl; inline;
    function get(index_: gint): TPangoCoverageLevel; cdecl; inline;
    procedure max(other: PPangoCoverage); cdecl; inline;
    function ref: PPangoCoverage; cdecl; inline;
    procedure set_(index_: gint; level: TPangoCoverageLevel); cdecl; inline;
    procedure to_bytes(bytes: PPguint8; n_bytes: Pgint); cdecl; inline;
    procedure unref; cdecl; inline;
    function from_bytes(bytes: Pguint8; n_bytes: gint): PPangoCoverage; cdecl; inline; static;
    function new: PPangoCoverage; cdecl; inline; static;
  end;

  PPPangoEllipsizeMode = ^PPangoEllipsizeMode;
  PPangoEllipsizeMode = ^TPangoEllipsizeMode;
  TPangoFontFace = object(TGObject)
    function describe: PPangoFontDescription; cdecl; inline;
    function get_face_name: Pgchar; cdecl; inline;
    function is_synthesized: gboolean; cdecl; inline;
    procedure list_sizes(sizes: PPgint; n_sizes: Pgint); cdecl; inline;
  end;

  PPPangoGlyphGeometry = ^PPangoGlyphGeometry;
  PPangoGlyphGeometry = ^TPangoGlyphGeometry;

  TPangoGlyphGeometry = record
    width: TPangoGlyphUnit;
    x_offset: TPangoGlyphUnit;
    y_offset: TPangoGlyphUnit;
  end;



  PPPangoGlyphVisAttr = ^PPangoGlyphVisAttr;
  PPangoGlyphVisAttr = ^TPangoGlyphVisAttr;

  TPangoGlyphVisAttr = record
    is_cluster_start: guint1 { changed from guint to accomodate 1 bitsize requirement };
  end;



  PPPangoGlyphInfo = ^PPangoGlyphInfo;
  PPangoGlyphInfo = ^TPangoGlyphInfo;

  TPangoGlyphInfo = record
    glyph: TPangoGlyph;
    geometry: TPangoGlyphGeometry;
    attr: TPangoGlyphVisAttr;
  end;


  TPangoItem = object
    offset: gint;
    length: gint;
    num_chars: gint;
    analysis: TPangoAnalysis;
    function new: PPangoItem; cdecl; inline; static;
    function copy: PPangoItem; cdecl; inline;
    procedure free; cdecl; inline;
    function split(split_index: gint; split_offset: gint): PPangoItem; cdecl; inline;
  end;
  TPangoGlyphString = object
    num_glyphs: gint;
    glyphs: PPangoGlyphInfo;
    log_clusters: Pgint;
    space: gint;
    function new: PPangoGlyphString; cdecl; inline; static;
    function copy: PPangoGlyphString; cdecl; inline;
    procedure extents(font: PPangoFont; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    procedure extents_range(start: gint; end_: gint; font: PPangoFont; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    procedure free; cdecl; inline;
    procedure get_logical_widths(text: Pgchar; length: gint; embedding_level: gint; logical_widths: Pgint); cdecl; inline;
    function get_width: gint; cdecl; inline;
    procedure index_to_x(text: Pgchar; length: gint; analysis: PPangoAnalysis; index_: gint; trailing: gboolean; x_pos: Pgint); cdecl; inline;
    procedure set_size(new_len: gint); cdecl; inline;
    procedure x_to_index(text: Pgchar; length: gint; analysis: PPangoAnalysis; x_pos: gint; index_: Pgint; trailing: Pgint); cdecl; inline;
  end;

  TPangoLogAttr = record
    is_line_break: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_mandatory_break: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_char_break: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_white: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_cursor_position: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_word_start: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_word_end: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_sentence_boundary: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_sentence_start: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_sentence_end: guint1 { changed from guint to accomodate 1 bitsize requirement };
    backspace_deletes_character: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_expandable_space: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_word_boundary: guint1 { changed from guint to accomodate 1 bitsize requirement };
  end;



  PPPangoGlyphItemIter = ^PPangoGlyphItemIter;
  PPangoGlyphItemIter = ^TPangoGlyphItemIter;
  TPangoGlyphItemIter = object
    glyph_item: PPangoGlyphItem;
    text: Pgchar;
    start_glyph: gint;
    start_index: gint;
    start_char: gint;
    end_glyph: gint;
    end_index: gint;
    end_char: gint;
    function copy: PPangoGlyphItemIter; cdecl; inline;
    procedure free; cdecl; inline;
    function init_end(glyph_item: PPangoGlyphItem; text: Pgchar): gboolean; cdecl; inline;
    function init_start(glyph_item: PPangoGlyphItem; text: Pgchar): gboolean; cdecl; inline;
    function next_cluster: gboolean; cdecl; inline;
    function prev_cluster: gboolean; cdecl; inline;
  end;

  PPPangoLayout = ^PPangoLayout;
  PPangoLayout = ^TPangoLayout;

  PPPangoLayoutIter = ^PPangoLayoutIter;
  PPangoLayoutIter = ^TPangoLayoutIter;

  PPPangoLayoutLine = ^PPangoLayoutLine;
  PPangoLayoutLine = ^TPangoLayoutLine;

  PPPangoTabArray = ^PPangoTabArray;
  PPangoTabArray = ^TPangoTabArray;

  PPPangoWrapMode = ^PPangoWrapMode;
  PPangoWrapMode = ^TPangoWrapMode;
  TPangoLayout = object(TGObject)
    function new(context: PPangoContext): PPangoLayout; cdecl; inline; static;
    procedure context_changed; cdecl; inline;
    function copy: PPangoLayout; cdecl; inline;
    function get_alignment: TPangoAlignment; cdecl; inline;
    function get_attributes: PPangoAttrList; cdecl; inline;
    function get_auto_dir: gboolean; cdecl; inline;
    function get_baseline: gint; cdecl; inline;
    function get_character_count: gint; cdecl; inline;
    function get_context: PPangoContext; cdecl; inline;
    procedure get_cursor_pos(index_: gint; strong_pos: PPangoRectangle; weak_pos: PPangoRectangle); cdecl; inline;
    function get_ellipsize: TPangoEllipsizeMode; cdecl; inline;
    procedure get_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    function get_font_description: PPangoFontDescription; cdecl; inline;
    function get_height: gint; cdecl; inline;
    function get_indent: gint; cdecl; inline;
    function get_iter: PPangoLayoutIter; cdecl; inline;
    function get_justify: gboolean; cdecl; inline;
    function get_line(line: gint): PPangoLayoutLine; cdecl; inline;
    function get_line_count: gint; cdecl; inline;
    function get_line_readonly(line: gint): PPangoLayoutLine; cdecl; inline;
    function get_lines: PGSList; cdecl; inline;
    function get_lines_readonly: PGSList; cdecl; inline;
    procedure get_log_attrs(attrs: PPPangoLogAttr; n_attrs: Pgint); cdecl; inline;
    function get_log_attrs_readonly(n_attrs: Pgint): PPangoLogAttr; cdecl; inline;
    procedure get_pixel_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    procedure get_pixel_size(width: Pgint; height: Pgint); cdecl; inline;
    function get_single_paragraph_mode: gboolean; cdecl; inline;
    procedure get_size(width: Pgint; height: Pgint); cdecl; inline;
    function get_spacing: gint; cdecl; inline;
    function get_tabs: PPangoTabArray; cdecl; inline;
    function get_text: Pgchar; cdecl; inline;
    function get_unknown_glyphs_count: gint; cdecl; inline;
    function get_width: gint; cdecl; inline;
    function get_wrap: TPangoWrapMode; cdecl; inline;
    procedure index_to_line_x(index_: gint; trailing: gboolean; line: Pgint; x_pos: Pgint); cdecl; inline;
    procedure index_to_pos(index_: gint; pos: PPangoRectangle); cdecl; inline;
    function is_ellipsized: gboolean; cdecl; inline;
    function is_wrapped: gboolean; cdecl; inline;
    procedure move_cursor_visually(strong: gboolean; old_index: gint; old_trailing: gint; direction: gint; new_index: Pgint; new_trailing: Pgint); cdecl; inline;
    procedure set_alignment(alignment: TPangoAlignment); cdecl; inline;
    procedure set_attributes(attrs: PPangoAttrList); cdecl; inline;
    procedure set_auto_dir(auto_dir: gboolean); cdecl; inline;
    procedure set_ellipsize(ellipsize: TPangoEllipsizeMode); cdecl; inline;
    procedure set_font_description(desc: PPangoFontDescription); cdecl; inline;
    procedure set_height(height: gint); cdecl; inline;
    procedure set_indent(indent: gint); cdecl; inline;
    procedure set_justify(justify: gboolean); cdecl; inline;
    procedure set_markup(markup: Pgchar; length: gint); cdecl; inline;
    procedure set_markup_with_accel(markup: Pgchar; length: gint; accel_marker: gunichar; accel_char: Pgunichar); cdecl; inline;
    procedure set_single_paragraph_mode(setting: gboolean); cdecl; inline;
    procedure set_spacing(spacing: gint); cdecl; inline;
    procedure set_tabs(tabs: PPangoTabArray); cdecl; inline;
    procedure set_text(text: Pgchar; length: gint); cdecl; inline;
    procedure set_width(width: gint); cdecl; inline;
    procedure set_wrap(wrap: TPangoWrapMode); cdecl; inline;
    function xy_to_index(x: gint; y: gint; index_: Pgint; trailing: Pgint): gboolean; cdecl; inline;
  end;
  TPangoLayoutIter = object
    function at_last_line: gboolean; cdecl; inline;
    function copy: PPangoLayoutIter; cdecl; inline;
    procedure free; cdecl; inline;
    function get_baseline: gint; cdecl; inline;
    procedure get_char_extents(logical_rect: PPangoRectangle); cdecl; inline;
    procedure get_cluster_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    function get_index: gint; cdecl; inline;
    function get_layout: PPangoLayout; cdecl; inline;
    procedure get_layout_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    function get_line: PPangoLayoutLine; cdecl; inline;
    procedure get_line_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    function get_line_readonly: PPangoLayoutLine; cdecl; inline;
    procedure get_line_yrange(y0_: Pgint; y1_: Pgint); cdecl; inline;
    function get_run: PPangoLayoutRun; cdecl; inline;
    procedure get_run_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    function get_run_readonly: PPangoLayoutRun; cdecl; inline;
    function next_char: gboolean; cdecl; inline;
    function next_cluster: gboolean; cdecl; inline;
    function next_line: gboolean; cdecl; inline;
    function next_run: gboolean; cdecl; inline;
  end;
  TPangoLayoutLine = object
    layout: PPangoLayout;
    start_index: gint;
    length: gint;
    runs: PGSList;
    is_paragraph_start: guint1 { changed from guint to accomodate 1 bitsize requirement };
    resolved_dir: guint3 { changed from guint to accomodate 3 bitsize requirement };
    procedure get_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    procedure get_pixel_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; inline;
    procedure get_x_ranges(start_index: gint; end_index: gint; ranges: PPgint; n_ranges: Pgint); cdecl; inline;
    procedure index_to_x(index_: gint; trailing: gboolean; x_pos: Pgint); cdecl; inline;
    function ref: PPangoLayoutLine; cdecl; inline;
    procedure unref; cdecl; inline;
    function x_to_index(x_pos: gint; index_: Pgint; trailing: Pgint): gboolean; cdecl; inline;
  end;

  PPPangoTabAlign = ^PPangoTabAlign;
  PPangoTabAlign = ^TPangoTabAlign;
  TPangoTabArray = object
    function new(initial_size: gint; positions_in_pixels: gboolean): PPangoTabArray; cdecl; inline; static;
    //function new_with_positions(size: gint; positions_in_pixels: gboolean; first_alignment: TPangoTabAlign; first_position: gint; args: array of const): PPangoTabArray; cdecl; inline; static;
    function copy: PPangoTabArray; cdecl; inline;
    procedure free; cdecl; inline;
    function get_positions_in_pixels: gboolean; cdecl; inline;
    function get_size: gint; cdecl; inline;
    procedure get_tab(tab_index: gint; alignment: PPangoTabAlign; location: Pgint); cdecl; inline;
    procedure get_tabs(alignments: PPPangoTabAlign; locations: PPgint); cdecl; inline;
    procedure resize(new_size: gint); cdecl; inline;
    procedure set_tab(tab_index: gint; alignment: TPangoTabAlign; location: gint); cdecl; inline;
  end;

  PPPangoLayoutClass = ^PPangoLayoutClass;
  PPangoLayoutClass = ^TPangoLayoutClass;
  TPangoLayoutClass = object
  end;

  PPPangoMatrix = ^PPangoMatrix;
  PPangoMatrix = ^TPangoMatrix;
  TPangoMatrix = object
    xx: gdouble;
    xy: gdouble;
    yx: gdouble;
    yy: gdouble;
    x0: gdouble;
    y0: gdouble;
    procedure concat(new_matrix: Pcairo_matrix_t); cdecl; inline;
    function copy: Pcairo_matrix_t; cdecl; inline;
    procedure free; cdecl; inline;
    function get_font_scale_factor: gdouble; cdecl; inline;
    procedure rotate(degrees: gdouble); cdecl; inline;
    procedure scale(scale_x: gdouble; scale_y: gdouble); cdecl; inline;
    procedure transform_distance(dx: Pgdouble; dy: Pgdouble); cdecl; inline;
    procedure transform_pixel_rectangle(rect: PPangoRectangle); cdecl; inline;
    procedure transform_point(x: Pgdouble; y: Pgdouble); cdecl; inline;
    procedure transform_rectangle(rect: PPangoRectangle); cdecl; inline;
    procedure translate(tx: gdouble; ty: gdouble); cdecl; inline;
  end;

  PPPangoRenderPart = ^PPangoRenderPart;
  PPangoRenderPart = ^TPangoRenderPart;

  PPPangoUnderline = ^PPangoUnderline;
  PPangoUnderline = ^TPangoUnderline;

  PPPangoRendererPrivate = ^PPangoRendererPrivate;
  PPangoRendererPrivate = ^TPangoRendererPrivate;

  TPangoRendererPrivate = record
    Unknown: Pointer;
  end;



  PPPangoRenderer = ^PPangoRenderer;
  PPangoRenderer = ^TPangoRenderer;
  TPangoRenderer = object(TGObject)
    underline: TPangoUnderline;
    strikethrough: gboolean;
    active_count: gint;
    matrix: PPangoMatrix;
    priv: PPangoRendererPrivate;
    procedure activate; cdecl; inline;
    procedure deactivate; cdecl; inline;
    procedure draw_error_underline(x: gint; y: gint; width: gint; height: gint); cdecl; inline;
    procedure draw_glyph(font: PPangoFont; glyph: TPangoGlyph; x: gdouble; y: gdouble); cdecl; inline;
    procedure draw_glyph_item(text: Pgchar; glyph_item: PPangoGlyphItem; x: gint; y: gint); cdecl; inline;
    procedure draw_glyphs(font: PPangoFont; glyphs: PPangoGlyphString; x: gint; y: gint); cdecl; inline;
    procedure draw_layout(layout: PPangoLayout; x: gint; y: gint); cdecl; inline;
    procedure draw_layout_line(line: PPangoLayoutLine; x: gint; y: gint); cdecl; inline;
    procedure draw_rectangle(part: TPangoRenderPart; x: gint; y: gint; width: gint; height: gint); cdecl; inline;
    procedure draw_trapezoid(part: TPangoRenderPart; y1_: gdouble; x11: gdouble; x21: gdouble; y2: gdouble; x12: gdouble; x22: gdouble); cdecl; inline;
    function get_color(part: TPangoRenderPart): PPangoColor; cdecl; inline;
    function get_layout: PPangoLayout; cdecl; inline;
    function get_layout_line: PPangoLayoutLine; cdecl; inline;
    function get_matrix: PPangoMatrix; cdecl; inline;
    procedure part_changed(part: TPangoRenderPart); cdecl; inline;
    procedure set_color(part: TPangoRenderPart; color: PPangoColor); cdecl; inline;
    procedure set_matrix(matrix: PPangoMatrix); cdecl; inline;
  end;

  PPPangoRendererClass = ^PPangoRendererClass;
  PPangoRendererClass = ^TPangoRendererClass;
  TPangoRendererClass = object
    parent_class: TGObjectClass;
    draw_glyphs: procedure(renderer: PPangoRenderer; font: PPangoFont; glyphs: PPangoGlyphString; x: gint; y: gint); cdecl;
    draw_rectangle: procedure(renderer: PPangoRenderer; part: TPangoRenderPart; x: gint; y: gint; width: gint; height: gint); cdecl;
    draw_error_underline: procedure(renderer: PPangoRenderer; x: gint; y: gint; width: gint; height: gint); cdecl;
    draw_shape: procedure(renderer: PPangoRenderer; attr: PPangoAttrShape; x: gint; y: gint); cdecl;
    draw_trapezoid: procedure(renderer: PPangoRenderer; part: TPangoRenderPart; y1_: gdouble; x11: gdouble; x21: gdouble; y2: gdouble; x12: gdouble; x22: gdouble); cdecl;
    draw_glyph: procedure(renderer: PPangoRenderer; font: PPangoFont; glyph: TPangoGlyph; x: gdouble; y: gdouble); cdecl;
    part_changed: procedure(renderer: PPangoRenderer; part: TPangoRenderPart); cdecl;
    begin_: procedure(renderer: PPangoRenderer); cdecl;
    end_: procedure(renderer: PPangoRenderer); cdecl;
    prepare_run: procedure(renderer: PPangoRenderer; run: PPangoLayoutRun); cdecl;
    draw_glyph_item: procedure(renderer: PPangoRenderer; text: Pgchar; glyph_item: PPangoGlyphItem; x: gint; y: gint); cdecl;
    _pango_reserved2: procedure; cdecl;
    _pango_reserved3: procedure; cdecl;
    _pango_reserved4: procedure; cdecl;
  end;

  PPPangoScriptIter = ^PPangoScriptIter;
  PPangoScriptIter = ^TPangoScriptIter;
  TPangoScriptIter = object
    procedure free; cdecl; inline;
    procedure get_range(start: PPgchar; end_: PPgchar; script: PPangoScript); cdecl; inline;
    function next: gboolean; cdecl; inline;
    function new(text: Pgchar; length: gint): PPangoScriptIter; cdecl; inline; static;
  end;

  PPPangoVariant = ^PPangoVariant;
  PPangoVariant = ^TPangoVariant;

  PP_PangoScriptForLang = ^P_PangoScriptForLang;
  P_PangoScriptForLang = ^T_PangoScriptForLang;

  T_PangoScriptForLang = record
    lang: array [0..6] of gchar;
    scripts: array [0..2] of TPangoScript;
  end;



function pango_attr_background_new(red: guint16; green: guint16; blue: guint16): PPangoAttribute; cdecl; external;
function pango_attr_fallback_new(enable_fallback: gboolean): PPangoAttribute; cdecl; external;
function pango_attr_family_new(family: Pgchar): PPangoAttribute; cdecl; external;
function pango_attr_font_desc_new(desc: PPangoFontDescription): PPangoAttribute; cdecl; external;
function pango_attr_foreground_new(red: guint16; green: guint16; blue: guint16): PPangoAttribute; cdecl; external;
function pango_attr_gravity_hint_new(hint: TPangoGravityHint): PPangoAttribute; cdecl; external;
function pango_attr_gravity_new(gravity: TPangoGravity): PPangoAttribute; cdecl; external;
function pango_attr_iterator_copy(AAttrIterator: PPangoAttrIterator): PPangoAttrIterator; cdecl; external;
function pango_attr_iterator_get(AAttrIterator: PPangoAttrIterator; type_: TPangoAttrType): PPangoAttribute; cdecl; external;
function pango_attr_iterator_get_attrs(AAttrIterator: PPangoAttrIterator): PGSList; cdecl; external;
function pango_attr_iterator_next(AAttrIterator: PPangoAttrIterator): gboolean; cdecl; external;
function pango_attr_language_new(language: PPangoLanguage): PPangoAttribute; cdecl; external;
function pango_attr_letter_spacing_new(letter_spacing: gint): PPangoAttribute; cdecl; external;
function pango_attr_list_copy(AAttrList: PPangoAttrList): PPangoAttrList; cdecl; external;
function pango_attr_list_filter(AAttrList: PPangoAttrList; func: TPangoAttrFilterFunc; data: gpointer): PPangoAttrList; cdecl; external;
function pango_attr_list_get_iterator(AAttrList: PPangoAttrList): PPangoAttrIterator; cdecl; external;
function pango_attr_list_get_type: TGType; cdecl; external;
function pango_attr_list_new: PPangoAttrList; cdecl; external;
function pango_attr_list_ref(AAttrList: PPangoAttrList): PPangoAttrList; cdecl; external;
function pango_attr_rise_new(rise: gint): PPangoAttribute; cdecl; external;
function pango_attr_scale_new(scale_factor: gdouble): PPangoAttribute; cdecl; external;
function pango_attr_shape_new(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle): PPangoAttribute; cdecl; external;
function pango_attr_shape_new_with_data(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle; data: gpointer; copy_func: TPangoAttrDataCopyFunc; destroy_func: TGDestroyNotify): PPangoAttribute; cdecl; external;
function pango_attr_size_new(size: gint): PPangoAttribute; cdecl; external;
function pango_attr_size_new_absolute(size: gint): PPangoAttribute; cdecl; external;
function pango_attr_stretch_new(stretch: TPangoStretch): PPangoAttribute; cdecl; external;
function pango_attr_strikethrough_color_new(red: guint16; green: guint16; blue: guint16): PPangoAttribute; cdecl; external;
function pango_attr_strikethrough_new(strikethrough: gboolean): PPangoAttribute; cdecl; external;
function pango_attr_style_new(style: TPangoStyle): PPangoAttribute; cdecl; external;
function pango_attr_type_get_name(type_: TPangoAttrType): Pgchar; cdecl; external;
function pango_attr_type_register(name: Pgchar): TPangoAttrType; cdecl; external;
function pango_attr_underline_color_new(red: guint16; green: guint16; blue: guint16): PPangoAttribute; cdecl; external;
function pango_attr_underline_new(underline: TPangoUnderline): PPangoAttribute; cdecl; external;
function pango_attr_variant_new(variant: TPangoVariant): PPangoAttribute; cdecl; external;
function pango_attr_weight_new(weight: TPangoWeight): PPangoAttribute; cdecl; external;
function pango_attribute_copy(AAttribute: PPangoAttribute): PPangoAttribute; cdecl; external;
function pango_attribute_equal(AAttribute: PPangoAttribute; attr2: PPangoAttribute): gboolean; cdecl; external;
function pango_bidi_type_for_unichar(ch: gunichar): TPangoBidiType; cdecl; external;
function pango_color_copy(AColor: PPangoColor): PPangoColor; cdecl; external;
function pango_color_get_type: TGType; cdecl; external;
function pango_color_parse(AColor: PPangoColor; spec: Pgchar): gboolean; cdecl; external;
function pango_color_to_string(AColor: PPangoColor): Pgchar; cdecl; external;
function pango_context_get_base_dir(AContext: PPangoContext): TPangoDirection; cdecl; external;
function pango_context_get_base_gravity(AContext: PPangoContext): TPangoGravity; cdecl; external;
function pango_context_get_font_description(AContext: PPangoContext): PPangoFontDescription; cdecl; external;
function pango_context_get_font_map(AContext: PPangoContext): PPangoFontMap; cdecl; external;
function pango_context_get_gravity(AContext: PPangoContext): TPangoGravity; cdecl; external;
function pango_context_get_gravity_hint(AContext: PPangoContext): TPangoGravityHint; cdecl; external;
function pango_context_get_language(AContext: PPangoContext): PPangoLanguage; cdecl; external;
function pango_context_get_matrix(AContext: PPangoContext): Pcairo_matrix_t; cdecl; external;
function pango_context_get_metrics(AContext: PPangoContext; desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontMetrics; cdecl; external;
function pango_context_get_type: TGType; cdecl; external;
function pango_context_load_font(AContext: PPangoContext; desc: PPangoFontDescription): PPangoFont; cdecl; external;
function pango_context_load_fontset(AContext: PPangoContext; desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontset; cdecl; external;
function pango_context_new: PPangoContext; cdecl; external;
function pango_coverage_copy(ACoverage: PPangoCoverage): PPangoCoverage; cdecl; external;
function pango_coverage_from_bytes(bytes: Pguint8; n_bytes: gint): PPangoCoverage; cdecl; external;
function pango_coverage_get(ACoverage: PPangoCoverage; index_: gint): TPangoCoverageLevel; cdecl; external;
function pango_coverage_new: PPangoCoverage; cdecl; external;
function pango_coverage_ref(ACoverage: PPangoCoverage): PPangoCoverage; cdecl; external;
function pango_find_base_dir(text: Pgchar; length: gint): TPangoDirection; cdecl; external;
function pango_font_describe(AFont: PPangoFont): PPangoFontDescription; cdecl; external;
function pango_font_describe_with_absolute_size(AFont: PPangoFont): PPangoFontDescription; cdecl; external;
function pango_font_description_better_match(AFontDescription: PPangoFontDescription; old_match: PPangoFontDescription; new_match: PPangoFontDescription): gboolean; cdecl; external;
function pango_font_description_copy(AFontDescription: PPangoFontDescription): PPangoFontDescription; cdecl; external;
function pango_font_description_copy_static(AFontDescription: PPangoFontDescription): PPangoFontDescription; cdecl; external;
function pango_font_description_equal(AFontDescription: PPangoFontDescription; desc2: PPangoFontDescription): gboolean; cdecl; external;
function pango_font_description_from_string(str: Pgchar): PPangoFontDescription; cdecl; external;
function pango_font_description_get_family(AFontDescription: PPangoFontDescription): Pgchar; cdecl; external;
function pango_font_description_get_gravity(AFontDescription: PPangoFontDescription): TPangoGravity; cdecl; external;
function pango_font_description_get_set_fields(AFontDescription: PPangoFontDescription): TPangoFontMask; cdecl; external;
function pango_font_description_get_size(AFontDescription: PPangoFontDescription): gint; cdecl; external;
function pango_font_description_get_size_is_absolute(AFontDescription: PPangoFontDescription): gboolean; cdecl; external;
function pango_font_description_get_stretch(AFontDescription: PPangoFontDescription): TPangoStretch; cdecl; external;
function pango_font_description_get_style(AFontDescription: PPangoFontDescription): TPangoStyle; cdecl; external;
function pango_font_description_get_type: TGType; cdecl; external;
function pango_font_description_get_variant(AFontDescription: PPangoFontDescription): TGVariant; cdecl; external;
function pango_font_description_get_weight(AFontDescription: PPangoFontDescription): TPangoWeight; cdecl; external;
function pango_font_description_hash(AFontDescription: PPangoFontDescription): guint; cdecl; external;
function pango_font_description_new: PPangoFontDescription; cdecl; external;
function pango_font_description_to_filename(AFontDescription: PPangoFontDescription): Pgchar; cdecl; external;
function pango_font_description_to_string(AFontDescription: PPangoFontDescription): Pgchar; cdecl; external;
function pango_font_face_describe(AFontFace: PPangoFontFace): PPangoFontDescription; cdecl; external;
function pango_font_face_get_face_name(AFontFace: PPangoFontFace): Pgchar; cdecl; external;
function pango_font_face_get_type: TGType; cdecl; external;
function pango_font_face_is_synthesized(AFontFace: PPangoFontFace): gboolean; cdecl; external;
function pango_font_family_get_name(AFontFamily: PPangoFontFamily): Pgchar; cdecl; external;
function pango_font_family_get_type: TGType; cdecl; external;
function pango_font_family_is_monospace(AFontFamily: PPangoFontFamily): gboolean; cdecl; external;
function pango_font_find_shaper(AFont: PPangoFont; language: PPangoLanguage; ch: guint32): PPangoEngineShape; cdecl; external;
function pango_font_get_coverage(AFont: PPangoFont; language: PPangoLanguage): PPangoCoverage; cdecl; external;
function pango_font_get_font_map(AFont: PPangoFont): PPangoFontMap; cdecl; external;
function pango_font_get_metrics(AFont: PPangoFont; language: PPangoLanguage): PPangoFontMetrics; cdecl; external;
function pango_font_get_type: TGType; cdecl; external;
function pango_font_map_create_context(AFontMap: PPangoFontMap): PPangoContext; cdecl; external;
function pango_font_map_get_type: TGType; cdecl; external;
function pango_font_map_load_font(AFontMap: PPangoFontMap; context: PPangoContext; desc: PPangoFontDescription): PPangoFont; cdecl; external;
function pango_font_map_load_fontset(AFontMap: PPangoFontMap; context: PPangoContext; desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontset; cdecl; external;
function pango_font_metrics_get_approximate_char_width(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_get_approximate_digit_width(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_get_ascent(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_get_descent(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_get_strikethrough_position(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_get_strikethrough_thickness(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_get_type: TGType; cdecl; external;
function pango_font_metrics_get_underline_position(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_get_underline_thickness(AFontMetrics: PPangoFontMetrics): gint; cdecl; external;
function pango_font_metrics_ref(AFontMetrics: PPangoFontMetrics): PPangoFontMetrics; cdecl; external;
function pango_fontset_get_font(AFontset: PPangoFontset; wc: guint): PPangoFont; cdecl; external;
function pango_fontset_get_metrics(AFontset: PPangoFontset): PPangoFontMetrics; cdecl; external;
function pango_fontset_get_type: TGType; cdecl; external;
function pango_get_mirror_char(ch: gunichar; mirrored_ch: Pgunichar): gboolean; cdecl; external;
function pango_glyph_item_apply_attrs(AGlyphItem: PPangoGlyphItem; text: Pgchar; list: PPangoAttrList): PGSList; cdecl; external;
function pango_glyph_item_copy(AGlyphItem: PPangoGlyphItem): PPangoGlyphItem; cdecl; external;
function pango_glyph_item_get_type: TGType; cdecl; external;
function pango_glyph_item_iter_copy(AGlyphItemIter: PPangoGlyphItemIter): PPangoGlyphItemIter; cdecl; external;
function pango_glyph_item_iter_get_type: TGType; cdecl; external;
function pango_glyph_item_iter_init_end(AGlyphItemIter: PPangoGlyphItemIter; glyph_item: PPangoGlyphItem; text: Pgchar): gboolean; cdecl; external;
function pango_glyph_item_iter_init_start(AGlyphItemIter: PPangoGlyphItemIter; glyph_item: PPangoGlyphItem; text: Pgchar): gboolean; cdecl; external;
function pango_glyph_item_iter_next_cluster(AGlyphItemIter: PPangoGlyphItemIter): gboolean; cdecl; external;
function pango_glyph_item_iter_prev_cluster(AGlyphItemIter: PPangoGlyphItemIter): gboolean; cdecl; external;
function pango_glyph_item_split(AGlyphItem: PPangoGlyphItem; text: Pgchar; split_index: gint): PPangoGlyphItem; cdecl; external;
function pango_glyph_string_copy(AGlyphString: PPangoGlyphString): PPangoGlyphString; cdecl; external;
function pango_glyph_string_get_type: TGType; cdecl; external;
function pango_glyph_string_get_width(AGlyphString: PPangoGlyphString): gint; cdecl; external;
function pango_glyph_string_new: PPangoGlyphString; cdecl; external;
function pango_gravity_get_for_matrix(matrix: Pcairo_matrix_t): TPangoGravity; cdecl; external;
function pango_gravity_get_for_matrix(matrix: PPangoMatrix): TPangoGravity; cdecl; external;
function pango_gravity_get_for_script(script: TPangoScript; base_gravity: TPangoGravity; hint: TPangoGravityHint): TPangoGravity; cdecl; external;
function pango_gravity_get_for_script_and_width(script: TPangoScript; wide: gboolean; base_gravity: TPangoGravity; hint: TPangoGravityHint): TPangoGravity; cdecl; external;
function pango_gravity_to_rotation(gravity: TPangoGravity): gdouble; cdecl; external;
function pango_is_zero_width(ch: gunichar): gboolean; cdecl; external;
function pango_item_copy(AItem: PPangoItem): PPangoItem; cdecl; external;
function pango_item_get_type: TGType; cdecl; external;
function pango_item_new: PPangoItem; cdecl; external;
function pango_item_split(AItem: PPangoItem; split_index: gint; split_offset: gint): PPangoItem; cdecl; external;
function pango_itemize(context: PPangoContext; text: Pgchar; start_index: gint; length: gint; attrs: PPangoAttrList; cached_iter: PPangoAttrIterator): PGList; cdecl; external;
function pango_itemize_with_base_dir(context: PPangoContext; base_dir: TPangoDirection; text: Pgchar; start_index: gint; length: gint; attrs: PPangoAttrList; cached_iter: PPangoAttrIterator): PGList; cdecl; external;
function pango_language_from_string(language: Pgchar): PPangoLanguage; cdecl; external;
function pango_language_get_default: PPangoLanguage; cdecl; external;
function pango_language_get_sample_string(ALanguage: PPangoLanguage): Pgchar; cdecl; external;
function pango_language_get_scripts(ALanguage: PPangoLanguage; num_scripts: Pgint): PPangoScript; cdecl; external;
function pango_language_get_type: TGType; cdecl; external;
function pango_language_includes_script(ALanguage: PPangoLanguage; script: TPangoScript): gboolean; cdecl; external;
function pango_language_matches(ALanguage: PPangoLanguage; range_list: Pgchar): gboolean; cdecl; external;
function pango_language_to_string(ALanguage: PPangoLanguage): Pgchar; cdecl; external;
function pango_layout_copy(ALayout: PPangoLayout): PPangoLayout; cdecl; external;
function pango_layout_get_alignment(ALayout: PPangoLayout): TPangoAlignment; cdecl; external;
function pango_layout_get_attributes(ALayout: PPangoLayout): PPangoAttrList; cdecl; external;
function pango_layout_get_auto_dir(ALayout: PPangoLayout): gboolean; cdecl; external;
function pango_layout_get_baseline(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_character_count(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_context(ALayout: PPangoLayout): PPangoContext; cdecl; external;
function pango_layout_get_ellipsize(ALayout: PPangoLayout): TPangoEllipsizeMode; cdecl; external;
function pango_layout_get_font_description(ALayout: PPangoLayout): PPangoFontDescription; cdecl; external;
function pango_layout_get_height(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_indent(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_iter(ALayout: PPangoLayout): PPangoLayoutIter; cdecl; external;
function pango_layout_get_justify(ALayout: PPangoLayout): gboolean; cdecl; external;
function pango_layout_get_line(ALayout: PPangoLayout; line: gint): PPangoLayoutLine; cdecl; external;
function pango_layout_get_line_count(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_line_readonly(ALayout: PPangoLayout; line: gint): PPangoLayoutLine; cdecl; external;
function pango_layout_get_lines(ALayout: PPangoLayout): PGSList; cdecl; external;
function pango_layout_get_lines_readonly(ALayout: PPangoLayout): PGSList; cdecl; external;
function pango_layout_get_log_attrs_readonly(ALayout: PPangoLayout; n_attrs: Pgint): PPangoLogAttr; cdecl; external;
function pango_layout_get_single_paragraph_mode(ALayout: PPangoLayout): gboolean; cdecl; external;
function pango_layout_get_spacing(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_tabs(ALayout: PPangoLayout): PPangoTabArray; cdecl; external;
function pango_layout_get_text(ALayout: PPangoLayout): Pgchar; cdecl; external;
function pango_layout_get_type: TGType; cdecl; external;
function pango_layout_get_unknown_glyphs_count(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_width(ALayout: PPangoLayout): gint; cdecl; external;
function pango_layout_get_wrap(ALayout: PPangoLayout): TPangoWrapMode; cdecl; external;
function pango_layout_is_ellipsized(ALayout: PPangoLayout): gboolean; cdecl; external;
function pango_layout_is_wrapped(ALayout: PPangoLayout): gboolean; cdecl; external;
function pango_layout_iter_at_last_line(ALayoutIter: PPangoLayoutIter): gboolean; cdecl; external;
function pango_layout_iter_copy(ALayoutIter: PPangoLayoutIter): PPangoLayoutIter; cdecl; external;
function pango_layout_iter_get_baseline(ALayoutIter: PPangoLayoutIter): gint; cdecl; external;
function pango_layout_iter_get_index(ALayoutIter: PPangoLayoutIter): gint; cdecl; external;
function pango_layout_iter_get_layout(ALayoutIter: PPangoLayoutIter): PPangoLayout; cdecl; external;
function pango_layout_iter_get_line(ALayoutIter: PPangoLayoutIter): PPangoLayoutLine; cdecl; external;
function pango_layout_iter_get_line_readonly(ALayoutIter: PPangoLayoutIter): PPangoLayoutLine; cdecl; external;
function pango_layout_iter_get_run(ALayoutIter: PPangoLayoutIter): PPangoLayoutRun; cdecl; external;
function pango_layout_iter_get_run_readonly(ALayoutIter: PPangoLayoutIter): PPangoLayoutRun; cdecl; external;
function pango_layout_iter_get_type: TGType; cdecl; external;
function pango_layout_iter_next_char(ALayoutIter: PPangoLayoutIter): gboolean; cdecl; external;
function pango_layout_iter_next_cluster(ALayoutIter: PPangoLayoutIter): gboolean; cdecl; external;
function pango_layout_iter_next_line(ALayoutIter: PPangoLayoutIter): gboolean; cdecl; external;
function pango_layout_iter_next_run(ALayoutIter: PPangoLayoutIter): gboolean; cdecl; external;
function pango_layout_line_get_type: TGType; cdecl; external;
function pango_layout_line_ref(ALayoutLine: PPangoLayoutLine): PPangoLayoutLine; cdecl; external;
function pango_layout_line_x_to_index(ALayoutLine: PPangoLayoutLine; x_pos: gint; index_: Pgint; trailing: Pgint): gboolean; cdecl; external;
function pango_layout_new(context: PPangoContext): PPangoLayout; cdecl; external;
function pango_layout_xy_to_index(ALayout: PPangoLayout; x: gint; y: gint; index_: Pgint; trailing: Pgint): gboolean; cdecl; external;
function pango_log2vis_get_embedding_levels(text: Pgchar; length: gint; pbase_dir: PPangoDirection): Pguint8; cdecl; external;
function pango_matrix_copy(AMatrix: PPangoMatrix): Pcairo_matrix_t; cdecl; external;
function pango_matrix_get_font_scale_factor(AMatrix: PPangoMatrix): gdouble; cdecl; external;
function pango_matrix_get_type: TGType; cdecl; external;
function pango_parse_enum(type_: TGType; str: Pgchar; value: Pgint; warn: gboolean; possible_values: PPgchar): gboolean; cdecl; external;
function pango_parse_markup(markup_text: Pgchar; length: gint; accel_marker: gunichar; attr_list: PPPangoAttrList; text: PPgchar; accel_char: Pgunichar): gboolean; cdecl; external;
function pango_parse_stretch(str: Pgchar; stretch: PPangoStretch; warn: gboolean): gboolean; cdecl; external;
function pango_parse_style(str: Pgchar; style: PPangoStyle; warn: gboolean): gboolean; cdecl; external;
function pango_parse_variant(str: Pgchar; variant: PPangoVariant; warn: gboolean): gboolean; cdecl; external;
function pango_parse_weight(str: Pgchar; weight: PPangoWeight; warn: gboolean): gboolean; cdecl; external;
function pango_read_line(stream: Pgpointer; str: PGString): gint; cdecl; external;
function pango_renderer_get_color(ARenderer: PPangoRenderer; part: TPangoRenderPart): PPangoColor; cdecl; external;
function pango_renderer_get_layout(ARenderer: PPangoRenderer): PPangoLayout; cdecl; external;
function pango_renderer_get_layout_line(ARenderer: PPangoRenderer): PPangoLayoutLine; cdecl; external;
function pango_renderer_get_matrix(ARenderer: PPangoRenderer): PPangoMatrix; cdecl; external;
function pango_renderer_get_type: TGType; cdecl; external;
function pango_reorder_items(logical_items: PGList): PGList; cdecl; external;
function pango_scan_int(pos: PPgchar; out_: Pgint): gboolean; cdecl; external;
function pango_scan_string(pos: PPgchar; out_: PGString): gboolean; cdecl; external;
function pango_scan_word(pos: PPgchar; out_: PGString): gboolean; cdecl; external;
function pango_script_for_unichar(ch: gunichar): TPangoScript; cdecl; external;
function pango_script_get_sample_language(script: TPangoScript): PPangoLanguage; cdecl; external;
function pango_script_iter_new(text: Pgchar; length: gint): PPangoScriptIter; cdecl; external;
function pango_script_iter_next(AScriptIter: PPangoScriptIter): gboolean; cdecl; external;
function pango_skip_space(pos: PPgchar): gboolean; cdecl; external;
function pango_split_file_list(str: Pgchar): PPgchar; cdecl; external;
function pango_tab_array_copy(ATabArray: PPangoTabArray): PPangoTabArray; cdecl; external;
function pango_tab_array_get_positions_in_pixels(ATabArray: PPangoTabArray): gboolean; cdecl; external;
function pango_tab_array_get_size(ATabArray: PPangoTabArray): gint; cdecl; external;
function pango_tab_array_get_type: TGType; cdecl; external;
function pango_tab_array_new(initial_size: gint; positions_in_pixels: gboolean): PPangoTabArray; cdecl; external;
function pango_tab_array_new_with_positions(size: gint; positions_in_pixels: gboolean; first_alignment: TPangoTabAlign; first_position: gint; args: array of const): PPangoTabArray; cdecl; external;
function pango_trim_string(str: Pgchar): Pgchar; cdecl; external;
function pango_unichar_direction(ch: gunichar): TPangoDirection; cdecl; external;
function pango_units_from_double(d: gdouble): gint; cdecl; external;
function pango_units_to_double(i: gint): gdouble; cdecl; external;
function pango_version: gint; cdecl; external;
function pango_version_check(required_major: gint; required_minor: gint; required_micro: gint): Pgchar; cdecl; external;
function pango_version_string: Pgchar; cdecl; external;
procedure pango_attr_iterator_destroy(AAttrIterator: PPangoAttrIterator); cdecl; external;
procedure pango_attr_iterator_get_font(AAttrIterator: PPangoAttrIterator; desc: PPangoFontDescription; language: PPPangoLanguage; extra_attrs: PPGSList); cdecl; external;
procedure pango_attr_iterator_range(AAttrIterator: PPangoAttrIterator; start: Pgint; end_: Pgint); cdecl; external;
procedure pango_attr_list_change(AAttrList: PPangoAttrList; attr: PPangoAttribute); cdecl; external;
procedure pango_attr_list_insert(AAttrList: PPangoAttrList; attr: PPangoAttribute); cdecl; external;
procedure pango_attr_list_insert_before(AAttrList: PPangoAttrList; attr: PPangoAttribute); cdecl; external;
procedure pango_attr_list_splice(AAttrList: PPangoAttrList; other: PPangoAttrList; pos: gint; len: gint); cdecl; external;
procedure pango_attr_list_unref(AAttrList: PPangoAttrList); cdecl; external;
procedure pango_attribute_destroy(AAttribute: PPangoAttribute); cdecl; external;
procedure pango_attribute_init(AAttribute: PPangoAttribute; klass: PPangoAttrClass); cdecl; external;
procedure pango_break(text: Pgchar; length: gint; analysis: PPangoAnalysis; attrs: PPangoLogAttr; attrs_len: gint); cdecl; external;
procedure pango_color_free(AColor: PPangoColor); cdecl; external;
procedure pango_context_list_families(AContext: PPangoContext; families: PPPPangoFontFamily; n_families: Pgint); cdecl; external;
procedure pango_context_set_base_dir(AContext: PPangoContext; direction: TPangoDirection); cdecl; external;
procedure pango_context_set_base_gravity(AContext: PPangoContext; gravity: TPangoGravity); cdecl; external;
procedure pango_context_set_font_description(AContext: PPangoContext; desc: PPangoFontDescription); cdecl; external;
procedure pango_context_set_font_map(AContext: PPangoContext; font_map: PPangoFontMap); cdecl; external;
procedure pango_context_set_gravity_hint(AContext: PPangoContext; hint: TPangoGravityHint); cdecl; external;
procedure pango_context_set_language(AContext: PPangoContext; language: PPangoLanguage); cdecl; external;
procedure pango_context_set_matrix(AContext: PPangoContext; matrix: Pcairo_matrix_t); cdecl; external;
procedure pango_coverage_max(ACoverage: PPangoCoverage; other: PPangoCoverage); cdecl; external;
procedure pango_coverage_set(ACoverage: PPangoCoverage; index_: gint; level: TPangoCoverageLevel); cdecl; external;
procedure pango_coverage_to_bytes(ACoverage: PPangoCoverage; bytes: PPguint8; n_bytes: Pgint); cdecl; external;
procedure pango_coverage_unref(ACoverage: PPangoCoverage); cdecl; external;
procedure pango_extents_to_pixels(inclusive: PPangoRectangle; nearest: PPangoRectangle); cdecl; external;
procedure pango_find_paragraph_boundary(text: Pgchar; length: gint; paragraph_delimiter_index: Pgint; next_paragraph_start: Pgint); cdecl; external;
procedure pango_font_description_free(AFontDescription: PPangoFontDescription); cdecl; external;
procedure pango_font_description_merge(AFontDescription: PPangoFontDescription; desc_to_merge: PPangoFontDescription; replace_existing: gboolean); cdecl; external;
procedure pango_font_description_merge_static(AFontDescription: PPangoFontDescription; desc_to_merge: PPangoFontDescription; replace_existing: gboolean); cdecl; external;
procedure pango_font_description_set_absolute_size(AFontDescription: PPangoFontDescription; size: gdouble); cdecl; external;
procedure pango_font_description_set_family(AFontDescription: PPangoFontDescription; family: Pgchar); cdecl; external;
procedure pango_font_description_set_family_static(AFontDescription: PPangoFontDescription; family: Pgchar); cdecl; external;
procedure pango_font_description_set_gravity(AFontDescription: PPangoFontDescription; gravity: TPangoGravity); cdecl; external;
procedure pango_font_description_set_size(AFontDescription: PPangoFontDescription; size: gint); cdecl; external;
procedure pango_font_description_set_stretch(AFontDescription: PPangoFontDescription; stretch: TPangoStretch); cdecl; external;
procedure pango_font_description_set_style(AFontDescription: PPangoFontDescription; style: TPangoStyle); cdecl; external;
procedure pango_font_description_set_variant(AFontDescription: PPangoFontDescription; variant: TGVariant); cdecl; external;
procedure pango_font_description_set_weight(AFontDescription: PPangoFontDescription; weight: TPangoWeight); cdecl; external;
procedure pango_font_description_unset_fields(AFontDescription: PPangoFontDescription; to_unset: TPangoFontMask); cdecl; external;
procedure pango_font_descriptions_free(descs: PPPangoFontDescription; n_descs: gint); cdecl; external;
procedure pango_font_face_list_sizes(AFontFace: PPangoFontFace; sizes: PPgint; n_sizes: Pgint); cdecl; external;
procedure pango_font_family_list_faces(AFontFamily: PPangoFontFamily; faces: PPPPangoFontFace; n_faces: Pgint); cdecl; external;
procedure pango_font_get_glyph_extents(AFont: PPangoFont; glyph: TPangoGlyph; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_font_map_list_families(AFontMap: PPangoFontMap; families: PPPPangoFontFamily; n_families: Pgint); cdecl; external;
procedure pango_font_metrics_unref(AFontMetrics: PPangoFontMetrics); cdecl; external;
procedure pango_fontset_foreach(AFontset: PPangoFontset; func: TPangoFontsetForeachFunc; data: gpointer); cdecl; external;
procedure pango_get_log_attrs(text: Pgchar; length: gint; level: gint; language: PPangoLanguage; log_attrs: PPangoLogAttr; attrs_len: gint); cdecl; external;
procedure pango_glyph_item_free(AGlyphItem: PPangoGlyphItem); cdecl; external;
procedure pango_glyph_item_get_logical_widths(AGlyphItem: PPangoGlyphItem; text: Pgchar; logical_widths: Pgint); cdecl; external;
procedure pango_glyph_item_iter_free(AGlyphItemIter: PPangoGlyphItemIter); cdecl; external;
procedure pango_glyph_item_letter_space(AGlyphItem: PPangoGlyphItem; text: Pgchar; log_attrs: PPangoLogAttr; letter_spacing: gint); cdecl; external;
procedure pango_glyph_string_extents(AGlyphString: PPangoGlyphString; font: PPangoFont; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_glyph_string_extents_range(AGlyphString: PPangoGlyphString; start: gint; end_: gint; font: PPangoFont; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_glyph_string_free(AGlyphString: PPangoGlyphString); cdecl; external;
procedure pango_glyph_string_get_logical_widths(AGlyphString: PPangoGlyphString; text: Pgchar; length: gint; embedding_level: gint; logical_widths: Pgint); cdecl; external;
procedure pango_glyph_string_index_to_x(AGlyphString: PPangoGlyphString; text: Pgchar; length: gint; analysis: PPangoAnalysis; index_: gint; trailing: gboolean; x_pos: Pgint); cdecl; external;
procedure pango_glyph_string_set_size(AGlyphString: PPangoGlyphString; new_len: gint); cdecl; external;
procedure pango_glyph_string_x_to_index(AGlyphString: PPangoGlyphString; text: Pgchar; length: gint; analysis: PPangoAnalysis; x_pos: gint; index_: Pgint; trailing: Pgint); cdecl; external;
procedure pango_item_free(AItem: PPangoItem); cdecl; external;
procedure pango_layout_context_changed(ALayout: PPangoLayout); cdecl; external;
procedure pango_layout_get_cursor_pos(ALayout: PPangoLayout; index_: gint; strong_pos: PPangoRectangle; weak_pos: PPangoRectangle); cdecl; external;
procedure pango_layout_get_extents(ALayout: PPangoLayout; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_get_log_attrs(ALayout: PPangoLayout; attrs: PPPangoLogAttr; n_attrs: Pgint); cdecl; external;
procedure pango_layout_get_pixel_extents(ALayout: PPangoLayout; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_get_pixel_size(ALayout: PPangoLayout; width: Pgint; height: Pgint); cdecl; external;
procedure pango_layout_get_size(ALayout: PPangoLayout; width: Pgint; height: Pgint); cdecl; external;
procedure pango_layout_index_to_line_x(ALayout: PPangoLayout; index_: gint; trailing: gboolean; line: Pgint; x_pos: Pgint); cdecl; external;
procedure pango_layout_index_to_pos(ALayout: PPangoLayout; index_: gint; pos: PPangoRectangle); cdecl; external;
procedure pango_layout_iter_free(ALayoutIter: PPangoLayoutIter); cdecl; external;
procedure pango_layout_iter_get_char_extents(ALayoutIter: PPangoLayoutIter; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_iter_get_cluster_extents(ALayoutIter: PPangoLayoutIter; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_iter_get_layout_extents(ALayoutIter: PPangoLayoutIter; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_iter_get_line_extents(ALayoutIter: PPangoLayoutIter; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_iter_get_line_yrange(ALayoutIter: PPangoLayoutIter; y0_: Pgint; y1_: Pgint); cdecl; external;
procedure pango_layout_iter_get_run_extents(ALayoutIter: PPangoLayoutIter; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_line_get_extents(ALayoutLine: PPangoLayoutLine; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_line_get_pixel_extents(ALayoutLine: PPangoLayoutLine; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl; external;
procedure pango_layout_line_get_x_ranges(ALayoutLine: PPangoLayoutLine; start_index: gint; end_index: gint; ranges: PPgint; n_ranges: Pgint); cdecl; external;
procedure pango_layout_line_index_to_x(ALayoutLine: PPangoLayoutLine; index_: gint; trailing: gboolean; x_pos: Pgint); cdecl; external;
procedure pango_layout_line_unref(ALayoutLine: PPangoLayoutLine); cdecl; external;
procedure pango_layout_move_cursor_visually(ALayout: PPangoLayout; strong: gboolean; old_index: gint; old_trailing: gint; direction: gint; new_index: Pgint; new_trailing: Pgint); cdecl; external;
procedure pango_layout_set_alignment(ALayout: PPangoLayout; alignment: TPangoAlignment); cdecl; external;
procedure pango_layout_set_attributes(ALayout: PPangoLayout; attrs: PPangoAttrList); cdecl; external;
procedure pango_layout_set_auto_dir(ALayout: PPangoLayout; auto_dir: gboolean); cdecl; external;
procedure pango_layout_set_ellipsize(ALayout: PPangoLayout; ellipsize: TPangoEllipsizeMode); cdecl; external;
procedure pango_layout_set_font_description(ALayout: PPangoLayout; desc: PPangoFontDescription); cdecl; external;
procedure pango_layout_set_height(ALayout: PPangoLayout; height: gint); cdecl; external;
procedure pango_layout_set_indent(ALayout: PPangoLayout; indent: gint); cdecl; external;
procedure pango_layout_set_justify(ALayout: PPangoLayout; justify: gboolean); cdecl; external;
procedure pango_layout_set_markup(ALayout: PPangoLayout; markup: Pgchar; length: gint); cdecl; external;
procedure pango_layout_set_markup_with_accel(ALayout: PPangoLayout; markup: Pgchar; length: gint; accel_marker: gunichar; accel_char: Pgunichar); cdecl; external;
procedure pango_layout_set_single_paragraph_mode(ALayout: PPangoLayout; setting: gboolean); cdecl; external;
procedure pango_layout_set_spacing(ALayout: PPangoLayout; spacing: gint); cdecl; external;
procedure pango_layout_set_tabs(ALayout: PPangoLayout; tabs: PPangoTabArray); cdecl; external;
procedure pango_layout_set_text(ALayout: PPangoLayout; text: Pgchar; length: gint); cdecl; external;
procedure pango_layout_set_width(ALayout: PPangoLayout; width: gint); cdecl; external;
procedure pango_layout_set_wrap(ALayout: PPangoLayout; wrap: TPangoWrapMode); cdecl; external;
procedure pango_matrix_concat(AMatrix: PPangoMatrix; new_matrix: Pcairo_matrix_t); cdecl; external;
procedure pango_matrix_free(AMatrix: PPangoMatrix); cdecl; external;
procedure pango_matrix_rotate(AMatrix: PPangoMatrix; degrees: gdouble); cdecl; external;
procedure pango_matrix_scale(AMatrix: PPangoMatrix; scale_x: gdouble; scale_y: gdouble); cdecl; external;
procedure pango_matrix_transform_distance(AMatrix: PPangoMatrix; dx: Pgdouble; dy: Pgdouble); cdecl; external;
procedure pango_matrix_transform_pixel_rectangle(AMatrix: PPangoMatrix; rect: PPangoRectangle); cdecl; external;
procedure pango_matrix_transform_point(AMatrix: PPangoMatrix; x: Pgdouble; y: Pgdouble); cdecl; external;
procedure pango_matrix_transform_rectangle(AMatrix: PPangoMatrix; rect: PPangoRectangle); cdecl; external;
procedure pango_matrix_translate(AMatrix: PPangoMatrix; tx: gdouble; ty: gdouble); cdecl; external;
procedure pango_quantize_line_geometry(thickness: Pgint; position: Pgint); cdecl; external;
procedure pango_renderer_activate(ARenderer: PPangoRenderer); cdecl; external;
procedure pango_renderer_deactivate(ARenderer: PPangoRenderer); cdecl; external;
procedure pango_renderer_draw_error_underline(ARenderer: PPangoRenderer; x: gint; y: gint; width: gint; height: gint); cdecl; external;
procedure pango_renderer_draw_glyph(ARenderer: PPangoRenderer; font: PPangoFont; glyph: TPangoGlyph; x: gdouble; y: gdouble); cdecl; external;
procedure pango_renderer_draw_glyph_item(ARenderer: PPangoRenderer; text: Pgchar; glyph_item: PPangoGlyphItem; x: gint; y: gint); cdecl; external;
procedure pango_renderer_draw_glyphs(ARenderer: PPangoRenderer; font: PPangoFont; glyphs: PPangoGlyphString; x: gint; y: gint); cdecl; external;
procedure pango_renderer_draw_layout(ARenderer: PPangoRenderer; layout: PPangoLayout; x: gint; y: gint); cdecl; external;
procedure pango_renderer_draw_layout_line(ARenderer: PPangoRenderer; line: PPangoLayoutLine; x: gint; y: gint); cdecl; external;
procedure pango_renderer_draw_rectangle(ARenderer: PPangoRenderer; part: TPangoRenderPart; x: gint; y: gint; width: gint; height: gint); cdecl; external;
procedure pango_renderer_draw_trapezoid(ARenderer: PPangoRenderer; part: TPangoRenderPart; y1_: gdouble; x11: gdouble; x21: gdouble; y2: gdouble; x12: gdouble; x22: gdouble); cdecl; external;
procedure pango_renderer_part_changed(ARenderer: PPangoRenderer; part: TPangoRenderPart); cdecl; external;
procedure pango_renderer_set_color(ARenderer: PPangoRenderer; part: TPangoRenderPart; color: PPangoColor); cdecl; external;
procedure pango_renderer_set_matrix(ARenderer: PPangoRenderer; matrix: PPangoMatrix); cdecl; external;
procedure pango_script_iter_free(AScriptIter: PPangoScriptIter); cdecl; external;
procedure pango_script_iter_get_range(AScriptIter: PPangoScriptIter; start: PPgchar; end_: PPgchar; script: PPangoScript); cdecl; external;
procedure pango_shape(text: Pgchar; length: gint; analysis: PPangoAnalysis; glyphs: PPangoGlyphString); cdecl; external;
procedure pango_tab_array_free(ATabArray: PPangoTabArray); cdecl; external;
procedure pango_tab_array_get_tab(ATabArray: PPangoTabArray; tab_index: gint; alignment: PPangoTabAlign; location: Pgint); cdecl; external;
procedure pango_tab_array_get_tabs(ATabArray: PPangoTabArray; alignments: PPPangoTabAlign; locations: PPgint); cdecl; external;
procedure pango_tab_array_resize(ATabArray: PPangoTabArray; new_size: gint); cdecl; external;
procedure pango_tab_array_set_tab(ATabArray: PPangoTabArray; tab_index: gint; alignment: TPangoTabAlign; location: gint); cdecl; external;
implementation
function TPangoGlyphItem.apply_attrs(text: Pgchar; list: PPangoAttrList): PGSList; cdecl;
begin
  Result := Pango1.pango_glyph_item_apply_attrs(@self, text, list);
end;

function TPangoGlyphItem.copy: PPangoGlyphItem; cdecl;
begin
  Result := Pango1.pango_glyph_item_copy(@self);
end;

procedure TPangoGlyphItem.free; cdecl;
begin
  Pango1.pango_glyph_item_free(@self);
end;

procedure TPangoGlyphItem.get_logical_widths(text: Pgchar; logical_widths: Pgint); cdecl;
begin
  Pango1.pango_glyph_item_get_logical_widths(@self, text, logical_widths);
end;

procedure TPangoGlyphItem.letter_space(text: Pgchar; log_attrs: PPangoLogAttr; letter_spacing: gint); cdecl;
begin
  Pango1.pango_glyph_item_letter_space(@self, text, log_attrs, letter_spacing);
end;

function TPangoGlyphItem.split(text: Pgchar; split_index: gint): PPangoGlyphItem; cdecl;
begin
  Result := Pango1.pango_glyph_item_split(@self, text, split_index);
end;

procedure TPangoFont.descriptions_free(descs: PPPangoFontDescription; n_descs: gint); cdecl;
begin
  Pango1.pango_font_descriptions_free(descs, n_descs);
end;

function TPangoFont.describe: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_font_describe(@self);
end;

function TPangoFont.describe_with_absolute_size: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_font_describe_with_absolute_size(@self);
end;

function TPangoFont.find_shaper(language: PPangoLanguage; ch: guint32): PPangoEngineShape; cdecl;
begin
  Result := Pango1.pango_font_find_shaper(@self, language, ch);
end;

function TPangoFont.get_coverage(language: PPangoLanguage): PPangoCoverage; cdecl;
begin
  Result := Pango1.pango_font_get_coverage(@self, language);
end;

function TPangoFont.get_font_map: PPangoFontMap; cdecl;
begin
  Result := Pango1.pango_font_get_font_map(@self);
end;

procedure TPangoFont.get_glyph_extents(glyph: TPangoGlyph; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_font_get_glyph_extents(@self, glyph, ink_rect, logical_rect);
end;

function TPangoFont.get_metrics(language: PPangoLanguage): PPangoFontMetrics; cdecl;
begin
  Result := Pango1.pango_font_get_metrics(@self, language);
end;

function TPangoLanguage.get_sample_string: Pgchar; cdecl;
begin
  Result := Pango1.pango_language_get_sample_string(@self);
end;

function TPangoLanguage.get_scripts(num_scripts: Pgint): PPangoScript; cdecl;
begin
  Result := Pango1.pango_language_get_scripts(@self, num_scripts);
end;

function TPangoLanguage.includes_script(script: TPangoScript): gboolean; cdecl;
begin
  Result := Pango1.pango_language_includes_script(@self, script);
end;

function TPangoLanguage.matches(range_list: Pgchar): gboolean; cdecl;
begin
  Result := Pango1.pango_language_matches(@self, range_list);
end;

function TPangoLanguage.to_string: Pgchar; cdecl;
begin
  Result := Pango1.pango_language_to_string(@self);
end;

function TPangoLanguage.from_string(language: Pgchar): PPangoLanguage; cdecl;
begin
  Result := Pango1.pango_language_from_string(language);
end;

function TPangoLanguage.get_default: PPangoLanguage; cdecl;
begin
  Result := Pango1.pango_language_get_default();
end;

function TPangoAttribute.copy: PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attribute_copy(@self);
end;

procedure TPangoAttribute.destroy_; cdecl;
begin
  Pango1.pango_attribute_destroy(@self);
end;

function TPangoAttribute.equal(attr2: PPangoAttribute): gboolean; cdecl;
begin
  Result := Pango1.pango_attribute_equal(@self, attr2);
end;

procedure TPangoAttribute.init(klass: PPangoAttrClass); cdecl;
begin
  Pango1.pango_attribute_init(@self, klass);
end;

function TPangoColor.copy: PPangoColor; cdecl;
begin
  Result := Pango1.pango_color_copy(@self);
end;

procedure TPangoColor.free; cdecl;
begin
  Pango1.pango_color_free(@self);
end;

function TPangoColor.parse(spec: Pgchar): gboolean; cdecl;
begin
  Result := Pango1.pango_color_parse(@self, spec);
end;

function TPangoColor.to_string: Pgchar; cdecl;
begin
  Result := Pango1.pango_color_to_string(@self);
end;

function TPangoFontDescription.new: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_font_description_new();
end;

function TPangoFontDescription.better_match(old_match: PPangoFontDescription; new_match: PPangoFontDescription): gboolean; cdecl;
begin
  Result := Pango1.pango_font_description_better_match(@self, old_match, new_match);
end;

function TPangoFontDescription.copy: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_font_description_copy(@self);
end;

function TPangoFontDescription.copy_static: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_font_description_copy_static(@self);
end;

function TPangoFontDescription.equal(desc2: PPangoFontDescription): gboolean; cdecl;
begin
  Result := Pango1.pango_font_description_equal(@self, desc2);
end;

procedure TPangoFontDescription.free; cdecl;
begin
  Pango1.pango_font_description_free(@self);
end;

function TPangoFontDescription.get_family: Pgchar; cdecl;
begin
  Result := Pango1.pango_font_description_get_family(@self);
end;

function TPangoFontDescription.get_gravity: TPangoGravity; cdecl;
begin
  Result := Pango1.pango_font_description_get_gravity(@self);
end;


function TPangoFontDescription.get_set_fields: TPangoFontMask; cdecl;
begin
  Result := Pango1.pango_font_description_get_set_fields(@self);
end;

function TPangoFontDescription.get_size: gint; cdecl;
begin
  Result := Pango1.pango_font_description_get_size(@self);
end;

function TPangoFontDescription.get_size_is_absolute: gboolean; cdecl;
begin
  Result := Pango1.pango_font_description_get_size_is_absolute(@self);
end;

function TPangoFontDescription.get_stretch: TPangoStretch; cdecl;
begin
  Result := Pango1.pango_font_description_get_stretch(@self);
end;

function TPangoFontDescription.get_style: TPangoStyle; cdecl;
begin
  Result := Pango1.pango_font_description_get_style(@self);
end;

function TPangoFontDescription.get_variant: TGVariant; cdecl;
begin
  Result := Pango1.pango_font_description_get_variant(@self);
end;

function TPangoFontDescription.get_weight: TPangoWeight; cdecl;
begin
  Result := Pango1.pango_font_description_get_weight(@self);
end;

function TPangoFontDescription.hash: guint; cdecl;
begin
  Result := Pango1.pango_font_description_hash(@self);
end;

procedure TPangoFontDescription.merge(desc_to_merge: PPangoFontDescription; replace_existing: gboolean); cdecl;
begin
  Pango1.pango_font_description_merge(@self, desc_to_merge, replace_existing);
end;

procedure TPangoFontDescription.merge_static(desc_to_merge: PPangoFontDescription; replace_existing: gboolean); cdecl;
begin
  Pango1.pango_font_description_merge_static(@self, desc_to_merge, replace_existing);
end;

procedure TPangoFontDescription.set_absolute_size(size: gdouble); cdecl;
begin
  Pango1.pango_font_description_set_absolute_size(@self, size);
end;

procedure TPangoFontDescription.set_family(family: Pgchar); cdecl;
begin
  Pango1.pango_font_description_set_family(@self, family);
end;

procedure TPangoFontDescription.set_family_static(family: Pgchar); cdecl;
begin
  Pango1.pango_font_description_set_family_static(@self, family);
end;

procedure TPangoFontDescription.set_gravity(gravity: TPangoGravity); cdecl;
begin
  Pango1.pango_font_description_set_gravity(@self, gravity);
end;

procedure TPangoFontDescription.set_size(size: gint); cdecl;
begin
  Pango1.pango_font_description_set_size(@self, size);
end;

procedure TPangoFontDescription.set_stretch(stretch: TPangoStretch); cdecl;
begin
  Pango1.pango_font_description_set_stretch(@self, stretch);
end;

procedure TPangoFontDescription.set_style(style: TPangoStyle); cdecl;
begin
  Pango1.pango_font_description_set_style(@self, style);
end;

procedure TPangoFontDescription.set_variant(variant: TGVariant); cdecl;
begin
  Pango1.pango_font_description_set_variant(@self, variant);
end;

procedure TPangoFontDescription.set_weight(weight: TPangoWeight); cdecl;
begin
  Pango1.pango_font_description_set_weight(@self, weight);
end;

function TPangoFontDescription.to_filename: Pgchar; cdecl;
begin
  Result := Pango1.pango_font_description_to_filename(@self);
end;

function TPangoFontDescription.to_string: Pgchar; cdecl;
begin
  Result := Pango1.pango_font_description_to_string(@self);
end;

procedure TPangoFontDescription.unset_fields(to_unset: TPangoFontMask); cdecl;
begin
  Pango1.pango_font_description_unset_fields(@self, to_unset);
end;

function TPangoFontDescription.from_string(str: Pgchar): PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_font_description_from_string(str);
end;

function TPangoAttrFontDesc.new(desc: PPangoFontDescription): PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attr_font_desc_new(desc);
end;

function TPangoAttrIterator.copy: PPangoAttrIterator; cdecl;
begin
  Result := Pango1.pango_attr_iterator_copy(@self);
end;

procedure TPangoAttrIterator.destroy_; cdecl;
begin
  Pango1.pango_attr_iterator_destroy(@self);
end;

function TPangoAttrIterator.get(type_: TPangoAttrType): PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attr_iterator_get(@self, type_);
end;

function TPangoAttrIterator.get_attrs: PGSList; cdecl;
begin
  Result := Pango1.pango_attr_iterator_get_attrs(@self);
end;

procedure TPangoAttrIterator.get_font(desc: PPangoFontDescription; language: PPPangoLanguage; extra_attrs: PPGSList); cdecl;
begin
  Pango1.pango_attr_iterator_get_font(@self, desc, language, extra_attrs);
end;

function TPangoAttrIterator.next: gboolean; cdecl;
begin
  Result := Pango1.pango_attr_iterator_next(@self);
end;

procedure TPangoAttrIterator.range(start: Pgint; end_: Pgint); cdecl;
begin
  Pango1.pango_attr_iterator_range(@self, start, end_);
end;

function TPangoAttrLanguage.new(language: PPangoLanguage): PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attr_language_new(language);
end;

function TPangoAttrList.new: PPangoAttrList; cdecl;
begin
  Result := Pango1.pango_attr_list_new();
end;

procedure TPangoAttrList.change(attr: PPangoAttribute); cdecl;
begin
  Pango1.pango_attr_list_change(@self, attr);
end;

function TPangoAttrList.copy: PPangoAttrList; cdecl;
begin
  Result := Pango1.pango_attr_list_copy(@self);
end;

function TPangoAttrList.filter(func: TPangoAttrFilterFunc; data: gpointer): PPangoAttrList; cdecl;
begin
  Result := Pango1.pango_attr_list_filter(@self, func, data);
end;

function TPangoAttrList.get_iterator: PPangoAttrIterator; cdecl;
begin
  Result := Pango1.pango_attr_list_get_iterator(@self);
end;

procedure TPangoAttrList.insert(attr: PPangoAttribute); cdecl;
begin
  Pango1.pango_attr_list_insert(@self, attr);
end;

procedure TPangoAttrList.insert_before(attr: PPangoAttribute); cdecl;
begin
  Pango1.pango_attr_list_insert_before(@self, attr);
end;

function TPangoAttrList.ref: PPangoAttrList; cdecl;
begin
  Result := Pango1.pango_attr_list_ref(@self);
end;

procedure TPangoAttrList.splice(other: PPangoAttrList; pos: gint; len: gint); cdecl;
begin
  Pango1.pango_attr_list_splice(@self, other, pos, len);
end;

procedure TPangoAttrList.unref; cdecl;
begin
  Pango1.pango_attr_list_unref(@self);
end;

function TPangoAttrShape.new(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle): PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attr_shape_new(ink_rect, logical_rect);
end;

function TPangoAttrShape.new_with_data(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle; data: gpointer; copy_func: TPangoAttrDataCopyFunc; destroy_func: TGDestroyNotify): PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attr_shape_new_with_data(ink_rect, logical_rect, data, copy_func, destroy_func);
end;

function TPangoAttrSize.new(size: gint): PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attr_size_new(size);
end;

function TPangoAttrSize.new_absolute(size: gint): PPangoAttribute; cdecl;
begin
  Result := Pango1.pango_attr_size_new_absolute(size);
end;

function TPangoFontMap.create_context: PPangoContext; cdecl;
begin
  Result := Pango1.pango_font_map_create_context(@self);
end;

procedure TPangoFontMap.list_families(families: PPPPangoFontFamily; n_families: Pgint); cdecl;
begin
  Pango1.pango_font_map_list_families(@self, families, n_families);
end;

function TPangoFontMap.load_font(context: PPangoContext; desc: PPangoFontDescription): PPangoFont; cdecl;
begin
  Result := Pango1.pango_font_map_load_font(@self, context, desc);
end;

function TPangoFontMap.load_fontset(context: PPangoContext; desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontset; cdecl;
begin
  Result := Pango1.pango_font_map_load_fontset(@self, context, desc, language);
end;

function TPangoFontMetrics.get_approximate_char_width: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_approximate_char_width(@self);
end;

function TPangoFontMetrics.get_approximate_digit_width: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_approximate_digit_width(@self);
end;

function TPangoFontMetrics.get_ascent: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_ascent(@self);
end;

function TPangoFontMetrics.get_descent: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_descent(@self);
end;

function TPangoFontMetrics.get_strikethrough_position: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_strikethrough_position(@self);
end;

function TPangoFontMetrics.get_strikethrough_thickness: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_strikethrough_thickness(@self);
end;

function TPangoFontMetrics.get_underline_position: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_underline_position(@self);
end;

function TPangoFontMetrics.get_underline_thickness: gint; cdecl;
begin
  Result := Pango1.pango_font_metrics_get_underline_thickness(@self);
end;

function TPangoFontMetrics.ref: PPangoFontMetrics; cdecl;
begin
  Result := Pango1.pango_font_metrics_ref(@self);
end;

procedure TPangoFontMetrics.unref; cdecl;
begin
  Pango1.pango_font_metrics_unref(@self);
end;

function TPangoFontFamily.get_name: Pgchar; cdecl;
begin
  Result := Pango1.pango_font_family_get_name(@self);
end;

function TPangoFontFamily.is_monospace: gboolean; cdecl;
begin
  Result := Pango1.pango_font_family_is_monospace(@self);
end;

procedure TPangoFontFamily.list_faces(faces: PPPPangoFontFace; n_faces: Pgint); cdecl;
begin
  Pango1.pango_font_family_list_faces(@self, faces, n_faces);
end;

procedure TPangoFontset.foreach(func: TPangoFontsetForeachFunc; data: gpointer); cdecl;
begin
  Pango1.pango_fontset_foreach(@self, func, data);
end;

function TPangoFontset.get_font(wc: guint): PPangoFont; cdecl;
begin
  Result := Pango1.pango_fontset_get_font(@self, wc);
end;

function TPangoFontset.get_metrics: PPangoFontMetrics; cdecl;
begin
  Result := Pango1.pango_fontset_get_metrics(@self);
end;

function TPangoContext.new: PPangoContext; cdecl;
begin
  Result := Pango1.pango_context_new();
end;

function TPangoContext.get_base_dir: TPangoDirection; cdecl;
begin
  Result := Pango1.pango_context_get_base_dir(@self);
end;

function TPangoContext.get_base_gravity: TPangoGravity; cdecl;
begin
  Result := Pango1.pango_context_get_base_gravity(@self);
end;

function TPangoContext.get_font_description: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_context_get_font_description(@self);
end;

function TPangoContext.get_font_map: PPangoFontMap; cdecl;
begin
  Result := Pango1.pango_context_get_font_map(@self);
end;

function TPangoContext.get_gravity: TPangoGravity; cdecl;
begin
  Result := Pango1.pango_context_get_gravity(@self);
end;

function TPangoContext.get_gravity_hint: TPangoGravityHint; cdecl;
begin
  Result := Pango1.pango_context_get_gravity_hint(@self);
end;

function TPangoContext.get_language: PPangoLanguage; cdecl;
begin
  Result := Pango1.pango_context_get_language(@self);
end;

function TPangoContext.get_matrix: Pcairo_matrix_t; cdecl;
begin
  Result := Pango1.pango_context_get_matrix(@self);
end;

function TPangoContext.get_metrics(desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontMetrics; cdecl;
begin
  Result := Pango1.pango_context_get_metrics(@self, desc, language);
end;

procedure TPangoContext.list_families(families: PPPPangoFontFamily; n_families: Pgint); cdecl;
begin
  Pango1.pango_context_list_families(@self, families, n_families);
end;

function TPangoContext.load_font(desc: PPangoFontDescription): PPangoFont; cdecl;
begin
  Result := Pango1.pango_context_load_font(@self, desc);
end;

function TPangoContext.load_fontset(desc: PPangoFontDescription; language: PPangoLanguage): PPangoFontset; cdecl;
begin
  Result := Pango1.pango_context_load_fontset(@self, desc, language);
end;

procedure TPangoContext.set_base_dir(direction: TPangoDirection); cdecl;
begin
  Pango1.pango_context_set_base_dir(@self, direction);
end;

procedure TPangoContext.set_base_gravity(gravity: TPangoGravity); cdecl;
begin
  Pango1.pango_context_set_base_gravity(@self, gravity);
end;

procedure TPangoContext.set_font_description(desc: PPangoFontDescription); cdecl;
begin
  Pango1.pango_context_set_font_description(@self, desc);
end;

procedure TPangoContext.set_font_map(font_map: PPangoFontMap); cdecl;
begin
  Pango1.pango_context_set_font_map(@self, font_map);
end;

procedure TPangoContext.set_gravity_hint(hint: TPangoGravityHint); cdecl;
begin
  Pango1.pango_context_set_gravity_hint(@self, hint);
end;

procedure TPangoContext.set_language(language: PPangoLanguage); cdecl;
begin
  Pango1.pango_context_set_language(@self, language);
end;

procedure TPangoContext.set_matrix(matrix: Pcairo_matrix_t); cdecl;
begin
  Pango1.pango_context_set_matrix(@self, matrix);
end;

function TPangoCoverage.copy: PPangoCoverage; cdecl;
begin
  Result := Pango1.pango_coverage_copy(@self);
end;

function TPangoCoverage.get(index_: gint): TPangoCoverageLevel; cdecl;
begin
  Result := Pango1.pango_coverage_get(@self, index_);
end;

procedure TPangoCoverage.max(other: PPangoCoverage); cdecl;
begin
  Pango1.pango_coverage_max(@self, other);
end;

function TPangoCoverage.ref: PPangoCoverage; cdecl;
begin
  Result := Pango1.pango_coverage_ref(@self);
end;

procedure TPangoCoverage.set_(index_: gint; level: TPangoCoverageLevel); cdecl;
begin
  Pango1.pango_coverage_set(@self, index_, level);
end;

procedure TPangoCoverage.to_bytes(bytes: PPguint8; n_bytes: Pgint); cdecl;
begin
  Pango1.pango_coverage_to_bytes(@self, bytes, n_bytes);
end;

procedure TPangoCoverage.unref; cdecl;
begin
  Pango1.pango_coverage_unref(@self);
end;

function TPangoCoverage.from_bytes(bytes: Pguint8; n_bytes: gint): PPangoCoverage; cdecl;
begin
  Result := Pango1.pango_coverage_from_bytes(bytes, n_bytes);
end;

function TPangoCoverage.new: PPangoCoverage; cdecl;
begin
  Result := Pango1.pango_coverage_new();
end;

function TPangoFontFace.describe: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_font_face_describe(@self);
end;

function TPangoFontFace.get_face_name: Pgchar; cdecl;
begin
  Result := Pango1.pango_font_face_get_face_name(@self);
end;

function TPangoFontFace.is_synthesized: gboolean; cdecl;
begin
  Result := Pango1.pango_font_face_is_synthesized(@self);
end;

procedure TPangoFontFace.list_sizes(sizes: PPgint; n_sizes: Pgint); cdecl;
begin
  Pango1.pango_font_face_list_sizes(@self, sizes, n_sizes);
end;

function TPangoItem.new: PPangoItem; cdecl;
begin
  Result := Pango1.pango_item_new();
end;

function TPangoItem.copy: PPangoItem; cdecl;
begin
  Result := Pango1.pango_item_copy(@self);
end;

procedure TPangoItem.free; cdecl;
begin
  Pango1.pango_item_free(@self);
end;

function TPangoItem.split(split_index: gint; split_offset: gint): PPangoItem; cdecl;
begin
  Result := Pango1.pango_item_split(@self, split_index, split_offset);
end;

function TPangoGlyphString.new: PPangoGlyphString; cdecl;
begin
  Result := Pango1.pango_glyph_string_new();
end;

function TPangoGlyphString.copy: PPangoGlyphString; cdecl;
begin
  Result := Pango1.pango_glyph_string_copy(@self);
end;

procedure TPangoGlyphString.extents(font: PPangoFont; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_glyph_string_extents(@self, font, ink_rect, logical_rect);
end;

procedure TPangoGlyphString.extents_range(start: gint; end_: gint; font: PPangoFont; ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_glyph_string_extents_range(@self, start, end_, font, ink_rect, logical_rect);
end;

procedure TPangoGlyphString.free; cdecl;
begin
  Pango1.pango_glyph_string_free(@self);
end;

procedure TPangoGlyphString.get_logical_widths(text: Pgchar; length: gint; embedding_level: gint; logical_widths: Pgint); cdecl;
begin
  Pango1.pango_glyph_string_get_logical_widths(@self, text, length, embedding_level, logical_widths);
end;

function TPangoGlyphString.get_width: gint; cdecl;
begin
  Result := Pango1.pango_glyph_string_get_width(@self);
end;

procedure TPangoGlyphString.index_to_x(text: Pgchar; length: gint; analysis: PPangoAnalysis; index_: gint; trailing: gboolean; x_pos: Pgint); cdecl;
begin
  Pango1.pango_glyph_string_index_to_x(@self, text, length, analysis, index_, trailing, x_pos);
end;

procedure TPangoGlyphString.set_size(new_len: gint); cdecl;
begin
  Pango1.pango_glyph_string_set_size(@self, new_len);
end;

procedure TPangoGlyphString.x_to_index(text: Pgchar; length: gint; analysis: PPangoAnalysis; x_pos: gint; index_: Pgint; trailing: Pgint); cdecl;
begin
  Pango1.pango_glyph_string_x_to_index(@self, text, length, analysis, x_pos, index_, trailing);
end;

function TPangoGlyphItemIter.copy: PPangoGlyphItemIter; cdecl;
begin
  Result := Pango1.pango_glyph_item_iter_copy(@self);
end;

procedure TPangoGlyphItemIter.free; cdecl;
begin
  Pango1.pango_glyph_item_iter_free(@self);
end;

function TPangoGlyphItemIter.init_end(glyph_item: PPangoGlyphItem; text: Pgchar): gboolean; cdecl;
begin
  Result := Pango1.pango_glyph_item_iter_init_end(@self, glyph_item, text);
end;

function TPangoGlyphItemIter.init_start(glyph_item: PPangoGlyphItem; text: Pgchar): gboolean; cdecl;
begin
  Result := Pango1.pango_glyph_item_iter_init_start(@self, glyph_item, text);
end;

function TPangoGlyphItemIter.next_cluster: gboolean; cdecl;
begin
  Result := Pango1.pango_glyph_item_iter_next_cluster(@self);
end;

function TPangoGlyphItemIter.prev_cluster: gboolean; cdecl;
begin
  Result := Pango1.pango_glyph_item_iter_prev_cluster(@self);
end;

function TPangoLayout.new(context: PPangoContext): PPangoLayout; cdecl;
begin
  Result := Pango1.pango_layout_new(context);
end;

procedure TPangoLayout.context_changed; cdecl;
begin
  Pango1.pango_layout_context_changed(@self);
end;

function TPangoLayout.copy: PPangoLayout; cdecl;
begin
  Result := Pango1.pango_layout_copy(@self);
end;

function TPangoLayout.get_alignment: TPangoAlignment; cdecl;
begin
  Result := Pango1.pango_layout_get_alignment(@self);
end;

function TPangoLayout.get_attributes: PPangoAttrList; cdecl;
begin
  Result := Pango1.pango_layout_get_attributes(@self);
end;

function TPangoLayout.get_auto_dir: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_get_auto_dir(@self);
end;

function TPangoLayout.get_baseline: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_baseline(@self);
end;

function TPangoLayout.get_character_count: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_character_count(@self);
end;

function TPangoLayout.get_context: PPangoContext; cdecl;
begin
  Result := Pango1.pango_layout_get_context(@self);
end;

procedure TPangoLayout.get_cursor_pos(index_: gint; strong_pos: PPangoRectangle; weak_pos: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_get_cursor_pos(@self, index_, strong_pos, weak_pos);
end;

function TPangoLayout.get_ellipsize: TPangoEllipsizeMode; cdecl;
begin
  Result := Pango1.pango_layout_get_ellipsize(@self);
end;

procedure TPangoLayout.get_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_get_extents(@self, ink_rect, logical_rect);
end;

function TPangoLayout.get_font_description: PPangoFontDescription; cdecl;
begin
  Result := Pango1.pango_layout_get_font_description(@self);
end;

function TPangoLayout.get_height: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_height(@self);
end;

function TPangoLayout.get_indent: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_indent(@self);
end;

function TPangoLayout.get_iter: PPangoLayoutIter; cdecl;
begin
  Result := Pango1.pango_layout_get_iter(@self);
end;

function TPangoLayout.get_justify: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_get_justify(@self);
end;

function TPangoLayout.get_line(line: gint): PPangoLayoutLine; cdecl;
begin
  Result := Pango1.pango_layout_get_line(@self, line);
end;

function TPangoLayout.get_line_count: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_line_count(@self);
end;

function TPangoLayout.get_line_readonly(line: gint): PPangoLayoutLine; cdecl;
begin
  Result := Pango1.pango_layout_get_line_readonly(@self, line);
end;

function TPangoLayout.get_lines: PGSList; cdecl;
begin
  Result := Pango1.pango_layout_get_lines(@self);
end;

function TPangoLayout.get_lines_readonly: PGSList; cdecl;
begin
  Result := Pango1.pango_layout_get_lines_readonly(@self);
end;

procedure TPangoLayout.get_log_attrs(attrs: PPPangoLogAttr; n_attrs: Pgint); cdecl;
begin
  Pango1.pango_layout_get_log_attrs(@self, attrs, n_attrs);
end;

function TPangoLayout.get_log_attrs_readonly(n_attrs: Pgint): PPangoLogAttr; cdecl;
begin
  Result := Pango1.pango_layout_get_log_attrs_readonly(@self, n_attrs);
end;

procedure TPangoLayout.get_pixel_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_get_pixel_extents(@self, ink_rect, logical_rect);
end;

procedure TPangoLayout.get_pixel_size(width: Pgint; height: Pgint); cdecl;
begin
  Pango1.pango_layout_get_pixel_size(@self, width, height);
end;

function TPangoLayout.get_single_paragraph_mode: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_get_single_paragraph_mode(@self);
end;

procedure TPangoLayout.get_size(width: Pgint; height: Pgint); cdecl;
begin
  Pango1.pango_layout_get_size(@self, width, height);
end;

function TPangoLayout.get_spacing: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_spacing(@self);
end;

function TPangoLayout.get_tabs: PPangoTabArray; cdecl;
begin
  Result := Pango1.pango_layout_get_tabs(@self);
end;

function TPangoLayout.get_text: Pgchar; cdecl;
begin
  Result := Pango1.pango_layout_get_text(@self);
end;

function TPangoLayout.get_unknown_glyphs_count: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_unknown_glyphs_count(@self);
end;

function TPangoLayout.get_width: gint; cdecl;
begin
  Result := Pango1.pango_layout_get_width(@self);
end;

function TPangoLayout.get_wrap: TPangoWrapMode; cdecl;
begin
  Result := Pango1.pango_layout_get_wrap(@self);
end;

procedure TPangoLayout.index_to_line_x(index_: gint; trailing: gboolean; line: Pgint; x_pos: Pgint); cdecl;
begin
  Pango1.pango_layout_index_to_line_x(@self, index_, trailing, line, x_pos);
end;

procedure TPangoLayout.index_to_pos(index_: gint; pos: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_index_to_pos(@self, index_, pos);
end;

function TPangoLayout.is_ellipsized: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_is_ellipsized(@self);
end;

function TPangoLayout.is_wrapped: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_is_wrapped(@self);
end;

procedure TPangoLayout.move_cursor_visually(strong: gboolean; old_index: gint; old_trailing: gint; direction: gint; new_index: Pgint; new_trailing: Pgint); cdecl;
begin
  Pango1.pango_layout_move_cursor_visually(@self, strong, old_index, old_trailing, direction, new_index, new_trailing);
end;

procedure TPangoLayout.set_alignment(alignment: TPangoAlignment); cdecl;
begin
  Pango1.pango_layout_set_alignment(@self, alignment);
end;

procedure TPangoLayout.set_attributes(attrs: PPangoAttrList); cdecl;
begin
  Pango1.pango_layout_set_attributes(@self, attrs);
end;

procedure TPangoLayout.set_auto_dir(auto_dir: gboolean); cdecl;
begin
  Pango1.pango_layout_set_auto_dir(@self, auto_dir);
end;

procedure TPangoLayout.set_ellipsize(ellipsize: TPangoEllipsizeMode); cdecl;
begin
  Pango1.pango_layout_set_ellipsize(@self, ellipsize);
end;

procedure TPangoLayout.set_font_description(desc: PPangoFontDescription); cdecl;
begin
  Pango1.pango_layout_set_font_description(@self, desc);
end;

procedure TPangoLayout.set_height(height: gint); cdecl;
begin
  Pango1.pango_layout_set_height(@self, height);
end;

procedure TPangoLayout.set_indent(indent: gint); cdecl;
begin
  Pango1.pango_layout_set_indent(@self, indent);
end;

procedure TPangoLayout.set_justify(justify: gboolean); cdecl;
begin
  Pango1.pango_layout_set_justify(@self, justify);
end;

procedure TPangoLayout.set_markup(markup: Pgchar; length: gint); cdecl;
begin
  Pango1.pango_layout_set_markup(@self, markup, length);
end;

procedure TPangoLayout.set_markup_with_accel(markup: Pgchar; length: gint; accel_marker: gunichar; accel_char: Pgunichar); cdecl;
begin
  Pango1.pango_layout_set_markup_with_accel(@self, markup, length, accel_marker, accel_char);
end;

procedure TPangoLayout.set_single_paragraph_mode(setting: gboolean); cdecl;
begin
  Pango1.pango_layout_set_single_paragraph_mode(@self, setting);
end;

procedure TPangoLayout.set_spacing(spacing: gint); cdecl;
begin
  Pango1.pango_layout_set_spacing(@self, spacing);
end;

procedure TPangoLayout.set_tabs(tabs: PPangoTabArray); cdecl;
begin
  Pango1.pango_layout_set_tabs(@self, tabs);
end;

procedure TPangoLayout.set_text(text: Pgchar; length: gint); cdecl;
begin
  Pango1.pango_layout_set_text(@self, text, length);
end;

procedure TPangoLayout.set_width(width: gint); cdecl;
begin
  Pango1.pango_layout_set_width(@self, width);
end;

procedure TPangoLayout.set_wrap(wrap: TPangoWrapMode); cdecl;
begin
  Pango1.pango_layout_set_wrap(@self, wrap);
end;

function TPangoLayout.xy_to_index(x: gint; y: gint; index_: Pgint; trailing: Pgint): gboolean; cdecl;
begin
  Result := Pango1.pango_layout_xy_to_index(@self, x, y, index_, trailing);
end;

function TPangoLayoutIter.at_last_line: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_iter_at_last_line(@self);
end;

function TPangoLayoutIter.copy: PPangoLayoutIter; cdecl;
begin
  Result := Pango1.pango_layout_iter_copy(@self);
end;

procedure TPangoLayoutIter.free; cdecl;
begin
  Pango1.pango_layout_iter_free(@self);
end;

function TPangoLayoutIter.get_baseline: gint; cdecl;
begin
  Result := Pango1.pango_layout_iter_get_baseline(@self);
end;

procedure TPangoLayoutIter.get_char_extents(logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_iter_get_char_extents(@self, logical_rect);
end;

procedure TPangoLayoutIter.get_cluster_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_iter_get_cluster_extents(@self, ink_rect, logical_rect);
end;

function TPangoLayoutIter.get_index: gint; cdecl;
begin
  Result := Pango1.pango_layout_iter_get_index(@self);
end;

function TPangoLayoutIter.get_layout: PPangoLayout; cdecl;
begin
  Result := Pango1.pango_layout_iter_get_layout(@self);
end;

procedure TPangoLayoutIter.get_layout_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_iter_get_layout_extents(@self, ink_rect, logical_rect);
end;

function TPangoLayoutIter.get_line: PPangoLayoutLine; cdecl;
begin
  Result := Pango1.pango_layout_iter_get_line(@self);
end;

procedure TPangoLayoutIter.get_line_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_iter_get_line_extents(@self, ink_rect, logical_rect);
end;

function TPangoLayoutIter.get_line_readonly: PPangoLayoutLine; cdecl;
begin
  Result := Pango1.pango_layout_iter_get_line_readonly(@self);
end;

procedure TPangoLayoutIter.get_line_yrange(y0_: Pgint; y1_: Pgint); cdecl;
begin
  Pango1.pango_layout_iter_get_line_yrange(@self, y0_, y1_);
end;

function TPangoLayoutIter.get_run: PPangoLayoutRun; cdecl;
begin
  Result := Pango1.pango_layout_iter_get_run(@self);
end;

procedure TPangoLayoutIter.get_run_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_iter_get_run_extents(@self, ink_rect, logical_rect);
end;

function TPangoLayoutIter.get_run_readonly: PPangoLayoutRun; cdecl;
begin
  Result := Pango1.pango_layout_iter_get_run_readonly(@self);
end;

function TPangoLayoutIter.next_char: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_iter_next_char(@self);
end;

function TPangoLayoutIter.next_cluster: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_iter_next_cluster(@self);
end;

function TPangoLayoutIter.next_line: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_iter_next_line(@self);
end;

function TPangoLayoutIter.next_run: gboolean; cdecl;
begin
  Result := Pango1.pango_layout_iter_next_run(@self);
end;

procedure TPangoLayoutLine.get_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_line_get_extents(@self, ink_rect, logical_rect);
end;

procedure TPangoLayoutLine.get_pixel_extents(ink_rect: PPangoRectangle; logical_rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_layout_line_get_pixel_extents(@self, ink_rect, logical_rect);
end;

procedure TPangoLayoutLine.get_x_ranges(start_index: gint; end_index: gint; ranges: PPgint; n_ranges: Pgint); cdecl;
begin
  Pango1.pango_layout_line_get_x_ranges(@self, start_index, end_index, ranges, n_ranges);
end;

procedure TPangoLayoutLine.index_to_x(index_: gint; trailing: gboolean; x_pos: Pgint); cdecl;
begin
  Pango1.pango_layout_line_index_to_x(@self, index_, trailing, x_pos);
end;

function TPangoLayoutLine.ref: PPangoLayoutLine; cdecl;
begin
  Result := Pango1.pango_layout_line_ref(@self);
end;

procedure TPangoLayoutLine.unref; cdecl;
begin
  Pango1.pango_layout_line_unref(@self);
end;

function TPangoLayoutLine.x_to_index(x_pos: gint; index_: Pgint; trailing: Pgint): gboolean; cdecl;
begin
  Result := Pango1.pango_layout_line_x_to_index(@self, x_pos, index_, trailing);
end;

function TPangoTabArray.new(initial_size: gint; positions_in_pixels: gboolean): PPangoTabArray; cdecl;
begin
  Result := Pango1.pango_tab_array_new(initial_size, positions_in_pixels);
end;

function TPangoTabArray.copy: PPangoTabArray; cdecl;
begin
  Result := Pango1.pango_tab_array_copy(@self);
end;

procedure TPangoTabArray.free; cdecl;
begin
  Pango1.pango_tab_array_free(@self);
end;

function TPangoTabArray.get_positions_in_pixels: gboolean; cdecl;
begin
  Result := Pango1.pango_tab_array_get_positions_in_pixels(@self);
end;

function TPangoTabArray.get_size: gint; cdecl;
begin
  Result := Pango1.pango_tab_array_get_size(@self);
end;

procedure TPangoTabArray.get_tab(tab_index: gint; alignment: PPangoTabAlign; location: Pgint); cdecl;
begin
  Pango1.pango_tab_array_get_tab(@self, tab_index, alignment, location);
end;

procedure TPangoTabArray.get_tabs(alignments: PPPangoTabAlign; locations: PPgint); cdecl;
begin
  Pango1.pango_tab_array_get_tabs(@self, alignments, locations);
end;

procedure TPangoTabArray.resize(new_size: gint); cdecl;
begin
  Pango1.pango_tab_array_resize(@self, new_size);
end;

procedure TPangoTabArray.set_tab(tab_index: gint; alignment: TPangoTabAlign; location: gint); cdecl;
begin
  Pango1.pango_tab_array_set_tab(@self, tab_index, alignment, location);
end;

procedure TPangoMatrix.concat(new_matrix: Pcairo_matrix_t); cdecl;
begin
  Pango1.pango_matrix_concat(@self, new_matrix);
end;

function TPangoMatrix.copy: Pcairo_matrix_t; cdecl;
begin
  Result := Pango1.pango_matrix_copy(@self);
end;

procedure TPangoMatrix.free; cdecl;
begin
  Pango1.pango_matrix_free(@self);
end;

function TPangoMatrix.get_font_scale_factor: gdouble; cdecl;
begin
  Result := Pango1.pango_matrix_get_font_scale_factor(@self);
end;

procedure TPangoMatrix.rotate(degrees: gdouble); cdecl;
begin
  Pango1.pango_matrix_rotate(@self, degrees);
end;

procedure TPangoMatrix.scale(scale_x: gdouble; scale_y: gdouble); cdecl;
begin
  Pango1.pango_matrix_scale(@self, scale_x, scale_y);
end;

procedure TPangoMatrix.transform_distance(dx: Pgdouble; dy: Pgdouble); cdecl;
begin
  Pango1.pango_matrix_transform_distance(@self, dx, dy);
end;

procedure TPangoMatrix.transform_pixel_rectangle(rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_matrix_transform_pixel_rectangle(@self, rect);
end;

procedure TPangoMatrix.transform_point(x: Pgdouble; y: Pgdouble); cdecl;
begin
  Pango1.pango_matrix_transform_point(@self, x, y);
end;

procedure TPangoMatrix.transform_rectangle(rect: PPangoRectangle); cdecl;
begin
  Pango1.pango_matrix_transform_rectangle(@self, rect);
end;

procedure TPangoMatrix.translate(tx: gdouble; ty: gdouble); cdecl;
begin
  Pango1.pango_matrix_translate(@self, tx, ty);
end;

procedure TPangoRenderer.activate; cdecl;
begin
  Pango1.pango_renderer_activate(@self);
end;

procedure TPangoRenderer.deactivate; cdecl;
begin
  Pango1.pango_renderer_deactivate(@self);
end;

procedure TPangoRenderer.draw_error_underline(x: gint; y: gint; width: gint; height: gint); cdecl;
begin
  Pango1.pango_renderer_draw_error_underline(@self, x, y, width, height);
end;

procedure TPangoRenderer.draw_glyph(font: PPangoFont; glyph: TPangoGlyph; x: gdouble; y: gdouble); cdecl;
begin
  Pango1.pango_renderer_draw_glyph(@self, font, glyph, x, y);
end;

procedure TPangoRenderer.draw_glyph_item(text: Pgchar; glyph_item: PPangoGlyphItem; x: gint; y: gint); cdecl;
begin
  Pango1.pango_renderer_draw_glyph_item(@self, text, glyph_item, x, y);
end;

procedure TPangoRenderer.draw_glyphs(font: PPangoFont; glyphs: PPangoGlyphString; x: gint; y: gint); cdecl;
begin
  Pango1.pango_renderer_draw_glyphs(@self, font, glyphs, x, y);
end;

procedure TPangoRenderer.draw_layout(layout: PPangoLayout; x: gint; y: gint); cdecl;
begin
  Pango1.pango_renderer_draw_layout(@self, layout, x, y);
end;

procedure TPangoRenderer.draw_layout_line(line: PPangoLayoutLine; x: gint; y: gint); cdecl;
begin
  Pango1.pango_renderer_draw_layout_line(@self, line, x, y);
end;

procedure TPangoRenderer.draw_rectangle(part: TPangoRenderPart; x: gint; y: gint; width: gint; height: gint); cdecl;
begin
  Pango1.pango_renderer_draw_rectangle(@self, part, x, y, width, height);
end;

procedure TPangoRenderer.draw_trapezoid(part: TPangoRenderPart; y1_: gdouble; x11: gdouble; x21: gdouble; y2: gdouble; x12: gdouble; x22: gdouble); cdecl;
begin
  Pango1.pango_renderer_draw_trapezoid(@self, part, y1_, x11, x21, y2, x12, x22);
end;

function TPangoRenderer.get_color(part: TPangoRenderPart): PPangoColor; cdecl;
begin
  Result := Pango1.pango_renderer_get_color(@self, part);
end;

function TPangoRenderer.get_layout: PPangoLayout; cdecl;
begin
  Result := Pango1.pango_renderer_get_layout(@self);
end;

function TPangoRenderer.get_layout_line: PPangoLayoutLine; cdecl;
begin
  Result := Pango1.pango_renderer_get_layout_line(@self);
end;

function TPangoRenderer.get_matrix: PPangoMatrix; cdecl;
begin
  Result := Pango1.pango_renderer_get_matrix(@self);
end;

procedure TPangoRenderer.part_changed(part: TPangoRenderPart); cdecl;
begin
  Pango1.pango_renderer_part_changed(@self, part);
end;

procedure TPangoRenderer.set_color(part: TPangoRenderPart; color: PPangoColor); cdecl;
begin
  Pango1.pango_renderer_set_color(@self, part, color);
end;

procedure TPangoRenderer.set_matrix(matrix: PPangoMatrix); cdecl;
begin
  Pango1.pango_renderer_set_matrix(@self, matrix);
end;

procedure TPangoScriptIter.free; cdecl;
begin
  Pango1.pango_script_iter_free(@self);
end;

procedure TPangoScriptIter.get_range(start: PPgchar; end_: PPgchar; script: PPangoScript); cdecl;
begin
  Pango1.pango_script_iter_get_range(@self, start, end_, script);
end;

function TPangoScriptIter.next: gboolean; cdecl;
begin
  Result := Pango1.pango_script_iter_next(@self);
end;

function TPangoScriptIter.new(text: Pgchar; length: gint): PPangoScriptIter; cdecl;
begin
  Result := Pango1.pango_script_iter_new(text, length);
end;

end.