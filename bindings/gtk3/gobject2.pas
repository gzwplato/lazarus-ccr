unit GObject2;

{$MODE OBJFPC}{$H+}

{$PACKRECORDS C}
{$BITPACKING ON}
{$MODESWITCH DUPLICATELOCALS+}

{$LINKLIB libgobject-2.0.so.0}
interface
uses
  CTypes, GLib2;

const
  GObject2_library = 'libgobject-2.0.so.0';

  PARAM_MASK = 255;
  PARAM_READWRITE = 0;
  PARAM_STATIC_STRINGS = 0;
  PARAM_USER_SHIFT = 8;
  SIGNAL_FLAGS_MASK = 255;
  SIGNAL_MATCH_MASK = 63;
  TYPE_FUNDAMENTAL_MAX = 255;
  TYPE_FUNDAMENTAL_SHIFT = 2;
  TYPE_RESERVED_BSE_FIRST = 32;
  TYPE_RESERVED_BSE_LAST = 48;
  TYPE_RESERVED_GLIB_FIRST = 22;
  TYPE_RESERVED_GLIB_LAST = 31;
  TYPE_RESERVED_USER_FIRST = 49;
  VALUE_COLLECT_FORMAT_MAX_LENGTH = 8;
  VALUE_NOCOPY_CONTENTS = 134217728;

  { GBindingFlags }
  G_BINDING_DEFAULT = 0;
  G_BINDING_BIDIRECTIONAL = 1;
  G_BINDING_SYNC_CREATE = 2;
  G_BINDING_INVERT_BOOLEAN = 4;

  { GConnectFlags }
  G_CONNECT_AFTER = 1;
  G_CONNECT_SWAPPED = 2;

  { GParamFlags }
  G_PARAM_READABLE = 1;
  G_PARAM_WRITABLE = 2;
  G_PARAM_CONSTRUCT = 4;
  G_PARAM_CONSTRUCT_ONLY = 8;
  G_PARAM_LAX_VALIDATION = 16;
  G_PARAM_STATIC_NAME = 32;
  G_PARAM_PRIVATE = 32;
  G_PARAM_STATIC_NICK = 64;
  G_PARAM_STATIC_BLURB = 128;
  G_PARAM_DEPRECATED = 2147483648;

  { GSignalFlags }
  G_SIGNAL_RUN_FIRST = 1;
  G_SIGNAL_RUN_LAST = 2;
  G_SIGNAL_RUN_CLEANUP = 4;
  G_SIGNAL_NO_RECURSE = 8;
  G_SIGNAL_DETAILED = 16;
  G_SIGNAL_ACTION = 32;
  G_SIGNAL_NO_HOOKS = 64;
  G_SIGNAL_MUST_COLLECT = 128;

  { GSignalMatchType }
  G_SIGNAL_MATCH_ID = 1;
  G_SIGNAL_MATCH_DETAIL = 2;
  G_SIGNAL_MATCH_CLOSURE = 4;
  G_SIGNAL_MATCH_FUNC = 8;
  G_SIGNAL_MATCH_DATA = 16;
  G_SIGNAL_MATCH_UNBLOCKED = 32;

  { GTypeDebugFlags }
  G_TYPE_DEBUG_NONE = 0;
  G_TYPE_DEBUG_OBJECTS = 1;
  G_TYPE_DEBUG_SIGNALS = 2;
  G_TYPE_DEBUG_MASK = 3;

  { GTypeFlags }
  G_TYPE_FLAG_ABSTRACT = 16;
  G_TYPE_FLAG_VALUE_ABSTRACT = 32;

  { GTypeFundamentalFlags }
  G_TYPE_FLAG_CLASSED = 1;
  G_TYPE_FLAG_INSTANTIATABLE = 2;
  G_TYPE_FLAG_DERIVABLE = 4;
  G_TYPE_FLAG_DEEP_DERIVABLE = 8;
type

  PPGClosure = ^PGClosure;
  PGClosure = ^TGClosure;

  PPPPPGValue = ^PPPPGValue;
  PPPPGValue = ^PPPGValue;
  PPPGValue = ^PPGValue;
  PPGValue = ^PGValue;
  PGValue = ^TGValue;
  TGClosureMarshal = procedure(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;

  PPGSignalCMarshaller = ^PGSignalCMarshaller;
  PGSignalCMarshaller = ^TGSignalCMarshaller;
  TGSignalCMarshaller = TGClosureMarshal;

  PPPPPPPPGType = ^PPPPPPPGType;
  PPPPPPPGType = ^PPPPPPGType;
  PPPPPPGType = ^PPPPPGType;
  PPPPPGType = ^PPPPGType;
  PPPPGType = ^PPPGType;
  PPPGType = ^PPGType;
  PPGType = ^PGType;
  PGType = ^TGType;
  TGType = gsize;
  TGBaseFinalizeFunc = procedure(g_class: gpointer); cdecl;
  TGBaseInitFunc = procedure(g_class: gpointer); cdecl;
  TGBindingFlags = packed object(TBitObject32)
  public
    property default_: DWord index 0 read GetBit write SetBit;
    property bidirectional: DWord index 1 read GetBit write SetBit;
    property sync_create: DWord index 2 read GetBit write SetBit;
    property invert_boolean: DWord index 4 read GetBit write SetBit;
  end;


  PPGObject = ^PGObject;
  PGObject = ^TGObject;

  PPGParameter = ^PGParameter;
  PGParameter = ^TGParameter;

  PPGBinding = ^PGBinding;
  PGBinding = ^TGBinding;

  PPGBindingFlags = ^PGBindingFlags;
  PGBindingFlags = ^TGBindingFlags;

  PPGBindingTransformFunc = ^PGBindingTransformFunc;
  PGBindingTransformFunc = ^TGBindingTransformFunc;
  TGBindingTransformFunc = function(binding: PGBinding; source_value: PGValue; target_value: PGValue; user_data: gpointer): gboolean; cdecl;

  PPGParamSpec = ^PGParamSpec;
  PGParamSpec = ^TGParamSpec;

  PPGToggleNotify = ^PGToggleNotify;
  PGToggleNotify = ^TGToggleNotify;
  TGToggleNotify = procedure(data: gpointer; object_: PGObject; is_last_ref: gboolean); cdecl;

  PPGWeakNotify = ^PGWeakNotify;
  PGWeakNotify = ^TGWeakNotify;
  TGWeakNotify = procedure(data: gpointer; where_the_object_was: PGObject); cdecl;

  PPGTypeInstance = ^PGTypeInstance;
  PGTypeInstance = ^TGTypeInstance;

  PPGTypeClass = ^PGTypeClass;
  PGTypeClass = ^TGTypeClass;
  TGTypeInstance = object
    g_class: PGTypeClass;
    function get_private(private_type: TGType): gpointer; cdecl; inline;
  end;
  TGObject = object
    g_type_instance: TGTypeInstance;
    ref_count: guint;
    qdata: PGData;
    //function new_valist(object_type: TGType; first_property_name: Pgchar; var_args: Tva_list): PGObject; cdecl; inline; static;
    function newv(object_type: TGType; n_parameters: guint; parameters: PGParameter): PGObject; cdecl; inline; static;
    function bind_property(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags): PGBinding; cdecl; inline; static;
    function bind_property_full(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags; transform_to: TGBindingTransformFunc; transform_from: TGBindingTransformFunc; user_data: gpointer; notify: TGDestroyNotify): PGBinding; cdecl; inline; static;
    function bind_property_with_closures(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags; transform_to: PGClosure; transform_from: PGClosure): PGBinding; cdecl; inline; static;
    function compat_control(what: gsize; data: gpointer): gsize; cdecl; inline; static;
    //function connect(object_: gpointer; signal_spec: Pgchar; args: array of const): gpointer; cdecl; inline; static;
    //procedure disconnect(object_: gpointer; signal_spec: Pgchar; args: array of const); cdecl; inline; static;
    //procedure get(object_: gpointer; first_property_name: Pgchar; args: array of const); cdecl; inline; static;
    function interface_find_property(g_iface: gpointer; property_name: Pgchar): PGParamSpec; cdecl; inline; static;
    procedure interface_install_property(g_iface: gpointer; pspec: PGParamSpec); cdecl; inline; static;
    function interface_list_properties(g_iface: gpointer; n_properties_p: Pguint): PPGParamSpec; cdecl; inline; static;
    //function new(object_type: TGType; first_property_name: Pgchar; args: array of const): gpointer; cdecl; inline; static;
    //procedure set_(object_: gpointer; first_property_name: Pgchar; args: array of const); cdecl; inline; static;
    procedure add_toggle_ref(notify: TGToggleNotify; data: gpointer); cdecl; inline;
    procedure add_weak_pointer(weak_pointer_location: Pgpointer); cdecl; inline;
    procedure force_floating; cdecl; inline;
    procedure freeze_notify; cdecl; inline;
    function get_data(key: Pgchar): gpointer; cdecl; inline;
    procedure get_property(property_name: Pgchar; value: PGValue); cdecl; inline;
    function get_qdata(quark: TGQuark): gpointer; cdecl; inline;
    //procedure get_valist(first_property_name: Pgchar; var_args: Tva_list); cdecl; inline;
    function is_floating: gboolean; cdecl; inline;
    procedure notify(property_name: Pgchar); cdecl; inline;
    procedure notify_by_pspec(pspec: PGParamSpec); cdecl; inline;
    function ref: TGObject; cdecl; inline;
    function ref_sink: TGObject; cdecl; inline;
    procedure remove_toggle_ref(notify: TGToggleNotify; data: gpointer); cdecl; inline;
    procedure remove_weak_pointer(weak_pointer_location: Pgpointer); cdecl; inline;
    procedure run_dispose; cdecl; inline;
    procedure set_data(key: Pgchar; data: gpointer); cdecl; inline;
    procedure set_data_full(key: Pgchar; data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
    procedure set_property(property_name: Pgchar; value: PGValue); cdecl; inline;
    procedure set_qdata(quark: TGQuark; data: gpointer); cdecl; inline;
    procedure set_qdata_full(quark: TGQuark; data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
    //procedure set_valist(first_property_name: Pgchar; var_args: Tva_list); cdecl; inline;
    function steal_data(key: Pgchar): gpointer; cdecl; inline;
    function steal_qdata(quark: TGQuark): gpointer; cdecl; inline;
    procedure thaw_notify; cdecl; inline;
    procedure unref; cdecl; inline;
    procedure watch_closure(closure: PGClosure); cdecl; inline;
    procedure weak_ref(notify: TGWeakNotify; data: gpointer); cdecl; inline;
    procedure weak_unref(notify: TGWeakNotify; data: gpointer); cdecl; inline;
  end;
  TGBinding = object(TGObject)
    function get_flags: TGBindingFlags; cdecl; inline;
    function get_source: PGObject; cdecl; inline;
    function get_source_property: Pgchar; cdecl; inline;
    function get_target: PGObject; cdecl; inline;
    function get_target_property: Pgchar; cdecl; inline;
    property flags:  TGBindingFlags read get_flags  { property is writeable but setter not declared } ;
    property source:  PGObject read get_source  { property is writeable but setter not declared } ;
    property source_property:  Pgchar read get_source_property  { property is writeable but setter not declared } ;
    property target:  PGObject read get_target  { property is writeable but setter not declared } ;
    property target_property:  Pgchar read get_target_property  { property is writeable but setter not declared } ;
  end;

  PPGValueTransform = ^PGValueTransform;
  PGValueTransform = ^TGValueTransform;
  TGValueTransform = procedure(src_value: PGValue; dest_value: PGValue); cdecl;
  TGValue = object
    g_type: TGType;
    data: array [0..1] of gpointer;
    procedure copy(dest_value: PGValue); cdecl; inline;
    function dup_boxed: gpointer; cdecl; inline;
    function dup_object: TGObject; cdecl; inline;
    function dup_param: PGParamSpec; cdecl; inline;
    function dup_string: Pgchar; cdecl; inline;
    function dup_variant: PGVariant; cdecl; inline;
    function fits_pointer: gboolean; cdecl; inline;
    function get_boolean: gboolean; cdecl; inline;
    function get_boxed: gpointer; cdecl; inline;
    function get_char: gchar; cdecl; inline;
    function get_double: gdouble; cdecl; inline;
    function get_enum: gint; cdecl; inline;
    function get_flags: guint; cdecl; inline;
    function get_float: gfloat; cdecl; inline;
    function get_int: gint; cdecl; inline;
    function get_int64: gint64; cdecl; inline;
    function get_long: glong; cdecl; inline;
    function get_object: TGObject; cdecl; inline;
    function get_param: PGParamSpec; cdecl; inline;
    function get_pointer: gpointer; cdecl; inline;
    function get_string: Pgchar; cdecl; inline;
    function get_uchar: guint8; cdecl; inline;
    function get_uint: guint; cdecl; inline;
    function get_uint64: guint64; cdecl; inline;
    function get_ulong: gulong; cdecl; inline;
    function get_variant: PGVariant; cdecl; inline;
    function init(g_type: TGType): PGValue; cdecl; inline;
    function peek_pointer: gpointer; cdecl; inline;
    function reset: PGValue; cdecl; inline;
    procedure set_boolean(v_boolean: gboolean); cdecl; inline;
    procedure set_boxed(v_boxed: gpointer); cdecl; inline;
    
    procedure set_char(v_char: gchar); cdecl; inline;
    procedure set_double(v_double: gdouble); cdecl; inline;
    procedure set_enum(v_enum: gint); cdecl; inline;
    procedure set_flags(v_flags: guint); cdecl; inline;
    procedure set_float(v_float: gfloat); cdecl; inline;
    procedure set_gtype(v_gtype: TGType); cdecl; inline;
    procedure set_instance(instance: gpointer); cdecl; inline;
    procedure set_int(v_int: gint); cdecl; inline;
    procedure set_int64(v_int64: gint64); cdecl; inline;
    procedure set_long(v_long: glong); cdecl; inline;
    procedure set_object(v_object: TGObject); cdecl; inline;
    
    procedure set_param(param: PGParamSpec); cdecl; inline;
    
    procedure set_pointer(v_pointer: gpointer); cdecl; inline;
    procedure set_static_boxed(v_boxed: gpointer); cdecl; inline;
    procedure set_static_string(v_string: Pgchar); cdecl; inline;
    procedure set_string(v_string: Pgchar); cdecl; inline;
    
    procedure set_uchar(v_uchar: guint8); cdecl; inline;
    procedure set_uint(v_uint: guint); cdecl; inline;
    procedure set_uint64(v_uint64: guint64); cdecl; inline;
    procedure set_ulong(v_ulong: gulong); cdecl; inline;
    procedure set_variant(variant: PGVariant); cdecl; inline;
    procedure take_boxed(v_boxed: gpointer); cdecl; inline;
    procedure take_object(v_object: gpointer); cdecl; inline;
    procedure take_param(param: PGParamSpec); cdecl; inline;
    procedure take_string(v_string: Pgchar); cdecl; inline;
    procedure take_variant(variant: PGVariant); cdecl; inline;
    function transform(dest_value: PGValue): gboolean; cdecl; inline;
    procedure unset; cdecl; inline;
    procedure register_transform_func(src_type: TGType; dest_type: TGType; transform_func: TGValueTransform); cdecl; inline; static;
    function type_compatible(src_type: TGType; dest_type: TGType): gboolean; cdecl; inline; static;
    function type_transformable(src_type: TGType; dest_type: TGType): gboolean; cdecl; inline; static;
  end;
  TGBoxedCopyFunc = function(boxed: gpointer): gpointer; cdecl;
  TGBoxedFreeFunc = procedure(boxed: gpointer); cdecl;

  PPGClosureNotify = ^PGClosureNotify;
  PGClosureNotify = ^TGClosureNotify;
  TGClosureNotify = procedure(data: gpointer; closure: PGClosure); cdecl;

  PPGClosureMarshal = ^PGClosureMarshal;
  PGClosureMarshal = ^TGClosureMarshal;

  PPGClosureNotifyData = ^PGClosureNotifyData;
  PGClosureNotifyData = ^TGClosureNotifyData;
  TGClosure = object
    ref_count: guint15 { changed from guint to accomodate 15 bitsize requirement };
    meta_marshal: guint1 { changed from guint to accomodate 1 bitsize requirement };
    n_guards: guint1 { changed from guint to accomodate 1 bitsize requirement };
    n_fnotifiers: guint2 { changed from guint to accomodate 2 bitsize requirement };
    n_inotifiers: guint8 { changed from guint to accomodate 8 bitsize requirement };
    in_inotify: guint1 { changed from guint to accomodate 1 bitsize requirement };
    floating: guint1 { changed from guint to accomodate 1 bitsize requirement };
    derivative_flag: guint1 { changed from guint to accomodate 1 bitsize requirement };
    in_marshal: guint1 { changed from guint to accomodate 1 bitsize requirement };
    is_invalid: guint1 { changed from guint to accomodate 1 bitsize requirement };
    marshal: procedure(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
    data: gpointer;
    notifiers: PGClosureNotifyData;
    function new_object(sizeof_closure: guint; object_: PGObject): PGClosure; cdecl; inline; static;
    function new_simple(sizeof_closure: guint; data: gpointer): PGClosure; cdecl; inline; static;
    procedure add_finalize_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl; inline;
    procedure add_invalidate_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl; inline;
    procedure add_marshal_guards(pre_marshal_data: gpointer; pre_marshal_notify: TGClosureNotify; post_marshal_data: gpointer; post_marshal_notify: TGClosureNotify); cdecl; inline;
    procedure invalidate; cdecl; inline;
    procedure invoke(return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer); cdecl; inline;
    function ref: PGClosure; cdecl; inline;
    procedure remove_finalize_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl; inline;
    procedure remove_invalidate_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl; inline;
    procedure set_marshal(marshal: TGClosureMarshal); cdecl; inline;
    procedure set_meta_marshal(marshal_data: gpointer; meta_marshal: TGClosureMarshal); cdecl; inline;
    procedure sink; cdecl; inline;
    procedure unref; cdecl; inline;
  end;
  TGCallback = procedure; cdecl;

  PPGCClosure = ^PGCClosure;
  PGCClosure = ^TGCClosure;

  PPGCallback = ^PGCallback;
  PGCallback = ^TGCallback;
  TGCClosure = object
    closure: TGClosure;
    callback: gpointer;
    procedure marshal_BOOLEAN__BOXED_BOXED(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_BOOLEAN__FLAGS(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_STRING__OBJECT_POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__BOOLEAN(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__BOXED(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__CHAR(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__DOUBLE(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__ENUM(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__FLAGS(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__FLOAT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__INT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__LONG(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__OBJECT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__PARAM(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__STRING(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__UCHAR(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__UINT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__UINT_POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__ULONG(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__VARIANT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_VOID__VOID(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    procedure marshal_generic(closure: PGClosure; return_gvalue: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; inline; static;
    function new(callback_func: TGCallback; user_data: gpointer; destroy_data: TGClosureNotify): PGClosure; cdecl; inline; static;
    function new_object(callback_func: TGCallback; object_: PGObject): PGClosure; cdecl; inline; static;
    function new_object_swap(callback_func: TGCallback; object_: PGObject): PGClosure; cdecl; inline; static;
    function new_swap(callback_func: TGCallback; user_data: gpointer; destroy_data: TGClosureNotify): PGClosure; cdecl; inline; static;
  end;
  TGClassFinalizeFunc = procedure(g_class: gpointer; class_data: gpointer); cdecl;
  TGClassInitFunc = procedure(g_class: gpointer; class_data: gpointer); cdecl;

  TGClosureNotifyData = record
    data: gpointer;
    notify: TGClosureNotify;
  end;


  TGConnectFlags = packed object(TBitObject32)
  public
    property after: DWord index 1 read GetBit write SetBit;
    property swapped: DWord index 2 read GetBit write SetBit;
  end;

  TGTypeClass = object
    g_type: TGType;
    function get_private(private_type: TGType): gpointer; cdecl; inline;
    function peek_parent: TGTypeClass; cdecl; inline;
    procedure unref; cdecl; inline;
    procedure unref_uncached; cdecl; inline;
    procedure add_private(g_class: gpointer; private_size: gsize); cdecl; inline; static;
    function peek(type_: TGType): TGTypeClass; cdecl; inline; static;
    function peek_static(type_: TGType): TGTypeClass; cdecl; inline; static;
    function ref(type_: TGType): TGTypeClass; cdecl; inline; static;
  end;

  PPGEnumValue = ^PGEnumValue;
  PGEnumValue = ^TGEnumValue;

  TGEnumValue = record
    value: gint;
    value_name: Pgchar;
    value_nick: Pgchar;
  end;



  PPGEnumClass = ^PGEnumClass;
  PGEnumClass = ^TGEnumClass;

  TGEnumClass = record
    g_type_class: TGTypeClass;
    minimum: gint;
    maximum: gint;
    n_values: guint;
    values: PGEnumValue;
  end;



  PPGFlagsValue = ^PGFlagsValue;
  PGFlagsValue = ^TGFlagsValue;

  TGFlagsValue = record
    value: guint;
    value_name: Pgchar;
    value_nick: Pgchar;
  end;



  PPGFlagsClass = ^PGFlagsClass;
  PGFlagsClass = ^TGFlagsClass;

  TGFlagsClass = record
    g_type_class: TGTypeClass;
    mask: guint;
    n_values: guint;
    values: PGFlagsValue;
  end;



  PPGInitiallyUnowned = ^PGInitiallyUnowned;
  PGInitiallyUnowned = ^TGInitiallyUnowned;
  TGInitiallyUnowned = object(TGObject)
    g_type_instance1: TGTypeInstance;
    ref_count1: guint;
    qdata1: PGData;
  end;

  PPGObjectConstructParam = ^PGObjectConstructParam;
  PGObjectConstructParam = ^TGObjectConstructParam;

  TGObjectConstructParam = record
    pspec: PGParamSpec;
    value: PGValue;
  end;



  PPGParamFlags = ^PGParamFlags;
  PGParamFlags = ^TGParamFlags;
  TGParamFlags = packed object(TBitObject32)
  public
    property readable: DWord index 1 read GetBit write SetBit;
    property writable: DWord index 2 read GetBit write SetBit;
    property construct: DWord index 4 read GetBit write SetBit;
    property construct_only: DWord index 8 read GetBit write SetBit;
    property lax_validation: DWord index 16 read GetBit write SetBit;
    property static_name: DWord index 32 read GetBit write SetBit;
    property private_: DWord index 32 read GetBit write SetBit;
    property static_nick: DWord index 64 read GetBit write SetBit;
    property static_blurb: DWord index 128 read GetBit write SetBit;
    property deprecated: DWord index 2147483648 read GetBit write SetBit;
  end;

  TGParamSpec = object
    g_type_instance: TGTypeInstance;
    name: Pgchar;
    flags: TGParamFlags;
    value_type: TGType;
    owner_type: TGType;
    _nick: Pgchar;
    _blurb: Pgchar;
    qdata: PGData;
    ref_count: guint;
    param_id: guint;
    function internal(param_type: TGType; name: Pgchar; nick: Pgchar; blurb: Pgchar; flags: TGParamFlags): gpointer; cdecl; inline; static;
    function get_blurb: Pgchar; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_nick: Pgchar; cdecl; inline;
    function get_qdata(quark: TGQuark): gpointer; cdecl; inline;
    function get_redirect_target: PGParamSpec; cdecl; inline;
    function ref: PGParamSpec; cdecl; inline;
    function ref_sink: PGParamSpec; cdecl; inline;
    procedure set_qdata(quark: TGQuark; data: gpointer); cdecl; inline;
    procedure set_qdata_full(quark: TGQuark; data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
    procedure sink; cdecl; inline;
    function steal_qdata(quark: TGQuark): gpointer; cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  PPGInitiallyUnownedClass = ^PGInitiallyUnownedClass;
  PGInitiallyUnownedClass = ^TGInitiallyUnownedClass;
  TGInitiallyUnownedClass = object
    g_type_class: TGTypeClass;
    construct_properties: PGSList;
    constructor_: function(type_: TGType; n_construct_properties: guint; construct_properties: PGObjectConstructParam): PGObject; cdecl;
    set_property: procedure(object_: PGObject; property_id: guint; value: PGValue; pspec: PGParamSpec); cdecl;
    get_property: procedure(object_: PGObject; property_id: guint; value: PGValue; pspec: PGParamSpec); cdecl;
    dispose: procedure(object_: PGObject); cdecl;
    finalize: procedure(object_: PGObject); cdecl;
    dispatch_properties_changed: procedure(object_: PGObject; n_pspecs: guint; pspecs: PPGParamSpec); cdecl;
    notify: procedure(object_: PGObject; pspec: PGParamSpec); cdecl;
    constructed: procedure(object_: PGObject); cdecl;
    flags: gsize;
    pdummy: array [0..5] of gpointer;
  end;
  TGInstanceInitFunc = procedure(instance: PGTypeInstance; g_class: gpointer); cdecl;
  TGInterfaceFinalizeFunc = procedure(g_iface: gpointer; iface_data: gpointer); cdecl;
  TGInterfaceInitFunc = procedure(g_iface: gpointer; iface_data: gpointer); cdecl;

  PPGInterfaceInfo = ^PGInterfaceInfo;
  PGInterfaceInfo = ^TGInterfaceInfo;

  PPGInterfaceInitFunc = ^PGInterfaceInitFunc;
  PGInterfaceInitFunc = ^TGInterfaceInitFunc;

  PPGInterfaceFinalizeFunc = ^PGInterfaceFinalizeFunc;
  PGInterfaceFinalizeFunc = ^TGInterfaceFinalizeFunc;

  TGInterfaceInfo = record
    interface_init: TGInterfaceInitFunc;
    interface_finalize: TGInterfaceFinalizeFunc;
    interface_data: gpointer;
  end;



  TGParameter = record
    name: Pgchar;
    value: TGValue;
  end;



  PPGObjectClass = ^PGObjectClass;
  PGObjectClass = ^TGObjectClass;
  TGObjectClass = object
    g_type_class: TGTypeClass;
    construct_properties: PGSList;
    constructor_: function(type_: TGType; n_construct_properties: guint; construct_properties: PGObjectConstructParam): PGObject; cdecl;
    set_property: procedure(object_: PGObject; property_id: guint; value: PGValue; pspec: PGParamSpec); cdecl;
    get_property: procedure(object_: PGObject; property_id: guint; value: PGValue; pspec: PGParamSpec); cdecl;
    dispose: procedure(object_: PGObject); cdecl;
    finalize: procedure(object_: PGObject); cdecl;
    dispatch_properties_changed: procedure(object_: PGObject; n_pspecs: guint; pspecs: PPGParamSpec); cdecl;
    notify: procedure(object_: PGObject; pspec: PGParamSpec); cdecl;
    constructed: procedure(object_: PGObject); cdecl;
    flags: gsize;
    pdummy: array [0..5] of gpointer;
    function find_property(property_name: Pgchar): PGParamSpec; cdecl; inline;
    procedure install_properties(n_pspecs: guint; pspecs: PPGParamSpec); cdecl; inline;
    procedure install_property(property_id: guint; pspec: PGParamSpec); cdecl; inline;
    function list_properties(n_properties: Pguint): PPGParamSpec; cdecl; inline;
    procedure override_property(property_id: guint; name: Pgchar); cdecl; inline;
  end;
  TGObjectFinalizeFunc = procedure(object_: PGObject); cdecl;
  TGObjectGetPropertyFunc = procedure(object_: PGObject; property_id: guint; value: PGValue; pspec: PGParamSpec); cdecl;
  TGObjectSetPropertyFunc = procedure(object_: PGObject; property_id: guint; value: PGValue; pspec: PGParamSpec); cdecl;

  PPGParamSpecBoolean = ^PGParamSpecBoolean;
  PGParamSpecBoolean = ^TGParamSpecBoolean;
  TGParamSpecBoolean = object(TGParamSpec)
    default_value: gboolean;
  end;

  PPGParamSpecBoxed = ^PGParamSpecBoxed;
  PGParamSpecBoxed = ^TGParamSpecBoxed;
  TGParamSpecBoxed = object(TGParamSpec)
  end;

  PPGParamSpecChar = ^PGParamSpecChar;
  PGParamSpecChar = ^TGParamSpecChar;
  TGParamSpecChar = object(TGParamSpec)
    minimum: gint8;
    maximum: gint8;
    default_value: gint8;
  end;

  PPGParamSpecClass = ^PGParamSpecClass;
  PGParamSpecClass = ^TGParamSpecClass;
  TGParamSpecClass = object
    g_type_class: TGTypeClass;
    value_type: TGType;
    finalize: procedure(pspec: PGParamSpec); cdecl;
    value_set_default: procedure(pspec: PGParamSpec; value: PGValue); cdecl;
    value_validate: function(pspec: PGParamSpec; value: PGValue): gboolean; cdecl;
    values_cmp: function(pspec: PGParamSpec; value1: PGValue; value2: PGValue): gint; cdecl;
    dummy: array [0..3] of gpointer;
  end;

  PPGParamSpecDouble = ^PGParamSpecDouble;
  PGParamSpecDouble = ^TGParamSpecDouble;
  TGParamSpecDouble = object(TGParamSpec)
    minimum: gdouble;
    maximum: gdouble;
    default_value: gdouble;
    epsilon: gdouble;
  end;

  PPGParamSpecEnum = ^PGParamSpecEnum;
  PGParamSpecEnum = ^TGParamSpecEnum;
  TGParamSpecEnum = object(TGParamSpec)
    enum_class: PGEnumClass;
    default_value: gint;
  end;

  PPGParamSpecFlags = ^PGParamSpecFlags;
  PGParamSpecFlags = ^TGParamSpecFlags;
  TGParamSpecFlags = object(TGParamSpec)
    flags_class: PGFlagsClass;
    default_value: guint;
  end;

  PPGParamSpecFloat = ^PGParamSpecFloat;
  PGParamSpecFloat = ^TGParamSpecFloat;
  TGParamSpecFloat = object(TGParamSpec)
    minimum: gfloat;
    maximum: gfloat;
    default_value: gfloat;
    epsilon: gfloat;
  end;

  PPGParamSpecGType = ^PGParamSpecGType;
  PGParamSpecGType = ^TGParamSpecGType;
  TGParamSpecGType = object(TGParamSpec)
    is_a_type: TGType;
  end;

  PPGParamSpecInt = ^PGParamSpecInt;
  PGParamSpecInt = ^TGParamSpecInt;
  TGParamSpecInt = object(TGParamSpec)
    minimum: gint;
    maximum: gint;
    default_value: gint;
  end;

  PPGParamSpecInt64 = ^PGParamSpecInt64;
  PGParamSpecInt64 = ^TGParamSpecInt64;
  TGParamSpecInt64 = object(TGParamSpec)
    minimum: gint64;
    maximum: gint64;
    default_value: gint64;
  end;

  PPGParamSpecLong = ^PGParamSpecLong;
  PGParamSpecLong = ^TGParamSpecLong;
  TGParamSpecLong = object(TGParamSpec)
    minimum: glong;
    maximum: glong;
    default_value: glong;
  end;

  PPGParamSpecObject = ^PGParamSpecObject;
  PGParamSpecObject = ^TGParamSpecObject;
  TGParamSpecObject = object(TGParamSpec)
  end;

  PPGParamSpecOverride = ^PGParamSpecOverride;
  PGParamSpecOverride = ^TGParamSpecOverride;
  TGParamSpecOverride = object(TGParamSpec)
  end;

  PPGParamSpecParam = ^PGParamSpecParam;
  PGParamSpecParam = ^TGParamSpecParam;
  TGParamSpecParam = object(TGParamSpec)
  end;

  PPGParamSpecPointer = ^PGParamSpecPointer;
  PGParamSpecPointer = ^TGParamSpecPointer;
  TGParamSpecPointer = object(TGParamSpec)
  end;

  PPGParamSpecPool = ^PGParamSpecPool;
  PGParamSpecPool = ^TGParamSpecPool;
  TGParamSpecPool = object
    procedure insert(pspec: PGParamSpec; owner_type: TGType); cdecl; inline;
    function list(owner_type: TGType; n_pspecs_p: Pguint): PPGParamSpec; cdecl; inline;
    function list_owned(owner_type: TGType): PGList; cdecl; inline;
    function lookup(param_name: Pgchar; owner_type: TGType; walk_ancestors: gboolean): PGParamSpec; cdecl; inline;
    procedure remove(pspec: PGParamSpec); cdecl; inline;
    function new(type_prefixing: gboolean): PGParamSpecPool; cdecl; inline; static;
  end;

  PPGParamSpecString = ^PGParamSpecString;
  PGParamSpecString = ^TGParamSpecString;
  TGParamSpecString = object(TGParamSpec)
    default_value: Pgchar;
    cset_first: Pgchar;
    cset_nth: Pgchar;
    substitutor: gchar;
    null_fold_if_empty: guint1 { changed from guint to accomodate 1 bitsize requirement };
    ensure_non_null: guint1 { changed from guint to accomodate 1 bitsize requirement };
  end;

  PPGParamSpecTypeInfo = ^PGParamSpecTypeInfo;
  PGParamSpecTypeInfo = ^TGParamSpecTypeInfo;

  TGParamSpecTypeInfo = record
    instance_size: guint16;
    n_preallocs: guint16;
    instance_init: procedure(pspec: PGParamSpec); cdecl;
    value_type: TGType;
    finalize: procedure(pspec: PGParamSpec); cdecl;
    value_set_default: procedure(pspec: PGParamSpec; value: PGValue); cdecl;
    value_validate: function(pspec: PGParamSpec; value: PGValue): gboolean; cdecl;
    values_cmp: function(pspec: PGParamSpec; value1: PGValue; value2: PGValue): gint; cdecl;
  end;



  PPGParamSpecUChar = ^PGParamSpecUChar;
  PGParamSpecUChar = ^TGParamSpecUChar;
  TGParamSpecUChar = object(TGParamSpec)
    minimum: guint8;
    maximum: guint8;
    default_value: guint8;
  end;

  PPGParamSpecUInt = ^PGParamSpecUInt;
  PGParamSpecUInt = ^TGParamSpecUInt;
  TGParamSpecUInt = object(TGParamSpec)
    minimum: guint;
    maximum: guint;
    default_value: guint;
  end;

  PPGParamSpecUInt64 = ^PGParamSpecUInt64;
  PGParamSpecUInt64 = ^TGParamSpecUInt64;
  TGParamSpecUInt64 = object(TGParamSpec)
    minimum: guint64;
    maximum: guint64;
    default_value: guint64;
  end;

  PPGParamSpecULong = ^PGParamSpecULong;
  PGParamSpecULong = ^TGParamSpecULong;
  TGParamSpecULong = object(TGParamSpec)
    minimum: gulong;
    maximum: gulong;
    default_value: gulong;
  end;

  PPGParamSpecUnichar = ^PGParamSpecUnichar;
  PGParamSpecUnichar = ^TGParamSpecUnichar;
  TGParamSpecUnichar = object(TGParamSpec)
    default_value: gunichar;
  end;

  PPGParamSpecValueArray = ^PGParamSpecValueArray;
  PGParamSpecValueArray = ^TGParamSpecValueArray;
  TGParamSpecValueArray = object(TGParamSpec)
    fixed_n_elements: guint;
  end;

  PPGParamSpecVariant = ^PGParamSpecVariant;
  PGParamSpecVariant = ^TGParamSpecVariant;
  TGParamSpecVariant = object(TGParamSpec)
    type_: PGVariantType;
    default_value: PGVariant;
    padding: array [0..3] of gpointer;
  end;

  PPGSignalInvocationHint = ^PGSignalInvocationHint;
  PGSignalInvocationHint = ^TGSignalInvocationHint;

  PPGSignalFlags = ^PGSignalFlags;
  PGSignalFlags = ^TGSignalFlags;
  TGSignalFlags = packed object(TBitObject32)
  public
    property run_first: DWord index 1 read GetBit write SetBit;
    property run_last: DWord index 2 read GetBit write SetBit;
    property run_cleanup: DWord index 4 read GetBit write SetBit;
    property no_recurse: DWord index 8 read GetBit write SetBit;
    property detailed: DWord index 16 read GetBit write SetBit;
    property action: DWord index 32 read GetBit write SetBit;
    property no_hooks: DWord index 64 read GetBit write SetBit;
    property must_collect: DWord index 128 read GetBit write SetBit;
  end;


  TGSignalInvocationHint = record
    signal_id: guint;
    detail: TGQuark;
    run_type: TGSignalFlags;
  end;


  TGSignalAccumulator = function(ihint: PGSignalInvocationHint; return_accu: PGValue; handler_return: PGValue; data: gpointer): gboolean; cdecl;
  TGSignalEmissionHook = function(ihint: PGSignalInvocationHint; n_param_values: guint; param_values: PGValue; data: gpointer): gboolean; cdecl;
  TGSignalMatchType = packed object(TBitObject32)
  public
    property id: DWord index 1 read GetBit write SetBit;
    property detail: DWord index 2 read GetBit write SetBit;
    property closure: DWord index 4 read GetBit write SetBit;
    property func: DWord index 8 read GetBit write SetBit;
    property data: DWord index 16 read GetBit write SetBit;
    property unblocked: DWord index 32 read GetBit write SetBit;
  end;


  PPGSignalQuery = ^PGSignalQuery;
  PGSignalQuery = ^TGSignalQuery;

  TGSignalQuery = record
    signal_id: guint;
    signal_name: Pgchar;
    itype: TGType;
    signal_flags: TGSignalFlags;
    return_type: TGType;
    n_params: guint;
    param_types: PGType;
  end;


  TGTypeCValue = record
    case longint of
      0 : (v_int: gint);
      1 : (v_long: glong);
      2 : (v_int64: gint64);
      3 : (v_double: gdouble);
      4 : (v_pointer: gpointer);
  end;


  TGTypeClassCacheFunc = function(cache_data: gpointer; g_class: PGTypeClass): gboolean; cdecl;
  TGTypeDebugFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property objects: DWord index 1 read GetBit write SetBit;
    property signals: DWord index 2 read GetBit write SetBit;
    property mask: DWord index 3 read GetBit write SetBit;
  end;

  TGTypeFlags = packed object(TBitObject32)
  public
    property abstract: DWord index 16 read GetBit write SetBit;
    property value_abstract: DWord index 32 read GetBit write SetBit;
  end;

  TGTypeFundamentalFlags = packed object(TBitObject32)
  public
    property classed: DWord index 1 read GetBit write SetBit;
    property instantiatable: DWord index 2 read GetBit write SetBit;
    property derivable: DWord index 4 read GetBit write SetBit;
    property deep_derivable: DWord index 8 read GetBit write SetBit;
  end;


  PPGTypeFundamentalInfo = ^PGTypeFundamentalInfo;
  PGTypeFundamentalInfo = ^TGTypeFundamentalInfo;

  PPGTypeFundamentalFlags = ^PGTypeFundamentalFlags;
  PGTypeFundamentalFlags = ^TGTypeFundamentalFlags;

  TGTypeFundamentalInfo = record
    type_flags: TGTypeFundamentalFlags;
  end;



  PPGTypeValueTable = ^PGTypeValueTable;
  PGTypeValueTable = ^TGTypeValueTable;

  PPGTypeCValue = ^PGTypeCValue;
  PGTypeCValue = ^TGTypeCValue;
  TGTypeValueTable = object
    value_init: procedure(value: PGValue); cdecl;
    value_free: procedure(value: PGValue); cdecl;
    value_copy: procedure(src_value: PGValue; dest_value: PGValue); cdecl;
    value_peek_pointer: function(value: PGValue): gpointer; cdecl;
    collect_format: Pgchar;
    collect_value: function(value: PGValue; n_collect_values: guint; collect_values: PGTypeCValue; collect_flags: guint): Pgchar; cdecl;
    lcopy_format: Pgchar;
    lcopy_value: function(value: PGValue; n_collect_values: guint; collect_values: PGTypeCValue; collect_flags: guint): Pgchar; cdecl;
    function peek(type_: TGType): PGTypeValueTable; cdecl; inline; static;
  end;

  PPGTypeInfo = ^PGTypeInfo;
  PGTypeInfo = ^TGTypeInfo;

  PPGBaseInitFunc = ^PGBaseInitFunc;
  PGBaseInitFunc = ^TGBaseInitFunc;

  PPGBaseFinalizeFunc = ^PGBaseFinalizeFunc;
  PGBaseFinalizeFunc = ^TGBaseFinalizeFunc;

  PPGClassInitFunc = ^PGClassInitFunc;
  PGClassInitFunc = ^TGClassInitFunc;

  PPGClassFinalizeFunc = ^PGClassFinalizeFunc;
  PGClassFinalizeFunc = ^TGClassFinalizeFunc;

  PPGInstanceInitFunc = ^PGInstanceInitFunc;
  PGInstanceInitFunc = ^TGInstanceInitFunc;

  TGTypeInfo = record
    class_size: guint16;
    base_init: TGBaseInitFunc;
    base_finalize: TGBaseFinalizeFunc;
    class_init: TGClassInitFunc;
    class_finalize: TGClassFinalizeFunc;
    class_data: gpointer;
    instance_size: guint16;
    n_preallocs: guint16;
    instance_init: TGInstanceInitFunc;
    value_table: PGTypeValueTable;
  end;



  PPGTypeInterface = ^PGTypeInterface;
  PGTypeInterface = ^TGTypeInterface;

  PPGTypePlugin = ^PGTypePlugin;
  PGTypePlugin = ^TGTypePlugin;
  TGTypeInterface = object
    g_type: TGType;
    g_instance_type: TGType;
    function peek_parent: TGTypeInterface; cdecl; inline;
    procedure add_prerequisite(interface_type: TGType; prerequisite_type: TGType); cdecl; inline; static;
    function get_plugin(instance_type: TGType; interface_type: TGType): PGTypePlugin; cdecl; inline; static;
    function peek(instance_class: TGTypeClass; iface_type: TGType): TGTypeInterface; cdecl; inline; static;
    function prerequisites(interface_type: TGType; n_prerequisites: Pguint): PGType; cdecl; inline; static;
  end;
  TGTypePlugin = object
    procedure complete_interface_info(instance_type: TGType; interface_type: TGType; info: PGInterfaceInfo); cdecl; inline;
    procedure complete_type_info(g_type: TGType; info: PGTypeInfo; value_table: PGTypeValueTable); cdecl; inline;
    procedure unuse; cdecl; inline;
    procedure use; cdecl; inline;
  end;
  TGTypeInterfaceCheckFunc = procedure(check_data: gpointer; g_iface: gpointer); cdecl;

  PPGTypeModule = ^PGTypeModule;
  PGTypeModule = ^TGTypeModule;

  PPGTypeFlags = ^PGTypeFlags;
  PGTypeFlags = ^TGTypeFlags;
  TGTypeModule = object(TGObject)
    use_count: guint;
    type_infos: PGSList;
    interface_infos: PGSList;
    name: Pgchar;
    procedure add_interface(instance_type: TGType; interface_type: TGType; interface_info: PGInterfaceInfo); cdecl; inline;
    function register_enum(name: Pgchar; const_static_values: PGEnumValue): TGType; cdecl; inline;
    function register_flags(name: Pgchar; const_static_values: PGFlagsValue): TGType; cdecl; inline;
    function register_type(parent_type: TGType; type_name: Pgchar; type_info: PGTypeInfo; flags: TGTypeFlags): TGType; cdecl; inline;
    procedure set_name(name: Pgchar); cdecl; inline;
    procedure unuse; cdecl; inline;
    function use: gboolean; cdecl; inline;
  end;

  PPGTypeModuleClass = ^PGTypeModuleClass;
  PGTypeModuleClass = ^TGTypeModuleClass;
  TGTypeModuleClass = object
    parent_class: TGObjectClass;
    load: function(module: PGTypeModule): gboolean; cdecl;
    unload: procedure(module: PGTypeModule); cdecl;
    reserved1: procedure; cdecl;
    reserved2: procedure; cdecl;
    reserved3: procedure; cdecl;
    reserved4: procedure; cdecl;
  end;
  TGTypePluginUse = procedure(plugin: PGTypePlugin); cdecl;
  TGTypePluginUnuse = procedure(plugin: PGTypePlugin); cdecl;
  TGTypePluginCompleteTypeInfo = procedure(plugin: PGTypePlugin; g_type: TGType; info: PGTypeInfo; value_table: PGTypeValueTable); cdecl;
  TGTypePluginCompleteInterfaceInfo = procedure(plugin: PGTypePlugin; instance_type: TGType; interface_type: TGType; info: PGInterfaceInfo); cdecl;

  PPGTypePluginClass = ^PGTypePluginClass;
  PGTypePluginClass = ^TGTypePluginClass;

  PPGTypePluginUse = ^PGTypePluginUse;
  PGTypePluginUse = ^TGTypePluginUse;

  PPGTypePluginUnuse = ^PGTypePluginUnuse;
  PGTypePluginUnuse = ^TGTypePluginUnuse;

  PPGTypePluginCompleteTypeInfo = ^PGTypePluginCompleteTypeInfo;
  PGTypePluginCompleteTypeInfo = ^TGTypePluginCompleteTypeInfo;

  PPGTypePluginCompleteInterfaceInfo = ^PGTypePluginCompleteInterfaceInfo;
  PGTypePluginCompleteInterfaceInfo = ^TGTypePluginCompleteInterfaceInfo;

  TGTypePluginClass = record
    base_iface: TGTypeInterface;
    use_plugin: TGTypePluginUse;
    unuse_plugin: TGTypePluginUnuse;
    complete_type_info: TGTypePluginCompleteTypeInfo;
    complete_interface_info: TGTypePluginCompleteInterfaceInfo;
  end;



  PPGTypeQuery = ^PGTypeQuery;
  PGTypeQuery = ^TGTypeQuery;

  TGTypeQuery = record
    type_: TGType;
    type_name: Pgchar;
    class_size: guint;
    instance_size: guint;
  end;



  PPGValueArray = ^PGValueArray;
  PGValueArray = ^TGValueArray;
  TGValueArray = object
    n_values: guint;
    values: PGValue;
    n_prealloced: guint;
    function new(n_prealloced: guint): PGValueArray; cdecl; inline; static;
    function append(value: PGValue): PGValueArray; cdecl; inline;
    function copy: PGValueArray; cdecl; inline;
    procedure free; cdecl; inline;
    function get_nth(index_: guint): PGValue; cdecl; inline;
    function insert(index_: guint; value: PGValue): PGValueArray; cdecl; inline;
    function prepend(value: PGValue): PGValueArray; cdecl; inline;
    function remove(index_: guint): PGValueArray; cdecl; inline;
    function sort(compare_func: TGCompareFunc): PGValueArray; cdecl; inline;
    function sort_with_data(compare_func: TGCompareDataFunc; user_data: gpointer): PGValueArray; cdecl; inline;
  end;

function g_binding_get_flags(ABinding: PGBinding): TGBindingFlags; cdecl; external;
function g_binding_get_source(ABinding: PGBinding): PGObject; cdecl; external;
function g_binding_get_source_property(ABinding: PGBinding): Pgchar; cdecl; external;
function g_binding_get_target(ABinding: PGBinding): PGObject; cdecl; external;
function g_binding_get_target_property(ABinding: PGBinding): Pgchar; cdecl; external;
function g_binding_get_type: TGType; cdecl; external;
function g_boxed_copy(boxed_type: TGType; src_boxed: gpointer): gpointer; cdecl; external;
function g_boxed_type_register_static(name: Pgchar; boxed_copy: TGBoxedCopyFunc; boxed_free: TGBoxedFreeFunc): TGType; cdecl; external;
function g_cclosure_new(callback_func: TGCallback; user_data: gpointer; destroy_data: TGClosureNotify): PGClosure; cdecl; external;
function g_cclosure_new_object(callback_func: TGCallback; object_: PGObject): PGClosure; cdecl; external;
function g_cclosure_new_object_swap(callback_func: TGCallback; object_: PGObject): PGClosure; cdecl; external;
function g_cclosure_new_swap(callback_func: TGCallback; user_data: gpointer; destroy_data: TGClosureNotify): PGClosure; cdecl; external;
function g_closure_get_type: TGType; cdecl; external;
function g_closure_new_object(sizeof_closure: guint; object_: PGObject): PGClosure; cdecl; external;
function g_closure_new_simple(sizeof_closure: guint; data: gpointer): PGClosure; cdecl; external;
function g_closure_ref(AClosure: PGClosure): PGClosure; cdecl; external;
function g_enum_get_value(enum_class: PGEnumClass; value: gint): PGEnumValue; cdecl; external;
function g_enum_get_value_by_name(enum_class: PGEnumClass; name: Pgchar): PGEnumValue; cdecl; external;
function g_enum_get_value_by_nick(enum_class: PGEnumClass; nick: Pgchar): PGEnumValue; cdecl; external;
function g_enum_register_static(name: Pgchar; const_static_values: PGEnumValue): TGType; cdecl; external;
function g_flags_get_first_value(flags_class: PGFlagsClass; value: guint): PGFlagsValue; cdecl; external;
function g_flags_get_value_by_name(flags_class: PGFlagsClass; name: Pgchar): PGFlagsValue; cdecl; external;
function g_flags_get_value_by_nick(flags_class: PGFlagsClass; nick: Pgchar): PGFlagsValue; cdecl; external;
function g_flags_register_static(name: Pgchar; const_static_values: PGFlagsValue): TGType; cdecl; external;
function g_gtype_get_type: TGType; cdecl; external;
function g_initially_unowned_get_type: TGType; cdecl; external;
function g_object_bind_property(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags): PGBinding; cdecl; external;
function g_object_bind_property_full(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags; transform_to: TGBindingTransformFunc; transform_from: TGBindingTransformFunc; user_data: gpointer; notify: TGDestroyNotify): PGBinding; cdecl; external;
function g_object_bind_property_with_closures(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags; transform_to: PGClosure; transform_from: PGClosure): PGBinding; cdecl; external;
function g_object_class_find_property(AObjectClass: PGObjectClass; property_name: Pgchar): PGParamSpec; cdecl; external;
function g_object_class_list_properties(AObjectClass: PGObjectClass; n_properties: Pguint): PPGParamSpec; cdecl; external;
function g_object_compat_control(what: gsize; data: gpointer): gsize; cdecl; external;
function g_object_connect(object_: gpointer; signal_spec: Pgchar; args: array of const): gpointer; cdecl; external;
function g_object_get_data(AObject: PGObject; key: Pgchar): gpointer; cdecl; external;
function g_object_get_qdata(AObject: PGObject; quark: TGQuark): gpointer; cdecl; external;
function g_object_get_type: TGType; cdecl; external;
function g_object_interface_find_property(g_iface: gpointer; property_name: Pgchar): PGParamSpec; cdecl; external;
function g_object_interface_list_properties(g_iface: gpointer; n_properties_p: Pguint): PPGParamSpec; cdecl; external;
function g_object_is_floating(AObject: PGObject): gboolean; cdecl; external;
function g_object_new(object_type: TGType; first_property_name: Pgchar; args: array of const): gpointer; cdecl; external;
function g_object_new_valist(object_type: TGType; first_property_name: Pgchar; var_args: Tva_list): PGObject; cdecl; external;
function g_object_newv(object_type: TGType; n_parameters: guint; parameters: PGParameter): PGObject; cdecl; external;
function g_object_ref(AObject: PGObject): TGObject; cdecl; external;
function g_object_ref_sink(AObject: PGObject): TGObject; cdecl; external;
function g_object_steal_data(AObject: PGObject; key: Pgchar): gpointer; cdecl; external;
function g_object_steal_qdata(AObject: PGObject; quark: TGQuark): gpointer; cdecl; external;
function g_param_spec_boolean(name: Pgchar; nick: Pgchar; blurb: Pgchar; default_value: gboolean; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_boxed(name: Pgchar; nick: Pgchar; blurb: Pgchar; boxed_type: TGType; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_char(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: gint8; maximum: gint8; default_value: gint8; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_double(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: gdouble; maximum: gdouble; default_value: gdouble; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_enum(name: Pgchar; nick: Pgchar; blurb: Pgchar; enum_type: TGType; default_value: gint; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_flags(name: Pgchar; nick: Pgchar; blurb: Pgchar; flags_type: TGType; default_value: guint; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_float(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: gfloat; maximum: gfloat; default_value: gfloat; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_get_blurb(AParamSpec: PGParamSpec): Pgchar; cdecl; external;
function g_param_spec_get_name(AParamSpec: PGParamSpec): Pgchar; cdecl; external;
function g_param_spec_get_nick(AParamSpec: PGParamSpec): Pgchar; cdecl; external;
function g_param_spec_get_qdata(AParamSpec: PGParamSpec; quark: TGQuark): gpointer; cdecl; external;
function g_param_spec_get_redirect_target(AParamSpec: PGParamSpec): PGParamSpec; cdecl; external;
function g_param_spec_gtype(name: Pgchar; nick: Pgchar; blurb: Pgchar; is_a_type: TGType; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_int(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: gint; maximum: gint; default_value: gint; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_int64(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: gint64; maximum: gint64; default_value: gint64; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_internal(param_type: TGType; name: Pgchar; nick: Pgchar; blurb: Pgchar; flags: TGParamFlags): gpointer; cdecl; external;
function g_param_spec_long(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: glong; maximum: glong; default_value: glong; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_object(name: Pgchar; nick: Pgchar; blurb: Pgchar; object_type: TGType; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_override(name: Pgchar; overridden: PGParamSpec): PGParamSpec; cdecl; external;
function g_param_spec_param(name: Pgchar; nick: Pgchar; blurb: Pgchar; param_type: TGType; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_pointer(name: Pgchar; nick: Pgchar; blurb: Pgchar; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_pool_list(AParamSpecPool: PGParamSpecPool; owner_type: TGType; n_pspecs_p: Pguint): PPGParamSpec; cdecl; external;
function g_param_spec_pool_list_owned(AParamSpecPool: PGParamSpecPool; owner_type: TGType): PGList; cdecl; external;
function g_param_spec_pool_lookup(AParamSpecPool: PGParamSpecPool; param_name: Pgchar; owner_type: TGType; walk_ancestors: gboolean): PGParamSpec; cdecl; external;
function g_param_spec_pool_new(type_prefixing: gboolean): PGParamSpecPool; cdecl; external;
function g_param_spec_ref(AParamSpec: PGParamSpec): PGParamSpec; cdecl; external;
function g_param_spec_ref_sink(AParamSpec: PGParamSpec): PGParamSpec; cdecl; external;
function g_param_spec_steal_qdata(AParamSpec: PGParamSpec; quark: TGQuark): gpointer; cdecl; external;
function g_param_spec_string(name: Pgchar; nick: Pgchar; blurb: Pgchar; default_value: Pgchar; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_uchar(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: guint8; maximum: guint8; default_value: guint8; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_uint(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: guint; maximum: guint; default_value: guint; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_uint64(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: guint64; maximum: guint64; default_value: guint64; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_ulong(name: Pgchar; nick: Pgchar; blurb: Pgchar; minimum: gulong; maximum: gulong; default_value: gulong; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_unichar(name: Pgchar; nick: Pgchar; blurb: Pgchar; default_value: gunichar; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_value_array(name: Pgchar; nick: Pgchar; blurb: Pgchar; element_spec: PGParamSpec; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_spec_variant(name: Pgchar; nick: Pgchar; blurb: Pgchar; type_: PGVariantType; default_value: PGVariant; flags: TGParamFlags): PGParamSpec; cdecl; external;
function g_param_type_register_static(name: Pgchar; pspec_info: PGParamSpecTypeInfo): TGType; cdecl; external;
function g_param_value_convert(pspec: PGParamSpec; src_value: PGValue; dest_value: PGValue; strict_validation: gboolean): gboolean; cdecl; external;
function g_param_value_defaults(pspec: PGParamSpec; value: PGValue): gboolean; cdecl; external;
function g_param_value_validate(pspec: PGParamSpec; value: PGValue): gboolean; cdecl; external;
function g_param_values_cmp(pspec: PGParamSpec; value1: PGValue; value2: PGValue): gint; cdecl; external;
function g_pointer_type_register_static(name: Pgchar): TGType; cdecl; external;
function g_signal_accumulator_first_wins(ihint: PGSignalInvocationHint; return_accu: PGValue; handler_return: PGValue; dummy: gpointer): gboolean; cdecl; external;
function g_signal_accumulator_true_handled(ihint: PGSignalInvocationHint; return_accu: PGValue; handler_return: PGValue; dummy: gpointer): gboolean; cdecl; external;
function g_signal_add_emission_hook(signal_id: guint; detail: TGQuark; hook_func: TGSignalEmissionHook; hook_data: gpointer; data_destroy: TGDestroyNotify): gulong; cdecl; external;
function g_signal_connect_closure(instance: gpointer; detailed_signal: Pgchar; closure: PGClosure; after: gboolean): gulong; cdecl; external;
function g_signal_connect_closure_by_id(instance: gpointer; signal_id: guint; detail: TGQuark; closure: PGClosure; after: gboolean): gulong; cdecl; external;
function g_signal_connect_data(instance: gpointer; detailed_signal: Pgchar; c_handler: TGCallback; data: gpointer; destroy_data: TGClosureNotify; connect_flags: TGConnectFlags): gulong; cdecl; external;
function g_signal_connect_object(instance: gpointer; detailed_signal: Pgchar; c_handler: TGCallback; gobject: gpointer; connect_flags: TGConnectFlags): gulong; cdecl; external;
function g_signal_get_invocation_hint(instance: gpointer): PGSignalInvocationHint; cdecl; external;
function g_signal_handler_find(instance: gpointer; mask: TGSignalMatchType; signal_id: guint; detail: TGQuark; closure: PGClosure; func: gpointer; data: gpointer): gulong; cdecl; external;
function g_signal_handler_is_connected(instance: gpointer; handler_id: gulong): gboolean; cdecl; external;
function g_signal_handlers_block_matched(instance: gpointer; mask: TGSignalMatchType; signal_id: guint; detail: TGQuark; closure: PGClosure; func: gpointer; data: gpointer): guint; cdecl; external;
function g_signal_handlers_disconnect_matched(instance: gpointer; mask: TGSignalMatchType; signal_id: guint; detail: TGQuark; closure: PGClosure; func: gpointer; data: gpointer): guint; cdecl; external;
function g_signal_handlers_unblock_matched(instance: gpointer; mask: TGSignalMatchType; signal_id: guint; detail: TGQuark; closure: PGClosure; func: gpointer; data: gpointer): guint; cdecl; external;
function g_signal_has_handler_pending(instance: gpointer; signal_id: guint; detail: TGQuark; may_be_blocked: gboolean): gboolean; cdecl; external;
function g_signal_list_ids(itype: TGType; n_ids: Pguint): Pguint; cdecl; external;
function g_signal_lookup(name: Pgchar; itype: TGType): guint; cdecl; external;
function g_signal_name(signal_id: guint): Pgchar; cdecl; external;
function g_signal_new(signal_name: Pgchar; itype: TGType; signal_flags: TGSignalFlags; class_offset: guint; accumulator: TGSignalAccumulator; accu_data: gpointer; c_marshaller: TGSignalCMarshaller; return_type: TGType; n_params: guint; args: array of const): guint; cdecl; external;
function g_signal_new_class_handler(signal_name: Pgchar; itype: TGType; signal_flags: TGSignalFlags; class_handler: TGCallback; accumulator: TGSignalAccumulator; accu_data: gpointer; c_marshaller: TGSignalCMarshaller; return_type: TGType; n_params: guint; args: array of const): guint; cdecl; external;
function g_signal_new_valist(signal_name: Pgchar; itype: TGType; signal_flags: TGSignalFlags; class_closure: PGClosure; accumulator: TGSignalAccumulator; accu_data: gpointer; c_marshaller: TGSignalCMarshaller; return_type: TGType; n_params: guint; args: Tva_list): guint; cdecl; external;
function g_signal_newv(signal_name: Pgchar; itype: TGType; signal_flags: TGSignalFlags; class_closure: PGClosure; accumulator: TGSignalAccumulator; accu_data: gpointer; c_marshaller: TGSignalCMarshaller; return_type: TGType; n_params: guint; param_types: PGType): guint; cdecl; external;
function g_signal_parse_name(detailed_signal: Pgchar; itype: TGType; signal_id_p: Pguint; detail_p: PGQuark; force_detail_quark: gboolean): gboolean; cdecl; external;
function g_signal_type_cclosure_new(itype: TGType; struct_offset: guint): PGClosure; cdecl; external;
function g_strdup_value_contents(value: PGValue): Pgchar; cdecl; external;
function g_type_check_class_cast(g_class: PGTypeClass; is_a_type: TGType): PGTypeClass; cdecl; external;
function g_type_check_class_is_a(g_class: PGTypeClass; is_a_type: TGType): gboolean; cdecl; external;
function g_type_check_instance(instance: PGTypeInstance): gboolean; cdecl; external;
function g_type_check_instance_cast(instance: PGTypeInstance; iface_type: TGType): PGTypeInstance; cdecl; external;
function g_type_check_instance_is_a(instance: PGTypeInstance; iface_type: TGType): gboolean; cdecl; external;
function g_type_check_is_value_type(type_: TGType): gboolean; cdecl; external;
function g_type_check_value(value: PGValue): gboolean; cdecl; external;
function g_type_check_value_holds(value: PGValue; type_: TGType): gboolean; cdecl; external;
function g_type_children(type_: TGType; n_children: Pguint): PGType; cdecl; external;
function g_type_class_get_private(ATypeClass: PGTypeClass; private_type: TGType): gpointer; cdecl; external;
function g_type_class_peek(type_: TGType): TGTypeClass; cdecl; external;
function g_type_class_peek_parent(ATypeClass: PGTypeClass): TGTypeClass; cdecl; external;
function g_type_class_peek_static(type_: TGType): TGTypeClass; cdecl; external;
function g_type_class_ref(type_: TGType): TGTypeClass; cdecl; external;
function g_type_create_instance(type_: TGType): PGTypeInstance; cdecl; external;
function g_type_default_interface_peek(g_type: TGType): TGTypeInterface; cdecl; external;
function g_type_default_interface_ref(g_type: TGType): TGTypeInterface; cdecl; external;
function g_type_depth(type_: TGType): guint; cdecl; external;
function g_type_from_name(name: Pgchar): TGType; cdecl; external;
function g_type_fundamental(type_id: TGType): TGType; cdecl; external;
function g_type_fundamental_next: TGType; cdecl; external;
function g_type_get_plugin(type_: TGType): PGTypePlugin; cdecl; external;
function g_type_get_qdata(type_: TGType; quark: TGQuark): gpointer; cdecl; external;
function g_type_instance_get_private(ATypeInstance: PGTypeInstance; private_type: TGType): gpointer; cdecl; external;
function g_type_interface_get_plugin(instance_type: TGType; interface_type: TGType): PGTypePlugin; cdecl; external;
function g_type_interface_peek(instance_class: TGTypeClass; iface_type: TGType): TGTypeInterface; cdecl; external;
function g_type_interface_peek_parent(ATypeInterface: PGTypeInterface): TGTypeInterface; cdecl; external;
function g_type_interface_prerequisites(interface_type: TGType; n_prerequisites: Pguint): PGType; cdecl; external;
function g_type_interfaces(type_: TGType; n_interfaces: Pguint): PGType; cdecl; external;
function g_type_is_a(type_: TGType; is_a_type: TGType): gboolean; cdecl; external;
function g_type_module_get_type: TGType; cdecl; external;
function g_type_module_register_enum(ATypeModule: PGTypeModule; name: Pgchar; const_static_values: PGEnumValue): TGType; cdecl; external;
function g_type_module_register_flags(ATypeModule: PGTypeModule; name: Pgchar; const_static_values: PGFlagsValue): TGType; cdecl; external;
function g_type_module_register_type(ATypeModule: PGTypeModule; parent_type: TGType; type_name: Pgchar; type_info: PGTypeInfo; flags: TGTypeFlags): TGType; cdecl; external;
function g_type_module_use(ATypeModule: PGTypeModule): gboolean; cdecl; external;
function g_type_name(type_: TGType): Pgchar; cdecl; external;
function g_type_name_from_class(g_class: PGTypeClass): Pgchar; cdecl; external;
function g_type_name_from_instance(instance: PGTypeInstance): Pgchar; cdecl; external;
function g_type_next_base(leaf_type: TGType; root_type: TGType): TGType; cdecl; external;
function g_type_parent(type_: TGType): TGType; cdecl; external;
function g_type_plugin_get_type: TGType; cdecl; external;
function g_type_qname(type_: TGType): TGQuark; cdecl; external;
function g_type_register_dynamic(parent_type: TGType; type_name: Pgchar; plugin: PGTypePlugin; flags: TGTypeFlags): TGType; cdecl; external;
function g_type_register_fundamental(type_id: TGType; type_name: Pgchar; info: PGTypeInfo; finfo: PGTypeFundamentalInfo; flags: TGTypeFlags): TGType; cdecl; external;
function g_type_register_static(parent_type: TGType; type_name: Pgchar; info: PGTypeInfo; flags: TGTypeFlags): TGType; cdecl; external;
function g_type_register_static_simple(parent_type: TGType; type_name: Pgchar; class_size: guint; class_init: TGClassInitFunc; instance_size: guint; instance_init: TGInstanceInitFunc; flags: TGTypeFlags): TGType; cdecl; external;
function g_type_test_flags(type_: TGType; flags: guint): gboolean; cdecl; external;
function g_type_value_table_peek(type_: TGType): PGTypeValueTable; cdecl; external;
function g_value_array_append(AValueArray: PGValueArray; value: PGValue): PGValueArray; cdecl; external;
function g_value_array_copy(AValueArray: PGValueArray): PGValueArray; cdecl; external;
function g_value_array_get_nth(AValueArray: PGValueArray; index_: guint): PGValue; cdecl; external;
function g_value_array_get_type: TGType; cdecl; external;
function g_value_array_insert(AValueArray: PGValueArray; index_: guint; value: PGValue): PGValueArray; cdecl; external;
function g_value_array_new(n_prealloced: guint): PGValueArray; cdecl; external;
function g_value_array_prepend(AValueArray: PGValueArray; value: PGValue): PGValueArray; cdecl; external;
function g_value_array_remove(AValueArray: PGValueArray; index_: guint): PGValueArray; cdecl; external;
function g_value_array_sort(AValueArray: PGValueArray; compare_func: TGCompareFunc): PGValueArray; cdecl; external;
function g_value_array_sort_with_data(AValueArray: PGValueArray; compare_func: TGCompareDataFunc; user_data: gpointer): PGValueArray; cdecl; external;
function g_value_dup_boxed(AValue: PGValue): gpointer; cdecl; external;
function g_value_dup_object(AValue: PGValue): TGObject; cdecl; external;
function g_value_dup_param(AValue: PGValue): PGParamSpec; cdecl; external;
function g_value_dup_string(AValue: PGValue): Pgchar; cdecl; external;
function g_value_dup_variant(AValue: PGValue): PGVariant; cdecl; external;
function g_value_fits_pointer(AValue: PGValue): gboolean; cdecl; external;
function g_value_get_boolean(AValue: PGValue): gboolean; cdecl; external;
function g_value_get_boxed(AValue: PGValue): gpointer; cdecl; external;
function g_value_get_char(AValue: PGValue): gchar; cdecl; external;
function g_value_get_double(AValue: PGValue): gdouble; cdecl; external;
function g_value_get_enum(AValue: PGValue): gint; cdecl; external;
function g_value_get_flags(AValue: PGValue): guint; cdecl; external;
function g_value_get_float(AValue: PGValue): gfloat; cdecl; external;
function g_value_get_gtype(value: PGValue): TGType; cdecl; external;
function g_value_get_int(AValue: PGValue): gint; cdecl; external;
function g_value_get_int64(AValue: PGValue): gint64; cdecl; external;
function g_value_get_long(AValue: PGValue): glong; cdecl; external;
function g_value_get_object(AValue: PGValue): TGObject; cdecl; external;
function g_value_get_param(AValue: PGValue): PGParamSpec; cdecl; external;
function g_value_get_pointer(AValue: PGValue): gpointer; cdecl; external;
function g_value_get_string(AValue: PGValue): Pgchar; cdecl; external;
function g_value_get_type: TGType; cdecl; external;
function g_value_get_uchar(AValue: PGValue): guint8; cdecl; external;
function g_value_get_uint(AValue: PGValue): guint; cdecl; external;
function g_value_get_uint64(AValue: PGValue): guint64; cdecl; external;
function g_value_get_ulong(AValue: PGValue): gulong; cdecl; external;
function g_value_get_variant(AValue: PGValue): PGVariant; cdecl; external;
function g_value_init(AValue: PGValue; g_type: TGType): PGValue; cdecl; external;
function g_value_peek_pointer(AValue: PGValue): gpointer; cdecl; external;
function g_value_reset(AValue: PGValue): PGValue; cdecl; external;
function g_value_transform(AValue: PGValue; dest_value: PGValue): gboolean; cdecl; external;
function g_value_type_compatible(src_type: TGType; dest_type: TGType): gboolean; cdecl; external;
function g_value_type_transformable(src_type: TGType; dest_type: TGType): gboolean; cdecl; external;
function intern: TGType; cdecl; external;
procedure g_boxed_free(boxed_type: TGType; boxed: gpointer); cdecl; external;
procedure g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_BOOLEAN__FLAGS(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_generic(closure: PGClosure; return_gvalue: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_STRING__OBJECT_POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__BOOLEAN(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__BOXED(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__CHAR(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__DOUBLE(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__ENUM(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__FLAGS(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__FLOAT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__INT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__LONG(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__OBJECT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__PARAM(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__STRING(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__UCHAR(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__UINT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__UINT_POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__ULONG(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__VARIANT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_cclosure_marshal_VOID__VOID(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl; external;
procedure g_clear_object(object_ptr: PPGObject); cdecl; external;
procedure g_closure_add_finalize_notifier(AClosure: PGClosure; notify_data: gpointer; notify_func: TGClosureNotify); cdecl; external;
procedure g_closure_add_invalidate_notifier(AClosure: PGClosure; notify_data: gpointer; notify_func: TGClosureNotify); cdecl; external;
procedure g_closure_add_marshal_guards(AClosure: PGClosure; pre_marshal_data: gpointer; pre_marshal_notify: TGClosureNotify; post_marshal_data: gpointer; post_marshal_notify: TGClosureNotify); cdecl; external;
procedure g_closure_invalidate(AClosure: PGClosure); cdecl; external;
procedure g_closure_invoke(AClosure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer); cdecl; external;
procedure g_closure_remove_finalize_notifier(AClosure: PGClosure; notify_data: gpointer; notify_func: TGClosureNotify); cdecl; external;
procedure g_closure_remove_invalidate_notifier(AClosure: PGClosure; notify_data: gpointer; notify_func: TGClosureNotify); cdecl; external;
procedure g_closure_set_marshal(AClosure: PGClosure; marshal: TGClosureMarshal); cdecl; external;
procedure g_closure_set_meta_marshal(AClosure: PGClosure; marshal_data: gpointer; meta_marshal: TGClosureMarshal); cdecl; external;
procedure g_closure_sink(AClosure: PGClosure); cdecl; external;
procedure g_closure_unref(AClosure: PGClosure); cdecl; external;
procedure g_enum_complete_type_info(g_enum_type: TGType; info: PGTypeInfo; const_values: PGEnumValue); cdecl; external;
procedure g_flags_complete_type_info(g_flags_type: TGType; info: PGTypeInfo; const_values: PGFlagsValue); cdecl; external;
procedure g_object_add_toggle_ref(AObject: PGObject; notify: TGToggleNotify; data: gpointer); cdecl; external;
procedure g_object_add_weak_pointer(AObject: PGObject; weak_pointer_location: Pgpointer); cdecl; external;
procedure g_object_class_install_properties(AObjectClass: PGObjectClass; n_pspecs: guint; pspecs: PPGParamSpec); cdecl; external;
procedure g_object_class_install_property(AObjectClass: PGObjectClass; property_id: guint; pspec: PGParamSpec); cdecl; external;
procedure g_object_class_override_property(AObjectClass: PGObjectClass; property_id: guint; name: Pgchar); cdecl; external;
procedure g_object_disconnect(object_: gpointer; signal_spec: Pgchar; args: array of const); cdecl; external;
procedure g_object_force_floating(AObject: PGObject); cdecl; external;
procedure g_object_freeze_notify(AObject: PGObject); cdecl; external;
procedure g_object_get(object_: gpointer; first_property_name: Pgchar; args: array of const); cdecl; external;
procedure g_object_get_property(AObject: PGObject; property_name: Pgchar; value: PGValue); cdecl; external;
procedure g_object_get_valist(AObject: PGObject; first_property_name: Pgchar; var_args: Tva_list); cdecl; external;
procedure g_object_interface_install_property(g_iface: gpointer; pspec: PGParamSpec); cdecl; external;
procedure g_object_notify(AObject: PGObject; property_name: Pgchar); cdecl; external;
procedure g_object_notify_by_pspec(AObject: PGObject; pspec: PGParamSpec); cdecl; external;
procedure g_object_remove_toggle_ref(AObject: PGObject; notify: TGToggleNotify; data: gpointer); cdecl; external;
procedure g_object_remove_weak_pointer(AObject: PGObject; weak_pointer_location: Pgpointer); cdecl; external;
procedure g_object_run_dispose(AObject: PGObject); cdecl; external;
procedure g_object_set(object_: gpointer; first_property_name: Pgchar; args: array of const); cdecl; external;
procedure g_object_set_data(AObject: PGObject; key: Pgchar; data: gpointer); cdecl; external;
procedure g_object_set_data_full(AObject: PGObject; key: Pgchar; data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure g_object_set_property(AObject: PGObject; property_name: Pgchar; value: PGValue); cdecl; external;
procedure g_object_set_qdata(AObject: PGObject; quark: TGQuark; data: gpointer); cdecl; external;
procedure g_object_set_qdata_full(AObject: PGObject; quark: TGQuark; data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure g_object_set_valist(AObject: PGObject; first_property_name: Pgchar; var_args: Tva_list); cdecl; external;
procedure g_object_thaw_notify(AObject: PGObject); cdecl; external;
procedure g_object_unref(AObject: PGObject); cdecl; external;
procedure g_object_watch_closure(AObject: PGObject; closure: PGClosure); cdecl; external;
procedure g_object_weak_ref(AObject: PGObject; notify: TGWeakNotify; data: gpointer); cdecl; external;
procedure g_object_weak_unref(AObject: PGObject; notify: TGWeakNotify; data: gpointer); cdecl; external;
procedure g_param_spec_pool_insert(AParamSpecPool: PGParamSpecPool; pspec: PGParamSpec; owner_type: TGType); cdecl; external;
procedure g_param_spec_pool_remove(AParamSpecPool: PGParamSpecPool; pspec: PGParamSpec); cdecl; external;
procedure g_param_spec_set_qdata(AParamSpec: PGParamSpec; quark: TGQuark; data: gpointer); cdecl; external;
procedure g_param_spec_set_qdata_full(AParamSpec: PGParamSpec; quark: TGQuark; data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure g_param_spec_sink(AParamSpec: PGParamSpec); cdecl; external;
procedure g_param_spec_unref(AParamSpec: PGParamSpec); cdecl; external;
procedure g_param_value_set_default(pspec: PGParamSpec; value: PGValue); cdecl; external;
procedure g_signal_chain_from_overridden(instance_and_params: PGValue; return_value: PGValue); cdecl; external;
procedure g_signal_chain_from_overridden_handler(instance: gpointer; args: array of const); cdecl; external;
procedure g_signal_emit(instance: gpointer; signal_id: guint; detail: TGQuark; args: array of const); cdecl; external;
procedure g_signal_emit_by_name(instance: gpointer; detailed_signal: Pgchar; args: array of const); cdecl; external;
procedure g_signal_emit_valist(instance: gpointer; signal_id: guint; detail: TGQuark; var_args: Tva_list); cdecl; external;
procedure g_signal_emitv(instance_and_params: PGValue; signal_id: guint; detail: TGQuark; return_value: PGValue); cdecl; external;
procedure g_signal_handler_block(instance: gpointer; handler_id: gulong); cdecl; external;
procedure g_signal_handler_disconnect(instance: gpointer; handler_id: gulong); cdecl; external;
procedure g_signal_handler_unblock(instance: gpointer; handler_id: gulong); cdecl; external;
procedure g_signal_handlers_destroy(instance: gpointer); cdecl; external;
procedure g_signal_override_class_closure(signal_id: guint; instance_type: TGType; class_closure: PGClosure); cdecl; external;
procedure g_signal_override_class_handler(signal_name: Pgchar; instance_type: TGType; class_handler: TGCallback); cdecl; external;
procedure g_signal_query(signal_id: guint; query: PGSignalQuery); cdecl; external;
procedure g_signal_remove_emission_hook(signal_id: guint; hook_id: gulong); cdecl; external;
procedure g_signal_stop_emission(instance: gpointer; signal_id: guint; detail: TGQuark); cdecl; external;
procedure g_signal_stop_emission_by_name(instance: gpointer; detailed_signal: Pgchar); cdecl; external;
procedure g_source_set_closure(source: PGSource; closure: PGClosure); cdecl; external;
procedure g_source_set_dummy_callback(source: PGSource); cdecl; external;
procedure g_type_add_class_cache_func(cache_data: gpointer; cache_func: TGTypeClassCacheFunc); cdecl; external;
procedure g_type_add_class_private(class_type: TGType; private_size: gsize); cdecl; external;
procedure g_type_add_interface_check(check_data: gpointer; check_func: TGTypeInterfaceCheckFunc); cdecl; external;
procedure g_type_add_interface_dynamic(instance_type: TGType; interface_type: TGType; plugin: PGTypePlugin); cdecl; external;
procedure g_type_add_interface_static(instance_type: TGType; interface_type: TGType; info: PGInterfaceInfo); cdecl; external;
procedure g_type_class_add_private(g_class: gpointer; private_size: gsize); cdecl; external;
procedure g_type_class_unref(ATypeClass: PGTypeClass); cdecl; external;
procedure g_type_class_unref_uncached(ATypeClass: PGTypeClass); cdecl; external;
procedure g_type_default_interface_unref(g_iface: TGTypeInterface); cdecl; external;
procedure g_type_free_instance(instance: PGTypeInstance); cdecl; external;
procedure g_type_init; cdecl; external;
procedure g_type_init_with_debug_flags(debug_flags: TGTypeDebugFlags); cdecl; external;
procedure g_type_interface_add_prerequisite(interface_type: TGType; prerequisite_type: TGType); cdecl; external;
procedure g_type_module_add_interface(ATypeModule: PGTypeModule; instance_type: TGType; interface_type: TGType; interface_info: PGInterfaceInfo); cdecl; external;
procedure g_type_module_set_name(ATypeModule: PGTypeModule; name: Pgchar); cdecl; external;
procedure g_type_module_unuse(ATypeModule: PGTypeModule); cdecl; external;
procedure g_type_plugin_complete_interface_info(ATypePlugin: PGTypePlugin; instance_type: TGType; interface_type: TGType; info: PGInterfaceInfo); cdecl; external;
procedure g_type_plugin_complete_type_info(ATypePlugin: PGTypePlugin; g_type: TGType; info: PGTypeInfo; value_table: PGTypeValueTable); cdecl; external;
procedure g_type_plugin_unuse(ATypePlugin: PGTypePlugin); cdecl; external;
procedure g_type_plugin_use(ATypePlugin: PGTypePlugin); cdecl; external;
procedure g_type_query(type_: TGType; query: PGTypeQuery); cdecl; external;
procedure g_type_remove_class_cache_func(cache_data: gpointer; cache_func: TGTypeClassCacheFunc); cdecl; external;
procedure g_type_remove_interface_check(check_data: gpointer; check_func: TGTypeInterfaceCheckFunc); cdecl; external;
procedure g_type_set_qdata(type_: TGType; quark: TGQuark; data: gpointer); cdecl; external;
procedure g_value_array_free(AValueArray: PGValueArray); cdecl; external;
procedure g_value_copy(AValue: PGValue; dest_value: PGValue); cdecl; external;
procedure g_value_register_transform_func(src_type: TGType; dest_type: TGType; transform_func: TGValueTransform); cdecl; external;
procedure g_value_set_boolean(AValue: PGValue; v_boolean: gboolean); cdecl; external;
procedure g_value_set_boxed(AValue: PGValue; v_boxed: gpointer); cdecl; external;
procedure g_value_set_char(AValue: PGValue; v_char: gchar); cdecl; external;
procedure g_value_set_double(AValue: PGValue; v_double: gdouble); cdecl; external;
procedure g_value_set_enum(AValue: PGValue; v_enum: gint); cdecl; external;
procedure g_value_set_flags(AValue: PGValue; v_flags: guint); cdecl; external;
procedure g_value_set_float(AValue: PGValue; v_float: gfloat); cdecl; external;
procedure g_value_set_gtype(AValue: PGValue; v_gtype: TGType); cdecl; external;
procedure g_value_set_instance(AValue: PGValue; instance: gpointer); cdecl; external;
procedure g_value_set_int(AValue: PGValue; v_int: gint); cdecl; external;
procedure g_value_set_int64(AValue: PGValue; v_int64: gint64); cdecl; external;
procedure g_value_set_long(AValue: PGValue; v_long: glong); cdecl; external;
procedure g_value_set_object(AValue: PGValue; v_object: TGObject); cdecl; external;
procedure g_value_set_param(AValue: PGValue; param: PGParamSpec); cdecl; external;
procedure g_value_set_pointer(AValue: PGValue; v_pointer: gpointer); cdecl; external;
procedure g_value_set_static_boxed(AValue: PGValue; v_boxed: gpointer); cdecl; external;
procedure g_value_set_static_string(AValue: PGValue; v_string: Pgchar); cdecl; external;
procedure g_value_set_string(AValue: PGValue; v_string: Pgchar); cdecl; external;
procedure g_value_set_uchar(AValue: PGValue; v_uchar: guint8); cdecl; external;
procedure g_value_set_uint(AValue: PGValue; v_uint: guint); cdecl; external;
procedure g_value_set_uint64(AValue: PGValue; v_uint64: guint64); cdecl; external;
procedure g_value_set_ulong(AValue: PGValue; v_ulong: gulong); cdecl; external;
procedure g_value_set_variant(AValue: PGValue; variant: PGVariant); cdecl; external;
procedure g_value_take_boxed(AValue: PGValue; v_boxed: gpointer); cdecl; external;
procedure g_value_take_object(AValue: PGValue; v_object: gpointer); cdecl; external;
procedure g_value_take_param(AValue: PGValue; param: PGParamSpec); cdecl; external;
procedure g_value_take_string(AValue: PGValue; v_string: Pgchar); cdecl; external;
procedure g_value_take_variant(AValue: PGValue; variant: PGVariant); cdecl; external;
procedure g_value_unset(AValue: PGValue); cdecl; external;
implementation

function TGObject.newv(object_type: TGType; n_parameters: guint; parameters: PGParameter): PGObject; cdecl;
begin
  Result := GObject2.g_object_newv(object_type, n_parameters, parameters);
end;

function TGObject.bind_property(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags): PGBinding; cdecl;
begin
  Result := GObject2.g_object_bind_property(source, source_property, target, target_property, flags);
end;

function TGObject.bind_property_full(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags; transform_to: TGBindingTransformFunc; transform_from: TGBindingTransformFunc; user_data: gpointer; notify: TGDestroyNotify): PGBinding; cdecl;
begin
  Result := GObject2.g_object_bind_property_full(source, source_property, target, target_property, flags, transform_to, transform_from, user_data, notify);
end;

function TGObject.bind_property_with_closures(source: gpointer; source_property: Pgchar; target: gpointer; target_property: Pgchar; flags: TGBindingFlags; transform_to: PGClosure; transform_from: PGClosure): PGBinding; cdecl;
begin
  Result := GObject2.g_object_bind_property_with_closures(source, source_property, target, target_property, flags, transform_to, transform_from);
end;

function TGObject.compat_control(what: gsize; data: gpointer): gsize; cdecl;
begin
  Result := GObject2.g_object_compat_control(what, data);
end;

function TGObject.interface_find_property(g_iface: gpointer; property_name: Pgchar): PGParamSpec; cdecl;
begin
  Result := GObject2.g_object_interface_find_property(g_iface, property_name);
end;

procedure TGObject.interface_install_property(g_iface: gpointer; pspec: PGParamSpec); cdecl;
begin
  GObject2.g_object_interface_install_property(g_iface, pspec);
end;

function TGObject.interface_list_properties(g_iface: gpointer; n_properties_p: Pguint): PPGParamSpec; cdecl;
begin
  Result := GObject2.g_object_interface_list_properties(g_iface, n_properties_p);
end;

procedure TGObject.add_toggle_ref(notify: TGToggleNotify; data: gpointer); cdecl;
begin
  GObject2.g_object_add_toggle_ref(@self, notify, data);
end;

procedure TGObject.add_weak_pointer(weak_pointer_location: Pgpointer); cdecl;
begin
  GObject2.g_object_add_weak_pointer(@self, weak_pointer_location);
end;

procedure TGObject.force_floating; cdecl;
begin
  GObject2.g_object_force_floating(@self);
end;

procedure TGObject.freeze_notify; cdecl;
begin
  GObject2.g_object_freeze_notify(@self);
end;

function TGObject.get_data(key: Pgchar): gpointer; cdecl;
begin
  Result := GObject2.g_object_get_data(@self, key);
end;

procedure TGObject.get_property(property_name: Pgchar; value: PGValue); cdecl;
begin
  GObject2.g_object_get_property(@self, property_name, value);
end;

function TGObject.get_qdata(quark: TGQuark): gpointer; cdecl;
begin
  Result := GObject2.g_object_get_qdata(@self, quark);
end;

function TGObject.is_floating: gboolean; cdecl;
begin
  Result := GObject2.g_object_is_floating(@self);
end;

procedure TGObject.notify(property_name: Pgchar); cdecl;
begin
  GObject2.g_object_notify(@self, property_name);
end;

procedure TGObject.notify_by_pspec(pspec: PGParamSpec); cdecl;
begin
  GObject2.g_object_notify_by_pspec(@self, pspec);
end;

function TGObject.ref: TGObject; cdecl;
begin
  Result := GObject2.g_object_ref(@self);
end;

function TGObject.ref_sink: TGObject; cdecl;
begin
  Result := GObject2.g_object_ref_sink(@self);
end;

procedure TGObject.remove_toggle_ref(notify: TGToggleNotify; data: gpointer); cdecl;
begin
  GObject2.g_object_remove_toggle_ref(@self, notify, data);
end;

procedure TGObject.remove_weak_pointer(weak_pointer_location: Pgpointer); cdecl;
begin
  GObject2.g_object_remove_weak_pointer(@self, weak_pointer_location);
end;

procedure TGObject.run_dispose; cdecl;
begin
  GObject2.g_object_run_dispose(@self);
end;

procedure TGObject.set_data(key: Pgchar; data: gpointer); cdecl;
begin
  GObject2.g_object_set_data(@self, key, data);
end;

procedure TGObject.set_data_full(key: Pgchar; data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  GObject2.g_object_set_data_full(@self, key, data, destroy_);
end;

procedure TGObject.set_property(property_name: Pgchar; value: PGValue); cdecl;
begin
  GObject2.g_object_set_property(@self, property_name, value);
end;

procedure TGObject.set_qdata(quark: TGQuark; data: gpointer); cdecl;
begin
  GObject2.g_object_set_qdata(@self, quark, data);
end;

procedure TGObject.set_qdata_full(quark: TGQuark; data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  GObject2.g_object_set_qdata_full(@self, quark, data, destroy_);
end;

function TGObject.steal_data(key: Pgchar): gpointer; cdecl;
begin
  Result := GObject2.g_object_steal_data(@self, key);
end;

function TGObject.steal_qdata(quark: TGQuark): gpointer; cdecl;
begin
  Result := GObject2.g_object_steal_qdata(@self, quark);
end;

procedure TGObject.thaw_notify; cdecl;
begin
  GObject2.g_object_thaw_notify(@self);
end;

procedure TGObject.unref; cdecl;
begin
  GObject2.g_object_unref(@self);
end;

procedure TGObject.watch_closure(closure: PGClosure); cdecl;
begin
  GObject2.g_object_watch_closure(@self, closure);
end;

procedure TGObject.weak_ref(notify: TGWeakNotify; data: gpointer); cdecl;
begin
  GObject2.g_object_weak_ref(@self, notify, data);
end;

procedure TGObject.weak_unref(notify: TGWeakNotify; data: gpointer); cdecl;
begin
  GObject2.g_object_weak_unref(@self, notify, data);
end;

function TGTypeInstance.get_private(private_type: TGType): gpointer; cdecl;
begin
  Result := GObject2.g_type_instance_get_private(@self, private_type);
end;

function TGBinding.get_flags: TGBindingFlags; cdecl;
begin
  Result := GObject2.g_binding_get_flags(@self);
end;

function TGBinding.get_source: PGObject; cdecl;
begin
  Result := GObject2.g_binding_get_source(@self);
end;

function TGBinding.get_source_property: Pgchar; cdecl;
begin
  Result := GObject2.g_binding_get_source_property(@self);
end;

function TGBinding.get_target: PGObject; cdecl;
begin
  Result := GObject2.g_binding_get_target(@self);
end;

function TGBinding.get_target_property: Pgchar; cdecl;
begin
  Result := GObject2.g_binding_get_target_property(@self);
end;

procedure TGValue.copy(dest_value: PGValue); cdecl;
begin
  GObject2.g_value_copy(@self, dest_value);
end;

function TGValue.dup_boxed: gpointer; cdecl;
begin
  Result := GObject2.g_value_dup_boxed(@self);
end;

function TGValue.dup_object: TGObject; cdecl;
begin
  Result := GObject2.g_value_dup_object(@self);
end;

function TGValue.dup_param: PGParamSpec; cdecl;
begin
  Result := GObject2.g_value_dup_param(@self);
end;

function TGValue.dup_string: Pgchar; cdecl;
begin
  Result := GObject2.g_value_dup_string(@self);
end;

function TGValue.dup_variant: PGVariant; cdecl;
begin
  Result := GObject2.g_value_dup_variant(@self);
end;

function TGValue.fits_pointer: gboolean; cdecl;
begin
  Result := GObject2.g_value_fits_pointer(@self);
end;

function TGValue.get_boolean: gboolean; cdecl;
begin
  Result := GObject2.g_value_get_boolean(@self);
end;

function TGValue.get_boxed: gpointer; cdecl;
begin
  Result := GObject2.g_value_get_boxed(@self);
end;

function TGValue.get_char: gchar; cdecl;
begin
  Result := GObject2.g_value_get_char(@self);
end;

function TGValue.get_double: gdouble; cdecl;
begin
  Result := GObject2.g_value_get_double(@self);
end;

function TGValue.get_enum: gint; cdecl;
begin
  Result := GObject2.g_value_get_enum(@self);
end;

function TGValue.get_flags: guint; cdecl;
begin
  Result := GObject2.g_value_get_flags(@self);
end;

function TGValue.get_float: gfloat; cdecl;
begin
  Result := GObject2.g_value_get_float(@self);
end;

function TGValue.get_int: gint; cdecl;
begin
  Result := GObject2.g_value_get_int(@self);
end;

function TGValue.get_int64: gint64; cdecl;
begin
  Result := GObject2.g_value_get_int64(@self);
end;

function TGValue.get_long: glong; cdecl;
begin
  Result := GObject2.g_value_get_long(@self);
end;

function TGValue.get_object: TGObject; cdecl;
begin
  Result := GObject2.g_value_get_object(@self);
end;

function TGValue.get_param: PGParamSpec; cdecl;
begin
  Result := GObject2.g_value_get_param(@self);
end;

function TGValue.get_pointer: gpointer; cdecl;
begin
  Result := GObject2.g_value_get_pointer(@self);
end;

function TGValue.get_string: Pgchar; cdecl;
begin
  Result := GObject2.g_value_get_string(@self);
end;

function TGValue.get_uchar: guint8; cdecl;
begin
  Result := GObject2.g_value_get_uchar(@self);
end;

function TGValue.get_uint: guint; cdecl;
begin
  Result := GObject2.g_value_get_uint(@self);
end;

function TGValue.get_uint64: guint64; cdecl;
begin
  Result := GObject2.g_value_get_uint64(@self);
end;

function TGValue.get_ulong: gulong; cdecl;
begin
  Result := GObject2.g_value_get_ulong(@self);
end;

function TGValue.get_variant: PGVariant; cdecl;
begin
  Result := GObject2.g_value_get_variant(@self);
end;

function TGValue.init(g_type: TGType): PGValue; cdecl;
begin
  Result := GObject2.g_value_init(@self, g_type);
end;

function TGValue.peek_pointer: gpointer; cdecl;
begin
  Result := GObject2.g_value_peek_pointer(@self);
end;

function TGValue.reset: PGValue; cdecl;
begin
  Result := GObject2.g_value_reset(@self);
end;

procedure TGValue.set_boolean(v_boolean: gboolean); cdecl;
begin
  GObject2.g_value_set_boolean(@self, v_boolean);
end;

procedure TGValue.set_boxed(v_boxed: gpointer); cdecl;
begin
  GObject2.g_value_set_boxed(@self, v_boxed);
end;

procedure TGValue.set_char(v_char: gchar); cdecl;
begin
  GObject2.g_value_set_char(@self, v_char);
end;

procedure TGValue.set_double(v_double: gdouble); cdecl;
begin
  GObject2.g_value_set_double(@self, v_double);
end;

procedure TGValue.set_enum(v_enum: gint); cdecl;
begin
  GObject2.g_value_set_enum(@self, v_enum);
end;

procedure TGValue.set_flags(v_flags: guint); cdecl;
begin
  GObject2.g_value_set_flags(@self, v_flags);
end;

procedure TGValue.set_float(v_float: gfloat); cdecl;
begin
  GObject2.g_value_set_float(@self, v_float);
end;

procedure TGValue.set_gtype(v_gtype: TGType); cdecl;
begin
  GObject2.g_value_set_gtype(@self, v_gtype);
end;

procedure TGValue.set_instance(instance: gpointer); cdecl;
begin
  GObject2.g_value_set_instance(@self, instance);
end;

procedure TGValue.set_int(v_int: gint); cdecl;
begin
  GObject2.g_value_set_int(@self, v_int);
end;

procedure TGValue.set_int64(v_int64: gint64); cdecl;
begin
  GObject2.g_value_set_int64(@self, v_int64);
end;

procedure TGValue.set_long(v_long: glong); cdecl;
begin
  GObject2.g_value_set_long(@self, v_long);
end;

procedure TGValue.set_object(v_object: TGObject); cdecl;
begin
  GObject2.g_value_set_object(@self, v_object);
end;

procedure TGValue.set_param(param: PGParamSpec); cdecl;
begin
  GObject2.g_value_set_param(@self, param);
end;

procedure TGValue.set_pointer(v_pointer: gpointer); cdecl;
begin
  GObject2.g_value_set_pointer(@self, v_pointer);
end;

procedure TGValue.set_static_boxed(v_boxed: gpointer); cdecl;
begin
  GObject2.g_value_set_static_boxed(@self, v_boxed);
end;

procedure TGValue.set_static_string(v_string: Pgchar); cdecl;
begin
  GObject2.g_value_set_static_string(@self, v_string);
end;

procedure TGValue.set_string(v_string: Pgchar); cdecl;
begin
  GObject2.g_value_set_string(@self, v_string);
end;

procedure TGValue.set_uchar(v_uchar: guint8); cdecl;
begin
  GObject2.g_value_set_uchar(@self, v_uchar);
end;

procedure TGValue.set_uint(v_uint: guint); cdecl;
begin
  GObject2.g_value_set_uint(@self, v_uint);
end;

procedure TGValue.set_uint64(v_uint64: guint64); cdecl;
begin
  GObject2.g_value_set_uint64(@self, v_uint64);
end;

procedure TGValue.set_ulong(v_ulong: gulong); cdecl;
begin
  GObject2.g_value_set_ulong(@self, v_ulong);
end;

procedure TGValue.set_variant(variant: PGVariant); cdecl;
begin
  GObject2.g_value_set_variant(@self, variant);
end;

procedure TGValue.take_boxed(v_boxed: gpointer); cdecl;
begin
  GObject2.g_value_take_boxed(@self, v_boxed);
end;

procedure TGValue.take_object(v_object: gpointer); cdecl;
begin
  GObject2.g_value_take_object(@self, v_object);
end;

procedure TGValue.take_param(param: PGParamSpec); cdecl;
begin
  GObject2.g_value_take_param(@self, param);
end;

procedure TGValue.take_string(v_string: Pgchar); cdecl;
begin
  GObject2.g_value_take_string(@self, v_string);
end;

procedure TGValue.take_variant(variant: PGVariant); cdecl;
begin
  GObject2.g_value_take_variant(@self, variant);
end;

function TGValue.transform(dest_value: PGValue): gboolean; cdecl;
begin
  Result := GObject2.g_value_transform(@self, dest_value);
end;

procedure TGValue.unset; cdecl;
begin
  GObject2.g_value_unset(@self);
end;

procedure TGValue.register_transform_func(src_type: TGType; dest_type: TGType; transform_func: TGValueTransform); cdecl;
begin
  GObject2.g_value_register_transform_func(src_type, dest_type, transform_func);
end;

function TGValue.type_compatible(src_type: TGType; dest_type: TGType): gboolean; cdecl;
begin
  Result := GObject2.g_value_type_compatible(src_type, dest_type);
end;

function TGValue.type_transformable(src_type: TGType; dest_type: TGType): gboolean; cdecl;
begin
  Result := GObject2.g_value_type_transformable(src_type, dest_type);
end;

function TGClosure.new_object(sizeof_closure: guint; object_: PGObject): PGClosure; cdecl;
begin
  Result := GObject2.g_closure_new_object(sizeof_closure, object_);
end;

function TGClosure.new_simple(sizeof_closure: guint; data: gpointer): PGClosure; cdecl;
begin
  Result := GObject2.g_closure_new_simple(sizeof_closure, data);
end;

procedure TGClosure.add_finalize_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl;
begin
  GObject2.g_closure_add_finalize_notifier(@self, notify_data, notify_func);
end;

procedure TGClosure.add_invalidate_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl;
begin
  GObject2.g_closure_add_invalidate_notifier(@self, notify_data, notify_func);
end;

procedure TGClosure.add_marshal_guards(pre_marshal_data: gpointer; pre_marshal_notify: TGClosureNotify; post_marshal_data: gpointer; post_marshal_notify: TGClosureNotify); cdecl;
begin
  GObject2.g_closure_add_marshal_guards(@self, pre_marshal_data, pre_marshal_notify, post_marshal_data, post_marshal_notify);
end;

procedure TGClosure.invalidate; cdecl;
begin
  GObject2.g_closure_invalidate(@self);
end;

procedure TGClosure.invoke(return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer); cdecl;
begin
  GObject2.g_closure_invoke(@self, return_value, n_param_values, param_values, invocation_hint);
end;

function TGClosure.ref: PGClosure; cdecl;
begin
  Result := GObject2.g_closure_ref(@self);
end;

procedure TGClosure.remove_finalize_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl;
begin
  GObject2.g_closure_remove_finalize_notifier(@self, notify_data, notify_func);
end;

procedure TGClosure.remove_invalidate_notifier(notify_data: gpointer; notify_func: TGClosureNotify); cdecl;
begin
  GObject2.g_closure_remove_invalidate_notifier(@self, notify_data, notify_func);
end;

procedure TGClosure.set_marshal(marshal: TGClosureMarshal); cdecl;
begin
  GObject2.g_closure_set_marshal(@self, marshal);
end;

procedure TGClosure.set_meta_marshal(marshal_data: gpointer; meta_marshal: TGClosureMarshal); cdecl;
begin
  GObject2.g_closure_set_meta_marshal(@self, marshal_data, meta_marshal);
end;

procedure TGClosure.sink; cdecl;
begin
  GObject2.g_closure_sink(@self);
end;

procedure TGClosure.unref; cdecl;
begin
  GObject2.g_closure_unref(@self);
end;

procedure TGCClosure.marshal_BOOLEAN__BOXED_BOXED(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_BOOLEAN__FLAGS(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_BOOLEAN__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_STRING__OBJECT_POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_STRING__OBJECT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__BOOLEAN(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__BOOLEAN(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__BOXED(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__CHAR(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__CHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__DOUBLE(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__DOUBLE(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__ENUM(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__ENUM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__FLAGS(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__FLOAT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__FLOAT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__INT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__INT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__LONG(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__LONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__OBJECT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__OBJECT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__PARAM(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__PARAM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__STRING(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__STRING(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__UCHAR(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__UCHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__UINT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__UINT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__UINT_POINTER(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__UINT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__ULONG(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__ULONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__VARIANT(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__VARIANT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_VOID__VOID(closure: PGClosure; return_value: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_VOID__VOID(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data);
end;

procedure TGCClosure.marshal_generic(closure: PGClosure; return_gvalue: PGValue; n_param_values: guint; param_values: PGValue; invocation_hint: gpointer; marshal_data: gpointer); cdecl;
begin
  GObject2.g_cclosure_marshal_generic(closure, return_gvalue, n_param_values, param_values, invocation_hint, marshal_data);
end;

function TGCClosure.new(callback_func: TGCallback; user_data: gpointer; destroy_data: TGClosureNotify): PGClosure; cdecl;
begin
  Result := GObject2.g_cclosure_new(callback_func, user_data, destroy_data);
end;

function TGCClosure.new_object(callback_func: TGCallback; object_: PGObject): PGClosure; cdecl;
begin
  Result := GObject2.g_cclosure_new_object(callback_func, object_);
end;

function TGCClosure.new_object_swap(callback_func: TGCallback; object_: PGObject): PGClosure; cdecl;
begin
  Result := GObject2.g_cclosure_new_object_swap(callback_func, object_);
end;

function TGCClosure.new_swap(callback_func: TGCallback; user_data: gpointer; destroy_data: TGClosureNotify): PGClosure; cdecl;
begin
  Result := GObject2.g_cclosure_new_swap(callback_func, user_data, destroy_data);
end;


function TGTypeClass.get_private(private_type: TGType): gpointer; cdecl;
begin
  Result := GObject2.g_type_class_get_private(@self, private_type);
end;

function TGTypeClass.peek_parent: TGTypeClass; cdecl;
begin
  Result := GObject2.g_type_class_peek_parent(@self);
end;

procedure TGTypeClass.unref; cdecl;
begin
  GObject2.g_type_class_unref(@self);
end;

procedure TGTypeClass.unref_uncached; cdecl;
begin
  GObject2.g_type_class_unref_uncached(@self);
end;

procedure TGTypeClass.add_private(g_class: gpointer; private_size: gsize); cdecl;
begin
  GObject2.g_type_class_add_private(g_class, private_size);
end;

function TGTypeClass.peek(type_: TGType): TGTypeClass; cdecl;
begin
  Result := GObject2.g_type_class_peek(type_);
end;

function TGTypeClass.peek_static(type_: TGType): TGTypeClass; cdecl;
begin
  Result := GObject2.g_type_class_peek_static(type_);
end;

function TGTypeClass.ref(type_: TGType): TGTypeClass; cdecl;
begin
  Result := GObject2.g_type_class_ref(type_);
end;


function TGParamSpec.internal(param_type: TGType; name: Pgchar; nick: Pgchar; blurb: Pgchar; flags: TGParamFlags): gpointer; cdecl;
begin
  Result := GObject2.g_param_spec_internal(param_type, name, nick, blurb, flags);
end;

function TGParamSpec.get_blurb: Pgchar; cdecl;
begin
  Result := GObject2.g_param_spec_get_blurb(@self);
end;

function TGParamSpec.get_name: Pgchar; cdecl;
begin
  Result := GObject2.g_param_spec_get_name(@self);
end;

function TGParamSpec.get_nick: Pgchar; cdecl;
begin
  Result := GObject2.g_param_spec_get_nick(@self);
end;

function TGParamSpec.get_qdata(quark: TGQuark): gpointer; cdecl;
begin
  Result := GObject2.g_param_spec_get_qdata(@self, quark);
end;

function TGParamSpec.get_redirect_target: PGParamSpec; cdecl;
begin
  Result := GObject2.g_param_spec_get_redirect_target(@self);
end;

function TGParamSpec.ref: PGParamSpec; cdecl;
begin
  Result := GObject2.g_param_spec_ref(@self);
end;

function TGParamSpec.ref_sink: PGParamSpec; cdecl;
begin
  Result := GObject2.g_param_spec_ref_sink(@self);
end;

procedure TGParamSpec.set_qdata(quark: TGQuark; data: gpointer); cdecl;
begin
  GObject2.g_param_spec_set_qdata(@self, quark, data);
end;

procedure TGParamSpec.set_qdata_full(quark: TGQuark; data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  GObject2.g_param_spec_set_qdata_full(@self, quark, data, destroy_);
end;

procedure TGParamSpec.sink; cdecl;
begin
  GObject2.g_param_spec_sink(@self);
end;

function TGParamSpec.steal_qdata(quark: TGQuark): gpointer; cdecl;
begin
  Result := GObject2.g_param_spec_steal_qdata(@self, quark);
end;

procedure TGParamSpec.unref; cdecl;
begin
  GObject2.g_param_spec_unref(@self);
end;

function TGObjectClass.find_property(property_name: Pgchar): PGParamSpec; cdecl;
begin
  Result := GObject2.g_object_class_find_property(@self, property_name);
end;

procedure TGObjectClass.install_properties(n_pspecs: guint; pspecs: PPGParamSpec); cdecl;
begin
  GObject2.g_object_class_install_properties(@self, n_pspecs, pspecs);
end;

procedure TGObjectClass.install_property(property_id: guint; pspec: PGParamSpec); cdecl;
begin
  GObject2.g_object_class_install_property(@self, property_id, pspec);
end;

function TGObjectClass.list_properties(n_properties: Pguint): PPGParamSpec; cdecl;
begin
  Result := GObject2.g_object_class_list_properties(@self, n_properties);
end;

procedure TGObjectClass.override_property(property_id: guint; name: Pgchar); cdecl;
begin
  GObject2.g_object_class_override_property(@self, property_id, name);
end;

procedure TGParamSpecPool.insert(pspec: PGParamSpec; owner_type: TGType); cdecl;
begin
  GObject2.g_param_spec_pool_insert(@self, pspec, owner_type);
end;

function TGParamSpecPool.list(owner_type: TGType; n_pspecs_p: Pguint): PPGParamSpec; cdecl;
begin
  Result := GObject2.g_param_spec_pool_list(@self, owner_type, n_pspecs_p);
end;

function TGParamSpecPool.list_owned(owner_type: TGType): PGList; cdecl;
begin
  Result := GObject2.g_param_spec_pool_list_owned(@self, owner_type);
end;

function TGParamSpecPool.lookup(param_name: Pgchar; owner_type: TGType; walk_ancestors: gboolean): PGParamSpec; cdecl;
begin
  Result := GObject2.g_param_spec_pool_lookup(@self, param_name, owner_type, walk_ancestors);
end;

procedure TGParamSpecPool.remove(pspec: PGParamSpec); cdecl;
begin
  GObject2.g_param_spec_pool_remove(@self, pspec);
end;

function TGParamSpecPool.new(type_prefixing: gboolean): PGParamSpecPool; cdecl;
begin
  Result := GObject2.g_param_spec_pool_new(type_prefixing);
end;






function TGTypeValueTable.peek(type_: TGType): PGTypeValueTable; cdecl;
begin
  Result := GObject2.g_type_value_table_peek(type_);
end;

function TGTypeInterface.peek_parent: TGTypeInterface; cdecl;
begin
  Result := GObject2.g_type_interface_peek_parent(@self);
end;

procedure TGTypeInterface.add_prerequisite(interface_type: TGType; prerequisite_type: TGType); cdecl;
begin
  GObject2.g_type_interface_add_prerequisite(interface_type, prerequisite_type);
end;

function TGTypeInterface.get_plugin(instance_type: TGType; interface_type: TGType): PGTypePlugin; cdecl;
begin
  Result := GObject2.g_type_interface_get_plugin(instance_type, interface_type);
end;

function TGTypeInterface.peek(instance_class: TGTypeClass; iface_type: TGType): TGTypeInterface; cdecl;
begin
  Result := GObject2.g_type_interface_peek(instance_class, iface_type);
end;

function TGTypeInterface.prerequisites(interface_type: TGType; n_prerequisites: Pguint): PGType; cdecl;
begin
  Result := GObject2.g_type_interface_prerequisites(interface_type, n_prerequisites);
end;

procedure TGTypePlugin.complete_interface_info(instance_type: TGType; interface_type: TGType; info: PGInterfaceInfo); cdecl;
begin
  GObject2.g_type_plugin_complete_interface_info(@self, instance_type, interface_type, info);
end;

procedure TGTypePlugin.complete_type_info(g_type: TGType; info: PGTypeInfo; value_table: PGTypeValueTable); cdecl;
begin
  GObject2.g_type_plugin_complete_type_info(@self, g_type, info, value_table);
end;

procedure TGTypePlugin.unuse; cdecl;
begin
  GObject2.g_type_plugin_unuse(@self);
end;

procedure TGTypePlugin.use; cdecl;
begin
  GObject2.g_type_plugin_use(@self);
end;

procedure TGTypeModule.add_interface(instance_type: TGType; interface_type: TGType; interface_info: PGInterfaceInfo); cdecl;
begin
  GObject2.g_type_module_add_interface(@self, instance_type, interface_type, interface_info);
end;

function TGTypeModule.register_enum(name: Pgchar; const_static_values: PGEnumValue): TGType; cdecl;
begin
  Result := GObject2.g_type_module_register_enum(@self, name, const_static_values);
end;

function TGTypeModule.register_flags(name: Pgchar; const_static_values: PGFlagsValue): TGType; cdecl;
begin
  Result := GObject2.g_type_module_register_flags(@self, name, const_static_values);
end;

function TGTypeModule.register_type(parent_type: TGType; type_name: Pgchar; type_info: PGTypeInfo; flags: TGTypeFlags): TGType; cdecl;
begin
  Result := GObject2.g_type_module_register_type(@self, parent_type, type_name, type_info, flags);
end;

procedure TGTypeModule.set_name(name: Pgchar); cdecl;
begin
  GObject2.g_type_module_set_name(@self, name);
end;

procedure TGTypeModule.unuse; cdecl;
begin
  GObject2.g_type_module_unuse(@self);
end;

function TGTypeModule.use: gboolean; cdecl;
begin
  Result := GObject2.g_type_module_use(@self);
end;

function TGValueArray.new(n_prealloced: guint): PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_new(n_prealloced);
end;

function TGValueArray.append(value: PGValue): PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_append(@self, value);
end;

function TGValueArray.copy: PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_copy(@self);
end;

procedure TGValueArray.free; cdecl;
begin
  GObject2.g_value_array_free(@self);
end;

function TGValueArray.get_nth(index_: guint): PGValue; cdecl;
begin
  Result := GObject2.g_value_array_get_nth(@self, index_);
end;

function TGValueArray.insert(index_: guint; value: PGValue): PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_insert(@self, index_, value);
end;

function TGValueArray.prepend(value: PGValue): PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_prepend(@self, value);
end;

function TGValueArray.remove(index_: guint): PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_remove(@self, index_);
end;

function TGValueArray.sort(compare_func: TGCompareFunc): PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_sort(@self, compare_func);
end;

function TGValueArray.sort_with_data(compare_func: TGCompareDataFunc; user_data: gpointer): PGValueArray; cdecl;
begin
  Result := GObject2.g_value_array_sort_with_data(@self, compare_func, user_data);
end;

end.