unit GdkPixbuf2;

{$MODE OBJFPC}{$H+}

{$PACKRECORDS C}
{$BITPACKING ON}
{$MODESWITCH DUPLICATELOCALS+}

{$LINKLIB libgdk_pixbuf-2.0.so.0}
interface
uses
  CTypes, GLib2, GModule2, GObject2, Gio2;

const
  GdkPixbuf2_library = 'libgdk_pixbuf-2.0.so.0';

  PIXBUF_FEATURES_H = 1;
  PIXBUF_MAGIC_NUMBER = 1197763408;
  PIXBUF_MAJOR = 2;
  PIXBUF_MICRO = 0;
  PIXBUF_MINOR = 24;
  PIXBUF_VERSION = '2.24.0';
  PIXDATA_HEADER_LENGTH = 24;

type
  TGdkColorspace = Integer;
const
  { GdkColorspace }
  GDK_COLORSPACE_RGB: TGdkColorspace = 0;

type
  TGdkInterpType = Integer;
const
  { GdkInterpType }
  GDK_INTERP_NEAREST: TGdkInterpType = 0;
  GDK_INTERP_TILES: TGdkInterpType = 1;
  GDK_INTERP_BILINEAR: TGdkInterpType = 2;
  GDK_INTERP_HYPER: TGdkInterpType = 3;

type
  TGdkPixbufRotation = Integer;
const
  { GdkPixbufRotation }
  GDK_PIXBUF_ROTATE_NONE: TGdkPixbufRotation = 0;
  GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE: TGdkPixbufRotation = 90;
  GDK_PIXBUF_ROTATE_UPSIDEDOWN: TGdkPixbufRotation = 180;
  GDK_PIXBUF_ROTATE_CLOCKWISE: TGdkPixbufRotation = 270;

  { GdkPixdataDumpType }
  GDK_PIXDATA_DUMP_PIXDATA_STREAM = 0;
  GDK_PIXDATA_DUMP_PIXDATA_STRUCT = 1;
  GDK_PIXDATA_DUMP_MACROS = 2;
  GDK_PIXDATA_DUMP_GTYPES = 0;
  GDK_PIXDATA_DUMP_CTYPES = 256;
  GDK_PIXDATA_DUMP_STATIC = 512;
  GDK_PIXDATA_DUMP_CONST = 1024;
  GDK_PIXDATA_DUMP_RLE_DECODER = 65536;

type
  TGdkPixbufAlphaMode = Integer;
const
  { GdkPixbufAlphaMode }
  GDK_PIXBUF_ALPHA_BILEVEL: TGdkPixbufAlphaMode = 0;
  GDK_PIXBUF_ALPHA_FULL: TGdkPixbufAlphaMode = 1;

type
  TGdkPixbufError = Integer;
const
  { GdkPixbufError }
  GDK_PIXBUF_ERROR_CORRUPT_IMAGE: TGdkPixbufError = 0;
  GDK_PIXBUF_ERROR_INSUFFICIENT_MEMORY: TGdkPixbufError = 1;
  GDK_PIXBUF_ERROR_BAD_OPTION: TGdkPixbufError = 2;
  GDK_PIXBUF_ERROR_UNKNOWN_TYPE: TGdkPixbufError = 3;
  GDK_PIXBUF_ERROR_UNSUPPORTED_OPERATION: TGdkPixbufError = 4;
  GDK_PIXBUF_ERROR_FAILED: TGdkPixbufError = 5;

  { GdkPixdataType }
  GDK_PIXDATA_COLOR_TYPE_RGB = 1;
  GDK_PIXDATA_COLOR_TYPE_RGBA = 2;
  GDK_PIXDATA_COLOR_TYPE_MASK = 255;
  GDK_PIXDATA_SAMPLE_WIDTH_8 = 65536;
  GDK_PIXDATA_SAMPLE_WIDTH_MASK = 983040;
  GDK_PIXDATA_ENCODING_RAW = 16777216;
  GDK_PIXDATA_ENCODING_RLE = 33554432;
  GDK_PIXDATA_ENCODING_MASK = 251658240;
type

  PPGdkColorspace = ^PGdkColorspace;
  PGdkColorspace = ^TGdkColorspace;

  PPGdkInterpType = ^PGdkInterpType;
  PGdkInterpType = ^TGdkInterpType;

  PPGdkPixbuf = ^PGdkPixbuf;
  PGdkPixbuf = ^TGdkPixbuf;

  PPGdkPixbufDestroyNotify = ^PGdkPixbufDestroyNotify;
  PGdkPixbufDestroyNotify = ^TGdkPixbufDestroyNotify;
  TGdkPixbufDestroyNotify = procedure(pixels: Pguint8; data: gpointer); cdecl;

  PPGdkPixdata = ^PGdkPixdata;
  PGdkPixdata = ^TGdkPixdata;

  PPGdkPixbufFormat = ^PGdkPixbufFormat;
  PGdkPixbufFormat = ^TGdkPixbufFormat;

  PPGdkPixbufRotation = ^PGdkPixbufRotation;
  PGdkPixbufRotation = ^TGdkPixbufRotation;

  PPGdkPixbufSaveFunc = ^PGdkPixbufSaveFunc;
  PGdkPixbufSaveFunc = ^TGdkPixbufSaveFunc;
  TGdkPixbufSaveFunc = function(buf: Pgchar; count: gsize; error: PPGError; data: gpointer): gboolean; cdecl;
  TGdkPixbuf = object(TGObject)
    function new(colorspace: TGdkColorspace; has_alpha: gboolean; bits_per_sample: gint; width: gint; height: gint): PGdkPixbuf; cdecl; inline; static;
    function new_from_data(data: Pchar; colorspace: TGdkColorspace; has_alpha: gboolean; bits_per_sample: gint; width: gint; height: gint; rowstride: gint; destroy_fn: TGdkPixbufDestroyNotify; destroy_fn_data: gpointer): PGdkPixbuf; cdecl; inline; static;
    function new_from_file(filename: Pgchar): PGdkPixbuf; cdecl; inline; static;
    function new_from_file_at_scale(filename: Pgchar; width: gint; height: gint; preserve_aspect_ratio: gboolean): PGdkPixbuf; cdecl; inline; static;
    function new_from_file_at_size(filename: Pgchar; width: gint; height: gint): PGdkPixbuf; cdecl; inline; static;
    function new_from_inline(data_length: gint; data: Pguint8; copy_pixels: gboolean): PGdkPixbuf; cdecl; inline; static;
    function new_from_stream(stream: PGInputStream; cancellable: PGCancellable): PGdkPixbuf; cdecl; inline; static;
    function new_from_stream_at_scale(stream: PGInputStream; width: gint; height: gint; preserve_aspect_ratio: gboolean; cancellable: PGCancellable): PGdkPixbuf; cdecl; inline; static;
    function new_from_stream_finish(async_result: PGAsyncResult): PGdkPixbuf; cdecl; inline; static;
    function new_from_xpm_data(data: PPgchar): PGdkPixbuf; cdecl; inline; static;
    function from_pixdata(pixdata: PGdkPixdata; copy_pixels: gboolean): PGdkPixbuf; cdecl; inline; static;
    function get_file_info(filename: Pgchar; width: Pgint; height: Pgint): PGdkPixbufFormat; cdecl; inline; static;
    function get_formats: PGSList; cdecl; inline; static;
    function gettext(msgid: Pgchar): Pgchar; cdecl; inline; static;
    procedure new_from_stream_async(stream: PGInputStream; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    procedure new_from_stream_at_scale_async(stream: PGInputStream; width: gint; height: gint; preserve_aspect_ratio: gboolean; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    function save_to_stream_finish(async_result: PGAsyncResult): gboolean; cdecl; inline; static;
    function add_alpha(substitute_color: gboolean; r: guint8; g: guint8; b: guint8): PGdkPixbuf; cdecl; inline;
    function apply_embedded_orientation: PGdkPixbuf; cdecl; inline;
    procedure composite(dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType; overall_alpha: gint); cdecl; inline;
    procedure composite_color(dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType; overall_alpha: gint; check_x: gint; check_y: gint; check_size: gint; color1: guint32; color2: guint32); cdecl; inline;
    function composite_color_simple(dest_width: gint; dest_height: gint; interp_type: TGdkInterpType; overall_alpha: gint; check_size: gint; color1: guint32; color2: guint32): PGdkPixbuf; cdecl; inline;
    function copy: PGdkPixbuf; cdecl; inline;
    procedure copy_area(src_x: gint; src_y: gint; width: gint; height: gint; dest_pixbuf: PGdkPixbuf; dest_x: gint; dest_y: gint); cdecl; inline;
    procedure fill(pixel: guint32); cdecl; inline;
    function flip(horizontal: gboolean): PGdkPixbuf; cdecl; inline;
    function get_bits_per_sample: gint; cdecl; inline;
    function get_colorspace: TGdkColorspace; cdecl; inline;
    function get_has_alpha: gboolean; cdecl; inline;
    function get_height: gint; cdecl; inline;
    function get_n_channels: gint; cdecl; inline;
    function get_option(key: Pgchar): Pgchar; cdecl; inline;
    function get_pixels: Pguint8; cdecl; inline;
    function get_rowstride: gint; cdecl; inline;
    function get_width: gint; cdecl; inline;
    function new_subpixbuf(src_x: gint; src_y: gint; width: gint; height: gint): PGdkPixbuf; cdecl; inline;
    
    function rotate_simple(angle: TGdkPixbufRotation): PGdkPixbuf; cdecl; inline;
    procedure saturate_and_pixelate(dest: PGdkPixbuf; saturation: gfloat; pixelate: gboolean); cdecl; inline;
    //function save(filename: Pgchar; type_: Pgchar; error: PPGError; args: array of const): gboolean; cdecl; inline;
    //function save_to_buffer(buffer: PPgchar; buffer_size: Pgsize; type_: Pgchar; error: PPGError; args: array of const): gboolean; cdecl; inline;
    function save_to_bufferv(buffer: PPgchar; buffer_size: Pgsize; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl; inline;
    //function save_to_callback(save_func: TGdkPixbufSaveFunc; user_data: gpointer; type_: Pgchar; error: PPGError; args: array of const): gboolean; cdecl; inline;
    function save_to_callbackv(save_func: TGdkPixbufSaveFunc; user_data: gpointer; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl; inline;
    //function save_to_stream(stream: PGOutputStream; type_: Pgchar; cancellable: PGCancellable; error: PPGError; args: array of const): gboolean; cdecl; inline;
    //procedure save_to_stream_async(stream: PGOutputStream; type_: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer; args: array of const); cdecl; inline;
    function savev(filename: Pgchar; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl; inline;
    procedure scale(dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType); cdecl; inline;
    function scale_simple(dest_width: gint; dest_height: gint; interp_type: TGdkInterpType): PGdkPixbuf; cdecl; inline;
    
    property bits_per_sample:  gint read get_bits_per_sample  { property is writeable but setter not declared } ;
    property colorspace:  TGdkColorspace read get_colorspace  { property is writeable but setter not declared } ;
    property has_alpha:  gboolean read get_has_alpha  { property is writeable but setter not declared } ;
    property height:  gint read get_height  { property is writeable but setter not declared } ;
    property n_channels:  gint read get_n_channels  { property is writeable but setter not declared } ;
    property pixels:  Pguint8 read get_pixels  { property is writeable but setter not declared } ;
    property rowstride:  gint read get_rowstride  { property is writeable but setter not declared } ;
    property width:  gint read get_width  { property is writeable but setter not declared } ;
  end;

  PPGdkPixdataDumpType = ^PGdkPixdataDumpType;
  PGdkPixdataDumpType = ^TGdkPixdataDumpType;
  TGdkPixdataDumpType = packed object(TBitObject32)
  public
    property pixdata_stream: DWord index 0 read GetBit write SetBit;
    property pixdata_struct: DWord index 1 read GetBit write SetBit;
    property macros: DWord index 2 read GetBit write SetBit;
    property gtypes: DWord index 0 read GetBit write SetBit;
    property ctypes: DWord index 256 read GetBit write SetBit;
    property static: DWord index 512 read GetBit write SetBit;
    property const_: DWord index 1024 read GetBit write SetBit;
    property rle_decoder: DWord index 65536 read GetBit write SetBit;
  end;

  TGdkPixdata = object
    magic: guint32;
    length: gint32;
    pixdata_type: guint32;
    rowstride: guint32;
    width: guint32;
    height: guint32;
    pixel_data: Pguint8;
    function deserialize(stream_length: guint; stream: Pguint8): gboolean; cdecl; inline;
    function from_pixbuf(pixbuf: PGdkPixbuf; use_rle: gboolean): gpointer; cdecl; inline;
    function serialize(stream_length_p: Pguint): Pguint8; cdecl; inline;
    function to_csource(name: Pgchar; dump_type: TGdkPixdataDumpType): PGString; cdecl; inline;
  end;
  TGdkPixbufFormat = object
    function copy: PGdkPixbufFormat; cdecl; inline;
    procedure free; cdecl; inline;
    function get_description: Pgchar; cdecl; inline;
    function get_extensions: PPgchar; cdecl; inline;
    function get_license: Pgchar; cdecl; inline;
    function get_mime_types: PPgchar; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function is_disabled: gboolean; cdecl; inline;
    function is_scalable: gboolean; cdecl; inline;
    function is_writable: gboolean; cdecl; inline;
    procedure set_disabled(disabled: gboolean); cdecl; inline;
  end;

  PPGdkPixbufAlphaMode = ^PGdkPixbufAlphaMode;
  PGdkPixbufAlphaMode = ^TGdkPixbufAlphaMode;

  PPGdkPixbufAnimation = ^PGdkPixbufAnimation;
  PGdkPixbufAnimation = ^TGdkPixbufAnimation;

  PPGdkPixbufAnimationIter = ^PGdkPixbufAnimationIter;
  PGdkPixbufAnimationIter = ^TGdkPixbufAnimationIter;
  TGdkPixbufAnimation = object(TGObject)
    function new_from_file(filename: Pgchar): PGdkPixbufAnimation; cdecl; inline; static;
    function get_height: gint; cdecl; inline;
    function get_iter(start_time: PGTimeVal): PGdkPixbufAnimationIter; cdecl; inline;
    function get_static_image: PGdkPixbuf; cdecl; inline;
    function get_width: gint; cdecl; inline;
    function is_static_image: gboolean; cdecl; inline;
    
    
  end;
  TGdkPixbufAnimationIter = object(TGObject)
    function advance(current_time: PGTimeVal): gboolean; cdecl; inline;
    function get_delay_time: gint; cdecl; inline;
    function get_pixbuf: PGdkPixbuf; cdecl; inline;
    function on_currently_loading_frame: gboolean; cdecl; inline;
  end;

  PPGdkPixbufError = ^PGdkPixbufError;
  PGdkPixbufError = ^TGdkPixbufError;

  PPGdkPixbufLoader = ^PGdkPixbufLoader;
  PGdkPixbufLoader = ^TGdkPixbufLoader;
  TGdkPixbufLoader = object(TGObject)
    priv: gpointer;
    function new: PGdkPixbufLoader; cdecl; inline; static;
    function new_with_mime_type(mime_type: Pgchar): PGdkPixbufLoader; cdecl; inline; static;
    function new_with_type(image_type: Pgchar): PGdkPixbufLoader; cdecl; inline; static;
    function close: gboolean; cdecl; inline;
    function get_animation: PGdkPixbufAnimation; cdecl; inline;
    function get_format: PGdkPixbufFormat; cdecl; inline;
    function get_pixbuf: PGdkPixbuf; cdecl; inline;
    procedure set_size(width: gint; height: gint); cdecl; inline;
    function write(buf: Pguint8; count: gsize): gboolean; cdecl; inline;
  end;

  PPGdkPixbufLoaderClass = ^PGdkPixbufLoaderClass;
  PGdkPixbufLoaderClass = ^TGdkPixbufLoaderClass;
  TGdkPixbufLoaderClass = object
    parent_class: TGObjectClass;
    size_prepared: procedure(loader: PGdkPixbufLoader; width: gint; height: gint); cdecl;
    area_prepared: procedure(loader: PGdkPixbufLoader); cdecl;
    area_updated: procedure(loader: PGdkPixbufLoader; x: gint; y: gint; width: gint; height: gint); cdecl;
    closed: procedure(loader: PGdkPixbufLoader); cdecl;
  end;

  PPGdkPixbufSimpleAnim = ^PGdkPixbufSimpleAnim;
  PGdkPixbufSimpleAnim = ^TGdkPixbufSimpleAnim;
  TGdkPixbufSimpleAnim = object(TGdkPixbufAnimation)
    function new(width: gint; height: gint; rate: gfloat): PGdkPixbufSimpleAnim; cdecl; inline; static;
    procedure add_frame(pixbuf: PGdkPixbuf); cdecl; inline;
    function get_loop: gboolean; cdecl; inline;
    procedure set_loop(loop: gboolean); cdecl; inline;
    property loop:  gboolean read get_loop  { property is writeable but setter not declared } ;
  end;

  PPGdkPixbufSimpleAnimClass = ^PGdkPixbufSimpleAnimClass;
  PGdkPixbufSimpleAnimClass = ^TGdkPixbufSimpleAnimClass;
  TGdkPixbufSimpleAnimClass = object
  end;

  PPGdkPixbufSimpleAnimIter = ^PGdkPixbufSimpleAnimIter;
  PGdkPixbufSimpleAnimIter = ^TGdkPixbufSimpleAnimIter;
  TGdkPixbufSimpleAnimIter = object(TGdkPixbufAnimationIter)
  end;
  TGdkPixdataType = packed object(TBitObject32)
  public
    property color_type_rgb: DWord index 1 read GetBit write SetBit;
    property color_type_rgba: DWord index 2 read GetBit write SetBit;
    property color_type_mask: DWord index 255 read GetBit write SetBit;
    property sample_width_8: DWord index 65536 read GetBit write SetBit;
    property sample_width_mask: DWord index 983040 read GetBit write SetBit;
    property encoding_raw: DWord index 16777216 read GetBit write SetBit;
    property encoding_rle: DWord index 33554432 read GetBit write SetBit;
    property encoding_mask: DWord index 251658240 read GetBit write SetBit;
  end;


function gdk_pixbuf_add_alpha(APixbuf: PGdkPixbuf; substitute_color: gboolean; r: guint8; g: guint8; b: guint8): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_animation_get_height(APixbufAnimation: PGdkPixbufAnimation): gint; cdecl; external;
function gdk_pixbuf_animation_get_iter(APixbufAnimation: PGdkPixbufAnimation; start_time: PGTimeVal): PGdkPixbufAnimationIter; cdecl; external;
function gdk_pixbuf_animation_get_static_image(APixbufAnimation: PGdkPixbufAnimation): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_animation_get_type: TGType; cdecl; external;
function gdk_pixbuf_animation_get_width(APixbufAnimation: PGdkPixbufAnimation): gint; cdecl; external;
function gdk_pixbuf_animation_is_static_image(APixbufAnimation: PGdkPixbufAnimation): gboolean; cdecl; external;
function gdk_pixbuf_animation_iter_advance(APixbufAnimationIter: PGdkPixbufAnimationIter; current_time: PGTimeVal): gboolean; cdecl; external;
function gdk_pixbuf_animation_iter_get_delay_time(APixbufAnimationIter: PGdkPixbufAnimationIter): gint; cdecl; external;
function gdk_pixbuf_animation_iter_get_pixbuf(APixbufAnimationIter: PGdkPixbufAnimationIter): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_animation_iter_get_type: TGType; cdecl; external;
function gdk_pixbuf_animation_iter_on_currently_loading_frame(APixbufAnimationIter: PGdkPixbufAnimationIter): gboolean; cdecl; external;
function gdk_pixbuf_animation_new_from_file(filename: Pgchar): PGdkPixbufAnimation; cdecl; external;
function gdk_pixbuf_apply_embedded_orientation(APixbuf: PGdkPixbuf): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_composite_color_simple(APixbuf: PGdkPixbuf; dest_width: gint; dest_height: gint; interp_type: TGdkInterpType; overall_alpha: gint; check_size: gint; color1: guint32; color2: guint32): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_copy(APixbuf: PGdkPixbuf): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_error_quark: TGQuark; cdecl; external;
function gdk_pixbuf_flip(APixbuf: PGdkPixbuf; horizontal: gboolean): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_format_copy(APixbufFormat: PGdkPixbufFormat): PGdkPixbufFormat; cdecl; external;
function gdk_pixbuf_format_get_description(APixbufFormat: PGdkPixbufFormat): Pgchar; cdecl; external;
function gdk_pixbuf_format_get_extensions(APixbufFormat: PGdkPixbufFormat): PPgchar; cdecl; external;
function gdk_pixbuf_format_get_license(APixbufFormat: PGdkPixbufFormat): Pgchar; cdecl; external;
function gdk_pixbuf_format_get_mime_types(APixbufFormat: PGdkPixbufFormat): PPgchar; cdecl; external;
function gdk_pixbuf_format_get_name(APixbufFormat: PGdkPixbufFormat): Pgchar; cdecl; external;
function gdk_pixbuf_format_get_type: TGType; cdecl; external;
function gdk_pixbuf_format_is_disabled(APixbufFormat: PGdkPixbufFormat): gboolean; cdecl; external;
function gdk_pixbuf_format_is_scalable(APixbufFormat: PGdkPixbufFormat): gboolean; cdecl; external;
function gdk_pixbuf_format_is_writable(APixbufFormat: PGdkPixbufFormat): gboolean; cdecl; external;
function gdk_pixbuf_from_pixdata(pixdata: PGdkPixdata; copy_pixels: gboolean): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_get_bits_per_sample(APixbuf: PGdkPixbuf): gint; cdecl; external;
function gdk_pixbuf_get_colorspace(APixbuf: PGdkPixbuf): TGdkColorspace; cdecl; external;
function gdk_pixbuf_get_file_info(filename: Pgchar; width: Pgint; height: Pgint): PGdkPixbufFormat; cdecl; external;
function gdk_pixbuf_get_formats: PGSList; cdecl; external;
function gdk_pixbuf_get_has_alpha(APixbuf: PGdkPixbuf): gboolean; cdecl; external;
function gdk_pixbuf_get_height(APixbuf: PGdkPixbuf): gint; cdecl; external;
function gdk_pixbuf_get_n_channels(APixbuf: PGdkPixbuf): gint; cdecl; external;
function gdk_pixbuf_get_option(APixbuf: PGdkPixbuf; key: Pgchar): Pgchar; cdecl; external;
function gdk_pixbuf_get_pixels(APixbuf: PGdkPixbuf): Pguint8; cdecl; external;
function gdk_pixbuf_get_rowstride(APixbuf: PGdkPixbuf): gint; cdecl; external;
function gdk_pixbuf_get_type: TGType; cdecl; external;
function gdk_pixbuf_get_width(APixbuf: PGdkPixbuf): gint; cdecl; external;
function gdk_pixbuf_gettext(msgid: Pgchar): Pgchar; cdecl; external;
function gdk_pixbuf_loader_close(APixbufLoader: PGdkPixbufLoader): gboolean; cdecl; external;
function gdk_pixbuf_loader_get_animation(APixbufLoader: PGdkPixbufLoader): PGdkPixbufAnimation; cdecl; external;
function gdk_pixbuf_loader_get_format(APixbufLoader: PGdkPixbufLoader): PGdkPixbufFormat; cdecl; external;
function gdk_pixbuf_loader_get_pixbuf(APixbufLoader: PGdkPixbufLoader): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_loader_get_type: TGType; cdecl; external;
function gdk_pixbuf_loader_new: PGdkPixbufLoader; cdecl; external;
function gdk_pixbuf_loader_new_with_mime_type(mime_type: Pgchar): PGdkPixbufLoader; cdecl; external;
function gdk_pixbuf_loader_new_with_type(image_type: Pgchar): PGdkPixbufLoader; cdecl; external;
function gdk_pixbuf_loader_write(APixbufLoader: PGdkPixbufLoader; buf: Pguint8; count: gsize): gboolean; cdecl; external;
function gdk_pixbuf_new(colorspace: TGdkColorspace; has_alpha: gboolean; bits_per_sample: gint; width: gint; height: gint): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_data(data: Pchar; colorspace: TGdkColorspace; has_alpha: gboolean; bits_per_sample: gint; width: gint; height: gint; rowstride: gint; destroy_fn: TGdkPixbufDestroyNotify; destroy_fn_data: gpointer): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_file(filename: Pgchar): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_file_at_scale(filename: Pgchar; width: gint; height: gint; preserve_aspect_ratio: gboolean): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_file_at_size(filename: Pgchar; width: gint; height: gint): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_inline(data_length: gint; data: Pguint8; copy_pixels: gboolean): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_stream(stream: PGInputStream; cancellable: PGCancellable): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_stream_at_scale(stream: PGInputStream; width: gint; height: gint; preserve_aspect_ratio: gboolean; cancellable: PGCancellable): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_stream_finish(async_result: PGAsyncResult): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_from_xpm_data(data: PPgchar): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_new_subpixbuf(APixbuf: PGdkPixbuf; src_x: gint; src_y: gint; width: gint; height: gint): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_rotate_simple(APixbuf: PGdkPixbuf; angle: TGdkPixbufRotation): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_save(APixbuf: PGdkPixbuf; filename: Pgchar; type_: Pgchar; error: PPGError; args: array of const): gboolean; cdecl; external;
function gdk_pixbuf_save_to_buffer(APixbuf: PGdkPixbuf; buffer: PPgchar; buffer_size: Pgsize; type_: Pgchar; error: PPGError; args: array of const): gboolean; cdecl; external;
function gdk_pixbuf_save_to_bufferv(APixbuf: PGdkPixbuf; buffer: PPgchar; buffer_size: Pgsize; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl; external;
function gdk_pixbuf_save_to_callback(APixbuf: PGdkPixbuf; save_func: TGdkPixbufSaveFunc; user_data: gpointer; type_: Pgchar; error: PPGError; args: array of const): gboolean; cdecl; external;
function gdk_pixbuf_save_to_callbackv(APixbuf: PGdkPixbuf; save_func: TGdkPixbufSaveFunc; user_data: gpointer; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl; external;
function gdk_pixbuf_save_to_stream(APixbuf: PGdkPixbuf; stream: PGOutputStream; type_: Pgchar; cancellable: PGCancellable; error: PPGError; args: array of const): gboolean; cdecl; external;
function gdk_pixbuf_save_to_stream_finish(async_result: PGAsyncResult): gboolean; cdecl; external;
function gdk_pixbuf_savev(APixbuf: PGdkPixbuf; filename: Pgchar; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl; external;
function gdk_pixbuf_scale_simple(APixbuf: PGdkPixbuf; dest_width: gint; dest_height: gint; interp_type: TGdkInterpType): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_simple_anim_get_loop(APixbufSimpleAnim: PGdkPixbufSimpleAnim): gboolean; cdecl; external;
function gdk_pixbuf_simple_anim_get_type: TGType; cdecl; external;
function gdk_pixbuf_simple_anim_iter_get_type: TGType; cdecl; external;
function gdk_pixbuf_simple_anim_new(width: gint; height: gint; rate: gfloat): PGdkPixbufSimpleAnim; cdecl; external;
function gdk_pixdata_deserialize(APixdata: PGdkPixdata; stream_length: guint; stream: Pguint8): gboolean; cdecl; external;
function gdk_pixdata_from_pixbuf(APixdata: PGdkPixdata; pixbuf: PGdkPixbuf; use_rle: gboolean): gpointer; cdecl; external;
function gdk_pixdata_serialize(APixdata: PGdkPixdata; stream_length_p: Pguint): Pguint8; cdecl; external;
function gdk_pixdata_to_csource(APixdata: PGdkPixdata; name: Pgchar; dump_type: TGdkPixdataDumpType): PGString; cdecl; external;
procedure gdk_pixbuf_composite(APixbuf: PGdkPixbuf; dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType; overall_alpha: gint); cdecl; external;
procedure gdk_pixbuf_composite_color(APixbuf: PGdkPixbuf; dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType; overall_alpha: gint; check_x: gint; check_y: gint; check_size: gint; color1: guint32; color2: guint32); cdecl; external;
procedure gdk_pixbuf_copy_area(APixbuf: PGdkPixbuf; src_x: gint; src_y: gint; width: gint; height: gint; dest_pixbuf: PGdkPixbuf; dest_x: gint; dest_y: gint); cdecl; external;
procedure gdk_pixbuf_fill(APixbuf: PGdkPixbuf; pixel: guint32); cdecl; external;
procedure gdk_pixbuf_format_free(APixbufFormat: PGdkPixbufFormat); cdecl; external;
procedure gdk_pixbuf_format_set_disabled(APixbufFormat: PGdkPixbufFormat; disabled: gboolean); cdecl; external;
procedure gdk_pixbuf_loader_set_size(APixbufLoader: PGdkPixbufLoader; width: gint; height: gint); cdecl; external;
procedure gdk_pixbuf_new_from_stream_async(stream: PGInputStream; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure gdk_pixbuf_new_from_stream_at_scale_async(stream: PGInputStream; width: gint; height: gint; preserve_aspect_ratio: gboolean; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure gdk_pixbuf_saturate_and_pixelate(APixbuf: PGdkPixbuf; dest: PGdkPixbuf; saturation: gfloat; pixelate: gboolean); cdecl; external;
procedure gdk_pixbuf_save_to_stream_async(APixbuf: PGdkPixbuf; stream: PGOutputStream; type_: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer; args: array of const); cdecl; external;
procedure gdk_pixbuf_scale(APixbuf: PGdkPixbuf; dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType); cdecl; external;
procedure gdk_pixbuf_simple_anim_add_frame(APixbufSimpleAnim: PGdkPixbufSimpleAnim; pixbuf: PGdkPixbuf); cdecl; external;
procedure gdk_pixbuf_simple_anim_set_loop(APixbufSimpleAnim: PGdkPixbufSimpleAnim; loop: gboolean); cdecl; external;
implementation
function TGdkPixbuf.new(colorspace: TGdkColorspace; has_alpha: gboolean; bits_per_sample: gint; width: gint; height: gint): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height);
end;

function TGdkPixbuf.new_from_data(data: Pchar; colorspace: TGdkColorspace; has_alpha: gboolean; bits_per_sample: gint; width: gint; height: gint; rowstride: gint; destroy_fn: TGdkPixbufDestroyNotify; destroy_fn_data: gpointer): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_data(data, colorspace, has_alpha, bits_per_sample, width, height, rowstride, destroy_fn, destroy_fn_data);
end;

function TGdkPixbuf.new_from_file(filename: Pgchar): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_file(filename);
end;

function TGdkPixbuf.new_from_file_at_scale(filename: Pgchar; width: gint; height: gint; preserve_aspect_ratio: gboolean): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_file_at_scale(filename, width, height, preserve_aspect_ratio);
end;

function TGdkPixbuf.new_from_file_at_size(filename: Pgchar; width: gint; height: gint): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_file_at_size(filename, width, height);
end;

function TGdkPixbuf.new_from_inline(data_length: gint; data: Pguint8; copy_pixels: gboolean): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_inline(data_length, data, copy_pixels);
end;

function TGdkPixbuf.new_from_stream(stream: PGInputStream; cancellable: PGCancellable): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_stream(stream, cancellable);
end;

function TGdkPixbuf.new_from_stream_at_scale(stream: PGInputStream; width: gint; height: gint; preserve_aspect_ratio: gboolean; cancellable: PGCancellable): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_stream_at_scale(stream, width, height, preserve_aspect_ratio, cancellable);
end;

function TGdkPixbuf.new_from_stream_finish(async_result: PGAsyncResult): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_stream_finish(async_result);
end;

function TGdkPixbuf.new_from_xpm_data(data: PPgchar): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_from_xpm_data(data);
end;

function TGdkPixbuf.from_pixdata(pixdata: PGdkPixdata; copy_pixels: gboolean): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_from_pixdata(pixdata, copy_pixels);
end;

function TGdkPixbuf.get_file_info(filename: Pgchar; width: Pgint; height: Pgint): PGdkPixbufFormat; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_file_info(filename, width, height);
end;

function TGdkPixbuf.get_formats: PGSList; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_formats();
end;

function TGdkPixbuf.gettext(msgid: Pgchar): Pgchar; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_gettext(msgid);
end;

procedure TGdkPixbuf.new_from_stream_async(stream: PGInputStream; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_new_from_stream_async(stream, cancellable, callback, user_data);
end;

procedure TGdkPixbuf.new_from_stream_at_scale_async(stream: PGInputStream; width: gint; height: gint; preserve_aspect_ratio: gboolean; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_new_from_stream_at_scale_async(stream, width, height, preserve_aspect_ratio, cancellable, callback, user_data);
end;

function TGdkPixbuf.save_to_stream_finish(async_result: PGAsyncResult): gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_save_to_stream_finish(async_result);
end;

function TGdkPixbuf.add_alpha(substitute_color: gboolean; r: guint8; g: guint8; b: guint8): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_add_alpha(@self, substitute_color, r, g, b);
end;

function TGdkPixbuf.apply_embedded_orientation: PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_apply_embedded_orientation(@self);
end;

procedure TGdkPixbuf.composite(dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType; overall_alpha: gint); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_composite(@self, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha);
end;

procedure TGdkPixbuf.composite_color(dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType; overall_alpha: gint; check_x: gint; check_y: gint; check_size: gint; color1: guint32; color2: guint32); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_composite_color(@self, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha, check_x, check_y, check_size, color1, color2);
end;

function TGdkPixbuf.composite_color_simple(dest_width: gint; dest_height: gint; interp_type: TGdkInterpType; overall_alpha: gint; check_size: gint; color1: guint32; color2: guint32): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_composite_color_simple(@self, dest_width, dest_height, interp_type, overall_alpha, check_size, color1, color2);
end;

function TGdkPixbuf.copy: PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_copy(@self);
end;

procedure TGdkPixbuf.copy_area(src_x: gint; src_y: gint; width: gint; height: gint; dest_pixbuf: PGdkPixbuf; dest_x: gint; dest_y: gint); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_copy_area(@self, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y);
end;

procedure TGdkPixbuf.fill(pixel: guint32); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_fill(@self, pixel);
end;

function TGdkPixbuf.flip(horizontal: gboolean): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_flip(@self, horizontal);
end;

function TGdkPixbuf.get_bits_per_sample: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_bits_per_sample(@self);
end;

function TGdkPixbuf.get_colorspace: TGdkColorspace; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_colorspace(@self);
end;

function TGdkPixbuf.get_has_alpha: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_has_alpha(@self);
end;

function TGdkPixbuf.get_height: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_height(@self);
end;

function TGdkPixbuf.get_n_channels: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_n_channels(@self);
end;

function TGdkPixbuf.get_option(key: Pgchar): Pgchar; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_option(@self, key);
end;

function TGdkPixbuf.get_pixels: Pguint8; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_pixels(@self);
end;

function TGdkPixbuf.get_rowstride: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_rowstride(@self);
end;

function TGdkPixbuf.get_width: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_get_width(@self);
end;

function TGdkPixbuf.new_subpixbuf(src_x: gint; src_y: gint; width: gint; height: gint): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_new_subpixbuf(@self, src_x, src_y, width, height);
end;

function TGdkPixbuf.rotate_simple(angle: TGdkPixbufRotation): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_rotate_simple(@self, angle);
end;

procedure TGdkPixbuf.saturate_and_pixelate(dest: PGdkPixbuf; saturation: gfloat; pixelate: gboolean); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_saturate_and_pixelate(@self, dest, saturation, pixelate);
end;

function TGdkPixbuf.save_to_bufferv(buffer: PPgchar; buffer_size: Pgsize; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_save_to_bufferv(@self, buffer, buffer_size, type_, option_keys, option_values);
end;

function TGdkPixbuf.save_to_callbackv(save_func: TGdkPixbufSaveFunc; user_data: gpointer; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_save_to_callbackv(@self, save_func, user_data, type_, option_keys, option_values);
end;

function TGdkPixbuf.savev(filename: Pgchar; type_: Pgchar; option_keys: PPgchar; option_values: PPgchar): gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_savev(@self, filename, type_, option_keys, option_values);
end;

procedure TGdkPixbuf.scale(dest: PGdkPixbuf; dest_x: gint; dest_y: gint; dest_width: gint; dest_height: gint; offset_x: gdouble; offset_y: gdouble; scale_x: gdouble; scale_y: gdouble; interp_type: TGdkInterpType); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_scale(@self, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type);
end;

function TGdkPixbuf.scale_simple(dest_width: gint; dest_height: gint; interp_type: TGdkInterpType): PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_scale_simple(@self, dest_width, dest_height, interp_type);
end;

function TGdkPixdata.deserialize(stream_length: guint; stream: Pguint8): gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixdata_deserialize(@self, stream_length, stream);
end;

function TGdkPixdata.from_pixbuf(pixbuf: PGdkPixbuf; use_rle: gboolean): gpointer; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixdata_from_pixbuf(@self, pixbuf, use_rle);
end;

function TGdkPixdata.serialize(stream_length_p: Pguint): Pguint8; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixdata_serialize(@self, stream_length_p);
end;


function TGdkPixdata.to_csource(name: Pgchar; dump_type: TGdkPixdataDumpType): PGString; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixdata_to_csource(@self, name, dump_type);
end;

function TGdkPixbufFormat.copy: PGdkPixbufFormat; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_copy(@self);
end;

procedure TGdkPixbufFormat.free; cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_format_free(@self);
end;

function TGdkPixbufFormat.get_description: Pgchar; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_get_description(@self);
end;

function TGdkPixbufFormat.get_extensions: PPgchar; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_get_extensions(@self);
end;

function TGdkPixbufFormat.get_license: Pgchar; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_get_license(@self);
end;

function TGdkPixbufFormat.get_mime_types: PPgchar; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_get_mime_types(@self);
end;

function TGdkPixbufFormat.get_name: Pgchar; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_get_name(@self);
end;

function TGdkPixbufFormat.is_disabled: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_is_disabled(@self);
end;

function TGdkPixbufFormat.is_scalable: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_is_scalable(@self);
end;

function TGdkPixbufFormat.is_writable: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_format_is_writable(@self);
end;

procedure TGdkPixbufFormat.set_disabled(disabled: gboolean); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_format_set_disabled(@self, disabled);
end;

function TGdkPixbufAnimation.new_from_file(filename: Pgchar): PGdkPixbufAnimation; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_new_from_file(filename);
end;

function TGdkPixbufAnimation.get_height: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_get_height(@self);
end;

function TGdkPixbufAnimation.get_iter(start_time: PGTimeVal): PGdkPixbufAnimationIter; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_get_iter(@self, start_time);
end;

function TGdkPixbufAnimation.get_static_image: PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_get_static_image(@self);
end;

function TGdkPixbufAnimation.get_width: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_get_width(@self);
end;

function TGdkPixbufAnimation.is_static_image: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_is_static_image(@self);
end;

function TGdkPixbufAnimationIter.advance(current_time: PGTimeVal): gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_iter_advance(@self, current_time);
end;

function TGdkPixbufAnimationIter.get_delay_time: gint; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_iter_get_delay_time(@self);
end;

function TGdkPixbufAnimationIter.get_pixbuf: PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_iter_get_pixbuf(@self);
end;

function TGdkPixbufAnimationIter.on_currently_loading_frame: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_animation_iter_on_currently_loading_frame(@self);
end;

function TGdkPixbufLoader.new: PGdkPixbufLoader; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_new();
end;

function TGdkPixbufLoader.new_with_mime_type(mime_type: Pgchar): PGdkPixbufLoader; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_new_with_mime_type(mime_type);
end;

function TGdkPixbufLoader.new_with_type(image_type: Pgchar): PGdkPixbufLoader; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_new_with_type(image_type);
end;

function TGdkPixbufLoader.close: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_close(@self);
end;

function TGdkPixbufLoader.get_animation: PGdkPixbufAnimation; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_get_animation(@self);
end;

function TGdkPixbufLoader.get_format: PGdkPixbufFormat; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_get_format(@self);
end;

function TGdkPixbufLoader.get_pixbuf: PGdkPixbuf; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_get_pixbuf(@self);
end;

procedure TGdkPixbufLoader.set_size(width: gint; height: gint); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_loader_set_size(@self, width, height);
end;

function TGdkPixbufLoader.write(buf: Pguint8; count: gsize): gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_loader_write(@self, buf, count);
end;

function TGdkPixbufSimpleAnim.new(width: gint; height: gint; rate: gfloat): PGdkPixbufSimpleAnim; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_simple_anim_new(width, height, rate);
end;

procedure TGdkPixbufSimpleAnim.add_frame(pixbuf: PGdkPixbuf); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_simple_anim_add_frame(@self, pixbuf);
end;

function TGdkPixbufSimpleAnim.get_loop: gboolean; cdecl;
begin
  Result := GdkPixbuf2.gdk_pixbuf_simple_anim_get_loop(@self);
end;

procedure TGdkPixbufSimpleAnim.set_loop(loop: gboolean); cdecl;
begin
  GdkPixbuf2.gdk_pixbuf_simple_anim_set_loop(@self, loop);
end;


end.