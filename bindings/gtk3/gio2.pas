unit Gio2;

{$MODE OBJFPC}{$H+}

{$PACKRECORDS C}
{$BITPACKING ON}
{$MODESWITCH DUPLICATELOCALS+}

{$LINKLIB libgio-2.0.so.0}
interface
uses
  CTypes, GLib2, GObject2;

const
  Gio2_library = 'libgio-2.0.so.0';

  DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME = 'gio-desktop-app-info-lookup';
  FILE_ATTRIBUTE_ACCESS_CAN_DELETE = 'access::can-delete';
  FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = 'access::can-execute';
  FILE_ATTRIBUTE_ACCESS_CAN_READ = 'access::can-read';
  FILE_ATTRIBUTE_ACCESS_CAN_RENAME = 'access::can-rename';
  FILE_ATTRIBUTE_ACCESS_CAN_TRASH = 'access::can-trash';
  FILE_ATTRIBUTE_ACCESS_CAN_WRITE = 'access::can-write';
  FILE_ATTRIBUTE_DOS_IS_ARCHIVE = 'dos::is-archive';
  FILE_ATTRIBUTE_DOS_IS_SYSTEM = 'dos::is-system';
  FILE_ATTRIBUTE_ETAG_VALUE = 'etag::value';
  FILE_ATTRIBUTE_FILESYSTEM_FREE = 'filesystem::free';
  FILE_ATTRIBUTE_FILESYSTEM_READONLY = 'filesystem::readonly';
  FILE_ATTRIBUTE_FILESYSTEM_SIZE = 'filesystem::size';
  FILE_ATTRIBUTE_FILESYSTEM_TYPE = 'filesystem::type';
  FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = 'filesystem::use-preview';
  FILE_ATTRIBUTE_GVFS_BACKEND = 'gvfs::backend';
  FILE_ATTRIBUTE_ID_FILE = 'id::file';
  FILE_ATTRIBUTE_ID_FILESYSTEM = 'id::filesystem';
  FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = 'mountable::can-eject';
  FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = 'mountable::can-mount';
  FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = 'mountable::can-poll';
  FILE_ATTRIBUTE_MOUNTABLE_CAN_START = 'mountable::can-start';
  FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = 'mountable::can-start-degraded';
  FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = 'mountable::can-stop';
  FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = 'mountable::can-unmount';
  FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = 'mountable::hal-udi';
  FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = 'mountable::is-media-check-automatic';
  FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = 'mountable::start-stop-type';
  FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = 'mountable::unix-device';
  FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = 'mountable::unix-device-file';
  FILE_ATTRIBUTE_OWNER_GROUP = 'owner::group';
  FILE_ATTRIBUTE_OWNER_USER = 'owner::user';
  FILE_ATTRIBUTE_OWNER_USER_REAL = 'owner::user-real';
  FILE_ATTRIBUTE_PREVIEW_ICON = 'preview::icon';
  FILE_ATTRIBUTE_SELINUX_CONTEXT = 'selinux::context';
  FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = 'standard::allocated-size';
  FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = 'standard::content-type';
  FILE_ATTRIBUTE_STANDARD_COPY_NAME = 'standard::copy-name';
  FILE_ATTRIBUTE_STANDARD_DESCRIPTION = 'standard::description';
  FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = 'standard::display-name';
  FILE_ATTRIBUTE_STANDARD_EDIT_NAME = 'standard::edit-name';
  FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = 'standard::fast-content-type';
  FILE_ATTRIBUTE_STANDARD_ICON = 'standard::icon';
  FILE_ATTRIBUTE_STANDARD_IS_BACKUP = 'standard::is-backup';
  FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = 'standard::is-hidden';
  FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = 'standard::is-symlink';
  FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = 'standard::is-virtual';
  FILE_ATTRIBUTE_STANDARD_NAME = 'standard::name';
  FILE_ATTRIBUTE_STANDARD_SIZE = 'standard::size';
  FILE_ATTRIBUTE_STANDARD_SORT_ORDER = 'standard::sort-order';
  FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = 'standard::symlink-target';
  FILE_ATTRIBUTE_STANDARD_TARGET_URI = 'standard::target-uri';
  FILE_ATTRIBUTE_STANDARD_TYPE = 'standard::type';
  FILE_ATTRIBUTE_THUMBNAILING_FAILED = 'thumbnail::failed';
  FILE_ATTRIBUTE_THUMBNAIL_PATH = 'thumbnail::path';
  FILE_ATTRIBUTE_TIME_ACCESS = 'time::access';
  FILE_ATTRIBUTE_TIME_ACCESS_USEC = 'time::access-usec';
  FILE_ATTRIBUTE_TIME_CHANGED = 'time::changed';
  FILE_ATTRIBUTE_TIME_CHANGED_USEC = 'time::changed-usec';
  FILE_ATTRIBUTE_TIME_CREATED = 'time::created';
  FILE_ATTRIBUTE_TIME_CREATED_USEC = 'time::created-usec';
  FILE_ATTRIBUTE_TIME_MODIFIED = 'time::modified';
  FILE_ATTRIBUTE_TIME_MODIFIED_USEC = 'time::modified-usec';
  FILE_ATTRIBUTE_TRASH_DELETION_DATE = 'trash::deletion-date';
  FILE_ATTRIBUTE_TRASH_ITEM_COUNT = 'trash::item-count';
  FILE_ATTRIBUTE_TRASH_ORIG_PATH = 'trash::orig-path';
  FILE_ATTRIBUTE_UNIX_BLOCKS = 'unix::blocks';
  FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = 'unix::block-size';
  FILE_ATTRIBUTE_UNIX_DEVICE = 'unix::device';
  FILE_ATTRIBUTE_UNIX_GID = 'unix::gid';
  FILE_ATTRIBUTE_UNIX_INODE = 'unix::inode';
  FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = 'unix::is-mountpoint';
  FILE_ATTRIBUTE_UNIX_MODE = 'unix::mode';
  FILE_ATTRIBUTE_UNIX_NLINK = 'unix::nlink';
  FILE_ATTRIBUTE_UNIX_RDEV = 'unix::rdev';
  FILE_ATTRIBUTE_UNIX_UID = 'unix::uid';
  NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = 'gio-native-volume-monitor';
  PROXY_EXTENSION_POINT_NAME = 'gio-proxy';
  PROXY_RESOLVER_EXTENSION_POINT_NAME = 'gio-proxy-resolver';
  TLS_BACKEND_EXTENSION_POINT_NAME = 'gio-tls-backend';
  TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = '1.3.6.1.5.5.7.3.2';
  TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = '1.3.6.1.5.5.7.3.1';
  VFS_EXTENSION_POINT_NAME = 'gio-vfs';
  VOLUME_IDENTIFIER_KIND_HAL_UDI = 'hal-udi';
  VOLUME_IDENTIFIER_KIND_LABEL = 'label';
  VOLUME_IDENTIFIER_KIND_NFS_MOUNT = 'nfs-mount';
  VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = 'unix-device';
  VOLUME_IDENTIFIER_KIND_UUID = 'uuid';
  VOLUME_MONITOR_EXTENSION_POINT_NAME = 'gio-volume-monitor';

  { GAppInfoCreateFlags }
  G_APP_INFO_CREATE_NONE = 0;
  G_APP_INFO_CREATE_NEEDS_TERMINAL = 1;
  G_APP_INFO_CREATE_SUPPORTS_URIS = 2;
  G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION = 4;

  { GApplicationFlags }
  G_APPLICATION_FLAGS_NONE = 0;
  G_APPLICATION_IS_SERVICE = 1;
  G_APPLICATION_IS_LAUNCHER = 2;
  G_APPLICATION_HANDLES_OPEN = 4;
  G_APPLICATION_HANDLES_COMMAND_LINE = 8;
  G_APPLICATION_SEND_ENVIRONMENT = 16;
  G_APPLICATION_NON_UNIQUE = 32;

  { GFileCreateFlags }
  G_FILE_CREATE_NONE = 0;
  G_FILE_CREATE_PRIVATE = 1;
  G_FILE_CREATE_REPLACE_DESTINATION = 2;

  { GFileCopyFlags }
  G_FILE_COPY_NONE = 0;
  G_FILE_COPY_OVERWRITE = 1;
  G_FILE_COPY_BACKUP = 2;
  G_FILE_COPY_NOFOLLOW_SYMLINKS = 4;
  G_FILE_COPY_ALL_METADATA = 8;
  G_FILE_COPY_NO_FALLBACK_FOR_MOVE = 16;
  G_FILE_COPY_TARGET_DEFAULT_PERMS = 32;

  { GMountUnmountFlags }
  G_MOUNT_UNMOUNT_NONE = 0;
  G_MOUNT_UNMOUNT_FORCE = 1;

  { GFileQueryInfoFlags }
  G_FILE_QUERY_INFO_NONE = 0;
  G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS = 1;

  { GFileMonitorFlags }
  G_FILE_MONITOR_NONE = 0;
  G_FILE_MONITOR_WATCH_MOUNTS = 1;
  G_FILE_MONITOR_SEND_MOVED = 2;

type
  TGMountMountFlags = Integer;
const
  { GMountMountFlags }
  G_MOUNT_MOUNT_NONE: TGMountMountFlags = 0;

type
  TGFileAttributeType = Integer;
const
  { GFileAttributeType }
  G_FILE_ATTRIBUTE_TYPE_INVALID: TGFileAttributeType = 0;
  G_FILE_ATTRIBUTE_TYPE_STRING: TGFileAttributeType = 1;
  G_FILE_ATTRIBUTE_TYPE_BYTE_STRING: TGFileAttributeType = 2;
  G_FILE_ATTRIBUTE_TYPE_BOOLEAN: TGFileAttributeType = 3;
  G_FILE_ATTRIBUTE_TYPE_UINT32: TGFileAttributeType = 4;
  G_FILE_ATTRIBUTE_TYPE_INT32: TGFileAttributeType = 5;
  G_FILE_ATTRIBUTE_TYPE_UINT64: TGFileAttributeType = 6;
  G_FILE_ATTRIBUTE_TYPE_INT64: TGFileAttributeType = 7;
  G_FILE_ATTRIBUTE_TYPE_OBJECT: TGFileAttributeType = 8;
  G_FILE_ATTRIBUTE_TYPE_STRINGV: TGFileAttributeType = 9;

type
  TGDriveStartFlags = Integer;
const
  { GDriveStartFlags }
  G_DRIVE_START_NONE: TGDriveStartFlags = 0;

  { GAskPasswordFlags }
  G_ASK_PASSWORD_NEED_PASSWORD = 1;
  G_ASK_PASSWORD_NEED_USERNAME = 2;
  G_ASK_PASSWORD_NEED_DOMAIN = 4;
  G_ASK_PASSWORD_SAVING_SUPPORTED = 8;
  G_ASK_PASSWORD_ANONYMOUS_SUPPORTED = 16;

  { GOutputStreamSpliceFlags }
  G_OUTPUT_STREAM_SPLICE_NONE = 0;
  G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE = 1;
  G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET = 2;

  { GDBusConnectionFlags }
  G_DBUS_CONNECTION_FLAGS_NONE = 0;
  G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT = 1;
  G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER = 2;
  G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 4;
  G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION = 8;
  G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING = 16;

  { GDBusCallFlags }
  G_DBUS_CALL_FLAGS_NONE = 0;
  G_DBUS_CALL_FLAGS_NO_AUTO_START = 1;

  { GDBusCapabilityFlags }
  G_DBUS_CAPABILITY_FLAGS_NONE = 0;
  G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING = 1;

  { GDBusSubtreeFlags }
  G_DBUS_SUBTREE_FLAGS_NONE = 0;
  G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES = 1;

  { GDBusSendMessageFlags }
  G_DBUS_SEND_MESSAGE_FLAGS_NONE = 0;
  G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL = 1;

  { GDBusSignalFlags }
  G_DBUS_SIGNAL_FLAGS_NONE = 0;
  G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE = 1;

  { GBusNameOwnerFlags }
  G_BUS_NAME_OWNER_FLAGS_NONE = 0;
  G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT = 1;
  G_BUS_NAME_OWNER_FLAGS_REPLACE = 2;

  { GBusNameWatcherFlags }
  G_BUS_NAME_WATCHER_FLAGS_NONE = 0;
  G_BUS_NAME_WATCHER_FLAGS_AUTO_START = 1;

type
  TGBusType = Integer;
const
  { GBusType }
  G_BUS_TYPE_STARTER: TGBusType = -1;
  G_BUS_TYPE_NONE: TGBusType = 0;
  G_BUS_TYPE_SYSTEM: TGBusType = 1;
  G_BUS_TYPE_SESSION: TGBusType = 2;

  { GConverterFlags }
  G_CONVERTER_NO_FLAGS = 0;
  G_CONVERTER_INPUT_AT_END = 1;
  G_CONVERTER_FLUSH = 2;

type
  TGConverterResult = Integer;
const
  { GConverterResult }
  G_CONVERTER_ERROR: TGConverterResult = 0;
  G_CONVERTER_CONVERTED: TGConverterResult = 1;
  G_CONVERTER_FINISHED: TGConverterResult = 2;
  G_CONVERTER_FLUSHED: TGConverterResult = 3;

type
  TGCredentialsType = Integer;
const
  { GCredentialsType }
  G_CREDENTIALS_TYPE_INVALID: TGCredentialsType = 0;
  G_CREDENTIALS_TYPE_LINUX_UCRED: TGCredentialsType = 1;
  G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED: TGCredentialsType = 2;
  G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED: TGCredentialsType = 3;

  { GIOStreamSpliceFlags }
  G_IO_STREAM_SPLICE_NONE = 0;
  G_IO_STREAM_SPLICE_CLOSE_STREAM1 = 1;
  G_IO_STREAM_SPLICE_CLOSE_STREAM2 = 2;
  G_IO_STREAM_SPLICE_WAIT_FOR_BOTH = 4;

  { GDBusMessageFlags }
  G_DBUS_MESSAGE_FLAGS_NONE = 0;
  G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED = 1;
  G_DBUS_MESSAGE_FLAGS_NO_AUTO_START = 2;

type
  TGDBusMessageHeaderField = Integer;
const
  { GDBusMessageHeaderField }
  G_DBUS_MESSAGE_HEADER_FIELD_INVALID: TGDBusMessageHeaderField = 0;
  G_DBUS_MESSAGE_HEADER_FIELD_PATH: TGDBusMessageHeaderField = 1;
  G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE: TGDBusMessageHeaderField = 2;
  G_DBUS_MESSAGE_HEADER_FIELD_MEMBER: TGDBusMessageHeaderField = 3;
  G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME: TGDBusMessageHeaderField = 4;
  G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL: TGDBusMessageHeaderField = 5;
  G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION: TGDBusMessageHeaderField = 6;
  G_DBUS_MESSAGE_HEADER_FIELD_SENDER: TGDBusMessageHeaderField = 7;
  G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE: TGDBusMessageHeaderField = 8;
  G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS: TGDBusMessageHeaderField = 9;

type
  TGDBusMessageByteOrder = Integer;
const
  { GDBusMessageByteOrder }
  G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN: TGDBusMessageByteOrder = 66;
  G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN: TGDBusMessageByteOrder = 108;

type
  TGDBusMessageType = Integer;
const
  { GDBusMessageType }
  G_DBUS_MESSAGE_TYPE_INVALID: TGDBusMessageType = 0;
  G_DBUS_MESSAGE_TYPE_METHOD_CALL: TGDBusMessageType = 1;
  G_DBUS_MESSAGE_TYPE_METHOD_RETURN: TGDBusMessageType = 2;
  G_DBUS_MESSAGE_TYPE_ERROR: TGDBusMessageType = 3;
  G_DBUS_MESSAGE_TYPE_SIGNAL: TGDBusMessageType = 4;

type
  TGDBusError = Integer;
const
  { GDBusError }
  G_DBUS_ERROR_FAILED: TGDBusError = 0;
  G_DBUS_ERROR_NO_MEMORY: TGDBusError = 1;
  G_DBUS_ERROR_SERVICE_UNKNOWN: TGDBusError = 2;
  G_DBUS_ERROR_NAME_HAS_NO_OWNER: TGDBusError = 3;
  G_DBUS_ERROR_NO_REPLY: TGDBusError = 4;
  G_DBUS_ERROR_IO_ERROR: TGDBusError = 5;
  G_DBUS_ERROR_BAD_ADDRESS: TGDBusError = 6;
  G_DBUS_ERROR_NOT_SUPPORTED: TGDBusError = 7;
  G_DBUS_ERROR_LIMITS_EXCEEDED: TGDBusError = 8;
  G_DBUS_ERROR_ACCESS_DENIED: TGDBusError = 9;
  G_DBUS_ERROR_AUTH_FAILED: TGDBusError = 10;
  G_DBUS_ERROR_NO_SERVER: TGDBusError = 11;
  G_DBUS_ERROR_TIMEOUT: TGDBusError = 12;
  G_DBUS_ERROR_NO_NETWORK: TGDBusError = 13;
  G_DBUS_ERROR_ADDRESS_IN_USE: TGDBusError = 14;
  G_DBUS_ERROR_DISCONNECTED: TGDBusError = 15;
  G_DBUS_ERROR_INVALID_ARGS: TGDBusError = 16;
  G_DBUS_ERROR_FILE_NOT_FOUND: TGDBusError = 17;
  G_DBUS_ERROR_FILE_EXISTS: TGDBusError = 18;
  G_DBUS_ERROR_UNKNOWN_METHOD: TGDBusError = 19;
  G_DBUS_ERROR_TIMED_OUT: TGDBusError = 20;
  G_DBUS_ERROR_MATCH_RULE_NOT_FOUND: TGDBusError = 21;
  G_DBUS_ERROR_MATCH_RULE_INVALID: TGDBusError = 22;
  G_DBUS_ERROR_SPAWN_EXEC_FAILED: TGDBusError = 23;
  G_DBUS_ERROR_SPAWN_FORK_FAILED: TGDBusError = 24;
  G_DBUS_ERROR_SPAWN_CHILD_EXITED: TGDBusError = 25;
  G_DBUS_ERROR_SPAWN_CHILD_SIGNALED: TGDBusError = 26;
  G_DBUS_ERROR_SPAWN_FAILED: TGDBusError = 27;
  G_DBUS_ERROR_SPAWN_SETUP_FAILED: TGDBusError = 28;
  G_DBUS_ERROR_SPAWN_CONFIG_INVALID: TGDBusError = 29;
  G_DBUS_ERROR_SPAWN_SERVICE_INVALID: TGDBusError = 30;
  G_DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND: TGDBusError = 31;
  G_DBUS_ERROR_SPAWN_PERMISSIONS_INVALID: TGDBusError = 32;
  G_DBUS_ERROR_SPAWN_FILE_INVALID: TGDBusError = 33;
  G_DBUS_ERROR_SPAWN_NO_MEMORY: TGDBusError = 34;
  G_DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN: TGDBusError = 35;
  G_DBUS_ERROR_INVALID_SIGNATURE: TGDBusError = 36;
  G_DBUS_ERROR_INVALID_FILE_CONTENT: TGDBusError = 37;
  G_DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN: TGDBusError = 38;
  G_DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN: TGDBusError = 39;
  G_DBUS_ERROR_OBJECT_PATH_IN_USE: TGDBusError = 40;

  { GDBusPropertyInfoFlags }
  G_DBUS_PROPERTY_INFO_FLAGS_NONE = 0;
  G_DBUS_PROPERTY_INFO_FLAGS_READABLE = 1;
  G_DBUS_PROPERTY_INFO_FLAGS_WRITABLE = 2;

  { GDBusInterfaceSkeletonFlags }
  G_DBUS_INTERFACE_SKELETON_FLAGS_NONE = 0;
  G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1;

  { GDBusObjectManagerClientFlags }
  G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE = 0;
  G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START = 1;

  { GDBusProxyFlags }
  G_DBUS_PROXY_FLAGS_NONE = 0;
  G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES = 1;
  G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS = 2;
  G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START = 4;

  { GDBusServerFlags }
  G_DBUS_SERVER_FLAGS_NONE = 0;
  G_DBUS_SERVER_FLAGS_RUN_IN_THREAD = 1;
  G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 2;

type
  TGDataStreamByteOrder = Integer;
const
  { GDataStreamByteOrder }
  G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN: TGDataStreamByteOrder = 0;
  G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN: TGDataStreamByteOrder = 1;
  G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN: TGDataStreamByteOrder = 2;

type
  TGDataStreamNewlineType = Integer;
const
  { GDataStreamNewlineType }
  G_DATA_STREAM_NEWLINE_TYPE_LF: TGDataStreamNewlineType = 0;
  G_DATA_STREAM_NEWLINE_TYPE_CR: TGDataStreamNewlineType = 1;
  G_DATA_STREAM_NEWLINE_TYPE_CR_LF: TGDataStreamNewlineType = 2;
  G_DATA_STREAM_NEWLINE_TYPE_ANY: TGDataStreamNewlineType = 3;

type
  TGMountOperationResult = Integer;
const
  { GMountOperationResult }
  G_MOUNT_OPERATION_HANDLED: TGMountOperationResult = 0;
  G_MOUNT_OPERATION_ABORTED: TGMountOperationResult = 1;
  G_MOUNT_OPERATION_UNHANDLED: TGMountOperationResult = 2;

type
  TGPasswordSave = Integer;
const
  { GPasswordSave }
  G_PASSWORD_SAVE_NEVER: TGPasswordSave = 0;
  G_PASSWORD_SAVE_FOR_SESSION: TGPasswordSave = 1;
  G_PASSWORD_SAVE_PERMANENTLY: TGPasswordSave = 2;

type
  TGDriveStartStopType = Integer;
const
  { GDriveStartStopType }
  G_DRIVE_START_STOP_TYPE_UNKNOWN: TGDriveStartStopType = 0;
  G_DRIVE_START_STOP_TYPE_SHUTDOWN: TGDriveStartStopType = 1;
  G_DRIVE_START_STOP_TYPE_NETWORK: TGDriveStartStopType = 2;
  G_DRIVE_START_STOP_TYPE_MULTIDISK: TGDriveStartStopType = 3;
  G_DRIVE_START_STOP_TYPE_PASSWORD: TGDriveStartStopType = 4;

type
  TGEmblemOrigin = Integer;
const
  { GEmblemOrigin }
  G_EMBLEM_ORIGIN_UNKNOWN: TGEmblemOrigin = 0;
  G_EMBLEM_ORIGIN_DEVICE: TGEmblemOrigin = 1;
  G_EMBLEM_ORIGIN_LIVEMETADATA: TGEmblemOrigin = 2;
  G_EMBLEM_ORIGIN_TAG: TGEmblemOrigin = 3;

type
  TGFileMonitorEvent = Integer;
const
  { GFileMonitorEvent }
  G_FILE_MONITOR_EVENT_CHANGED: TGFileMonitorEvent = 0;
  G_FILE_MONITOR_EVENT_CHANGES_DONE_HINT: TGFileMonitorEvent = 1;
  G_FILE_MONITOR_EVENT_DELETED: TGFileMonitorEvent = 2;
  G_FILE_MONITOR_EVENT_CREATED: TGFileMonitorEvent = 3;
  G_FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED: TGFileMonitorEvent = 4;
  G_FILE_MONITOR_EVENT_PRE_UNMOUNT: TGFileMonitorEvent = 5;
  G_FILE_MONITOR_EVENT_UNMOUNTED: TGFileMonitorEvent = 6;
  G_FILE_MONITOR_EVENT_MOVED: TGFileMonitorEvent = 7;

type
  TGFileAttributeStatus = Integer;
const
  { GFileAttributeStatus }
  G_FILE_ATTRIBUTE_STATUS_UNSET: TGFileAttributeStatus = 0;
  G_FILE_ATTRIBUTE_STATUS_SET: TGFileAttributeStatus = 1;
  G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING: TGFileAttributeStatus = 2;

type
  TGFileType = Integer;
const
  { GFileType }
  G_FILE_TYPE_UNKNOWN: TGFileType = 0;
  G_FILE_TYPE_REGULAR: TGFileType = 1;
  G_FILE_TYPE_DIRECTORY: TGFileType = 2;
  G_FILE_TYPE_SYMBOLIC_LINK: TGFileType = 3;
  G_FILE_TYPE_SPECIAL: TGFileType = 4;
  G_FILE_TYPE_SHORTCUT: TGFileType = 5;
  G_FILE_TYPE_MOUNTABLE: TGFileType = 6;

  { GFileAttributeInfoFlags }
  G_FILE_ATTRIBUTE_INFO_NONE = 0;
  G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE = 1;
  G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED = 2;

type
  TGFilesystemPreviewType = Integer;
const
  { GFilesystemPreviewType }
  G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS: TGFilesystemPreviewType = 0;
  G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL: TGFilesystemPreviewType = 1;
  G_FILESYSTEM_PREVIEW_TYPE_NEVER: TGFilesystemPreviewType = 2;

type
  TGIOErrorEnum = Integer;
const
  { GIOErrorEnum }
  G_IO_ERROR_FAILED: TGIOErrorEnum = 0;
  G_IO_ERROR_NOT_FOUND: TGIOErrorEnum = 1;
  G_IO_ERROR_EXISTS: TGIOErrorEnum = 2;
  G_IO_ERROR_IS_DIRECTORY: TGIOErrorEnum = 3;
  G_IO_ERROR_NOT_DIRECTORY: TGIOErrorEnum = 4;
  G_IO_ERROR_NOT_EMPTY: TGIOErrorEnum = 5;
  G_IO_ERROR_NOT_REGULAR_FILE: TGIOErrorEnum = 6;
  G_IO_ERROR_NOT_SYMBOLIC_LINK: TGIOErrorEnum = 7;
  G_IO_ERROR_NOT_MOUNTABLE_FILE: TGIOErrorEnum = 8;
  G_IO_ERROR_FILENAME_TOO_LONG: TGIOErrorEnum = 9;
  G_IO_ERROR_INVALID_FILENAME: TGIOErrorEnum = 10;
  G_IO_ERROR_TOO_MANY_LINKS: TGIOErrorEnum = 11;
  G_IO_ERROR_NO_SPACE: TGIOErrorEnum = 12;
  G_IO_ERROR_INVALID_ARGUMENT: TGIOErrorEnum = 13;
  G_IO_ERROR_PERMISSION_DENIED: TGIOErrorEnum = 14;
  G_IO_ERROR_NOT_SUPPORTED: TGIOErrorEnum = 15;
  G_IO_ERROR_NOT_MOUNTED: TGIOErrorEnum = 16;
  G_IO_ERROR_ALREADY_MOUNTED: TGIOErrorEnum = 17;
  G_IO_ERROR_CLOSED: TGIOErrorEnum = 18;
  G_IO_ERROR_CANCELLED: TGIOErrorEnum = 19;
  G_IO_ERROR_PENDING: TGIOErrorEnum = 20;
  G_IO_ERROR_READ_ONLY: TGIOErrorEnum = 21;
  G_IO_ERROR_CANT_CREATE_BACKUP: TGIOErrorEnum = 22;
  G_IO_ERROR_WRONG_ETAG: TGIOErrorEnum = 23;
  G_IO_ERROR_TIMED_OUT: TGIOErrorEnum = 24;
  G_IO_ERROR_WOULD_RECURSE: TGIOErrorEnum = 25;
  G_IO_ERROR_BUSY: TGIOErrorEnum = 26;
  G_IO_ERROR_WOULD_BLOCK: TGIOErrorEnum = 27;
  G_IO_ERROR_HOST_NOT_FOUND: TGIOErrorEnum = 28;
  G_IO_ERROR_WOULD_MERGE: TGIOErrorEnum = 29;
  G_IO_ERROR_FAILED_HANDLED: TGIOErrorEnum = 30;
  G_IO_ERROR_TOO_MANY_OPEN_FILES: TGIOErrorEnum = 31;
  G_IO_ERROR_NOT_INITIALIZED: TGIOErrorEnum = 32;
  G_IO_ERROR_ADDRESS_IN_USE: TGIOErrorEnum = 33;
  G_IO_ERROR_PARTIAL_INPUT: TGIOErrorEnum = 34;
  G_IO_ERROR_INVALID_DATA: TGIOErrorEnum = 35;
  G_IO_ERROR_DBUS_ERROR: TGIOErrorEnum = 36;
  G_IO_ERROR_HOST_UNREACHABLE: TGIOErrorEnum = 37;
  G_IO_ERROR_NETWORK_UNREACHABLE: TGIOErrorEnum = 38;
  G_IO_ERROR_CONNECTION_REFUSED: TGIOErrorEnum = 39;
  G_IO_ERROR_PROXY_FAILED: TGIOErrorEnum = 40;
  G_IO_ERROR_PROXY_AUTH_FAILED: TGIOErrorEnum = 41;
  G_IO_ERROR_PROXY_NEED_AUTH: TGIOErrorEnum = 42;
  G_IO_ERROR_PROXY_NOT_ALLOWED: TGIOErrorEnum = 43;

type
  TGIOModuleScopeFlags = Integer;
const
  { GIOModuleScopeFlags }
  G_IO_MODULE_SCOPE_NONE: TGIOModuleScopeFlags = 0;
  G_IO_MODULE_SCOPE_BLOCK_DUPLICATES: TGIOModuleScopeFlags = 1;

type
  TGSocketFamily = Integer;
const
  { GSocketFamily }
  G_SOCKET_FAMILY_INVALID: TGSocketFamily = 0;
  G_SOCKET_FAMILY_UNIX: TGSocketFamily = 1;
  G_SOCKET_FAMILY_IPV4: TGSocketFamily = 2;
  G_SOCKET_FAMILY_IPV6: TGSocketFamily = 10;

type
  TGResolverError = Integer;
const
  { GResolverError }
  G_RESOLVER_ERROR_NOT_FOUND: TGResolverError = 0;
  G_RESOLVER_ERROR_TEMPORARY_FAILURE: TGResolverError = 1;
  G_RESOLVER_ERROR_INTERNAL: TGResolverError = 2;

  { GSettingsBindFlags }
  G_SETTINGS_BIND_DEFAULT = 0;
  G_SETTINGS_BIND_GET = 1;
  G_SETTINGS_BIND_SET = 2;
  G_SETTINGS_BIND_NO_SENSITIVITY = 4;
  G_SETTINGS_BIND_GET_NO_CHANGES = 8;
  G_SETTINGS_BIND_INVERT_BOOLEAN = 16;

type
  TGSocketType = Integer;
const
  { GSocketType }
  G_SOCKET_TYPE_INVALID: TGSocketType = 0;
  G_SOCKET_TYPE_STREAM: TGSocketType = 1;
  G_SOCKET_TYPE_DATAGRAM: TGSocketType = 2;
  G_SOCKET_TYPE_SEQPACKET: TGSocketType = 3;

type
  TGSocketProtocol = Integer;
const
  { GSocketProtocol }
  G_SOCKET_PROTOCOL_UNKNOWN: TGSocketProtocol = -1;
  G_SOCKET_PROTOCOL_DEFAULT: TGSocketProtocol = 0;
  G_SOCKET_PROTOCOL_TCP: TGSocketProtocol = 6;
  G_SOCKET_PROTOCOL_UDP: TGSocketProtocol = 17;
  G_SOCKET_PROTOCOL_SCTP: TGSocketProtocol = 132;

  { GTlsCertificateFlags }
  G_TLS_CERTIFICATE_UNKNOWN_CA = 1;
  G_TLS_CERTIFICATE_BAD_IDENTITY = 2;
  G_TLS_CERTIFICATE_NOT_ACTIVATED = 4;
  G_TLS_CERTIFICATE_EXPIRED = 8;
  G_TLS_CERTIFICATE_REVOKED = 16;
  G_TLS_CERTIFICATE_INSECURE = 32;
  G_TLS_CERTIFICATE_GENERIC_ERROR = 64;
  G_TLS_CERTIFICATE_VALIDATE_ALL = 127;

type
  TGSocketMsgFlags = Integer;
const
  { GSocketMsgFlags }
  G_SOCKET_MSG_NONE: TGSocketMsgFlags = 0;
  G_SOCKET_MSG_OOB: TGSocketMsgFlags = 1;
  G_SOCKET_MSG_PEEK: TGSocketMsgFlags = 2;
  G_SOCKET_MSG_DONTROUTE: TGSocketMsgFlags = 4;

type
  TGTlsAuthenticationMode = Integer;
const
  { GTlsAuthenticationMode }
  G_TLS_AUTHENTICATION_NONE: TGTlsAuthenticationMode = 0;
  G_TLS_AUTHENTICATION_REQUESTED: TGTlsAuthenticationMode = 1;
  G_TLS_AUTHENTICATION_REQUIRED: TGTlsAuthenticationMode = 2;

type
  TGTlsDatabaseLookupFlags = Integer;
const
  { GTlsDatabaseLookupFlags }
  G_TLS_DATABASE_LOOKUP_NONE: TGTlsDatabaseLookupFlags = 0;
  G_TLS_DATABASE_LOOKUP_KEYPAIR: TGTlsDatabaseLookupFlags = 1;

type
  TGTlsDatabaseVerifyFlags = Integer;
const
  { GTlsDatabaseVerifyFlags }
  G_TLS_DATABASE_VERIFY_NONE: TGTlsDatabaseVerifyFlags = 0;

type
  TGTlsRehandshakeMode = Integer;
const
  { GTlsRehandshakeMode }
  G_TLS_REHANDSHAKE_NEVER: TGTlsRehandshakeMode = 0;
  G_TLS_REHANDSHAKE_SAFELY: TGTlsRehandshakeMode = 1;
  G_TLS_REHANDSHAKE_UNSAFELY: TGTlsRehandshakeMode = 2;

type
  TGTlsError = Integer;
const
  { GTlsError }
  G_TLS_ERROR_UNAVAILABLE: TGTlsError = 0;
  G_TLS_ERROR_MISC: TGTlsError = 1;
  G_TLS_ERROR_BAD_CERTIFICATE: TGTlsError = 2;
  G_TLS_ERROR_NOT_TLS: TGTlsError = 3;
  G_TLS_ERROR_HANDSHAKE: TGTlsError = 4;
  G_TLS_ERROR_CERTIFICATE_REQUIRED: TGTlsError = 5;
  G_TLS_ERROR_EOF: TGTlsError = 6;

type
  TGTlsInteractionResult = Integer;
const
  { GTlsInteractionResult }
  G_TLS_INTERACTION_UNHANDLED: TGTlsInteractionResult = 0;
  G_TLS_INTERACTION_HANDLED: TGTlsInteractionResult = 1;
  G_TLS_INTERACTION_FAILED: TGTlsInteractionResult = 2;

  { GTlsPasswordFlags }
  G_TLS_PASSWORD_NONE = 0;
  G_TLS_PASSWORD_RETRY = 2;
  G_TLS_PASSWORD_MANY_TRIES = 4;
  G_TLS_PASSWORD_FINAL_TRY = 8;

type
  TGUnixSocketAddressType = Integer;
const
  { GUnixSocketAddressType }
  G_UNIX_SOCKET_ADDRESS_INVALID: TGUnixSocketAddressType = 0;
  G_UNIX_SOCKET_ADDRESS_ANONYMOUS: TGUnixSocketAddressType = 1;
  G_UNIX_SOCKET_ADDRESS_PATH: TGUnixSocketAddressType = 2;
  G_UNIX_SOCKET_ADDRESS_ABSTRACT: TGUnixSocketAddressType = 3;
  G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED: TGUnixSocketAddressType = 4;

type
  TGZlibCompressorFormat = Integer;
const
  { GZlibCompressorFormat }
  G_ZLIB_COMPRESSOR_FORMAT_ZLIB: TGZlibCompressorFormat = 0;
  G_ZLIB_COMPRESSOR_FORMAT_GZIP: TGZlibCompressorFormat = 1;
  G_ZLIB_COMPRESSOR_FORMAT_RAW: TGZlibCompressorFormat = 2;
type

  PPGAction = ^PGAction;
  PGAction = ^TGAction;
  TGAction = object
    procedure activate(parameter: PGVariant); cdecl; inline;
    procedure change_state(value: PGVariant); cdecl; inline;
    function get_enabled: gboolean; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_parameter_type: PGVariantType; cdecl; inline;
    function get_state: PGVariant; cdecl; inline;
    function get_state_hint: PGVariant; cdecl; inline;
    function get_state_type: PGVariantType; cdecl; inline;
    property enabled:  gboolean read get_enabled ;
    property name:  Pgchar read get_name ;
    property parameter_type:  PGVariantType read get_parameter_type ;
    property state:  PGVariant read get_state ;
    property state_type:  PGVariantType read get_state_type ;
  end;

  PPGSimpleAction = ^PGSimpleAction;
  PGSimpleAction = ^TGSimpleAction;
  TGSimpleAction = object(TGObject)
    function new(name: Pgchar; parameter_type: PGVariantType): PGSimpleAction; cdecl; inline; static;
    function new_stateful(name: Pgchar; parameter_type: PGVariantType; state: PGVariant): PGSimpleAction; cdecl; inline; static;
    procedure set_enabled(enabled: gboolean); cdecl; inline;
    procedure set_state(value: PGVariant); cdecl; inline;
    //property enabled: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_enabled ;
    //property name: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_name ;
    //property parameter_type: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_parameter_type ;
    //property state: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_state ;
    //property state_type: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_state_type ;
  end;

  PPGActionEntry = ^PGActionEntry;
  PGActionEntry = ^TGActionEntry;

  TGActionEntry = record
    name: Pgchar;
    activate: procedure(action: PGSimpleAction; parameter: PGVariant; user_data: gpointer); cdecl;
    parameter_type: Pgchar;
    state: Pgchar;
    change_state: procedure(action: PGSimpleAction; value: PGVariant; user_data: gpointer); cdecl;
    padding: array [0..2] of gsize;
  end;



  PPGActionGroup = ^PGActionGroup;
  PGActionGroup = ^TGActionGroup;
  TGActionGroup = object
    action_added1: procedure(action_name: gchar); cdecl;
    action_enabled_changed1: procedure(action_name: gchar; enabled: gboolean); cdecl;
    action_removed1: procedure(action_name: gchar); cdecl;
    action_state_changed1: procedure(action_name: gchar; value: TGVariant); cdecl;
    procedure action_added(action_name: Pgchar); cdecl; inline;
    procedure action_enabled_changed(action_name: Pgchar; enabled: gboolean); cdecl; inline;
    procedure action_removed(action_name: Pgchar); cdecl; inline;
    procedure action_state_changed(action_name: Pgchar; state: PGVariant); cdecl; inline;
    procedure activate_action(action_name: Pgchar; parameter: PGVariant); cdecl; inline;
    procedure change_action_state(action_name: Pgchar; value: PGVariant); cdecl; inline;
    function get_action_enabled(action_name: Pgchar): gboolean; cdecl; inline;
    function get_action_parameter_type(action_name: Pgchar): PGVariantType; cdecl; inline;
    function get_action_state(action_name: Pgchar): PGVariant; cdecl; inline;
    function get_action_state_hint(action_name: Pgchar): PGVariant; cdecl; inline;
    function get_action_state_type(action_name: Pgchar): PGVariantType; cdecl; inline;
    function has_action(action_name: Pgchar): gboolean; cdecl; inline;
    function list_actions: PPgchar; cdecl; inline;
  end;

  PPGActionGroupInterface = ^PGActionGroupInterface;
  PGActionGroupInterface = ^TGActionGroupInterface;
  TGActionGroupInterface = object
    g_iface: TGTypeInterface;
    has_action: function(action_group: PGActionGroup; action_name: Pgchar): gboolean; cdecl;
    list_actions: function(action_group: PGActionGroup): PPgchar; cdecl;
    get_action_enabled: function(action_group: PGActionGroup; action_name: Pgchar): gboolean; cdecl;
    get_action_parameter_type: function(action_group: PGActionGroup; action_name: Pgchar): PGVariantType; cdecl;
    get_action_state_type: function(action_group: PGActionGroup; action_name: Pgchar): PGVariantType; cdecl;
    get_action_state_hint: function(action_group: PGActionGroup; action_name: Pgchar): PGVariant; cdecl;
    get_action_state: function(action_group: PGActionGroup; action_name: Pgchar): PGVariant; cdecl;
    change_action_state: procedure(action_group: PGActionGroup; action_name: Pgchar; value: PGVariant); cdecl;
    activate_action: procedure(action_group: PGActionGroup; action_name: Pgchar; parameter: PGVariant); cdecl;
    action_added: procedure(action_group: PGActionGroup; action_name: Pgchar); cdecl;
    action_removed: procedure(action_group: PGActionGroup; action_name: Pgchar); cdecl;
    action_enabled_changed: procedure(action_group: PGActionGroup; action_name: Pgchar; enabled: gboolean); cdecl;
    action_state_changed: procedure(action_group: PGActionGroup; action_name: Pgchar; state: PGVariant); cdecl;
  end;

  PPGActionInterface = ^PGActionInterface;
  PGActionInterface = ^TGActionInterface;
  TGActionInterface = object
    g_iface: TGTypeInterface;
    get_name: function(action: PGAction): Pgchar; cdecl;
    get_parameter_type: function(action: PGAction): PGVariantType; cdecl;
    get_state_type: function(action: PGAction): PGVariantType; cdecl;
    get_state_hint: function(action: PGAction): PGVariant; cdecl;
    get_enabled: function(action: PGAction): gboolean; cdecl;
    get_state: function(action: PGAction): PGVariant; cdecl;
    change_state: procedure(action: PGAction; value: PGVariant); cdecl;
    activate: procedure(action: PGAction; parameter: PGVariant); cdecl;
  end;

  PPGAppInfo = ^PGAppInfo;
  PGAppInfo = ^TGAppInfo;

  PPGAppInfoCreateFlags = ^PGAppInfoCreateFlags;
  PGAppInfoCreateFlags = ^TGAppInfoCreateFlags;
  TGAppInfoCreateFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property needs_terminal: DWord index 1 read GetBit write SetBit;
    property supports_uris: DWord index 2 read GetBit write SetBit;
    property supports_startup_notification: DWord index 4 read GetBit write SetBit;
  end;


  PPGAppLaunchContext = ^PGAppLaunchContext;
  PGAppLaunchContext = ^TGAppLaunchContext;

  PPGIcon = ^PGIcon;
  PGIcon = ^TGIcon;
  TGAppInfo = object
    function create_from_commandline(commandline: Pgchar; application_name: Pgchar; flags: TGAppInfoCreateFlags): PGAppInfo; cdecl; inline; static;
    function get_all: PGList; cdecl; inline; static;
    function get_all_for_type(content_type: Pgchar): PGList; cdecl; inline; static;
    function get_default_for_type(content_type: Pgchar; must_support_uris: gboolean): PGAppInfo; cdecl; inline; static;
    function get_default_for_uri_scheme(uri_scheme: Pgchar): PGAppInfo; cdecl; inline; static;
    function get_fallback_for_type(content_type: Pgchar): PGList; cdecl; inline; static;
    function get_recommended_for_type(content_type: Pgchar): PGList; cdecl; inline; static;
    function launch_default_for_uri(uri: Pgchar; launch_context: PGAppLaunchContext): gboolean; cdecl; inline; static;
    procedure reset_type_associations(content_type: Pgchar); cdecl; inline; static;
    function add_supports_type(content_type: Pgchar): gboolean; cdecl; inline;
    function can_delete: gboolean; cdecl; inline;
    function can_remove_supports_type: gboolean; cdecl; inline;
    function delete: gboolean; cdecl; inline;
    function dup: PGAppInfo; cdecl; inline;
    function equal(appinfo2: PGAppInfo): gboolean; cdecl; inline;
    function get_commandline: Pgchar; cdecl; inline;
    function get_description: Pgchar; cdecl; inline;
    function get_display_name: Pgchar; cdecl; inline;
    function get_executable: Pgchar; cdecl; inline;
    function get_icon: PGIcon; cdecl; inline;
    function get_id: Pgchar; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function launch(files: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl; inline;
    function launch_uris(uris: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl; inline;
    function remove_supports_type(content_type: Pgchar): gboolean; cdecl; inline;
    function set_as_default_for_extension(extension: Pgchar): gboolean; cdecl; inline;
    function set_as_default_for_type(content_type: Pgchar): gboolean; cdecl; inline;
    function set_as_last_used_for_type(content_type: Pgchar): gboolean; cdecl; inline;
    function should_show: gboolean; cdecl; inline;
    function supports_files: gboolean; cdecl; inline;
    function supports_uris: gboolean; cdecl; inline;
  end;

  PPGAppLaunchContextPrivate = ^PGAppLaunchContextPrivate;
  PGAppLaunchContextPrivate = ^TGAppLaunchContextPrivate;
  TGAppLaunchContext = object(TGObject)
    priv: PGAppLaunchContextPrivate;
    function new: PGAppLaunchContext; cdecl; inline; static;
    function get_display(info: PGAppInfo; files: PGList): Pgchar; cdecl; inline;
    function get_startup_notify_id(info: PGAppInfo; files: PGList): Pgchar; cdecl; inline;
    procedure launch_failed(startup_notify_id: Pgchar); cdecl; inline;
  end;
  TGIcon = object
    function hash(icon: gpointer): guint; cdecl; inline; static;
    function new_for_string(str: Pgchar): PGIcon; cdecl; inline; static;
    function equal(icon2: PGIcon): gboolean; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
  end;

  PPGAppInfoIface = ^PGAppInfoIface;
  PGAppInfoIface = ^TGAppInfoIface;
  TGAppInfoIface = object
    g_iface: TGTypeInterface;
    dup: function(appinfo: PGAppInfo): PGAppInfo; cdecl;
    equal: function(appinfo1: PGAppInfo; appinfo2: PGAppInfo): gboolean; cdecl;
    get_id: function(appinfo: PGAppInfo): Pgchar; cdecl;
    get_name: function(appinfo: PGAppInfo): Pgchar; cdecl;
    get_description: function(appinfo: PGAppInfo): Pgchar; cdecl;
    get_executable: function(appinfo: PGAppInfo): Pgchar; cdecl;
    get_icon: function(appinfo: PGAppInfo): PGIcon; cdecl;
    launch: function(appinfo: PGAppInfo; files: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl;
    supports_uris: function(appinfo: PGAppInfo): gboolean; cdecl;
    supports_files: function(appinfo: PGAppInfo): gboolean; cdecl;
    launch_uris: function(appinfo: PGAppInfo; uris: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl;
    should_show: function(appinfo: PGAppInfo): gboolean; cdecl;
    set_as_default_for_type: function(appinfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl;
    set_as_default_for_extension: function(appinfo: PGAppInfo; extension: Pgchar): gboolean; cdecl;
    add_supports_type: function(appinfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl;
    can_remove_supports_type: function(appinfo: PGAppInfo): gboolean; cdecl;
    remove_supports_type: function(appinfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl;
    can_delete: function(appinfo: PGAppInfo): gboolean; cdecl;
    do_delete: function(appinfo: PGAppInfo): gboolean; cdecl;
    get_commandline: function(appinfo: PGAppInfo): Pgchar; cdecl;
    get_display_name: function(appinfo: PGAppInfo): Pgchar; cdecl;
    set_as_last_used_for_type: function(appinfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl;
  end;

  TGAppLaunchContextPrivate = record
    Unknown: Pointer;
  end;



  PPGAppLaunchContextClass = ^PGAppLaunchContextClass;
  PGAppLaunchContextClass = ^TGAppLaunchContextClass;
  TGAppLaunchContextClass = object
    parent_class: TGObjectClass;
    get_display: function(context: PGAppLaunchContext; info: PGAppInfo; files: PGList): Pgchar; cdecl;
    get_startup_notify_id: function(context: PGAppLaunchContext; info: PGAppInfo; files: PGList): Pgchar; cdecl;
    launch_failed: procedure(context: PGAppLaunchContext; startup_notify_id: Pgchar); cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGApplication = ^PGApplication;
  PGApplication = ^TGApplication;

  PPGApplicationFlags = ^PGApplicationFlags;
  PGApplicationFlags = ^TGApplicationFlags;
  TGApplicationFlags = packed object(TBitObject32)
  public
    property flags_none: DWord index 0 read GetBit write SetBit;
    property is_service: DWord index 1 read GetBit write SetBit;
    property is_launcher: DWord index 2 read GetBit write SetBit;
    property handles_open: DWord index 4 read GetBit write SetBit;
    property handles_command_line: DWord index 8 read GetBit write SetBit;
    property send_environment: DWord index 16 read GetBit write SetBit;
    property non_unique: DWord index 32 read GetBit write SetBit;
  end;


  PPGFile = ^PGFile;
  PGFile = ^TGFile;

  PPGCancellable = ^PGCancellable;
  PGCancellable = ^TGCancellable;

  PPGApplicationPrivate = ^PGApplicationPrivate;
  PGApplicationPrivate = ^TGApplicationPrivate;
  TGApplication = object(TGObject)
    priv: PGApplicationPrivate;
    function new(application_id: Pgchar; flags: TGApplicationFlags): PGApplication; cdecl; inline; static;
    function id_is_valid(application_id: Pgchar): gboolean; cdecl; inline; static;
    procedure activate; cdecl; inline;
    function get_application_id: Pgchar; cdecl; inline;
    function get_flags: TGApplicationFlags; cdecl; inline;
    function get_inactivity_timeout: guint; cdecl; inline;
    function get_is_registered: gboolean; cdecl; inline;
    function get_is_remote: gboolean; cdecl; inline;
    procedure hold; cdecl; inline;
    procedure open(files: PPGFile; n_files: gint; hint: Pgchar); cdecl; inline;
    function register(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure release; cdecl; inline;
    function run(argc: gint; argv: PPgchar): gint; cdecl; inline;
    procedure set_action_group(action_group: PGActionGroup); cdecl; inline;
    procedure set_application_id(application_id: Pgchar); cdecl; inline;
    procedure set_flags(flags: TGApplicationFlags); cdecl; inline;
    procedure set_inactivity_timeout(inactivity_timeout: guint); cdecl; inline;
    //property action_group: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_action_group  { property is writeable but setter not declared } ;
    property application_id:  Pgchar read get_application_id  { property is writeable but setter not declared } ;
    property flags:  TGApplicationFlags read get_flags  { property is writeable but setter not declared } ;
    property inactivity_timeout:  guint read get_inactivity_timeout  { property is writeable but setter not declared } ;
    property is_registered:  gboolean read get_is_registered ;
    property is_remote:  gboolean read get_is_remote ;
  end;

  PPGApplicationCommandLine = ^PGApplicationCommandLine;
  PGApplicationCommandLine = ^TGApplicationCommandLine;

  PPGApplicationCommandLinePrivate = ^PGApplicationCommandLinePrivate;
  PGApplicationCommandLinePrivate = ^TGApplicationCommandLinePrivate;
  TGApplicationCommandLine = object(TGObject)
    priv: PGApplicationCommandLinePrivate;
    function get_arguments(argc: Pgint): PPgchar; cdecl; inline;
    function get_cwd: Pgchar; cdecl; inline;
    function get_environ: PPgchar; cdecl; inline;
    function get_exit_status: gint; cdecl; inline;
    function get_is_remote: gboolean; cdecl; inline;
    function get_platform_data: PGVariant; cdecl; inline;
    function getenv(name: Pgchar): Pgchar; cdecl; inline;
    //procedure print(format: Pgchar; args: array of const); cdecl; inline;
    //procedure printerr(format: Pgchar; args: array of const); cdecl; inline;
    procedure set_exit_status(exit_status: gint); cdecl; inline;
    //property arguments: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_arguments  { property is writeable but setter not declared } ;
    property is_remote:  gboolean read get_is_remote ;
    property platform_data:  PGVariant read get_platform_data  { property is writeable but setter not declared } ;
  end;

  PPGFileOutputStream = ^PGFileOutputStream;
  PGFileOutputStream = ^TGFileOutputStream;

  PPGFileCreateFlags = ^PGFileCreateFlags;
  PGFileCreateFlags = ^TGFileCreateFlags;
  TGFileCreateFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property private_: DWord index 1 read GetBit write SetBit;
    property replace_destination: DWord index 2 read GetBit write SetBit;
  end;


  PPGAsyncReadyCallback = ^PGAsyncReadyCallback;
  PGAsyncReadyCallback = ^TGAsyncReadyCallback;

  PPGAsyncResult = ^PGAsyncResult;
  PGAsyncResult = ^TGAsyncResult;
  TGAsyncReadyCallback = procedure(source_object: PGObject; res: PGAsyncResult; user_data: gpointer); cdecl;

  PPGFileCopyFlags = ^PGFileCopyFlags;
  PGFileCopyFlags = ^TGFileCopyFlags;
  TGFileCopyFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property overwrite: DWord index 1 read GetBit write SetBit;
    property backup: DWord index 2 read GetBit write SetBit;
    property nofollow_symlinks: DWord index 4 read GetBit write SetBit;
    property all_metadata: DWord index 8 read GetBit write SetBit;
    property no_fallback_for_move: DWord index 16 read GetBit write SetBit;
    property target_default_perms: DWord index 32 read GetBit write SetBit;
  end;


  PPGFileProgressCallback = ^PGFileProgressCallback;
  PGFileProgressCallback = ^TGFileProgressCallback;
  TGFileProgressCallback = procedure(current_num_bytes: gint64; total_num_bytes: gint64; user_data: gpointer); cdecl;

  PPGFileIOStream = ^PGFileIOStream;
  PGFileIOStream = ^TGFileIOStream;

  PPGMountUnmountFlags = ^PGMountUnmountFlags;
  PGMountUnmountFlags = ^TGMountUnmountFlags;
  TGMountUnmountFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property force: DWord index 1 read GetBit write SetBit;
  end;


  PPGMountOperation = ^PGMountOperation;
  PGMountOperation = ^TGMountOperation;

  PPGFileEnumerator = ^PGFileEnumerator;
  PGFileEnumerator = ^TGFileEnumerator;

  PPGFileQueryInfoFlags = ^PGFileQueryInfoFlags;
  PGFileQueryInfoFlags = ^TGFileQueryInfoFlags;
  TGFileQueryInfoFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property nofollow_symlinks: DWord index 1 read GetBit write SetBit;
  end;


  PPGMount = ^PGMount;
  PGMount = ^TGMount;

  PPGFileReadMoreCallback = ^PGFileReadMoreCallback;
  PGFileReadMoreCallback = ^TGFileReadMoreCallback;
  TGFileReadMoreCallback = function(file_contents: Pgchar; file_size: gint64; callback_data: gpointer): gboolean; cdecl;

  PPGFileMonitor = ^PGFileMonitor;
  PGFileMonitor = ^TGFileMonitor;

  PPGFileMonitorFlags = ^PGFileMonitorFlags;
  PGFileMonitorFlags = ^TGFileMonitorFlags;
  TGFileMonitorFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property watch_mounts: DWord index 1 read GetBit write SetBit;
    property send_moved: DWord index 2 read GetBit write SetBit;
  end;


  PPGMountMountFlags = ^PGMountMountFlags;
  PGMountMountFlags = ^TGMountMountFlags;

  PPGFileType = ^PGFileType;
  PGFileType = ^TGFileType;

  PPGFileInfo = ^PGFileInfo;
  PGFileInfo = ^TGFileInfo;

  PPGFileAttributeInfoList = ^PGFileAttributeInfoList;
  PGFileAttributeInfoList = ^TGFileAttributeInfoList;

  PPGFileInputStream = ^PGFileInputStream;
  PGFileInputStream = ^TGFileInputStream;

  PPGFileAttributeType = ^PGFileAttributeType;
  PGFileAttributeType = ^TGFileAttributeType;

  PPGDriveStartFlags = ^PGDriveStartFlags;
  PGDriveStartFlags = ^TGDriveStartFlags;
  TGFile = object
    function hash(file_: gpointer): guint; cdecl; inline; static;
    function new_for_commandline_arg(arg: Pgchar): PGFile; cdecl; inline; static;
    function new_for_path(path: Pgchar): PGFile; cdecl; inline; static;
    function new_for_uri(uri: Pgchar): PGFile; cdecl; inline; static;
    function parse_name(parse_name: Pgchar): PGFile; cdecl; inline; static;
    function append_to(flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl; inline;
    procedure append_to_async(flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function append_to_finish(res: PGAsyncResult): PGFileOutputStream; cdecl; inline;
    function copy(destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl; inline;
    procedure copy_async(destination: PGFile; flags: TGFileCopyFlags; io_priority: gint; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function copy_attributes(destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function copy_finish(res: PGAsyncResult): gboolean; cdecl; inline;
    function create(flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl; inline;
    procedure create_async(flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function create_finish(res: PGAsyncResult): PGFileOutputStream; cdecl; inline;
    function create_readwrite(flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl; inline;
    procedure create_readwrite_async(flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function create_readwrite_finish(res: PGAsyncResult): PGFileIOStream; cdecl; inline;
    function delete(cancellable: PGCancellable): gboolean; cdecl; inline;
    function dup: PGFile; cdecl; inline;
    
    
    procedure eject_mountable_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function eject_mountable_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function enumerate_children(attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileEnumerator; cdecl; inline;
    procedure enumerate_children_async(attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function enumerate_children_finish(res: PGAsyncResult): PGFileEnumerator; cdecl; inline;
    function equal(file2: PGFile): gboolean; cdecl; inline;
    function find_enclosing_mount(cancellable: PGCancellable): PGMount; cdecl; inline;
    procedure find_enclosing_mount_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function find_enclosing_mount_finish(res: PGAsyncResult): PGMount; cdecl; inline;
    function get_basename: Pgchar; cdecl; inline;
    function get_child(name: Pgchar): PGFile; cdecl; inline;
    function get_child_for_display_name(display_name: Pgchar): PGFile; cdecl; inline;
    function get_parent: PGFile; cdecl; inline;
    function get_parse_name: Pgchar; cdecl; inline;
    function get_path: Pgchar; cdecl; inline;
    function get_relative_path(descendant: PGFile): Pgchar; cdecl; inline;
    function get_uri: Pgchar; cdecl; inline;
    function get_uri_scheme: Pgchar; cdecl; inline;
    function has_parent(parent: PGFile): gboolean; cdecl; inline;
    function has_prefix(prefix: PGFile): gboolean; cdecl; inline;
    function has_uri_scheme(uri_scheme: Pgchar): gboolean; cdecl; inline;
    function icon_new: PGIcon; cdecl; inline;
    function is_native: gboolean; cdecl; inline;
    function load_contents(cancellable: PGCancellable; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl; inline;
    procedure load_contents_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function load_contents_finish(res: PGAsyncResult; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl; inline;
    procedure load_partial_contents_async(cancellable: PGCancellable; read_more_callback: TGFileReadMoreCallback; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function load_partial_contents_finish(res: PGAsyncResult; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl; inline;
    function make_directory(cancellable: PGCancellable): gboolean; cdecl; inline;
    function make_directory_with_parents(cancellable: PGCancellable): gboolean; cdecl; inline;
    function make_symbolic_link(symlink_value: Pgchar; cancellable: PGCancellable): gboolean; cdecl; inline;
    function monitor(flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl; inline;
    function monitor_directory(flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl; inline;
    function monitor_file(flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl; inline;
    procedure mount_enclosing_volume(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function mount_enclosing_volume_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    procedure mount_mountable(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function mount_mountable_finish(result_: PGAsyncResult): PGFile; cdecl; inline;
    function move(destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl; inline;
    function open_readwrite(cancellable: PGCancellable): PGFileIOStream; cdecl; inline;
    procedure open_readwrite_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function open_readwrite_finish(res: PGAsyncResult): PGFileIOStream; cdecl; inline;
    procedure poll_mountable(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function poll_mountable_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function query_default_handler(cancellable: PGCancellable): PGAppInfo; cdecl; inline;
    function query_exists(cancellable: PGCancellable): gboolean; cdecl; inline;
    function query_file_type(flags: TGFileQueryInfoFlags; cancellable: PGCancellable): TGFileType; cdecl; inline;
    function query_filesystem_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; inline;
    procedure query_filesystem_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function query_filesystem_info_finish(res: PGAsyncResult): PGFileInfo; cdecl; inline;
    function query_info(attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileInfo; cdecl; inline;
    procedure query_info_async(attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function query_info_finish(res: PGAsyncResult): PGFileInfo; cdecl; inline;
    function query_settable_attributes(cancellable: PGCancellable): PGFileAttributeInfoList; cdecl; inline;
    function query_writable_namespaces(cancellable: PGCancellable): PGFileAttributeInfoList; cdecl; inline;
    function read(cancellable: PGCancellable): PGFileInputStream; cdecl; inline;
    procedure read_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function read_finish(res: PGAsyncResult): PGFileInputStream; cdecl; inline;
    function replace(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl; inline;
    procedure replace_async(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function replace_contents(contents: Pguint8; length: gsize; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; new_etag: PPgchar; cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure replace_contents_async(contents: Pguint8; length: gsize; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function replace_contents_finish(res: PGAsyncResult; new_etag: PPgchar): gboolean; cdecl; inline;
    function replace_finish(res: PGAsyncResult): PGFileOutputStream; cdecl; inline;
    function replace_readwrite(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl; inline;
    procedure replace_readwrite_async(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function replace_readwrite_finish(res: PGAsyncResult): PGFileIOStream; cdecl; inline;
    function resolve_relative_path(relative_path: Pgchar): PGFile; cdecl; inline;
    function set_attribute(attribute: Pgchar; type_: TGFileAttributeType; value_p: gpointer; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function set_attribute_byte_string(attribute: Pgchar; value: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function set_attribute_int32(attribute: Pgchar; value: gint32; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function set_attribute_int64(attribute: Pgchar; value: gint64; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function set_attribute_string(attribute: Pgchar; value: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function set_attribute_uint32(attribute: Pgchar; value: guint32; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function set_attribute_uint64(attribute: Pgchar; value: guint64; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure set_attributes_async(info: PGFileInfo; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function set_attributes_finish(result_: PGAsyncResult; info: PPGFileInfo): gboolean; cdecl; inline;
    function set_attributes_from_info(info: PGFileInfo; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; inline;
    function set_display_name(display_name: Pgchar; cancellable: PGCancellable): PGFile; cdecl; inline;
    procedure set_display_name_async(display_name: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function set_display_name_finish(res: PGAsyncResult): PGFile; cdecl; inline;
    procedure start_mountable(flags: TGDriveStartFlags; start_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function start_mountable_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    procedure stop_mountable(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function stop_mountable_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function supports_thread_contexts: gboolean; cdecl; inline;
    function trash(cancellable: PGCancellable): gboolean; cdecl; inline;
    
    
    procedure unmount_mountable_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function unmount_mountable_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
  end;

  PPGCancellablePrivate = ^PGCancellablePrivate;
  PGCancellablePrivate = ^TGCancellablePrivate;
  TGCancellable = object(TGObject)
    priv: PGCancellablePrivate;
    function new: PGCancellable; cdecl; inline; static;
    function get_current: PGCancellable; cdecl; inline; static;
    procedure cancel; cdecl; inline;
    function connect(callback: TGCallback; data: gpointer; data_destroy_func: TGDestroyNotify): gulong; cdecl; inline;
    procedure disconnect(handler_id: gulong); cdecl; inline;
    function get_fd: gint; cdecl; inline;
    function is_cancelled: gboolean; cdecl; inline;
    function make_pollfd(pollfd: PGPollFD): gboolean; cdecl; inline;
    procedure pop_current; cdecl; inline;
    procedure push_current; cdecl; inline;
    procedure release_fd; cdecl; inline;
    procedure reset; cdecl; inline;
    function set_error_if_cancelled: gboolean; cdecl; inline;
    function source_new: PGSource; cdecl; inline;
  end;

  TGApplicationPrivate = record
    Unknown: Pointer;
  end;



  PPGApplicationClass = ^PGApplicationClass;
  PGApplicationClass = ^TGApplicationClass;
  TGApplicationClass = object
    parent_class: TGObjectClass;
    startup: procedure(application: PGApplication); cdecl;
    activate: procedure(application: PGApplication); cdecl;
    open: procedure(application: PGApplication; files: PPGFile; n_files: gint; hint: Pgchar); cdecl;
    command_line: function(application: PGApplication; command_line: PGApplicationCommandLine): gint; cdecl;
    local_command_line: function(application: PGApplication; arguments: PPPgchar; exit_status: Pgint): gboolean; cdecl;
    before_emit: procedure(application: PGApplication; platform_data: PGVariant); cdecl;
    after_emit: procedure(application: PGApplication; platform_data: PGVariant); cdecl;
    add_platform_data: procedure(application: PGApplication; builder: PGVariantBuilder); cdecl;
    quit_mainloop: procedure(application: PGApplication); cdecl;
    run_mainloop: procedure(application: PGApplication); cdecl;
    padding: array [0..11] of gpointer;
  end;

  TGApplicationCommandLinePrivate = record
    Unknown: Pointer;
  end;



  PPGApplicationCommandLineClass = ^PGApplicationCommandLineClass;
  PGApplicationCommandLineClass = ^TGApplicationCommandLineClass;
  TGApplicationCommandLineClass = object
    parent_class: TGObjectClass;
    print_literal: procedure(cmdline: PGApplicationCommandLine; message: Pgchar); cdecl;
    printerr_literal: procedure(cmdline: PGApplicationCommandLine; message: Pgchar); cdecl;
    padding: array [0..11] of gpointer;
  end;
  TGAskPasswordFlags = packed object(TBitObject32)
  public
    property need_password: DWord index 1 read GetBit write SetBit;
    property need_username: DWord index 2 read GetBit write SetBit;
    property need_domain: DWord index 4 read GetBit write SetBit;
    property saving_supported: DWord index 8 read GetBit write SetBit;
    property anonymous_supported: DWord index 16 read GetBit write SetBit;
  end;

  TGAsyncResult = object
    function get_source_object: PGObject; cdecl; inline;
    function get_user_data: gpointer; cdecl; inline;
  end;

  PPGAsyncInitable = ^PGAsyncInitable;
  PGAsyncInitable = ^TGAsyncInitable;
  TGAsyncInitable = object
    //procedure new_async(object_type: TGType; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer; first_property_name: Pgchar; args: array of const); cdecl; inline; static;
    //procedure new_valist_async(object_type: TGType; first_property_name: Pgchar; var_args: Tva_list; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    procedure newv_async(object_type: TGType; n_parameters: guint; parameters: PGParameter; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    procedure init_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function init_finish(res: PGAsyncResult): gboolean; cdecl; inline;
    function new_finish(res: PGAsyncResult): PGObject; cdecl; inline;
  end;

  PPGAsyncInitableIface = ^PGAsyncInitableIface;
  PGAsyncInitableIface = ^TGAsyncInitableIface;
  TGAsyncInitableIface = object
    g_iface: TGTypeInterface;
    init_async: procedure(initable: PGAsyncInitable; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    init_finish: function(initable: PGAsyncInitable; res: PGAsyncResult): gboolean; cdecl;
  end;

  PPGAsyncResultIface = ^PGAsyncResultIface;
  PGAsyncResultIface = ^TGAsyncResultIface;
  TGAsyncResultIface = object
    g_iface: TGTypeInterface;
    get_user_data: function(res: PGAsyncResult): gpointer; cdecl;
    get_source_object: function(res: PGAsyncResult): PGObject; cdecl;
  end;

  PPGInputStream = ^PGInputStream;
  PGInputStream = ^TGInputStream;

  PPGInputStreamPrivate = ^PGInputStreamPrivate;
  PGInputStreamPrivate = ^TGInputStreamPrivate;
  TGInputStream = object(TGObject)
    priv: PGInputStreamPrivate;
    procedure clear_pending; cdecl; inline;
    function close(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function close_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function has_pending: gboolean; cdecl; inline;
    function is_closed: gboolean; cdecl; inline;
    function read(buffer: Pgpointer; count: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
    function read_all(buffer: Pgpointer; count: gsize; bytes_read: Pgsize; cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure read_async(buffer: Pgpointer; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function read_finish(result_: PGAsyncResult): gssize; cdecl; inline;
    function set_pending: gboolean; cdecl; inline;
    function skip(count: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
    procedure skip_async(count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function skip_finish(result_: PGAsyncResult): gssize; cdecl; inline;
  end;

  PPGFilterInputStream = ^PGFilterInputStream;
  PGFilterInputStream = ^TGFilterInputStream;
  TGFilterInputStream = object(TGInputStream)
    function get_base_stream: PGInputStream; cdecl; inline;
    function get_close_base_stream: gboolean; cdecl; inline;
    procedure set_close_base_stream(close_base: gboolean); cdecl; inline;
    property base_stream:  PGInputStream read get_base_stream  { property is writeable but setter not declared } ;
    property close_base_stream:  gboolean read get_close_base_stream  { property is writeable but setter not declared } ;
  end;

  PPGBufferedInputStreamPrivate = ^PGBufferedInputStreamPrivate;
  PGBufferedInputStreamPrivate = ^TGBufferedInputStreamPrivate;

  TGBufferedInputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGBufferedInputStream = ^PGBufferedInputStream;
  PGBufferedInputStream = ^TGBufferedInputStream;
  TGBufferedInputStream = object(TGFilterInputStream)
    priv1: PGBufferedInputStreamPrivate;
    function new(base_stream: PGInputStream): PGBufferedInputStream; cdecl; inline; static;
    function new_sized(base_stream: PGInputStream; size: gsize): PGBufferedInputStream; cdecl; inline; static;
    function fill(count: gssize; cancellable: PGCancellable): gssize; cdecl; inline;
    procedure fill_async(count: gssize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function fill_finish(result_: PGAsyncResult): gssize; cdecl; inline;
    function get_available: gsize; cdecl; inline;
    function get_buffer_size: gsize; cdecl; inline;
    function peek(buffer: Pgpointer; offset: gsize; count: gsize): gsize; cdecl; inline;
    function peek_buffer(count: Pgsize): Pguint8; cdecl; inline;
    function read_byte(cancellable: PGCancellable): gint; cdecl; inline;
    procedure set_buffer_size(size: gsize); cdecl; inline;
    property buffer_size:  gsize read get_buffer_size  { property is writeable but setter not declared } ;
  end;

  PPGFilterInputStreamClass = ^PGFilterInputStreamClass;
  PGFilterInputStreamClass = ^TGFilterInputStreamClass;

  PPGInputStreamClass = ^PGInputStreamClass;
  PGInputStreamClass = ^TGInputStreamClass;
  TGInputStreamClass = object
    parent_class: TGObjectClass;
    read_fn: function(stream: PGInputStream; buffer: Pgpointer; count: gsize; cancellable: PGCancellable): gssize; cdecl;
    skip: function(stream: PGInputStream; count: gsize; cancellable: PGCancellable): gssize; cdecl;
    close_fn: function(stream: PGInputStream; cancellable: PGCancellable): gboolean; cdecl;
    read_async: procedure(stream: PGInputStream; buffer: Pgpointer; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    read_finish: function(stream: PGInputStream; result_: PGAsyncResult): gssize; cdecl;
    skip_async: procedure(stream: PGInputStream; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    skip_finish: function(stream: PGInputStream; result_: PGAsyncResult): gssize; cdecl;
    close_async: procedure(stream: PGInputStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    close_finish: function(stream: PGInputStream; result_: PGAsyncResult): gboolean; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;
  TGFilterInputStreamClass = object
    parent_class: TGInputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
  end;

  PPGBufferedInputStreamClass = ^PGBufferedInputStreamClass;
  PGBufferedInputStreamClass = ^TGBufferedInputStreamClass;
  TGBufferedInputStreamClass = object
    parent_class: TGFilterInputStreamClass;
    fill: function(stream: PGBufferedInputStream; count: gssize; cancellable: PGCancellable): gssize; cdecl;
    fill_async: procedure(stream: PGBufferedInputStream; count: gssize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    fill_finish: function(stream: PGBufferedInputStream; result_: PGAsyncResult): gssize; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGOutputStream = ^PGOutputStream;
  PGOutputStream = ^TGOutputStream;

  PPGOutputStreamSpliceFlags = ^PGOutputStreamSpliceFlags;
  PGOutputStreamSpliceFlags = ^TGOutputStreamSpliceFlags;
  TGOutputStreamSpliceFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property close_source: DWord index 1 read GetBit write SetBit;
    property close_target: DWord index 2 read GetBit write SetBit;
  end;


  PPGOutputStreamPrivate = ^PGOutputStreamPrivate;
  PGOutputStreamPrivate = ^TGOutputStreamPrivate;
  TGOutputStream = object(TGObject)
    priv: PGOutputStreamPrivate;
    procedure clear_pending; cdecl; inline;
    function close(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function close_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function flush(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure flush_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function flush_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function has_pending: gboolean; cdecl; inline;
    function is_closed: gboolean; cdecl; inline;
    function is_closing: gboolean; cdecl; inline;
    function set_pending: gboolean; cdecl; inline;
    function splice(source: PGInputStream; flags: TGOutputStreamSpliceFlags; cancellable: PGCancellable): gssize; cdecl; inline;
    procedure splice_async(source: PGInputStream; flags: TGOutputStreamSpliceFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function splice_finish(result_: PGAsyncResult): gssize; cdecl; inline;
    function write(buffer: Pguint8; count: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
    function write_all(buffer: Pguint8; count: gsize; bytes_written: Pgsize; cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure write_async(buffer: Pguint8; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function write_finish(result_: PGAsyncResult): gssize; cdecl; inline;
  end;

  PPGFilterOutputStream = ^PGFilterOutputStream;
  PGFilterOutputStream = ^TGFilterOutputStream;
  TGFilterOutputStream = object(TGOutputStream)
    function get_base_stream: PGOutputStream; cdecl; inline;
    function get_close_base_stream: gboolean; cdecl; inline;
    procedure set_close_base_stream(close_base: gboolean); cdecl; inline;
    property base_stream:  PGOutputStream read get_base_stream  { property is writeable but setter not declared } ;
    property close_base_stream:  gboolean read get_close_base_stream  { property is writeable but setter not declared } ;
  end;

  PPGBufferedOutputStreamPrivate = ^PGBufferedOutputStreamPrivate;
  PGBufferedOutputStreamPrivate = ^TGBufferedOutputStreamPrivate;

  TGBufferedOutputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGBufferedOutputStream = ^PGBufferedOutputStream;
  PGBufferedOutputStream = ^TGBufferedOutputStream;
  TGBufferedOutputStream = object(TGFilterOutputStream)
    priv1: PGBufferedOutputStreamPrivate;
    function new(base_stream: PGOutputStream): PGBufferedOutputStream; cdecl; inline; static;
    function new_sized(base_stream: PGOutputStream; size: gsize): PGBufferedOutputStream; cdecl; inline; static;
    function get_auto_grow: gboolean; cdecl; inline;
    function get_buffer_size: gsize; cdecl; inline;
    procedure set_auto_grow(auto_grow: gboolean); cdecl; inline;
    procedure set_buffer_size(size: gsize); cdecl; inline;
    property auto_grow:  gboolean read get_auto_grow  { property is writeable but setter not declared } ;
    property buffer_size:  gsize read get_buffer_size  { property is writeable but setter not declared } ;
  end;

  PPGFilterOutputStreamClass = ^PGFilterOutputStreamClass;
  PGFilterOutputStreamClass = ^TGFilterOutputStreamClass;

  PPGOutputStreamClass = ^PGOutputStreamClass;
  PGOutputStreamClass = ^TGOutputStreamClass;
  TGOutputStreamClass = object
    parent_class: TGObjectClass;
    write_fn: function(stream: PGOutputStream; buffer: Pgpointer; count: gsize; cancellable: PGCancellable): gssize; cdecl;
    splice: function(stream: PGOutputStream; source: PGInputStream; flags: TGOutputStreamSpliceFlags; cancellable: PGCancellable): gssize; cdecl;
    flush: function(stream: PGOutputStream; cancellable: PGCancellable): gboolean; cdecl;
    close_fn: function(stream: PGOutputStream; cancellable: PGCancellable): gboolean; cdecl;
    write_async: procedure(stream: PGOutputStream; buffer: Pguint8; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    write_finish: function(stream: PGOutputStream; result_: PGAsyncResult): gssize; cdecl;
    splice_async: procedure(stream: PGOutputStream; source: PGInputStream; flags: TGOutputStreamSpliceFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    splice_finish: function(stream: PGOutputStream; result_: PGAsyncResult): gssize; cdecl;
    flush_async: procedure(stream: PGOutputStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    flush_finish: function(stream: PGOutputStream; result_: PGAsyncResult): gboolean; cdecl;
    close_async: procedure(stream: PGOutputStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    close_finish: function(stream: PGOutputStream; result_: PGAsyncResult): gboolean; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
    _g_reserved7: procedure; cdecl;
    _g_reserved8: procedure; cdecl;
  end;
  TGFilterOutputStreamClass = object
    parent_class: TGOutputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
  end;

  PPGBufferedOutputStreamClass = ^PGBufferedOutputStreamClass;
  PGBufferedOutputStreamClass = ^TGBufferedOutputStreamClass;
  TGBufferedOutputStreamClass = object
    parent_class: TGFilterOutputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
  end;

  PPGDBusConnection = ^PGDBusConnection;
  PGDBusConnection = ^TGDBusConnection;

  PPGDBusConnectionFlags = ^PGDBusConnectionFlags;
  PGDBusConnectionFlags = ^TGDBusConnectionFlags;
  TGDBusConnectionFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property authentication_client: DWord index 1 read GetBit write SetBit;
    property authentication_server: DWord index 2 read GetBit write SetBit;
    property authentication_allow_anonymous: DWord index 4 read GetBit write SetBit;
    property message_bus_connection: DWord index 8 read GetBit write SetBit;
    property delay_message_processing: DWord index 16 read GetBit write SetBit;
  end;


  PPGDBusAuthObserver = ^PGDBusAuthObserver;
  PGDBusAuthObserver = ^TGDBusAuthObserver;

  PPGIOStream = ^PGIOStream;
  PGIOStream = ^TGIOStream;

  PPGDBusMessageFilterFunction = ^PGDBusMessageFilterFunction;
  PGDBusMessageFilterFunction = ^TGDBusMessageFilterFunction;

  PPGDBusMessage = ^PGDBusMessage;
  PGDBusMessage = ^TGDBusMessage;
  TGDBusMessageFilterFunction = function(connection: PGDBusConnection; message: PGDBusMessage; incoming: gboolean; user_data: gpointer): PGDBusMessage; cdecl;

  PPGDBusCallFlags = ^PGDBusCallFlags;
  PGDBusCallFlags = ^TGDBusCallFlags;
  TGDBusCallFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property no_auto_start: DWord index 1 read GetBit write SetBit;
  end;


  PPGUnixFDList = ^PGUnixFDList;
  PGUnixFDList = ^TGUnixFDList;

  PPGDBusCapabilityFlags = ^PGDBusCapabilityFlags;
  PGDBusCapabilityFlags = ^TGDBusCapabilityFlags;
  TGDBusCapabilityFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property unix_fd_passing: DWord index 1 read GetBit write SetBit;
  end;


  PPGCredentials = ^PGCredentials;
  PGCredentials = ^TGCredentials;

  PPGDBusInterfaceInfo = ^PGDBusInterfaceInfo;
  PGDBusInterfaceInfo = ^TGDBusInterfaceInfo;

  PPGDBusInterfaceVTable = ^PGDBusInterfaceVTable;
  PGDBusInterfaceVTable = ^TGDBusInterfaceVTable;

  PPGDBusSubtreeVTable = ^PGDBusSubtreeVTable;
  PGDBusSubtreeVTable = ^TGDBusSubtreeVTable;

  PPGDBusSubtreeFlags = ^PGDBusSubtreeFlags;
  PGDBusSubtreeFlags = ^TGDBusSubtreeFlags;
  TGDBusSubtreeFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property dispatch_to_unenumerated_nodes: DWord index 1 read GetBit write SetBit;
  end;


  PPGDBusSendMessageFlags = ^PGDBusSendMessageFlags;
  PGDBusSendMessageFlags = ^TGDBusSendMessageFlags;
  TGDBusSendMessageFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property preserve_serial: DWord index 1 read GetBit write SetBit;
  end;


  PPGDBusSignalFlags = ^PGDBusSignalFlags;
  PGDBusSignalFlags = ^TGDBusSignalFlags;
  TGDBusSignalFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property no_match_rule: DWord index 1 read GetBit write SetBit;
  end;


  PPGDBusSignalCallback = ^PGDBusSignalCallback;
  PGDBusSignalCallback = ^TGDBusSignalCallback;
  TGDBusSignalCallback = procedure(connection: PGDBusConnection; sender_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; signal_name: Pgchar; parameters: PGVariant; user_data: gpointer); cdecl;
  TGDBusConnection = object(TGObject)
    function new_finish(res: PGAsyncResult): PGDBusConnection; cdecl; inline; static;
    function new_for_address_finish(res: PGAsyncResult): PGDBusConnection; cdecl; inline; static;
    function new_for_address_sync(address: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusConnection; cdecl; inline; static;
    function new_sync(stream: PGIOStream; guid: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusConnection; cdecl; inline; static;
    procedure new(stream: PGIOStream; guid: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    procedure new_for_address(address: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    function add_filter(filter_function: TGDBusMessageFilterFunction; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; inline;
    procedure call(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function call_finish(res: PGAsyncResult): PGVariant; cdecl; inline;
    function call_sync(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable): PGVariant; cdecl; inline;
    procedure call_with_unix_fd_list(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function call_with_unix_fd_list_finish(out_fd_list: PPGUnixFDList; res: PGAsyncResult): PGVariant; cdecl; inline;
    function call_with_unix_fd_list_sync(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; out_fd_list: PPGUnixFDList; cancellable: PGCancellable): PGVariant; cdecl; inline;
    procedure close(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function close_finish(res: PGAsyncResult): gboolean; cdecl; inline;
    function close_sync(cancellable: PGCancellable): gboolean; cdecl; inline;
    function emit_signal(destination_bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; signal_name: Pgchar; parameters: PGVariant): gboolean; cdecl; inline;
    procedure flush(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function flush_finish(res: PGAsyncResult): gboolean; cdecl; inline;
    function flush_sync(cancellable: PGCancellable): gboolean; cdecl; inline;
    function get_capabilities: TGDBusCapabilityFlags; cdecl; inline;
    function get_exit_on_close: gboolean; cdecl; inline;
    function get_guid: Pgchar; cdecl; inline;
    function get_peer_credentials: PGCredentials; cdecl; inline;
    function get_stream: PGIOStream; cdecl; inline;
    function get_unique_name: Pgchar; cdecl; inline;
    function is_closed: gboolean; cdecl; inline;
    function register_object(object_path: Pgchar; interface_info: PGDBusInterfaceInfo; vtable: PGDBusInterfaceVTable; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; inline;
    function register_subtree(object_path: Pgchar; vtable: PGDBusSubtreeVTable; flags: TGDBusSubtreeFlags; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; inline;
    procedure remove_filter(filter_id: guint); cdecl; inline;
    function send_message(message: PGDBusMessage; flags: TGDBusSendMessageFlags; out_serial: Pguint32): gboolean; cdecl; inline;
    procedure send_message_with_reply(message: PGDBusMessage; flags: TGDBusSendMessageFlags; timeout_msec: gint; out_serial: Pguint32; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function send_message_with_reply_finish(res: PGAsyncResult): PGDBusMessage; cdecl; inline;
    function send_message_with_reply_sync(message: PGDBusMessage; flags: TGDBusSendMessageFlags; timeout_msec: gint; out_serial: Pguint32; cancellable: PGCancellable): PGDBusMessage; cdecl; inline;
    procedure set_exit_on_close(exit_on_close: gboolean); cdecl; inline;
    function signal_subscribe(sender: Pgchar; interface_name: Pgchar; member: Pgchar; object_path: Pgchar; arg0: Pgchar; flags: TGDBusSignalFlags; callback: TGDBusSignalCallback; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; inline;
    procedure signal_unsubscribe(subscription_id: guint); cdecl; inline;
    procedure start_message_processing; cdecl; inline;
    function unregister_object(registration_id: guint): gboolean; cdecl; inline;
    function unregister_subtree(registration_id: guint): gboolean; cdecl; inline;
    //property address: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_address  { property is writeable but setter not declared } ;
    //property authentication_observer: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_authentication_observer  { property is writeable but setter not declared } ;
    property capabilities:  TGDBusCapabilityFlags read get_capabilities ;
    //property closed: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_closed ;
    property exit_on_close:  gboolean read get_exit_on_close  { property is writeable but setter not declared } ;
    //property flags: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_flags  { property is writeable but setter not declared } ;
    property guid:  Pgchar read get_guid  { property is writeable but setter not declared } ;
    property stream:  PGIOStream read get_stream  { property is writeable but setter not declared } ;
    property unique_name:  Pgchar read get_unique_name ;
  end;
  TGBusAcquiredCallback = procedure(connection: PGDBusConnection; name: Pgchar; user_data: gpointer); cdecl;
  TGBusNameAcquiredCallback = procedure(connection: PGDBusConnection; name: Pgchar; user_data: gpointer); cdecl;
  TGBusNameAppearedCallback = procedure(connection: PGDBusConnection; name: Pgchar; name_owner: Pgchar; user_data: gpointer); cdecl;
  TGBusNameLostCallback = procedure(connection: PGDBusConnection; name: Pgchar; user_data: gpointer); cdecl;
  TGBusNameOwnerFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property allow_replacement: DWord index 1 read GetBit write SetBit;
    property replace: DWord index 2 read GetBit write SetBit;
  end;

  TGBusNameVanishedCallback = procedure(connection: PGDBusConnection; name: Pgchar; user_data: gpointer); cdecl;
  TGBusNameWatcherFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property auto_start: DWord index 1 read GetBit write SetBit;
  end;


  PPGBusType = ^PGBusType;
  PGBusType = ^TGBusType;

  TGCancellablePrivate = record
    Unknown: Pointer;
  end;



  PPGCancellableClass = ^PGCancellableClass;
  PGCancellableClass = ^TGCancellableClass;
  TGCancellableClass = object
    parent_class: TGObjectClass;
    cancelled: procedure(cancellable: PGCancellable); cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;
  TGCancellableSourceFunc = function(cancellable: PGCancellable; user_data: gpointer): gboolean; cdecl;

  PPGConverter = ^PGConverter;
  PGConverter = ^TGConverter;

  PPGConverterResult = ^PGConverterResult;
  PGConverterResult = ^TGConverterResult;

  PPGConverterFlags = ^PGConverterFlags;
  PGConverterFlags = ^TGConverterFlags;
  TGConverterFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property input_at_end: DWord index 1 read GetBit write SetBit;
    property flush: DWord index 2 read GetBit write SetBit;
  end;

  TGConverter = object
    function convert(inbuf: Pguint8; inbuf_size: gsize; outbuf: Pgpointer; outbuf_size: gsize; flags: TGConverterFlags; bytes_read: Pgsize; bytes_written: Pgsize): TGConverterResult; cdecl; inline;
    procedure reset; cdecl; inline;
  end;

  PPGInitable = ^PGInitable;
  PGInitable = ^TGInitable;
  TGInitable = object
    //function new(object_type: TGType; cancellable: PGCancellable; error: PPGError; first_property_name: Pgchar; args: array of const): gpointer; cdecl; inline; static;
    //function new_valist(object_type: TGType; first_property_name: Pgchar; var_args: Tva_list; cancellable: PGCancellable): PGObject; cdecl; inline; static;
    function newv(object_type: TGType; n_parameters: guint; parameters: PGParameter; cancellable: PGCancellable): gpointer; cdecl; inline; static;
    function init(cancellable: PGCancellable): gboolean; cdecl; inline;
  end;

  PPGCharsetConverter = ^PGCharsetConverter;
  PGCharsetConverter = ^TGCharsetConverter;
  TGCharsetConverter = object(TGObject)
    function new(to_charset: Pgchar; from_charset: Pgchar): PGCharsetConverter; cdecl; inline; static;
    function get_num_fallbacks: guint; cdecl; inline;
    function get_use_fallback: gboolean; cdecl; inline;
    procedure set_use_fallback(use_fallback: gboolean); cdecl; inline;
    //property from_charset: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_from_charset  { property is writeable but setter not declared } ;
    //property to_charset: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_to_charset  { property is writeable but setter not declared } ;
    property use_fallback:  gboolean read get_use_fallback  { property is writeable but setter not declared } ;
  end;

  PPGCharsetConverterClass = ^PGCharsetConverterClass;
  PGCharsetConverterClass = ^TGCharsetConverterClass;
  TGCharsetConverterClass = object
    parent_class: TGObjectClass;
  end;

  PPGConverterIface = ^PGConverterIface;
  PGConverterIface = ^TGConverterIface;
  TGConverterIface = object
    g_iface: TGTypeInterface;
    convert: function(converter: PGConverter; inbuf: Pguint8; inbuf_size: gsize; outbuf: Pgpointer; outbuf_size: gsize; flags: TGConverterFlags; bytes_read: Pgsize; bytes_written: Pgsize): TGConverterResult; cdecl;
    reset: procedure(converter: PGConverter); cdecl;
  end;

  PPGConverterInputStreamPrivate = ^PGConverterInputStreamPrivate;
  PGConverterInputStreamPrivate = ^TGConverterInputStreamPrivate;

  TGConverterInputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGConverterInputStream = ^PGConverterInputStream;
  PGConverterInputStream = ^TGConverterInputStream;
  TGConverterInputStream = object(TGFilterInputStream)
    priv1: PGConverterInputStreamPrivate;
    function new(base_stream: PGInputStream; converter: PGConverter): PGConverterInputStream; cdecl; inline; static;
    function get_converter: PGConverter; cdecl; inline;
    property converter:  PGConverter read get_converter  { property is writeable but setter not declared } ;
  end;

  PPGConverterInputStreamClass = ^PGConverterInputStreamClass;
  PGConverterInputStreamClass = ^TGConverterInputStreamClass;
  TGConverterInputStreamClass = object
    parent_class: TGFilterInputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGConverterOutputStreamPrivate = ^PGConverterOutputStreamPrivate;
  PGConverterOutputStreamPrivate = ^TGConverterOutputStreamPrivate;

  TGConverterOutputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGConverterOutputStream = ^PGConverterOutputStream;
  PGConverterOutputStream = ^TGConverterOutputStream;
  TGConverterOutputStream = object(TGFilterOutputStream)
    priv1: PGConverterOutputStreamPrivate;
    function new(base_stream: PGOutputStream; converter: PGConverter): PGConverterOutputStream; cdecl; inline; static;
    function get_converter: PGConverter; cdecl; inline;
    property converter:  PGConverter read get_converter  { property is writeable but setter not declared } ;
  end;

  PPGConverterOutputStreamClass = ^PGConverterOutputStreamClass;
  PGConverterOutputStreamClass = ^TGConverterOutputStreamClass;
  TGConverterOutputStreamClass = object
    parent_class: TGFilterOutputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGCredentialsType = ^PGCredentialsType;
  PGCredentialsType = ^TGCredentialsType;
  TGCredentials = object(TGObject)
    function new: PGCredentials; cdecl; inline; static;
    function get_native(native_type: TGCredentialsType): gpointer; cdecl; inline;
    function get_unix_user: guint; cdecl; inline;
    function is_same_user(other_credentials: PGCredentials): gboolean; cdecl; inline;
    procedure set_native(native_type: TGCredentialsType; native: gpointer); cdecl; inline;
    function set_unix_user(uid: guint): gboolean; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
  end;

  PPGCredentialsClass = ^PGCredentialsClass;
  PGCredentialsClass = ^TGCredentialsClass;
  TGCredentialsClass = object
  end;

  PPGDBusAnnotationInfo = ^PGDBusAnnotationInfo;
  PGDBusAnnotationInfo = ^TGDBusAnnotationInfo;
  TGDBusAnnotationInfo = object
    ref_count: gint;
    key: Pgchar;
    value: Pgchar;
    annotations: PGDBusAnnotationInfo;
    function ref: PGDBusAnnotationInfo; cdecl; inline;
    procedure unref; cdecl; inline;
    function lookup(annotations: PPGDBusAnnotationInfo; name: Pgchar): Pgchar; cdecl; inline; static;
  end;

  PPGDBusArgInfo = ^PGDBusArgInfo;
  PGDBusArgInfo = ^TGDBusArgInfo;
  TGDBusArgInfo = object
    ref_count: gint;
    name: Pgchar;
    signature: Pgchar;
    annotations: PGDBusAnnotationInfo;
    function ref: PGDBusArgInfo; cdecl; inline;
    procedure unref; cdecl; inline;
  end;
  TGDBusAuthObserver = object(TGObject)
    function new: PGDBusAuthObserver; cdecl; inline; static;
    function authorize_authenticated_peer(stream: PGIOStream; credentials: PGCredentials): gboolean; cdecl; inline;
  end;

  PPGIOStreamSpliceFlags = ^PGIOStreamSpliceFlags;
  PGIOStreamSpliceFlags = ^TGIOStreamSpliceFlags;
  TGIOStreamSpliceFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property close_stream1: DWord index 1 read GetBit write SetBit;
    property close_stream2: DWord index 2 read GetBit write SetBit;
    property wait_for_both: DWord index 4 read GetBit write SetBit;
  end;


  PPGIOStreamPrivate = ^PGIOStreamPrivate;
  PGIOStreamPrivate = ^TGIOStreamPrivate;
  TGIOStream = object(TGObject)
    priv: PGIOStreamPrivate;
    function splice_finish(result_: PGAsyncResult): gboolean; cdecl; inline; static;
    procedure clear_pending; cdecl; inline;
    function close(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function close_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function get_input_stream: PGInputStream; cdecl; inline;
    function get_output_stream: PGOutputStream; cdecl; inline;
    function has_pending: gboolean; cdecl; inline;
    function is_closed: gboolean; cdecl; inline;
    function set_pending: gboolean; cdecl; inline;
    procedure splice_async(stream2: PGIOStream; flags: TGIOStreamSpliceFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    //property closed: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_closed  { property is writeable but setter not declared } ;
    property input_stream:  PGInputStream read get_input_stream ;
    property output_stream:  PGOutputStream read get_output_stream ;
  end;

  PPGUnixFDListPrivate = ^PGUnixFDListPrivate;
  PGUnixFDListPrivate = ^TGUnixFDListPrivate;
  TGUnixFDList = object(TGObject)
    priv: PGUnixFDListPrivate;
    function new: PGUnixFDList; cdecl; inline; static;
    function new_from_array(fds: Pgint; n_fds: gint): PGUnixFDList; cdecl; inline; static;
    function append(fd: gint): gint; cdecl; inline;
    function get(index_: gint): gint; cdecl; inline;
    function get_length: gint; cdecl; inline;
    function peek_fds(length: Pgint): Pgint; cdecl; inline;
    function steal_fds(length: Pgint): Pgint; cdecl; inline;
  end;

  PPGDBusMethodInfo = ^PGDBusMethodInfo;
  PGDBusMethodInfo = ^TGDBusMethodInfo;

  PPGDBusPropertyInfo = ^PGDBusPropertyInfo;
  PGDBusPropertyInfo = ^TGDBusPropertyInfo;

  PPGDBusSignalInfo = ^PGDBusSignalInfo;
  PGDBusSignalInfo = ^TGDBusSignalInfo;
  TGDBusInterfaceInfo = object
    ref_count: gint;
    name: Pgchar;
    methods: PGDBusMethodInfo;
    signals: PGDBusSignalInfo;
    properties: PGDBusPropertyInfo;
    annotations: PGDBusAnnotationInfo;
    procedure cache_build; cdecl; inline;
    procedure cache_release; cdecl; inline;
    procedure generate_xml(indent: guint; string_builder: PGString); cdecl; inline;
    function lookup_method(name: Pgchar): PGDBusMethodInfo; cdecl; inline;
    function lookup_property(name: Pgchar): PGDBusPropertyInfo; cdecl; inline;
    function lookup_signal(name: Pgchar): PGDBusSignalInfo; cdecl; inline;
    function ref: PGDBusInterfaceInfo; cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  PPGDBusInterfaceMethodCallFunc = ^PGDBusInterfaceMethodCallFunc;
  PGDBusInterfaceMethodCallFunc = ^TGDBusInterfaceMethodCallFunc;

  PPGDBusMethodInvocation = ^PGDBusMethodInvocation;
  PGDBusMethodInvocation = ^TGDBusMethodInvocation;
  TGDBusInterfaceMethodCallFunc = procedure(connection: PGDBusConnection; sender: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; invocation: PGDBusMethodInvocation; user_data: gpointer); cdecl;

  PPGDBusInterfaceGetPropertyFunc = ^PGDBusInterfaceGetPropertyFunc;
  PGDBusInterfaceGetPropertyFunc = ^TGDBusInterfaceGetPropertyFunc;
  TGDBusInterfaceGetPropertyFunc = function(connection: PGDBusConnection; sender: Pgchar; object_path: Pgchar; interface_name: Pgchar; property_name: Pgchar; error: PPGError; user_data: gpointer): PGVariant; cdecl;

  PPGDBusInterfaceSetPropertyFunc = ^PGDBusInterfaceSetPropertyFunc;
  PGDBusInterfaceSetPropertyFunc = ^TGDBusInterfaceSetPropertyFunc;
  TGDBusInterfaceSetPropertyFunc = function(connection: PGDBusConnection; sender: Pgchar; object_path: Pgchar; interface_name: Pgchar; property_name: Pgchar; value: PGVariant; error: PPGError; user_data: gpointer): gboolean; cdecl;

  TGDBusInterfaceVTable = record
    method_call: TGDBusInterfaceMethodCallFunc;
    get_property: TGDBusInterfaceGetPropertyFunc;
    set_property: TGDBusInterfaceSetPropertyFunc;
    padding: array [0..7] of gpointer;
  end;



  PPGDBusSubtreeEnumerateFunc = ^PGDBusSubtreeEnumerateFunc;
  PGDBusSubtreeEnumerateFunc = ^TGDBusSubtreeEnumerateFunc;
  TGDBusSubtreeEnumerateFunc = function(connection: PGDBusConnection; sender: Pgchar; object_path: Pgchar; user_data: gpointer): PPgchar; cdecl;

  PPGDBusSubtreeIntrospectFunc = ^PGDBusSubtreeIntrospectFunc;
  PGDBusSubtreeIntrospectFunc = ^TGDBusSubtreeIntrospectFunc;
  TGDBusSubtreeIntrospectFunc = function(connection: PGDBusConnection; sender: Pgchar; object_path: Pgchar; node: Pgchar; user_data: gpointer): PPGDBusInterfaceInfo; cdecl;

  PPGDBusSubtreeDispatchFunc = ^PGDBusSubtreeDispatchFunc;
  PGDBusSubtreeDispatchFunc = ^TGDBusSubtreeDispatchFunc;
  TGDBusSubtreeDispatchFunc = function(connection: PGDBusConnection; sender: Pgchar; object_path: Pgchar; interface_name: Pgchar; node: Pgchar; out_user_data: Pgpointer; user_data: gpointer): PGDBusInterfaceVTable; cdecl;

  TGDBusSubtreeVTable = record
    enumerate: TGDBusSubtreeEnumerateFunc;
    introspect: TGDBusSubtreeIntrospectFunc;
    dispatch: TGDBusSubtreeDispatchFunc;
    padding: array [0..7] of gpointer;
  end;



  PPGDBusMessageByteOrder = ^PGDBusMessageByteOrder;
  PGDBusMessageByteOrder = ^TGDBusMessageByteOrder;

  PPGDBusMessageFlags = ^PGDBusMessageFlags;
  PGDBusMessageFlags = ^TGDBusMessageFlags;
  TGDBusMessageFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property no_reply_expected: DWord index 1 read GetBit write SetBit;
    property no_auto_start: DWord index 2 read GetBit write SetBit;
  end;


  PPGDBusMessageHeaderField = ^PGDBusMessageHeaderField;
  PGDBusMessageHeaderField = ^TGDBusMessageHeaderField;

  PPGDBusMessageType = ^PGDBusMessageType;
  PGDBusMessageType = ^TGDBusMessageType;
  TGDBusMessage = object(TGObject)
    function new: PGDBusMessage; cdecl; inline; static;
    function new_from_blob(blob: Pguint8; blob_len: gsize; capabilities: TGDBusCapabilityFlags): PGDBusMessage; cdecl; inline; static;
    function new_method_call(name: Pgchar; path: Pgchar; interface_: Pgchar; method: Pgchar): PGDBusMessage; cdecl; inline; static;
    function new_signal(path: Pgchar; interface_: Pgchar; signal: Pgchar): PGDBusMessage; cdecl; inline; static;
    function bytes_needed(blob: Pguint8; blob_len: gsize): gssize; cdecl; inline; static;
    function copy: PGDBusMessage; cdecl; inline;
    function get_arg0: Pgchar; cdecl; inline;
    function get_body: PGVariant; cdecl; inline;
    function get_byte_order: TGDBusMessageByteOrder; cdecl; inline;
    function get_destination: Pgchar; cdecl; inline;
    function get_error_name: Pgchar; cdecl; inline;
    function get_flags: TGDBusMessageFlags; cdecl; inline;
    function get_header(header_field: TGDBusMessageHeaderField): PGVariant; cdecl; inline;
    function get_header_fields: Pguint8; cdecl; inline;
    function get_interface: Pgchar; cdecl; inline;
    function get_locked: gboolean; cdecl; inline;
    function get_member: Pgchar; cdecl; inline;
    function get_message_type: TGDBusMessageType; cdecl; inline;
    function get_num_unix_fds: guint32; cdecl; inline;
    function get_path: Pgchar; cdecl; inline;
    function get_reply_serial: guint32; cdecl; inline;
    function get_sender: Pgchar; cdecl; inline;
    function get_serial: guint32; cdecl; inline;
    function get_signature: Pgchar; cdecl; inline;
    function get_unix_fd_list: PGUnixFDList; cdecl; inline;
    procedure lock; cdecl; inline;
    //function new_method_error(error_name: Pgchar; error_message_format: Pgchar; args: array of const): PGDBusMessage; cdecl; inline;
    function new_method_error_literal(error_name: Pgchar; error_message: Pgchar): PGDBusMessage; cdecl; inline;
    //function new_method_error_valist(error_name: Pgchar; error_message_format: Pgchar; var_args: Tva_list): PGDBusMessage; cdecl; inline;
    function new_method_reply: PGDBusMessage; cdecl; inline;
    function print(indent: guint): Pgchar; cdecl; inline;
    procedure set_body(body: PGVariant); cdecl; inline;
    procedure set_byte_order(byte_order: TGDBusMessageByteOrder); cdecl; inline;
    procedure set_destination(value: Pgchar); cdecl; inline;
    procedure set_error_name(value: Pgchar); cdecl; inline;
    procedure set_flags(flags: TGDBusMessageFlags); cdecl; inline;
    procedure set_header(header_field: TGDBusMessageHeaderField; value: PGVariant); cdecl; inline;
    procedure set_interface(value: Pgchar); cdecl; inline;
    procedure set_member(value: Pgchar); cdecl; inline;
    procedure set_message_type(type_: TGDBusMessageType); cdecl; inline;
    procedure set_num_unix_fds(value: guint32); cdecl; inline;
    procedure set_path(value: Pgchar); cdecl; inline;
    procedure set_reply_serial(value: guint32); cdecl; inline;
    procedure set_sender(value: Pgchar); cdecl; inline;
    procedure set_serial(serial: guint32); cdecl; inline;
    procedure set_signature(value: Pgchar); cdecl; inline;
    procedure set_unix_fd_list(fd_list: PGUnixFDList); cdecl; inline;
    function to_blob(out_size: Pgsize; capabilities: TGDBusCapabilityFlags): Pguint8; cdecl; inline;
    function to_gerror: gboolean; cdecl; inline;
    property locked:  gboolean read get_locked ;
  end;

  PPGDBusErrorEntry = ^PGDBusErrorEntry;
  PGDBusErrorEntry = ^TGDBusErrorEntry;

  TGDBusErrorEntry = record
    error_code: gint;
    dbus_error_name: Pgchar;
  end;



  PPGDBusError = ^PGDBusError;
  PGDBusError = ^TGDBusError;

  PPGDBusObject = ^PGDBusObject;
  PGDBusObject = ^TGDBusObject;

  PPGDBusInterface = ^PGDBusInterface;
  PGDBusInterface = ^TGDBusInterface;
  TGDBusInterface = object
    function get_info: PGDBusInterfaceInfo; cdecl; inline;
    function get_object: PGDBusObject; cdecl; inline;
    procedure set_object(object_: PGDBusObject); cdecl; inline;
  end;
  TGDBusObject = object
    interface_added: procedure(interface_: TGDBusInterface); cdecl;
    interface_removed: procedure(interface_: TGDBusInterface); cdecl;
    function get_interface(interface_name: Pgchar): PGDBusInterface; cdecl; inline;
    function get_interfaces: PGList; cdecl; inline;
    function get_object_path: Pgchar; cdecl; inline;
  end;

  PPGDBusInterfaceIface = ^PGDBusInterfaceIface;
  PGDBusInterfaceIface = ^TGDBusInterfaceIface;
  TGDBusInterfaceIface = object
    parent_iface: TGTypeInterface;
    get_info: function(interface_: PGDBusInterface): PGDBusInterfaceInfo; cdecl;
    get_object: function(interface_: PGDBusInterface): PGDBusObject; cdecl;
    set_object: procedure(interface_: PGDBusInterface; object_: PGDBusObject); cdecl;
  end;
  TGDBusMethodInfo = object
    ref_count: gint;
    name: Pgchar;
    in_args: PGDBusArgInfo;
    out_args: PGDBusArgInfo;
    annotations: PGDBusAnnotationInfo;
    function ref: PGDBusMethodInfo; cdecl; inline;
    procedure unref; cdecl; inline;
  end;
  TGDBusSignalInfo = object
    ref_count: gint;
    name: Pgchar;
    args: PGDBusArgInfo;
    annotations: PGDBusAnnotationInfo;
    function ref: PGDBusSignalInfo; cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  PPGDBusPropertyInfoFlags = ^PGDBusPropertyInfoFlags;
  PGDBusPropertyInfoFlags = ^TGDBusPropertyInfoFlags;
  TGDBusPropertyInfoFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property readable: DWord index 1 read GetBit write SetBit;
    property writable: DWord index 2 read GetBit write SetBit;
  end;

  TGDBusPropertyInfo = object
    ref_count: gint;
    name: Pgchar;
    signature: Pgchar;
    flags: TGDBusPropertyInfoFlags;
    annotations: PGDBusAnnotationInfo;
    function ref: PGDBusPropertyInfo; cdecl; inline;
    procedure unref; cdecl; inline;
  end;
  TGDBusMethodInvocation = object(TGObject)
    function get_connection: PGDBusConnection; cdecl; inline;
    function get_interface_name: Pgchar; cdecl; inline;
    function get_message: PGDBusMessage; cdecl; inline;
    function get_method_info: PGDBusMethodInfo; cdecl; inline;
    function get_method_name: Pgchar; cdecl; inline;
    function get_object_path: Pgchar; cdecl; inline;
    function get_parameters: PGVariant; cdecl; inline;
    function get_sender: Pgchar; cdecl; inline;
    function get_user_data: gpointer; cdecl; inline;
    procedure return_dbus_error(error_name: Pgchar; error_message: Pgchar); cdecl; inline;
    //procedure return_error(domain: TGQuark; code: gint; format: Pgchar; args: array of const); cdecl; inline;
    procedure return_error_literal(domain: TGQuark; code: gint; message: Pgchar); cdecl; inline;
    //procedure return_error_valist(domain: TGQuark; code: gint; format: Pgchar; var_args: Tva_list); cdecl; inline;
    procedure return_gerror(error: PGError); cdecl; inline;
    procedure return_value(parameters: PGVariant); cdecl; inline;
    procedure return_value_with_unix_fd_list(parameters: PGVariant; fd_list: PGUnixFDList); cdecl; inline;
    procedure take_error(error: PGError); cdecl; inline;
  end;
  TGDBusInterfaceSkeletonFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property handle_method_invocations_in_thread: DWord index 1 read GetBit write SetBit;
  end;


  PPGDBusInterfaceSkeletonPrivate = ^PGDBusInterfaceSkeletonPrivate;
  PGDBusInterfaceSkeletonPrivate = ^TGDBusInterfaceSkeletonPrivate;

  TGDBusInterfaceSkeletonPrivate = record
    Unknown: Pointer;
  end;



  PPGDBusInterfaceSkeleton = ^PGDBusInterfaceSkeleton;
  PGDBusInterfaceSkeleton = ^TGDBusInterfaceSkeleton;

  PPGDBusInterfaceSkeletonFlags = ^PGDBusInterfaceSkeletonFlags;
  PGDBusInterfaceSkeletonFlags = ^TGDBusInterfaceSkeletonFlags;
  TGDBusInterfaceSkeleton = object(TGObject)
    priv: PGDBusInterfaceSkeletonPrivate;
    function export(connection: PGDBusConnection; object_path: Pgchar): gboolean; cdecl; inline;
    procedure flush; cdecl; inline;
    function get_connection: PGDBusConnection; cdecl; inline;
    function get_flags: TGDBusInterfaceSkeletonFlags; cdecl; inline;
    function get_info: PGDBusInterfaceInfo; cdecl; inline;
    function get_object_path: Pgchar; cdecl; inline;
    function get_properties: PGVariant; cdecl; inline;
    function get_vtable: PGDBusInterfaceVTable; cdecl; inline;
    procedure set_flags(flags: TGDBusInterfaceSkeletonFlags); cdecl; inline;
    procedure unexport; cdecl; inline;
    //property g_flags: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_flags  { property is writeable but setter not declared } ;
  end;

  PPGDBusInterfaceSkeletonClass = ^PGDBusInterfaceSkeletonClass;
  PGDBusInterfaceSkeletonClass = ^TGDBusInterfaceSkeletonClass;
  TGDBusInterfaceSkeletonClass = object
    parent_class: TGObjectClass;
    get_info: function(interface_: PGDBusInterfaceSkeleton): PGDBusInterfaceInfo; cdecl;
    get_vtable: function(interface_: PGDBusInterfaceSkeleton): PGDBusInterfaceVTable; cdecl;
    get_properties: function(interface_: PGDBusInterfaceSkeleton): PGVariant; cdecl;
    flush: procedure(interface_: PGDBusInterfaceSkeleton); cdecl;
    vfunc_padding: array [0..7] of gpointer;
    g_authorize_method: function(interface_: PGDBusInterfaceSkeleton; invocation: PGDBusMethodInvocation): gboolean; cdecl;
    signal_padding: array [0..7] of gpointer;
  end;

  PPGDBusNodeInfo = ^PGDBusNodeInfo;
  PGDBusNodeInfo = ^TGDBusNodeInfo;
  TGDBusNodeInfo = object
    ref_count: gint;
    path: Pgchar;
    interfaces: PGDBusInterfaceInfo;
    nodes: PGDBusNodeInfo;
    annotations: PGDBusAnnotationInfo;
    function new_for_xml(xml_data: Pgchar): PGDBusNodeInfo; cdecl; inline; static;
    procedure generate_xml(indent: guint; string_builder: PGString); cdecl; inline;
    function lookup_interface(name: Pgchar): PGDBusInterfaceInfo; cdecl; inline;
    function ref: PGDBusNodeInfo; cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  PPGDBusObjectIface = ^PGDBusObjectIface;
  PGDBusObjectIface = ^TGDBusObjectIface;
  TGDBusObjectIface = object
    parent_iface: TGTypeInterface;
    get_object_path: function(object_: PGDBusObject): Pgchar; cdecl;
    get_interfaces: function(object_: PGDBusObject): PGList; cdecl;
    get_interface: function(object_: PGDBusObject; interface_name: Pgchar): PGDBusInterface; cdecl;
    interface_added: procedure(object_: PGDBusObject; interface_: PGDBusInterface); cdecl;
    interface_removed: procedure(object_: PGDBusObject; interface_: PGDBusInterface); cdecl;
  end;

  PPGDBusObjectManager = ^PGDBusObjectManager;
  PGDBusObjectManager = ^TGDBusObjectManager;
  TGDBusObjectManager = object
    interface_added: procedure(object_: TGDBusObject; interface_: TGDBusInterface); cdecl;
    interface_removed: procedure(object_: TGDBusObject; interface_: TGDBusInterface); cdecl;
    object_added: procedure(object_: TGDBusObject); cdecl;
    object_removed: procedure(object_: TGDBusObject); cdecl;
    function get_interface(object_path: Pgchar; interface_name: Pgchar): PGDBusInterface; cdecl; inline;
    function get_object(object_path: Pgchar): PGDBusObject; cdecl; inline;
    function get_object_path: Pgchar; cdecl; inline;
    function get_objects: PGList; cdecl; inline;
  end;

  PPGDBusObjectManagerClient = ^PGDBusObjectManagerClient;
  PGDBusObjectManagerClient = ^TGDBusObjectManagerClient;

  PPGDBusObjectManagerClientFlags = ^PGDBusObjectManagerClientFlags;
  PGDBusObjectManagerClientFlags = ^TGDBusObjectManagerClientFlags;
  TGDBusObjectManagerClientFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property do_not_auto_start: DWord index 1 read GetBit write SetBit;
  end;


  PPGDBusProxyTypeFunc = ^PGDBusProxyTypeFunc;
  PGDBusProxyTypeFunc = ^TGDBusProxyTypeFunc;
  TGDBusProxyTypeFunc = function(manager: PGDBusObjectManagerClient; object_path: Pgchar; interface_name: Pgchar; user_data: gpointer): TGType; cdecl;

  PPGDBusObjectManagerClientPrivate = ^PGDBusObjectManagerClientPrivate;
  PGDBusObjectManagerClientPrivate = ^TGDBusObjectManagerClientPrivate;
  TGDBusObjectManagerClient = object(TGObject)
    priv: PGDBusObjectManagerClientPrivate;
    function new_finish(res: PGAsyncResult): PGDBusObjectManagerClient; cdecl; inline; static;
    function new_for_bus_finish(res: PGAsyncResult): PGDBusObjectManagerClient; cdecl; inline; static;
    function new_for_bus_sync(bus_type: TGBusType; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable): PGDBusObjectManagerClient; cdecl; inline; static;
    function new_sync(connection: PGDBusConnection; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable): PGDBusObjectManagerClient; cdecl; inline; static;
    procedure new(connection: PGDBusConnection; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    procedure new_for_bus(bus_type: TGBusType; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    function get_connection: PGDBusConnection; cdecl; inline;
    function get_flags: TGDBusObjectManagerClientFlags; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_name_owner: Pgchar; cdecl; inline;
    //property bus_type: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_bus_type  { property is writeable but setter not declared } ;
    property connection:  PGDBusConnection read get_connection  { property is writeable but setter not declared } ;
    property flags:  TGDBusObjectManagerClientFlags read get_flags  { property is writeable but setter not declared } ;
    //property get_proxy_type_destroy_notify: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_get_proxy_type_destroy_notify  { property is writeable but setter not declared } ;
    //property get_proxy_type_func: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_get_proxy_type_func  { property is writeable but setter not declared } ;
    //property get_proxy_type_user_data: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_get_proxy_type_user_data  { property is writeable but setter not declared } ;
    property name:  Pgchar read get_name  { property is writeable but setter not declared } ;
    property name_owner:  Pgchar read get_name_owner ;
    //property object_path: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_object_path  { property is writeable but setter not declared } ;
  end;

  PPGDBusObjectProxy = ^PGDBusObjectProxy;
  PGDBusObjectProxy = ^TGDBusObjectProxy;

  PPGDBusObjectProxyPrivate = ^PGDBusObjectProxyPrivate;
  PGDBusObjectProxyPrivate = ^TGDBusObjectProxyPrivate;
  TGDBusObjectProxy = object(TGObject)
    priv: PGDBusObjectProxyPrivate;
    function new(connection: PGDBusConnection; object_path: Pgchar): PGDBusObjectProxy; cdecl; inline; static;
    function get_connection: PGDBusConnection; cdecl; inline;
    property connection:  PGDBusConnection read get_connection  { property is writeable but setter not declared } ;
    //property object_path: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_object_path  { property is writeable but setter not declared } ;
  end;

  PPGDBusProxy = ^PGDBusProxy;
  PGDBusProxy = ^TGDBusProxy;

  PPGDBusProxyFlags = ^PGDBusProxyFlags;
  PGDBusProxyFlags = ^TGDBusProxyFlags;
  TGDBusProxyFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property do_not_load_properties: DWord index 1 read GetBit write SetBit;
    property do_not_connect_signals: DWord index 2 read GetBit write SetBit;
    property do_not_auto_start: DWord index 4 read GetBit write SetBit;
  end;


  PPGDBusProxyPrivate = ^PGDBusProxyPrivate;
  PGDBusProxyPrivate = ^TGDBusProxyPrivate;
  TGDBusProxy = object(TGObject)
    priv: PGDBusProxyPrivate;
    function new_finish(res: PGAsyncResult): PGDBusProxy; cdecl; inline; static;
    function new_for_bus_finish(res: PGAsyncResult): PGDBusProxy; cdecl; inline; static;
    function new_for_bus_sync(bus_type: TGBusType; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable): PGDBusProxy; cdecl; inline; static;
    function new_sync(connection: PGDBusConnection; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable): PGDBusProxy; cdecl; inline; static;
    procedure new(connection: PGDBusConnection; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    procedure new_for_bus(bus_type: TGBusType; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline; static;
    procedure call(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function call_finish(res: PGAsyncResult): PGVariant; cdecl; inline;
    function call_sync(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable): PGVariant; cdecl; inline;
    procedure call_with_unix_fd_list(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function call_with_unix_fd_list_finish(out_fd_list: PPGUnixFDList; res: PGAsyncResult): PGVariant; cdecl; inline;
    function call_with_unix_fd_list_sync(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; out_fd_list: PPGUnixFDList; cancellable: PGCancellable): PGVariant; cdecl; inline;
    function get_cached_property(property_name: Pgchar): PGVariant; cdecl; inline;
    function get_cached_property_names: PPgchar; cdecl; inline;
    function get_connection: PGDBusConnection; cdecl; inline;
    function get_default_timeout: gint; cdecl; inline;
    function get_flags: TGDBusProxyFlags; cdecl; inline;
    function get_interface_info: PGDBusInterfaceInfo; cdecl; inline;
    function get_interface_name: Pgchar; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_name_owner: Pgchar; cdecl; inline;
    function get_object_path: Pgchar; cdecl; inline;
    procedure set_cached_property(property_name: Pgchar; value: PGVariant); cdecl; inline;
    procedure set_default_timeout(timeout_msec: gint); cdecl; inline;
    procedure set_interface_info(info: PGDBusInterfaceInfo); cdecl; inline;
    //property g_bus_type: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_bus_type  { property is writeable but setter not declared } ;
    //property g_connection: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_connection  { property is writeable but setter not declared } ;
    //property g_default_timeout: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_default_timeout  { property is writeable but setter not declared } ;
    //property g_flags: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_flags  { property is writeable but setter not declared } ;
    //property g_interface_info: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_interface_info  { property is writeable but setter not declared } ;
    //property g_interface_name: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_interface_name  { property is writeable but setter not declared } ;
    //property g_name: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_name  { property is writeable but setter not declared } ;
    //property g_name_owner: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_name_owner ;
    //property g_object_path: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_g_object_path  { property is writeable but setter not declared } ;
  end;

  TGDBusObjectManagerClientPrivate = record
    Unknown: Pointer;
  end;



  PPGDBusObjectManagerClientClass = ^PGDBusObjectManagerClientClass;
  PGDBusObjectManagerClientClass = ^TGDBusObjectManagerClientClass;
  TGDBusObjectManagerClientClass = object
    parent_class: TGObjectClass;
    interface_proxy_signal: procedure(manager: PGDBusObjectManagerClient; object_proxy: PGDBusObjectProxy; interface_proxy: PGDBusProxy; sender_name: Pgchar; signal_name: Pgchar; parameters: PGVariant); cdecl;
    interface_proxy_properties_changed: procedure(manager: PGDBusObjectManagerClient; object_proxy: PGDBusObjectProxy; interface_proxy: PGDBusProxy; changed_properties: PGVariant; invalidated_properties: PPgchar); cdecl;
    padding: array [0..7] of gpointer;
  end;

  PPGDBusObjectManagerIface = ^PGDBusObjectManagerIface;
  PGDBusObjectManagerIface = ^TGDBusObjectManagerIface;
  TGDBusObjectManagerIface = object
    parent_iface: TGTypeInterface;
    get_object_path: function(manager: PGDBusObjectManager): Pgchar; cdecl;
    get_objects: function(manager: PGDBusObjectManager): PGList; cdecl;
    get_object: function(manager: PGDBusObjectManager; object_path: Pgchar): PGDBusObject; cdecl;
    get_interface: function(manager: PGDBusObjectManager; object_path: Pgchar; interface_name: Pgchar): PGDBusInterface; cdecl;
    object_added: procedure(manager: PGDBusObjectManager; object_: PGDBusObject); cdecl;
    object_removed: procedure(manager: PGDBusObjectManager; object_: PGDBusObject); cdecl;
    interface_added: procedure(manager: PGDBusObjectManager; object_: PGDBusObject; interface_: PGDBusInterface); cdecl;
    interface_removed: procedure(manager: PGDBusObjectManager; object_: PGDBusObject; interface_: PGDBusInterface); cdecl;
  end;

  PPGDBusObjectManagerServer = ^PGDBusObjectManagerServer;
  PGDBusObjectManagerServer = ^TGDBusObjectManagerServer;

  PPGDBusObjectSkeleton = ^PGDBusObjectSkeleton;
  PGDBusObjectSkeleton = ^TGDBusObjectSkeleton;

  PPGDBusObjectManagerServerPrivate = ^PGDBusObjectManagerServerPrivate;
  PGDBusObjectManagerServerPrivate = ^TGDBusObjectManagerServerPrivate;
  TGDBusObjectManagerServer = object(TGObject)
    priv: PGDBusObjectManagerServerPrivate;
    function new(object_path: Pgchar): PGDBusObjectManagerServer; cdecl; inline; static;
    procedure export(object_: PGDBusObjectSkeleton); cdecl; inline;
    procedure export_uniquely(object_: PGDBusObjectSkeleton); cdecl; inline;
    function get_connection: PGDBusConnection; cdecl; inline;
    procedure set_connection(connection: PGDBusConnection); cdecl; inline;
    function unexport(object_path: Pgchar): gboolean; cdecl; inline;
    property connection:  PGDBusConnection read get_connection  { property is writeable but setter not declared } ;
    //property object_path: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_object_path  { property is writeable but setter not declared } ;
  end;

  PPGDBusObjectSkeletonPrivate = ^PGDBusObjectSkeletonPrivate;
  PGDBusObjectSkeletonPrivate = ^TGDBusObjectSkeletonPrivate;
  TGDBusObjectSkeleton = object(TGObject)
    priv: PGDBusObjectSkeletonPrivate;
    function new(object_path: Pgchar): PGDBusObjectSkeleton; cdecl; inline; static;
    procedure add_interface(interface_: PGDBusInterfaceSkeleton); cdecl; inline;
    procedure flush; cdecl; inline;
    procedure remove_interface(interface_: PGDBusInterfaceSkeleton); cdecl; inline;
    procedure remove_interface_by_name(interface_name: Pgchar); cdecl; inline;
    procedure set_object_path(object_path: Pgchar); cdecl; inline;
    //property object_path: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_object_path  { property is writeable but setter not declared } ;
  end;

  TGDBusObjectManagerServerPrivate = record
    Unknown: Pointer;
  end;



  PPGDBusObjectManagerServerClass = ^PGDBusObjectManagerServerClass;
  PGDBusObjectManagerServerClass = ^TGDBusObjectManagerServerClass;
  TGDBusObjectManagerServerClass = object
    parent_class: TGObjectClass;
    padding: array [0..7] of gpointer;
  end;

  TGDBusObjectProxyPrivate = record
    Unknown: Pointer;
  end;



  PPGDBusObjectProxyClass = ^PGDBusObjectProxyClass;
  PGDBusObjectProxyClass = ^TGDBusObjectProxyClass;
  TGDBusObjectProxyClass = object
    parent_class: TGObjectClass;
    padding: array [0..7] of gpointer;
  end;

  TGDBusObjectSkeletonPrivate = record
    Unknown: Pointer;
  end;



  PPGDBusObjectSkeletonClass = ^PGDBusObjectSkeletonClass;
  PGDBusObjectSkeletonClass = ^TGDBusObjectSkeletonClass;
  TGDBusObjectSkeletonClass = object
    parent_class: TGObjectClass;
    authorize_method: function(object_: PGDBusObjectSkeleton; interface_: PGDBusInterfaceSkeleton; invocation: PGDBusMethodInvocation): gboolean; cdecl;
    padding: array [0..7] of gpointer;
  end;

  TGDBusProxyPrivate = record
    Unknown: Pointer;
  end;



  PPGDBusProxyClass = ^PGDBusProxyClass;
  PGDBusProxyClass = ^TGDBusProxyClass;
  TGDBusProxyClass = object
    parent_class: TGObjectClass;
    g_properties_changed: procedure(proxy: PGDBusProxy; changed_properties: PGVariant; invalidated_properties: PPgchar); cdecl;
    g_signal: procedure(proxy: PGDBusProxy; sender_name: Pgchar; signal_name: Pgchar; parameters: PGVariant); cdecl;
    padding: array [0..31] of gpointer;
  end;

  PPGDBusServer = ^PGDBusServer;
  PGDBusServer = ^TGDBusServer;

  PPGDBusServerFlags = ^PGDBusServerFlags;
  PGDBusServerFlags = ^TGDBusServerFlags;
  TGDBusServerFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property run_in_thread: DWord index 1 read GetBit write SetBit;
    property authentication_allow_anonymous: DWord index 2 read GetBit write SetBit;
  end;

  TGDBusServer = object(TGObject)
    function new_sync(address: Pgchar; flags: TGDBusServerFlags; guid: Pgchar; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusServer; cdecl; inline; static;
    function get_client_address: Pgchar; cdecl; inline;
    function get_flags: TGDBusServerFlags; cdecl; inline;
    function get_guid: Pgchar; cdecl; inline;
    function is_active: gboolean; cdecl; inline;
    procedure start; cdecl; inline;
    procedure stop; cdecl; inline;
    //property active: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_active ;
    //property address: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_address  { property is writeable but setter not declared } ;
    //property authentication_observer: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_authentication_observer  { property is writeable but setter not declared } ;
    property client_address:  Pgchar read get_client_address ;
    property flags:  TGDBusServerFlags read get_flags  { property is writeable but setter not declared } ;
    property guid:  Pgchar read get_guid  { property is writeable but setter not declared } ;
  end;

  PPGDataInputStream = ^PGDataInputStream;
  PGDataInputStream = ^TGDataInputStream;

  PPGDataStreamByteOrder = ^PGDataStreamByteOrder;
  PGDataStreamByteOrder = ^TGDataStreamByteOrder;

  PPGDataStreamNewlineType = ^PGDataStreamNewlineType;
  PGDataStreamNewlineType = ^TGDataStreamNewlineType;

  PPGDataInputStreamPrivate = ^PGDataInputStreamPrivate;
  PGDataInputStreamPrivate = ^TGDataInputStreamPrivate;
  TGDataInputStream = object(TGBufferedInputStream)
    priv2: PGDataInputStreamPrivate;
    function new(base_stream: PGInputStream): PGDataInputStream; cdecl; inline; static;
    function get_byte_order: TGDataStreamByteOrder; cdecl; inline;
    function get_newline_type: TGDataStreamNewlineType; cdecl; inline;
    function read_byte(cancellable: PGCancellable): guint8; cdecl; inline;
    function read_int16(cancellable: PGCancellable): gint16; cdecl; inline;
    function read_int32(cancellable: PGCancellable): gint32; cdecl; inline;
    function read_int64(cancellable: PGCancellable): gint64; cdecl; inline;
    function read_line(length: Pgsize; cancellable: PGCancellable): Pguint8; cdecl; inline;
    procedure read_line_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function read_line_finish(result_: PGAsyncResult; length: Pgsize): Pguint8; cdecl; inline;
    function read_line_finish_utf8(result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl; inline;
    function read_line_utf8(length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl; inline;
    function read_uint16(cancellable: PGCancellable): guint16; cdecl; inline;
    function read_uint32(cancellable: PGCancellable): guint32; cdecl; inline;
    function read_uint64(cancellable: PGCancellable): guint64; cdecl; inline;
    function read_until(stop_chars: Pgchar; length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl; inline;
    procedure read_until_async(stop_chars: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function read_until_finish(result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl; inline;
    function read_upto(stop_chars: Pgchar; stop_chars_len: gssize; length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl; inline;
    procedure read_upto_async(stop_chars: Pgchar; stop_chars_len: gssize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function read_upto_finish(result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl; inline;
    procedure set_byte_order(order: TGDataStreamByteOrder); cdecl; inline;
    procedure set_newline_type(type_: TGDataStreamNewlineType); cdecl; inline;
    property byte_order:  TGDataStreamByteOrder read get_byte_order  { property is writeable but setter not declared } ;
    property newline_type:  TGDataStreamNewlineType read get_newline_type  { property is writeable but setter not declared } ;
  end;

  TGDataInputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGDataInputStreamClass = ^PGDataInputStreamClass;
  PGDataInputStreamClass = ^TGDataInputStreamClass;
  TGDataInputStreamClass = object
    parent_class: TGBufferedInputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGDataOutputStream = ^PGDataOutputStream;
  PGDataOutputStream = ^TGDataOutputStream;

  PPGDataOutputStreamPrivate = ^PGDataOutputStreamPrivate;
  PGDataOutputStreamPrivate = ^TGDataOutputStreamPrivate;
  TGDataOutputStream = object(TGFilterOutputStream)
    priv1: PGDataOutputStreamPrivate;
    function new(base_stream: PGOutputStream): PGDataOutputStream; cdecl; inline; static;
    function get_byte_order: TGDataStreamByteOrder; cdecl; inline;
    function put_byte(data: guint8; cancellable: PGCancellable): gboolean; cdecl; inline;
    function put_int16(data: gint16; cancellable: PGCancellable): gboolean; cdecl; inline;
    function put_int32(data: gint32; cancellable: PGCancellable): gboolean; cdecl; inline;
    function put_int64(data: gint64; cancellable: PGCancellable): gboolean; cdecl; inline;
    function put_string(str: Pgchar; cancellable: PGCancellable): gboolean; cdecl; inline;
    function put_uint16(data: guint16; cancellable: PGCancellable): gboolean; cdecl; inline;
    function put_uint32(data: guint32; cancellable: PGCancellable): gboolean; cdecl; inline;
    function put_uint64(data: guint64; cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure set_byte_order(order: TGDataStreamByteOrder); cdecl; inline;
    property byte_order:  TGDataStreamByteOrder read get_byte_order  { property is writeable but setter not declared } ;
  end;

  TGDataOutputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGDataOutputStreamClass = ^PGDataOutputStreamClass;
  PGDataOutputStreamClass = ^TGDataOutputStreamClass;
  TGDataOutputStreamClass = object
    parent_class: TGFilterOutputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGDesktopAppInfo = ^PGDesktopAppInfo;
  PGDesktopAppInfo = ^TGDesktopAppInfo;

  PPGDesktopAppLaunchCallback = ^PGDesktopAppLaunchCallback;
  PGDesktopAppLaunchCallback = ^TGDesktopAppLaunchCallback;
  TGDesktopAppLaunchCallback = procedure(appinfo: PGDesktopAppInfo; pid: TGPid; user_data: gpointer); cdecl;
  TGDesktopAppInfo = object(TGObject)
    function new(desktop_id: Pgchar): PGDesktopAppInfo; cdecl; inline; static;
    function new_from_filename(filename: Pgchar): PGDesktopAppInfo; cdecl; inline; static;
    function new_from_keyfile(key_file: PGKeyFile): PGDesktopAppInfo; cdecl; inline; static;
    procedure set_desktop_env(desktop_env: Pgchar); cdecl; inline; static;
    function get_categories: Pgchar; cdecl; inline;
    function get_filename: Pgchar; cdecl; inline;
    function get_generic_name: Pgchar; cdecl; inline;
    function get_is_hidden: gboolean; cdecl; inline;
    function get_nodisplay: gboolean; cdecl; inline;
    function get_show_in(desktop_env: Pgchar): gboolean; cdecl; inline;
    function launch_uris_as_manager(uris: PGList; launch_context: PGAppLaunchContext; spawn_flags: TGSpawnFlags; user_setup: TGSpawnChildSetupFunc; user_setup_data: gpointer; pid_callback: TGDesktopAppLaunchCallback; pid_callback_data: gpointer): gboolean; cdecl; inline;
    property filename:  Pgchar read get_filename  { property is writeable but setter not declared } ;
  end;

  PPGDesktopAppInfoClass = ^PGDesktopAppInfoClass;
  PGDesktopAppInfoClass = ^TGDesktopAppInfoClass;
  TGDesktopAppInfoClass = object
    parent_class: TGObjectClass;
  end;

  PPGDesktopAppInfoLookup = ^PGDesktopAppInfoLookup;
  PGDesktopAppInfoLookup = ^TGDesktopAppInfoLookup;
  TGDesktopAppInfoLookup = object
    function get_default_for_uri_scheme(uri_scheme: Pgchar): PGAppInfo; cdecl; inline;
  end;

  PPGDesktopAppInfoLookupIface = ^PGDesktopAppInfoLookupIface;
  PGDesktopAppInfoLookupIface = ^TGDesktopAppInfoLookupIface;
  TGDesktopAppInfoLookupIface = object
    g_iface: TGTypeInterface;
    get_default_for_uri_scheme: function(lookup: PGDesktopAppInfoLookup; uri_scheme: Pgchar): PGAppInfo; cdecl;
  end;

  PPGPasswordSave = ^PGPasswordSave;
  PGPasswordSave = ^TGPasswordSave;

  PPGMountOperationResult = ^PGMountOperationResult;
  PGMountOperationResult = ^TGMountOperationResult;

  PPGMountOperationPrivate = ^PGMountOperationPrivate;
  PGMountOperationPrivate = ^TGMountOperationPrivate;
  TGMountOperation = object(TGObject)
    priv: PGMountOperationPrivate;
    function new: PGMountOperation; cdecl; inline; static;
    function get_anonymous: gboolean; cdecl; inline;
    function get_choice: gint; cdecl; inline;
    function get_domain: Pgchar; cdecl; inline;
    function get_password: Pgchar; cdecl; inline;
    function get_password_save: TGPasswordSave; cdecl; inline;
    function get_username: Pgchar; cdecl; inline;
    procedure reply(result_: TGMountOperationResult); cdecl; inline;
    procedure set_anonymous(anonymous: gboolean); cdecl; inline;
    procedure set_choice(choice: gint); cdecl; inline;
    procedure set_domain(domain: Pgchar); cdecl; inline;
    procedure set_password(password: Pgchar); cdecl; inline;
    procedure set_password_save(save: TGPasswordSave); cdecl; inline;
    procedure set_username(username: Pgchar); cdecl; inline;
    property anonymous:  gboolean read get_anonymous  { property is writeable but setter not declared } ;
    property choice:  gint read get_choice  { property is writeable but setter not declared } ;
    property domain:  Pgchar read get_domain  { property is writeable but setter not declared } ;
    property password:  Pgchar read get_password  { property is writeable but setter not declared } ;
    property password_save:  TGPasswordSave read get_password_save  { property is writeable but setter not declared } ;
    property username:  Pgchar read get_username  { property is writeable but setter not declared } ;
  end;

  PPGDriveStartStopType = ^PGDriveStartStopType;
  PGDriveStartStopType = ^TGDriveStartStopType;

  PPGDrive = ^PGDrive;
  PGDrive = ^TGDrive;
  TGDrive = object
    changed: procedure; cdecl;
    disconnected: procedure; cdecl;
    eject_button: procedure; cdecl;
    stop_button: procedure; cdecl;
    function can_eject: gboolean; cdecl; inline;
    function can_poll_for_media: gboolean; cdecl; inline;
    function can_start: gboolean; cdecl; inline;
    function can_start_degraded: gboolean; cdecl; inline;
    function can_stop: gboolean; cdecl; inline;
    
    
    procedure eject_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function eject_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function enumerate_identifiers: PPgchar; cdecl; inline;
    function get_icon: PGIcon; cdecl; inline;
    function get_identifier(kind: Pgchar): Pgchar; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_start_stop_type: TGDriveStartStopType; cdecl; inline;
    function get_volumes: PGList; cdecl; inline;
    function has_media: gboolean; cdecl; inline;
    function has_volumes: gboolean; cdecl; inline;
    function is_media_check_automatic: gboolean; cdecl; inline;
    function is_media_removable: gboolean; cdecl; inline;
    procedure poll_for_media(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function poll_for_media_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    procedure start(flags: TGDriveStartFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function start_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    procedure stop(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function stop_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
  end;

  PPGDriveIface = ^PGDriveIface;
  PGDriveIface = ^TGDriveIface;
  TGDriveIface = object
    g_iface: TGTypeInterface;
    changed: procedure(drive: PGDrive); cdecl;
    disconnected: procedure(drive: PGDrive); cdecl;
    eject_button: procedure(drive: PGDrive); cdecl;
    get_name: function(drive: PGDrive): Pgchar; cdecl;
    get_icon: function(drive: PGDrive): PGIcon; cdecl;
    has_volumes: function(drive: PGDrive): gboolean; cdecl;
    get_volumes: function(drive: PGDrive): PGList; cdecl;
    is_media_removable: function(drive: PGDrive): gboolean; cdecl;
    has_media: function(drive: PGDrive): gboolean; cdecl;
    is_media_check_automatic: function(drive: PGDrive): gboolean; cdecl;
    can_eject: function(drive: PGDrive): gboolean; cdecl;
    can_poll_for_media: function(drive: PGDrive): gboolean; cdecl;
    eject: procedure(drive: PGDrive; flags: TGMountUnmountFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_finish: function(drive: PGDrive; result_: PGAsyncResult): gboolean; cdecl;
    poll_for_media: procedure(drive: PGDrive; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    poll_for_media_finish: function(drive: PGDrive; result_: PGAsyncResult): gboolean; cdecl;
    get_identifier: function(drive: PGDrive; kind: Pgchar): Pgchar; cdecl;
    enumerate_identifiers: function(drive: PGDrive): PPgchar; cdecl;
    get_start_stop_type: function(drive: PGDrive): TGDriveStartStopType; cdecl;
    can_start: function(drive: PGDrive): gboolean; cdecl;
    can_start_degraded: function(drive: PGDrive): gboolean; cdecl;
    start: procedure(drive: PGDrive; flags: TGDriveStartFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    start_finish: function(drive: PGDrive; result_: PGAsyncResult): gboolean; cdecl;
    can_stop: function(drive: PGDrive): gboolean; cdecl;
    stop: procedure(drive: PGDrive; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    stop_finish: function(drive: PGDrive; result_: PGAsyncResult): gboolean; cdecl;
    stop_button: procedure(drive: PGDrive); cdecl;
    eject_with_operation: procedure(drive: PGDrive; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_with_operation_finish: function(drive: PGDrive; result_: PGAsyncResult): gboolean; cdecl;
  end;

  PPGEmblem = ^PGEmblem;
  PGEmblem = ^TGEmblem;

  PPGEmblemOrigin = ^PGEmblemOrigin;
  PGEmblemOrigin = ^TGEmblemOrigin;
  TGEmblem = object(TGObject)
    function new(icon: PGIcon): PGEmblem; cdecl; inline; static;
    function new_with_origin(icon: PGIcon; origin: TGEmblemOrigin): PGEmblem; cdecl; inline; static;
    function get_icon: PGIcon; cdecl; inline;
    function get_origin: TGEmblemOrigin; cdecl; inline;
    property icon:  PGIcon read get_icon  { property is writeable but setter not declared } ;
    property origin:  TGEmblemOrigin read get_origin  { property is writeable but setter not declared } ;
  end;

  PPGEmblemClass = ^PGEmblemClass;
  PGEmblemClass = ^TGEmblemClass;
  TGEmblemClass = object
  end;

  PPGEmblemedIconPrivate = ^PGEmblemedIconPrivate;
  PGEmblemedIconPrivate = ^TGEmblemedIconPrivate;

  TGEmblemedIconPrivate = record
    Unknown: Pointer;
  end;



  PPGEmblemedIcon = ^PGEmblemedIcon;
  PGEmblemedIcon = ^TGEmblemedIcon;
  TGEmblemedIcon = object(TGObject)
    priv: PGEmblemedIconPrivate;
    function new(icon: PGIcon; emblem: PGEmblem): PGIcon; cdecl; inline; static;
    procedure add_emblem(emblem: PGEmblem); cdecl; inline;
    procedure clear_emblems; cdecl; inline;
    function get_emblems: PGList; cdecl; inline;
    function get_icon: PGIcon; cdecl; inline;
    //property gicon: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_gicon  { property is writeable but setter not declared } ;
  end;

  PPGEmblemedIconClass = ^PGEmblemedIconClass;
  PGEmblemedIconClass = ^TGEmblemedIconClass;
  TGEmblemedIconClass = object
    parent_class: TGObjectClass;
  end;

  PPGFileOutputStreamPrivate = ^PGFileOutputStreamPrivate;
  PGFileOutputStreamPrivate = ^TGFileOutputStreamPrivate;
  TGFileOutputStream = object(TGOutputStream)
    priv1: PGFileOutputStreamPrivate;
    function get_etag: Pgchar; cdecl; inline;
    function query_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; inline;
    procedure query_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function query_info_finish(result_: PGAsyncResult): PGFileInfo; cdecl; inline;
  end;

  PPGFileIOStreamPrivate = ^PGFileIOStreamPrivate;
  PGFileIOStreamPrivate = ^TGFileIOStreamPrivate;
  TGFileIOStream = object(TGIOStream)
    priv1: PGFileIOStreamPrivate;
    function get_etag: Pgchar; cdecl; inline;
    function query_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; inline;
    procedure query_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function query_info_finish(result_: PGAsyncResult): PGFileInfo; cdecl; inline;
  end;

  PPGFileEnumeratorPrivate = ^PGFileEnumeratorPrivate;
  PGFileEnumeratorPrivate = ^TGFileEnumeratorPrivate;
  TGFileEnumerator = object(TGObject)
    priv: PGFileEnumeratorPrivate;
    function close(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function close_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function get_container: PGFile; cdecl; inline;
    function has_pending: gboolean; cdecl; inline;
    function is_closed: gboolean; cdecl; inline;
    function next_file(cancellable: PGCancellable): PGFileInfo; cdecl; inline;
    procedure next_files_async(num_files: gint; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function next_files_finish(result_: PGAsyncResult): PGList; cdecl; inline;
    procedure set_pending(pending: gboolean); cdecl; inline;
    property container:  PGFile read get_container  { property is writeable but setter not declared } ;
  end;

  PPGVolume = ^PGVolume;
  PGVolume = ^TGVolume;
  TGMount = object
    changed: procedure; cdecl;
    pre_unmount: procedure; cdecl;
    unmounted: procedure; cdecl;
    function can_eject: gboolean; cdecl; inline;
    function can_unmount: gboolean; cdecl; inline;
    
    
    procedure eject_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function eject_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function get_default_location: PGFile; cdecl; inline;
    function get_drive: PGDrive; cdecl; inline;
    function get_icon: PGIcon; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_root: PGFile; cdecl; inline;
    function get_uuid: Pgchar; cdecl; inline;
    function get_volume: PGVolume; cdecl; inline;
    procedure guess_content_type(force_rescan: gboolean; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function guess_content_type_finish(result_: PGAsyncResult): PPgchar; cdecl; inline;
    function guess_content_type_sync(force_rescan: gboolean; cancellable: PGCancellable): PPgchar; cdecl; inline;
    function is_shadowed: gboolean; cdecl; inline;
    procedure remount(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function remount_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    procedure shadow; cdecl; inline;
    
    
    procedure unmount_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function unmount_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    procedure unshadow; cdecl; inline;
  end;

  PPGFileMonitorEvent = ^PGFileMonitorEvent;
  PGFileMonitorEvent = ^TGFileMonitorEvent;

  PPGFileMonitorPrivate = ^PGFileMonitorPrivate;
  PGFileMonitorPrivate = ^TGFileMonitorPrivate;
  TGFileMonitor = object(TGObject)
    priv: PGFileMonitorPrivate;
    function cancel: gboolean; cdecl; inline;
    procedure emit_event(child: PGFile; other_file: PGFile; event_type: TGFileMonitorEvent); cdecl; inline;
    function is_cancelled: gboolean; cdecl; inline;
    procedure set_rate_limit(limit_msecs: gint); cdecl; inline;
    //property cancelled: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_cancelled ;
    //property rate_limit: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_rate_limit  { property is writeable but setter not declared } ;
  end;

  PPGFileAttributeStatus = ^PGFileAttributeStatus;
  PGFileAttributeStatus = ^TGFileAttributeStatus;

  PPGFileAttributeMatcher = ^PGFileAttributeMatcher;
  PGFileAttributeMatcher = ^TGFileAttributeMatcher;
  TGFileInfo = object(TGObject)
    function new: PGFileInfo; cdecl; inline; static;
    procedure clear_status; cdecl; inline;
    procedure copy_into(dest_info: PGFileInfo); cdecl; inline;
    function dup: PGFileInfo; cdecl; inline;
    function get_attribute_as_string(attribute: Pgchar): Pgchar; cdecl; inline;
    function get_attribute_boolean(attribute: Pgchar): gboolean; cdecl; inline;
    function get_attribute_byte_string(attribute: Pgchar): Pgchar; cdecl; inline;
    function get_attribute_data(attribute: Pgchar; type_: PGFileAttributeType; value_pp: Pgpointer; status: PGFileAttributeStatus): gboolean; cdecl; inline;
    function get_attribute_int32(attribute: Pgchar): gint32; cdecl; inline;
    function get_attribute_int64(attribute: Pgchar): gint64; cdecl; inline;
    function get_attribute_object(attribute: Pgchar): PGObject; cdecl; inline;
    function get_attribute_status(attribute: Pgchar): TGFileAttributeStatus; cdecl; inline;
    function get_attribute_string(attribute: Pgchar): Pgchar; cdecl; inline;
    function get_attribute_stringv(attribute: Pgchar): PPgchar; cdecl; inline;
    function get_attribute_type(attribute: Pgchar): TGFileAttributeType; cdecl; inline;
    function get_attribute_uint32(attribute: Pgchar): guint32; cdecl; inline;
    function get_attribute_uint64(attribute: Pgchar): guint64; cdecl; inline;
    function get_content_type: Pgchar; cdecl; inline;
    function get_display_name: Pgchar; cdecl; inline;
    function get_edit_name: Pgchar; cdecl; inline;
    function get_etag: Pgchar; cdecl; inline;
    function get_file_type: TGFileType; cdecl; inline;
    function get_icon: PGIcon; cdecl; inline;
    function get_is_backup: gboolean; cdecl; inline;
    function get_is_hidden: gboolean; cdecl; inline;
    function get_is_symlink: gboolean; cdecl; inline;
    procedure get_modification_time(result_: PGTimeVal); cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_size: gint64; cdecl; inline;
    function get_sort_order: gint32; cdecl; inline;
    function get_symlink_target: Pgchar; cdecl; inline;
    function has_attribute(attribute: Pgchar): gboolean; cdecl; inline;
    function has_namespace(name_space: Pgchar): gboolean; cdecl; inline;
    function list_attributes(name_space: Pgchar): PPgchar; cdecl; inline;
    procedure remove_attribute(attribute: Pgchar); cdecl; inline;
    procedure set_attribute(attribute: Pgchar; type_: TGFileAttributeType; value_p: gpointer); cdecl; inline;
    procedure set_attribute_boolean(attribute: Pgchar; attr_value: gboolean); cdecl; inline;
    procedure set_attribute_byte_string(attribute: Pgchar; attr_value: Pgchar); cdecl; inline;
    procedure set_attribute_int32(attribute: Pgchar; attr_value: gint32); cdecl; inline;
    procedure set_attribute_int64(attribute: Pgchar; attr_value: gint64); cdecl; inline;
    procedure set_attribute_mask(mask: PGFileAttributeMatcher); cdecl; inline;
    procedure set_attribute_object(attribute: Pgchar; attr_value: PGObject); cdecl; inline;
    function set_attribute_status(attribute: Pgchar; status: TGFileAttributeStatus): gboolean; cdecl; inline;
    procedure set_attribute_string(attribute: Pgchar; attr_value: Pgchar); cdecl; inline;
    procedure set_attribute_stringv(attribute: Pgchar; attr_value: PPgchar); cdecl; inline;
    procedure set_attribute_uint32(attribute: Pgchar; attr_value: guint32); cdecl; inline;
    procedure set_attribute_uint64(attribute: Pgchar; attr_value: guint64); cdecl; inline;
    procedure set_content_type(content_type: Pgchar); cdecl; inline;
    procedure set_display_name(display_name: Pgchar); cdecl; inline;
    procedure set_edit_name(edit_name: Pgchar); cdecl; inline;
    procedure set_file_type(type_: TGFileType); cdecl; inline;
    procedure set_icon(icon: PGIcon); cdecl; inline;
    procedure set_is_hidden(is_hidden: gboolean); cdecl; inline;
    procedure set_is_symlink(is_symlink: gboolean); cdecl; inline;
    procedure set_modification_time(mtime: PGTimeVal); cdecl; inline;
    procedure set_name(name: Pgchar); cdecl; inline;
    procedure set_size(size: gint64); cdecl; inline;
    procedure set_sort_order(sort_order: gint32); cdecl; inline;
    procedure set_symlink_target(symlink_target: Pgchar); cdecl; inline;
    procedure unset_attribute_mask; cdecl; inline;
  end;

  PPGFileAttributeInfoFlags = ^PGFileAttributeInfoFlags;
  PGFileAttributeInfoFlags = ^TGFileAttributeInfoFlags;
  TGFileAttributeInfoFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property copy_with_file: DWord index 1 read GetBit write SetBit;
    property copy_when_moved: DWord index 2 read GetBit write SetBit;
  end;


  PPGFileAttributeInfo = ^PGFileAttributeInfo;
  PGFileAttributeInfo = ^TGFileAttributeInfo;
  TGFileAttributeInfoList = object
    infos: PGFileAttributeInfo;
    n_infos: gint;
    function new: PGFileAttributeInfoList; cdecl; inline; static;
    procedure add(name: Pgchar; type_: TGFileAttributeType; flags: TGFileAttributeInfoFlags); cdecl; inline;
    function dup: PGFileAttributeInfoList; cdecl; inline;
    function lookup(name: Pgchar): PGFileAttributeInfo; cdecl; inline;
    function ref: PGFileAttributeInfoList; cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  PPGFileInputStreamPrivate = ^PGFileInputStreamPrivate;
  PGFileInputStreamPrivate = ^TGFileInputStreamPrivate;
  TGFileInputStream = object(TGInputStream)
    priv1: PGFileInputStreamPrivate;
    function query_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; inline;
    procedure query_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function query_info_finish(result_: PGAsyncResult): PGFileInfo; cdecl; inline;
  end;

  TGFileAttributeInfo = record
    name: Pgchar;
    type_: TGFileAttributeType;
    flags: TGFileAttributeInfoFlags;
  end;


  TGFileAttributeMatcher = object
    function new(attributes: Pgchar): PGFileAttributeMatcher; cdecl; inline; static;
    function enumerate_namespace(ns: Pgchar): gboolean; cdecl; inline;
    function enumerate_next: Pgchar; cdecl; inline;
    function matches(attribute: Pgchar): gboolean; cdecl; inline;
    function matches_only(attribute: Pgchar): gboolean; cdecl; inline;
    function ref: PGFileAttributeMatcher; cdecl; inline;
    procedure unref; cdecl; inline;
  end;

  PPGFileDescriptorBased = ^PGFileDescriptorBased;
  PGFileDescriptorBased = ^TGFileDescriptorBased;
  TGFileDescriptorBased = object
    function get_fd: gint; cdecl; inline;
  end;

  PPGFileDescriptorBasedIface = ^PGFileDescriptorBasedIface;
  PGFileDescriptorBasedIface = ^TGFileDescriptorBasedIface;
  TGFileDescriptorBasedIface = object
    g_iface: TGTypeInterface;
    get_fd: function(fd_based: PGFileDescriptorBased): gint; cdecl;
  end;

  TGFileEnumeratorPrivate = record
    Unknown: Pointer;
  end;



  PPGFileEnumeratorClass = ^PGFileEnumeratorClass;
  PGFileEnumeratorClass = ^TGFileEnumeratorClass;
  TGFileEnumeratorClass = object
    parent_class: TGObjectClass;
    next_file: function(enumerator: PGFileEnumerator; cancellable: PGCancellable): PGFileInfo; cdecl;
    close_fn: function(enumerator: PGFileEnumerator; cancellable: PGCancellable): gboolean; cdecl;
    next_files_async: procedure(enumerator: PGFileEnumerator; num_files: gint; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    next_files_finish: function(enumerator: PGFileEnumerator; result_: PGAsyncResult): PGList; cdecl;
    close_async: procedure(enumerator: PGFileEnumerator; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    close_finish: function(enumerator: PGFileEnumerator; result_: PGAsyncResult): gboolean; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
    _g_reserved7: procedure; cdecl;
  end;

  PPGSeekable = ^PGSeekable;
  PGSeekable = ^TGSeekable;
  TGSeekable = object
    function can_seek: gboolean; cdecl; inline;
    function can_truncate: gboolean; cdecl; inline;
    function seek(offset: gint64; type_: TGSeekType; cancellable: PGCancellable): gboolean; cdecl; inline;
    function tell: gint64; cdecl; inline;
    function truncate(offset: gint64; cancellable: PGCancellable): gboolean; cdecl; inline;
  end;

  TGFileIOStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGIOStreamClass = ^PGIOStreamClass;
  PGIOStreamClass = ^TGIOStreamClass;
  TGIOStreamClass = object
    parent_class: TGObjectClass;
    get_input_stream: function(stream: PGIOStream): PGInputStream; cdecl;
    get_output_stream: function(stream: PGIOStream): PGOutputStream; cdecl;
    close_fn: function(stream: PGIOStream; cancellable: PGCancellable): gboolean; cdecl;
    close_async: procedure(stream: PGIOStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    close_finish: function(stream: PGIOStream; result_: PGAsyncResult): gboolean; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
    _g_reserved7: procedure; cdecl;
    _g_reserved8: procedure; cdecl;
    _g_reserved9: procedure; cdecl;
    _g_reserved10: procedure; cdecl;
  end;

  PPGFileIOStreamClass = ^PGFileIOStreamClass;
  PGFileIOStreamClass = ^TGFileIOStreamClass;
  TGFileIOStreamClass = object
    parent_class: TGIOStreamClass;
    tell: function(stream: PGFileIOStream): gint64; cdecl;
    can_seek: function(stream: PGFileIOStream): gboolean; cdecl;
    seek: function(stream: PGFileIOStream; offset: gint64; type_: TGSeekType; cancellable: PGCancellable): gboolean; cdecl;
    can_truncate: function(stream: PGFileIOStream): gboolean; cdecl;
    truncate_fn: function(stream: PGFileIOStream; size: gint64; cancellable: PGCancellable): gboolean; cdecl;
    query_info: function(stream: PGFileIOStream; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
    query_info_async: procedure(stream: PGFileIOStream; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    query_info_finish: function(stream: PGFileIOStream; result_: PGAsyncResult): PGFileInfo; cdecl;
    get_etag: function(stream: PGFileIOStream): Pgchar; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGLoadableIcon = ^PGLoadableIcon;
  PGLoadableIcon = ^TGLoadableIcon;
  TGLoadableIcon = object
    function load(size: gint; type_: PPgchar; cancellable: PGCancellable): PGInputStream; cdecl; inline;
    procedure load_async(size: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function load_finish(res: PGAsyncResult; type_: PPgchar): PGInputStream; cdecl; inline;
  end;

  PPGFileIcon = ^PGFileIcon;
  PGFileIcon = ^TGFileIcon;
  TGFileIcon = object(TGObject)
    function get_file: PGFile; cdecl; inline;
    property file_:  PGFile read get_file  { property is writeable but setter not declared } ;
  end;

  PPGFileIconClass = ^PGFileIconClass;
  PGFileIconClass = ^TGFileIconClass;
  TGFileIconClass = object
  end;

  PPGFileIface = ^PGFileIface;
  PGFileIface = ^TGFileIface;
  TGFileIface = object
    g_iface: TGTypeInterface;
    dup: function(file_: PGFile): PGFile; cdecl;
    hash: function(file_: PGFile): guint; cdecl;
    equal: function(file1: PGFile; file2: PGFile): gboolean; cdecl;
    is_native: function(file_: PGFile): gboolean; cdecl;
    has_uri_scheme: function(file_: PGFile; uri_scheme: Pgchar): gboolean; cdecl;
    get_uri_scheme: function(file_: PGFile): Pgchar; cdecl;
    get_basename: function(file_: PGFile): Pgchar; cdecl;
    get_path: function(file_: PGFile): Pgchar; cdecl;
    get_uri: function(file_: PGFile): Pgchar; cdecl;
    get_parse_name: function(file_: PGFile): Pgchar; cdecl;
    get_parent: function(file_: PGFile): PGFile; cdecl;
    prefix_matches: function(prefix: PGFile; file_: PGFile): gboolean; cdecl;
    get_relative_path: function(parent: PGFile; descendant: PGFile): Pgchar; cdecl;
    resolve_relative_path: function(file_: PGFile; relative_path: Pgchar): PGFile; cdecl;
    get_child_for_display_name: function(file_: PGFile; display_name: Pgchar): PGFile; cdecl;
    enumerate_children: function(file_: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileEnumerator; cdecl;
    enumerate_children_async: procedure(file_: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    enumerate_children_finish: function(file_: PGFile; res: PGAsyncResult): PGFileEnumerator; cdecl;
    query_info: function(file_: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileInfo; cdecl;
    query_info_async: procedure(file_: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    query_info_finish: function(file_: PGFile; res: PGAsyncResult): PGFileInfo; cdecl;
    query_filesystem_info: function(file_: PGFile; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
    query_filesystem_info_async: procedure(file_: PGFile; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    query_filesystem_info_finish: function(file_: PGFile; res: PGAsyncResult): PGFileInfo; cdecl;
    find_enclosing_mount: function(file_: PGFile; cancellable: PGCancellable): PGMount; cdecl;
    find_enclosing_mount_async: procedure(file_: PGFile; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    find_enclosing_mount_finish: function(file_: PGFile; res: PGAsyncResult): PGMount; cdecl;
    set_display_name: function(file_: PGFile; display_name: Pgchar; cancellable: PGCancellable): PGFile; cdecl;
    set_display_name_async: procedure(file_: PGFile; display_name: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    set_display_name_finish: function(file_: PGFile; res: PGAsyncResult): PGFile; cdecl;
    query_settable_attributes: function(file_: PGFile; cancellable: PGCancellable): PGFileAttributeInfoList; cdecl;
    _query_settable_attributes_async: procedure; cdecl;
    _query_settable_attributes_finish: procedure; cdecl;
    query_writable_namespaces: function(file_: PGFile; cancellable: PGCancellable): PGFileAttributeInfoList; cdecl;
    _query_writable_namespaces_async: procedure; cdecl;
    _query_writable_namespaces_finish: procedure; cdecl;
    set_attribute: function(file_: PGFile; attribute: Pgchar; type_: TGFileAttributeType; value_p: gpointer; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
    set_attributes_from_info: function(file_: PGFile; info: PGFileInfo; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
    set_attributes_async: procedure(file_: PGFile; info: PGFileInfo; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    set_attributes_finish: function(file_: PGFile; result_: PGAsyncResult; info: PPGFileInfo): gboolean; cdecl;
    read_fn: function(file_: PGFile; cancellable: PGCancellable): PGFileInputStream; cdecl;
    read_async: procedure(file_: PGFile; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    read_finish: function(file_: PGFile; res: PGAsyncResult): PGFileInputStream; cdecl;
    append_to: function(file_: PGFile; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl;
    append_to_async: procedure(file_: PGFile; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    append_to_finish: function(file_: PGFile; res: PGAsyncResult): PGFileOutputStream; cdecl;
    create: function(file_: PGFile; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl;
    create_async: procedure(file_: PGFile; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    create_finish: function(file_: PGFile; res: PGAsyncResult): PGFileOutputStream; cdecl;
    replace: function(file_: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl;
    replace_async: procedure(file_: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    replace_finish: function(file_: PGFile; res: PGAsyncResult): PGFileOutputStream; cdecl;
    delete_file: function(file_: PGFile; cancellable: PGCancellable): gboolean; cdecl;
    _delete_file_async: procedure; cdecl;
    _delete_file_finish: procedure; cdecl;
    trash: function(file_: PGFile; cancellable: PGCancellable): gboolean; cdecl;
    _trash_async: procedure; cdecl;
    _trash_finish: procedure; cdecl;
    make_directory: function(file_: PGFile; cancellable: PGCancellable): gboolean; cdecl;
    _make_directory_async: procedure; cdecl;
    _make_directory_finish: procedure; cdecl;
    make_symbolic_link: function(file_: PGFile; symlink_value: Pgchar; cancellable: PGCancellable): gboolean; cdecl;
    _make_symbolic_link_async: procedure; cdecl;
    _make_symbolic_link_finish: procedure; cdecl;
    copy: function(source: PGFile; destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl;
    copy_async: procedure(source: PGFile; destination: PGFile; flags: TGFileCopyFlags; io_priority: gint; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    copy_finish: function(file_: PGFile; res: PGAsyncResult): gboolean; cdecl;
    move: function(source: PGFile; destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl;
    _move_async: procedure; cdecl;
    _move_finish: procedure; cdecl;
    mount_mountable: procedure(file_: PGFile; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    mount_mountable_finish: function(file_: PGFile; result_: PGAsyncResult): PGFile; cdecl;
    unmount_mountable: procedure(file_: PGFile; flags: TGMountUnmountFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    unmount_mountable_finish: function(file_: PGFile; result_: PGAsyncResult): gboolean; cdecl;
    eject_mountable: procedure(file_: PGFile; flags: TGMountUnmountFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_mountable_finish: function(file_: PGFile; result_: PGAsyncResult): gboolean; cdecl;
    mount_enclosing_volume: procedure(location: PGFile; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    mount_enclosing_volume_finish: function(location: PGFile; result_: PGAsyncResult): gboolean; cdecl;
    monitor_dir: function(file_: PGFile; flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl;
    monitor_file: function(file_: PGFile; flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl;
    open_readwrite: function(file_: PGFile; cancellable: PGCancellable): PGFileIOStream; cdecl;
    open_readwrite_async: procedure(file_: PGFile; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    open_readwrite_finish: function(file_: PGFile; res: PGAsyncResult): PGFileIOStream; cdecl;
    create_readwrite: function(file_: PGFile; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl;
    create_readwrite_async: procedure(file_: PGFile; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    create_readwrite_finish: function(file_: PGFile; res: PGAsyncResult): PGFileIOStream; cdecl;
    replace_readwrite: function(file_: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl;
    replace_readwrite_async: procedure(file_: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    replace_readwrite_finish: function(file_: PGFile; res: PGAsyncResult): PGFileIOStream; cdecl;
    start_mountable: procedure(file_: PGFile; flags: TGDriveStartFlags; start_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    start_mountable_finish: function(file_: PGFile; result_: PGAsyncResult): gboolean; cdecl;
    stop_mountable: procedure(file_: PGFile; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    stop_mountable_finish: function(file_: PGFile; result_: PGAsyncResult): gboolean; cdecl;
    supports_thread_contexts: gboolean;
    unmount_mountable_with_operation: procedure(file_: PGFile; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    unmount_mountable_with_operation_finish: function(file_: PGFile; result_: PGAsyncResult): gboolean; cdecl;
    eject_mountable_with_operation: procedure(file_: PGFile; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_mountable_with_operation_finish: function(file_: PGFile; result_: PGAsyncResult): gboolean; cdecl;
    poll_mountable: procedure(file_: PGFile; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    poll_mountable_finish: function(file_: PGFile; result_: PGAsyncResult): gboolean; cdecl;
  end;

  PPGFileInfoClass = ^PGFileInfoClass;
  PGFileInfoClass = ^TGFileInfoClass;
  TGFileInfoClass = object
  end;

  TGFileInputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGFileInputStreamClass = ^PGFileInputStreamClass;
  PGFileInputStreamClass = ^TGFileInputStreamClass;
  TGFileInputStreamClass = object
    parent_class: TGInputStreamClass;
    tell: function(stream: PGFileInputStream): gint64; cdecl;
    can_seek: function(stream: PGFileInputStream): gboolean; cdecl;
    seek: function(stream: PGFileInputStream; offset: gint64; type_: TGSeekType; cancellable: PGCancellable): gboolean; cdecl;
    query_info: function(stream: PGFileInputStream; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
    query_info_async: procedure(stream: PGFileInputStream; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    query_info_finish: function(stream: PGFileInputStream; result_: PGAsyncResult): PGFileInfo; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  TGFileMonitorPrivate = record
    Unknown: Pointer;
  end;



  PPGFileMonitorClass = ^PGFileMonitorClass;
  PGFileMonitorClass = ^TGFileMonitorClass;
  TGFileMonitorClass = object
    parent_class: TGObjectClass;
    changed: procedure(monitor: PGFileMonitor; file_: PGFile; other_file: PGFile; event_type: TGFileMonitorEvent); cdecl;
    cancel: function(monitor: PGFileMonitor): gboolean; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  TGFileOutputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGFileOutputStreamClass = ^PGFileOutputStreamClass;
  PGFileOutputStreamClass = ^TGFileOutputStreamClass;
  TGFileOutputStreamClass = object
    parent_class: TGOutputStreamClass;
    tell: function(stream: PGFileOutputStream): gint64; cdecl;
    can_seek: function(stream: PGFileOutputStream): gboolean; cdecl;
    seek: function(stream: PGFileOutputStream; offset: gint64; type_: TGSeekType; cancellable: PGCancellable): gboolean; cdecl;
    can_truncate: function(stream: PGFileOutputStream): gboolean; cdecl;
    truncate_fn: function(stream: PGFileOutputStream; size: gint64; cancellable: PGCancellable): gboolean; cdecl;
    query_info: function(stream: PGFileOutputStream; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
    query_info_async: procedure(stream: PGFileOutputStream; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    query_info_finish: function(stream: PGFileOutputStream; result_: PGAsyncResult): PGFileInfo; cdecl;
    get_etag: function(stream: PGFileOutputStream): Pgchar; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGFilenameCompleter = ^PGFilenameCompleter;
  PGFilenameCompleter = ^TGFilenameCompleter;
  TGFilenameCompleter = object(TGObject)
    function new: PGFilenameCompleter; cdecl; inline; static;
    function get_completion_suffix(initial_text: Pgchar): Pgchar; cdecl; inline;
    function get_completions(initial_text: Pgchar): PPgchar; cdecl; inline;
    procedure set_dirs_only(dirs_only: gboolean); cdecl; inline;
  end;

  PPGFilenameCompleterClass = ^PGFilenameCompleterClass;
  PGFilenameCompleterClass = ^TGFilenameCompleterClass;
  TGFilenameCompleterClass = object
    parent_class: TGObjectClass;
    got_completion_data: procedure(filename_completer: PGFilenameCompleter); cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
  end;

  PPGFilesystemPreviewType = ^PGFilesystemPreviewType;
  PGFilesystemPreviewType = ^TGFilesystemPreviewType;

  PPGIOErrorEnum = ^PGIOErrorEnum;
  PGIOErrorEnum = ^TGIOErrorEnum;

  PPGIOExtension = ^PGIOExtension;
  PGIOExtension = ^TGIOExtension;
  TGIOExtension = object
    function get_name: Pgchar; cdecl; inline;
    function get_priority: gint; cdecl; inline;
    function ref_class: PGTypeClass; cdecl; inline;
  end;

  PPGIOExtensionPoint = ^PGIOExtensionPoint;
  PGIOExtensionPoint = ^TGIOExtensionPoint;
  TGIOExtensionPoint = object
    function get_extension_by_name(name: Pgchar): PGIOExtension; cdecl; inline;
    function get_extensions: PGList; cdecl; inline;
    function get_required_type: TGType; cdecl; inline;
    procedure set_required_type(type_: TGType); cdecl; inline;
    function implement(extension_point_name: Pgchar; type_: TGType; extension_name: Pgchar; priority: gint): PGIOExtension; cdecl; inline; static;
    function lookup(name: Pgchar): PGIOExtensionPoint; cdecl; inline; static;
    function register(name: Pgchar): PGIOExtensionPoint; cdecl; inline; static;
  end;

  PPGIOModule = ^PGIOModule;
  PGIOModule = ^TGIOModule;
  TGIOModule = object(TGTypeModule)
    function new(filename: Pgchar): PGIOModule; cdecl; inline; static;
    
    
    
  end;

  PPGIOModuleClass = ^PGIOModuleClass;
  PGIOModuleClass = ^TGIOModuleClass;
  TGIOModuleClass = object
  end;

  PPGIOModuleScope = ^PGIOModuleScope;
  PGIOModuleScope = ^TGIOModuleScope;

  PPGIOModuleScopeFlags = ^PGIOModuleScopeFlags;
  PGIOModuleScopeFlags = ^TGIOModuleScopeFlags;
  TGIOModuleScope = object
    procedure block(basename: Pgchar); cdecl; inline;
    procedure free; cdecl; inline;
    function new(flags: TGIOModuleScopeFlags): PGIOModuleScope; cdecl; inline; static;
  end;

  PPGIOSchedulerJob = ^PGIOSchedulerJob;
  PGIOSchedulerJob = ^TGIOSchedulerJob;
  TGIOSchedulerJob = object
    function send_to_mainloop(func: TGSourceFunc; user_data: gpointer; notify: TGDestroyNotify): gboolean; cdecl; inline;
    procedure send_to_mainloop_async(func: TGSourceFunc; user_data: gpointer; notify: TGDestroyNotify); cdecl; inline;
  end;
  TGIOSchedulerJobFunc = function(job: PGIOSchedulerJob; cancellable: PGCancellable; user_data: gpointer): gboolean; cdecl;

  TGIOStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGIOStreamAdapter = ^PGIOStreamAdapter;
  PGIOStreamAdapter = ^TGIOStreamAdapter;

  TGIOStreamAdapter = record
    Unknown: Pointer;
  end;



  PPGIconIface = ^PGIconIface;
  PGIconIface = ^TGIconIface;
  TGIconIface = object
    g_iface: TGTypeInterface;
    hash: function(icon: PGIcon): guint; cdecl;
    equal: function(icon1: PGIcon; icon2: PGIcon): gboolean; cdecl;
    to_tokens: function(icon: PGIcon; tokens: Pgpointer; out_version: Pgint): gboolean; cdecl;
    from_tokens: function(tokens: PPgchar; num_tokens: gint; version: gint): PGIcon; cdecl;
  end;

  PPGInetAddress = ^PGInetAddress;
  PGInetAddress = ^TGInetAddress;

  PPGSocketFamily = ^PGSocketFamily;
  PGSocketFamily = ^TGSocketFamily;

  PPGInetAddressPrivate = ^PGInetAddressPrivate;
  PGInetAddressPrivate = ^TGInetAddressPrivate;
  TGInetAddress = object(TGObject)
    priv: PGInetAddressPrivate;
    function new_any(family: TGSocketFamily): PGInetAddress; cdecl; inline; static;
    function new_from_bytes(bytes: Pguint8; family: TGSocketFamily): PGInetAddress; cdecl; inline; static;
    function new_from_string(string_: Pgchar): PGInetAddress; cdecl; inline; static;
    function new_loopback(family: TGSocketFamily): PGInetAddress; cdecl; inline; static;
    function equal(other_address: PGInetAddress): gboolean; cdecl; inline;
    function get_family: TGSocketFamily; cdecl; inline;
    function get_is_any: gboolean; cdecl; inline;
    function get_is_link_local: gboolean; cdecl; inline;
    function get_is_loopback: gboolean; cdecl; inline;
    function get_is_mc_global: gboolean; cdecl; inline;
    function get_is_mc_link_local: gboolean; cdecl; inline;
    function get_is_mc_node_local: gboolean; cdecl; inline;
    function get_is_mc_org_local: gboolean; cdecl; inline;
    function get_is_mc_site_local: gboolean; cdecl; inline;
    function get_is_multicast: gboolean; cdecl; inline;
    function get_is_site_local: gboolean; cdecl; inline;
    function get_native_size: gsize; cdecl; inline;
    function to_bytes: Pguint8; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
    //property bytes: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_bytes  { property is writeable but setter not declared } ;
    property family:  TGSocketFamily read get_family  { property is writeable but setter not declared } ;
    property is_any:  gboolean read get_is_any ;
    property is_link_local:  gboolean read get_is_link_local ;
    property is_loopback:  gboolean read get_is_loopback ;
    property is_mc_global:  gboolean read get_is_mc_global ;
    property is_mc_link_local:  gboolean read get_is_mc_link_local ;
    property is_mc_node_local:  gboolean read get_is_mc_node_local ;
    property is_mc_org_local:  gboolean read get_is_mc_org_local ;
    property is_mc_site_local:  gboolean read get_is_mc_site_local ;
    property is_multicast:  gboolean read get_is_multicast ;
    property is_site_local:  gboolean read get_is_site_local ;
  end;

  TGInetAddressPrivate = record
    Unknown: Pointer;
  end;



  PPGInetAddressClass = ^PGInetAddressClass;
  PGInetAddressClass = ^TGInetAddressClass;
  TGInetAddressClass = object
    parent_class: TGObjectClass;
    to_string: function(address: PGInetAddress): Pgchar; cdecl;
    to_bytes: function(address: PGInetAddress): Pguint8; cdecl;
  end;

  PPGSocketConnectable = ^PGSocketConnectable;
  PGSocketConnectable = ^TGSocketConnectable;

  PPGSocketAddressEnumerator = ^PGSocketAddressEnumerator;
  PGSocketAddressEnumerator = ^TGSocketAddressEnumerator;
  TGSocketConnectable = object
    function enumerate: PGSocketAddressEnumerator; cdecl; inline;
    function proxy_enumerate: PGSocketAddressEnumerator; cdecl; inline;
  end;

  PPGSocketAddress = ^PGSocketAddress;
  PGSocketAddress = ^TGSocketAddress;
  TGSocketAddress = object(TGObject)
    function new_from_native(native: gpointer; len: gsize): PGSocketAddress; cdecl; inline; static;
    function get_family: TGSocketFamily; cdecl; inline;
    function get_native_size: gssize; cdecl; inline;
    function to_native(dest: gpointer; destlen: gsize): gboolean; cdecl; inline;
    property family:  TGSocketFamily read get_family ;
  end;

  PPGInetSocketAddressPrivate = ^PGInetSocketAddressPrivate;
  PGInetSocketAddressPrivate = ^TGInetSocketAddressPrivate;

  TGInetSocketAddressPrivate = record
    Unknown: Pointer;
  end;



  PPGInetSocketAddress = ^PGInetSocketAddress;
  PGInetSocketAddress = ^TGInetSocketAddress;
  TGInetSocketAddress = object(TGSocketAddress)
    priv: PGInetSocketAddressPrivate;
    function new(address: PGInetAddress; port: guint16): PGInetSocketAddress; cdecl; inline; static;
    function get_address: PGInetAddress; cdecl; inline;
    function get_port: guint16; cdecl; inline;
    property address:  PGInetAddress read get_address  { property is writeable but setter not declared } ;
    property port:  guint16 read get_port  { property is writeable but setter not declared } ;
  end;

  PPGSocketAddressClass = ^PGSocketAddressClass;
  PGSocketAddressClass = ^TGSocketAddressClass;
  TGSocketAddressClass = object
    parent_class: TGObjectClass;
    get_family: function(address: PGSocketAddress): TGSocketFamily; cdecl;
    get_native_size: function(address: PGSocketAddress): gssize; cdecl;
    to_native: function(address: PGSocketAddress; dest: gpointer; destlen: gsize): gboolean; cdecl;
  end;

  PPGInetSocketAddressClass = ^PGInetSocketAddressClass;
  PGInetSocketAddressClass = ^TGInetSocketAddressClass;
  TGInetSocketAddressClass = object
    parent_class: TGSocketAddressClass;
  end;

  PPGInitableIface = ^PGInitableIface;
  PGInitableIface = ^TGInitableIface;
  TGInitableIface = object
    g_iface: TGTypeInterface;
    init: function(initable: PGInitable; cancellable: PGCancellable): gboolean; cdecl;
  end;

  TGInputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGInputVector = ^PGInputVector;
  PGInputVector = ^TGInputVector;

  TGInputVector = record
    buffer: gpointer;
    size: gsize;
  end;



  PPGLoadableIconIface = ^PGLoadableIconIface;
  PGLoadableIconIface = ^TGLoadableIconIface;
  TGLoadableIconIface = object
    g_iface: TGTypeInterface;
    load: function(icon: PGLoadableIcon; size: gint; type_: PPgchar; cancellable: PGCancellable): PGInputStream; cdecl;
    load_async: procedure(icon: PGLoadableIcon; size: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    load_finish: function(icon: PGLoadableIcon; res: PGAsyncResult; type_: PPgchar): PGInputStream; cdecl;
  end;

  PPGMemoryInputStreamPrivate = ^PGMemoryInputStreamPrivate;
  PGMemoryInputStreamPrivate = ^TGMemoryInputStreamPrivate;

  TGMemoryInputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGMemoryInputStream = ^PGMemoryInputStream;
  PGMemoryInputStream = ^TGMemoryInputStream;
  TGMemoryInputStream = object(TGInputStream)
    priv1: PGMemoryInputStreamPrivate;
    function new: PGMemoryInputStream; cdecl; inline; static;
    function new_from_data(data: Pguint8; len: gssize; destroy_: TGDestroyNotify): PGMemoryInputStream; cdecl; inline; static;
    procedure add_data(data: Pguint8; len: gssize; destroy_: TGDestroyNotify); cdecl; inline;
  end;

  PPGMemoryInputStreamClass = ^PGMemoryInputStreamClass;
  PGMemoryInputStreamClass = ^TGMemoryInputStreamClass;
  TGMemoryInputStreamClass = object
    parent_class: TGInputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;
  TGReallocFunc = function(data: gpointer; size: gsize): gpointer; cdecl;

  PPGMemoryOutputStreamPrivate = ^PGMemoryOutputStreamPrivate;
  PGMemoryOutputStreamPrivate = ^TGMemoryOutputStreamPrivate;

  TGMemoryOutputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGMemoryOutputStream = ^PGMemoryOutputStream;
  PGMemoryOutputStream = ^TGMemoryOutputStream;

  PPGReallocFunc = ^PGReallocFunc;
  PGReallocFunc = ^TGReallocFunc;
  TGMemoryOutputStream = object(TGOutputStream)
    priv1: PGMemoryOutputStreamPrivate;
    function new(data: gpointer; size: gsize; realloc_function: TGReallocFunc; destroy_function: TGDestroyNotify): PGMemoryOutputStream; cdecl; inline; static;
    function get_data: gpointer; cdecl; inline;
    function get_data_size: gsize; cdecl; inline;
    function get_size: gsize; cdecl; inline;
    function steal_data: gpointer; cdecl; inline;
    property data:  gpointer read get_data  { property is writeable but setter not declared } ;
    property data_size:  gsize read get_data_size ;
    //property destroy_function: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_destroy_function  { property is writeable but setter not declared } ;
    //property realloc_function: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_realloc_function  { property is writeable but setter not declared } ;
    property size:  gsize read get_size  { property is writeable but setter not declared } ;
  end;

  PPGMemoryOutputStreamClass = ^PGMemoryOutputStreamClass;
  PGMemoryOutputStreamClass = ^TGMemoryOutputStreamClass;
  TGMemoryOutputStreamClass = object
    parent_class: TGOutputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;
  TGVolume = object
    changed: procedure; cdecl;
    removed: procedure; cdecl;
    function can_eject: gboolean; cdecl; inline;
    function can_mount: gboolean; cdecl; inline;
    
    
    procedure eject_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function eject_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function enumerate_identifiers: PPgchar; cdecl; inline;
    function get_activation_root: PGFile; cdecl; inline;
    function get_drive: PGDrive; cdecl; inline;
    function get_icon: PGIcon; cdecl; inline;
    function get_identifier(kind: Pgchar): Pgchar; cdecl; inline;
    function get_mount: PGMount; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_uuid: Pgchar; cdecl; inline;
    procedure mount(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function mount_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function should_automount: gboolean; cdecl; inline;
  end;

  PPGMountIface = ^PGMountIface;
  PGMountIface = ^TGMountIface;
  TGMountIface = object
    g_iface: TGTypeInterface;
    changed: procedure(mount: PGMount); cdecl;
    unmounted: procedure(mount: PGMount); cdecl;
    get_root: function(mount: PGMount): PGFile; cdecl;
    get_name: function(mount: PGMount): Pgchar; cdecl;
    get_icon: function(mount: PGMount): PGIcon; cdecl;
    get_uuid: function(mount: PGMount): Pgchar; cdecl;
    get_volume: function(mount: PGMount): PGVolume; cdecl;
    get_drive: function(mount: PGMount): PGDrive; cdecl;
    can_unmount: function(mount: PGMount): gboolean; cdecl;
    can_eject: function(mount: PGMount): gboolean; cdecl;
    unmount: procedure(mount: PGMount; flags: TGMountUnmountFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    unmount_finish: function(mount: PGMount; result_: PGAsyncResult): gboolean; cdecl;
    eject: procedure(mount: PGMount; flags: TGMountUnmountFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_finish: function(mount: PGMount; result_: PGAsyncResult): gboolean; cdecl;
    remount: procedure(mount: PGMount; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    remount_finish: function(mount: PGMount; result_: PGAsyncResult): gboolean; cdecl;
    guess_content_type: procedure(mount: PGMount; force_rescan: gboolean; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    guess_content_type_finish: function(mount: PGMount; result_: PGAsyncResult): PPgchar; cdecl;
    guess_content_type_sync: function(mount: PGMount; force_rescan: gboolean; cancellable: PGCancellable): PPgchar; cdecl;
    pre_unmount: procedure(mount: PGMount); cdecl;
    unmount_with_operation: procedure(mount: PGMount; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    unmount_with_operation_finish: function(mount: PGMount; result_: PGAsyncResult): gboolean; cdecl;
    eject_with_operation: procedure(mount: PGMount; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_with_operation_finish: function(mount: PGMount; result_: PGAsyncResult): gboolean; cdecl;
    get_default_location: function(mount: PGMount): PGFile; cdecl;
  end;

  TGMountOperationPrivate = record
    Unknown: Pointer;
  end;



  PPGMountOperationClass = ^PGMountOperationClass;
  PGMountOperationClass = ^TGMountOperationClass;

  PPGAskPasswordFlags = ^PGAskPasswordFlags;
  PGAskPasswordFlags = ^TGAskPasswordFlags;
  TGMountOperationClass = object
    parent_class: TGObjectClass;
    ask_password: procedure(op: PGMountOperation; message: Pgchar; default_user: Pgchar; default_domain: Pgchar; flags: TGAskPasswordFlags); cdecl;
    ask_question: procedure(op: PGMountOperation; message: Pgchar; choices: Pgchar); cdecl;
    reply: procedure(op: PGMountOperation; result_: TGMountOperationResult); cdecl;
    aborted: procedure(op: PGMountOperation); cdecl;
    show_processes: procedure(op: PGMountOperation; message: Pgchar; processes: Pgpointer; choices: Pgchar); cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
    _g_reserved7: procedure; cdecl;
    _g_reserved8: procedure; cdecl;
    _g_reserved9: procedure; cdecl;
    _g_reserved10: procedure; cdecl;
  end;

  PPGVolumeMonitor = ^PGVolumeMonitor;
  PGVolumeMonitor = ^TGVolumeMonitor;
  TGVolumeMonitor = object(TGObject)
    priv: gpointer;
    
    function get: PGVolumeMonitor; cdecl; inline; static;
    function get_connected_drives: PGList; cdecl; inline;
    function get_mount_for_uuid(uuid: Pgchar): PGMount; cdecl; inline;
    function get_mounts: PGList; cdecl; inline;
    function get_volume_for_uuid(uuid: Pgchar): PGVolume; cdecl; inline;
    function get_volumes: PGList; cdecl; inline;
  end;

  PPGNativeVolumeMonitor = ^PGNativeVolumeMonitor;
  PGNativeVolumeMonitor = ^TGNativeVolumeMonitor;
  TGNativeVolumeMonitor = object(TGVolumeMonitor)
  end;

  PPGVolumeMonitorClass = ^PGVolumeMonitorClass;
  PGVolumeMonitorClass = ^TGVolumeMonitorClass;
  TGVolumeMonitorClass = object
    parent_class: TGObjectClass;
    volume_added: procedure(volume_monitor: PGVolumeMonitor; volume: PGVolume); cdecl;
    volume_removed: procedure(volume_monitor: PGVolumeMonitor; volume: PGVolume); cdecl;
    volume_changed: procedure(volume_monitor: PGVolumeMonitor; volume: PGVolume); cdecl;
    mount_added: procedure(volume_monitor: PGVolumeMonitor; mount: PGMount); cdecl;
    mount_removed: procedure(volume_monitor: PGVolumeMonitor; mount: PGMount); cdecl;
    mount_pre_unmount: procedure(volume_monitor: PGVolumeMonitor; mount: PGMount); cdecl;
    mount_changed: procedure(volume_monitor: PGVolumeMonitor; mount: PGMount); cdecl;
    drive_connected: procedure(volume_monitor: PGVolumeMonitor; drive: PGDrive); cdecl;
    drive_disconnected: procedure(volume_monitor: PGVolumeMonitor; drive: PGDrive); cdecl;
    drive_changed: procedure(volume_monitor: PGVolumeMonitor; drive: PGDrive); cdecl;
    is_supported: function: gboolean; cdecl;
    get_connected_drives: function(volume_monitor: PGVolumeMonitor): PGList; cdecl;
    get_volumes: function(volume_monitor: PGVolumeMonitor): PGList; cdecl;
    get_mounts: function(volume_monitor: PGVolumeMonitor): PGList; cdecl;
    get_volume_for_uuid: function(volume_monitor: PGVolumeMonitor; uuid: Pgchar): PGVolume; cdecl;
    get_mount_for_uuid: function(volume_monitor: PGVolumeMonitor; uuid: Pgchar): PGMount; cdecl;
    adopt_orphan_mount: function(mount: PGMount; volume_monitor: PGVolumeMonitor): PGVolume; cdecl;
    drive_eject_button: procedure(volume_monitor: PGVolumeMonitor; drive: PGDrive); cdecl;
    drive_stop_button: procedure(volume_monitor: PGVolumeMonitor; drive: PGDrive); cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
  end;

  PPGNativeVolumeMonitorClass = ^PGNativeVolumeMonitorClass;
  PGNativeVolumeMonitorClass = ^TGNativeVolumeMonitorClass;
  TGNativeVolumeMonitorClass = object
    parent_class: TGVolumeMonitorClass;
    get_mount_for_mount_path: function(mount_path: Pgchar; cancellable: PGCancellable): PGMount; cdecl;
  end;

  PPGNetworkAddressPrivate = ^PGNetworkAddressPrivate;
  PGNetworkAddressPrivate = ^TGNetworkAddressPrivate;

  TGNetworkAddressPrivate = record
    Unknown: Pointer;
  end;



  PPGNetworkAddress = ^PGNetworkAddress;
  PGNetworkAddress = ^TGNetworkAddress;
  TGNetworkAddress = object(TGObject)
    priv: PGNetworkAddressPrivate;
    function new(hostname: Pgchar; port: guint16): PGSocketConnectable; cdecl; inline; static;
    function parse(host_and_port: Pgchar; default_port: guint16): PGSocketConnectable; cdecl; inline; static;
    function parse_uri(uri: Pgchar; default_port: guint16): PGSocketConnectable; cdecl; inline; static;
    function get_hostname: Pgchar; cdecl; inline;
    function get_port: guint16; cdecl; inline;
    function get_scheme: Pgchar; cdecl; inline;
    property hostname:  Pgchar read get_hostname  { property is writeable but setter not declared } ;
    property port:  guint16 read get_port  { property is writeable but setter not declared } ;
    property scheme:  Pgchar read get_scheme  { property is writeable but setter not declared } ;
  end;

  PPGNetworkAddressClass = ^PGNetworkAddressClass;
  PGNetworkAddressClass = ^TGNetworkAddressClass;
  TGNetworkAddressClass = object
    parent_class: TGObjectClass;
  end;

  PPGNetworkServicePrivate = ^PGNetworkServicePrivate;
  PGNetworkServicePrivate = ^TGNetworkServicePrivate;

  TGNetworkServicePrivate = record
    Unknown: Pointer;
  end;



  PPGNetworkService = ^PGNetworkService;
  PGNetworkService = ^TGNetworkService;
  TGNetworkService = object(TGObject)
    priv: PGNetworkServicePrivate;
    function new(service: Pgchar; protocol: Pgchar; domain: Pgchar): PGSocketConnectable; cdecl; inline; static;
    function get_domain: Pgchar; cdecl; inline;
    function get_protocol: Pgchar; cdecl; inline;
    function get_scheme: Pgchar; cdecl; inline;
    function get_service: Pgchar; cdecl; inline;
    procedure set_scheme(scheme: Pgchar); cdecl; inline;
    property domain:  Pgchar read get_domain  { property is writeable but setter not declared } ;
    property protocol:  Pgchar read get_protocol  { property is writeable but setter not declared } ;
    property scheme:  Pgchar read get_scheme  { property is writeable but setter not declared } ;
    property service:  Pgchar read get_service  { property is writeable but setter not declared } ;
  end;

  PPGNetworkServiceClass = ^PGNetworkServiceClass;
  PGNetworkServiceClass = ^TGNetworkServiceClass;
  TGNetworkServiceClass = object
    parent_class: TGObjectClass;
  end;

  TGOutputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGOutputVector = ^PGOutputVector;
  PGOutputVector = ^TGOutputVector;

  TGOutputVector = record
    buffer: gpointer;
    size: gsize;
  end;



  PPGPermissionPrivate = ^PGPermissionPrivate;
  PGPermissionPrivate = ^TGPermissionPrivate;

  TGPermissionPrivate = record
    Unknown: Pointer;
  end;



  PPGPermission = ^PGPermission;
  PGPermission = ^TGPermission;
  TGPermission = object(TGObject)
    priv: PGPermissionPrivate;
    function acquire(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure acquire_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function acquire_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    function get_allowed: gboolean; cdecl; inline;
    function get_can_acquire: gboolean; cdecl; inline;
    function get_can_release: gboolean; cdecl; inline;
    procedure impl_update(allowed: gboolean; can_acquire: gboolean; can_release: gboolean); cdecl; inline;
    function release(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure release_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function release_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    property allowed:  gboolean read get_allowed ;
    property can_acquire:  gboolean read get_can_acquire ;
    property can_release:  gboolean read get_can_release ;
  end;

  PPGPermissionClass = ^PGPermissionClass;
  PGPermissionClass = ^TGPermissionClass;
  TGPermissionClass = object
    parent_class: TGObjectClass;
    acquire: function(permission: PGPermission; cancellable: PGCancellable): gboolean; cdecl;
    acquire_async: procedure(permission: PGPermission; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    acquire_finish: function(permission: PGPermission; result_: PGAsyncResult): gboolean; cdecl;
    release: function(permission: PGPermission; cancellable: PGCancellable): gboolean; cdecl;
    release_async: procedure(permission: PGPermission; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    release_finish: function(permission: PGPermission; result_: PGAsyncResult): gboolean; cdecl;
    reserved: array [0..15] of gpointer;
  end;

  PPGPollableInputStream = ^PGPollableInputStream;
  PGPollableInputStream = ^TGPollableInputStream;
  TGPollableInputStream = object
    function can_poll: gboolean; cdecl; inline;
    function create_source(cancellable: PGCancellable): PGSource; cdecl; inline;
    function is_readable: gboolean; cdecl; inline;
    function read_nonblocking(buffer: Pgpointer; size: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
  end;

  PPGPollableInputStreamInterface = ^PGPollableInputStreamInterface;
  PGPollableInputStreamInterface = ^TGPollableInputStreamInterface;
  TGPollableInputStreamInterface = object
    g_iface: TGTypeInterface;
    can_poll: function(stream: PGPollableInputStream): gboolean; cdecl;
    is_readable: function(stream: PGPollableInputStream): gboolean; cdecl;
    create_source: function(stream: PGPollableInputStream; cancellable: PGCancellable): PGSource; cdecl;
    read_nonblocking: function(stream: PGPollableInputStream; buffer: Pgpointer; size: gsize): gssize; cdecl;
  end;

  PPGPollableOutputStream = ^PGPollableOutputStream;
  PGPollableOutputStream = ^TGPollableOutputStream;
  TGPollableOutputStream = object
    function can_poll: gboolean; cdecl; inline;
    function create_source(cancellable: PGCancellable): PGSource; cdecl; inline;
    function is_writable: gboolean; cdecl; inline;
    function write_nonblocking(buffer: Pguint8; size: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
  end;

  PPGPollableOutputStreamInterface = ^PGPollableOutputStreamInterface;
  PGPollableOutputStreamInterface = ^TGPollableOutputStreamInterface;
  TGPollableOutputStreamInterface = object
    g_iface: TGTypeInterface;
    can_poll: function(stream: PGPollableOutputStream): gboolean; cdecl;
    is_writable: function(stream: PGPollableOutputStream): gboolean; cdecl;
    create_source: function(stream: PGPollableOutputStream; cancellable: PGCancellable): PGSource; cdecl;
    write_nonblocking: function(stream: PGPollableOutputStream; buffer: Pguint8; size: gsize): gssize; cdecl;
  end;
  TGPollableSourceFunc = function(pollable_stream: PGObject; user_data: gpointer): gboolean; cdecl;

  PPGProxy = ^PGProxy;
  PGProxy = ^TGProxy;

  PPGProxyAddress = ^PGProxyAddress;
  PGProxyAddress = ^TGProxyAddress;
  TGProxy = object
    function get_default_for_protocol(protocol: Pgchar): PGProxy; cdecl; inline; static;
    function connect(connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable): PGIOStream; cdecl; inline;
    procedure connect_async(connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function connect_finish(result_: PGAsyncResult): PGIOStream; cdecl; inline;
    function supports_hostname: gboolean; cdecl; inline;
  end;

  PPGProxyAddressPrivate = ^PGProxyAddressPrivate;
  PGProxyAddressPrivate = ^TGProxyAddressPrivate;
  TGProxyAddress = object(TGInetSocketAddress)
    priv1: PGProxyAddressPrivate;
    function new(inetaddr: PGInetAddress; port: guint16; protocol: Pgchar; dest_hostname: Pgchar; dest_port: guint16; username: Pgchar; password: Pgchar): PGProxyAddress; cdecl; inline; static;
    function get_destination_hostname: Pgchar; cdecl; inline;
    function get_destination_port: guint16; cdecl; inline;
    function get_password: Pgchar; cdecl; inline;
    function get_protocol: Pgchar; cdecl; inline;
    function get_username: Pgchar; cdecl; inline;
    property destination_hostname:  Pgchar read get_destination_hostname  { property is writeable but setter not declared } ;
    property destination_port:  guint16 read get_destination_port  { property is writeable but setter not declared } ;
    property password:  Pgchar read get_password  { property is writeable but setter not declared } ;
    property protocol:  Pgchar read get_protocol  { property is writeable but setter not declared } ;
    property username:  Pgchar read get_username  { property is writeable but setter not declared } ;
  end;

  TGProxyAddressPrivate = record
    Unknown: Pointer;
  end;



  PPGProxyAddressClass = ^PGProxyAddressClass;
  PGProxyAddressClass = ^TGProxyAddressClass;
  TGProxyAddressClass = object
    parent_class: TGInetSocketAddressClass;
  end;
  TGSocketAddressEnumerator = object(TGObject)
    function next(cancellable: PGCancellable): PGSocketAddress; cdecl; inline;
    procedure next_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function next_finish(result_: PGAsyncResult): PGSocketAddress; cdecl; inline;
  end;

  PPGProxyAddressEnumeratorPrivate = ^PGProxyAddressEnumeratorPrivate;
  PGProxyAddressEnumeratorPrivate = ^TGProxyAddressEnumeratorPrivate;

  TGProxyAddressEnumeratorPrivate = record
    Unknown: Pointer;
  end;



  PPGProxyAddressEnumerator = ^PGProxyAddressEnumerator;
  PGProxyAddressEnumerator = ^TGProxyAddressEnumerator;
  TGProxyAddressEnumerator = object(TGSocketAddressEnumerator)
    priv: PGProxyAddressEnumeratorPrivate;
    //property connectable: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_connectable  { property is writeable but setter not declared } ;
    //property uri: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_uri  { property is writeable but setter not declared } ;
  end;

  PPGSocketAddressEnumeratorClass = ^PGSocketAddressEnumeratorClass;
  PGSocketAddressEnumeratorClass = ^TGSocketAddressEnumeratorClass;
  TGSocketAddressEnumeratorClass = object
    parent_class: TGObjectClass;
    next: function(enumerator: PGSocketAddressEnumerator; cancellable: PGCancellable): PGSocketAddress; cdecl;
    next_async: procedure(enumerator: PGSocketAddressEnumerator; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    next_finish: function(enumerator: PGSocketAddressEnumerator; result_: PGAsyncResult): PGSocketAddress; cdecl;
  end;

  PPGProxyAddressEnumeratorClass = ^PGProxyAddressEnumeratorClass;
  PGProxyAddressEnumeratorClass = ^TGProxyAddressEnumeratorClass;
  TGProxyAddressEnumeratorClass = object
    parent_class: TGSocketAddressEnumeratorClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
    _g_reserved7: procedure; cdecl;
  end;

  PPGProxyInterface = ^PGProxyInterface;
  PGProxyInterface = ^TGProxyInterface;
  TGProxyInterface = object
    g_iface: TGTypeInterface;
    connect: function(proxy: PGProxy; connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable): PGIOStream; cdecl;
    connect_async: procedure(proxy: PGProxy; connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    connect_finish: function(proxy: PGProxy; result_: PGAsyncResult): PGIOStream; cdecl;
    supports_hostname: function(proxy: PGProxy): gboolean; cdecl;
  end;

  PPGProxyResolver = ^PGProxyResolver;
  PGProxyResolver = ^TGProxyResolver;
  TGProxyResolver = object
    function get_default: PGProxyResolver; cdecl; inline; static;
    function is_supported: gboolean; cdecl; inline;
    function lookup(uri: Pgchar; cancellable: PGCancellable): PPgchar; cdecl; inline;
    procedure lookup_async(uri: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function lookup_finish(result_: PGAsyncResult): PPgchar; cdecl; inline;
  end;

  PPGProxyResolverInterface = ^PGProxyResolverInterface;
  PGProxyResolverInterface = ^TGProxyResolverInterface;
  TGProxyResolverInterface = object
    g_iface: TGTypeInterface;
    is_supported: function(resolver: PGProxyResolver): gboolean; cdecl;
    lookup: function(resolver: PGProxyResolver; uri: Pgchar; cancellable: PGCancellable): PPgchar; cdecl;
    lookup_async: procedure(resolver: PGProxyResolver; uri: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    lookup_finish: function(resolver: PGProxyResolver; result_: PGAsyncResult): PPgchar; cdecl;
  end;

  PPGResolver = ^PGResolver;
  PGResolver = ^TGResolver;

  PPGResolverPrivate = ^PGResolverPrivate;
  PGResolverPrivate = ^TGResolverPrivate;
  TGResolver = object(TGObject)
    priv: PGResolverPrivate;
    procedure free_addresses(addresses: PGList); cdecl; inline; static;
    procedure free_targets(targets: PGList); cdecl; inline; static;
    function get_default: PGResolver; cdecl; inline; static;
    function lookup_by_address(address: PGInetAddress; cancellable: PGCancellable): Pgchar; cdecl; inline;
    procedure lookup_by_address_async(address: PGInetAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function lookup_by_address_finish(result_: PGAsyncResult): Pgchar; cdecl; inline;
    function lookup_by_name(hostname: Pgchar; cancellable: PGCancellable): PGList; cdecl; inline;
    procedure lookup_by_name_async(hostname: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function lookup_by_name_finish(result_: PGAsyncResult): PGList; cdecl; inline;
    function lookup_service(service: Pgchar; protocol: Pgchar; domain: Pgchar; cancellable: PGCancellable): PGList; cdecl; inline;
    procedure lookup_service_async(service: Pgchar; protocol: Pgchar; domain: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function lookup_service_finish(result_: PGAsyncResult): PGList; cdecl; inline;
    procedure set_default; cdecl; inline;
  end;

  TGResolverPrivate = record
    Unknown: Pointer;
  end;



  PPGResolverClass = ^PGResolverClass;
  PGResolverClass = ^TGResolverClass;
  TGResolverClass = object
    parent_class: TGObjectClass;
    reload: procedure(resolver: PGResolver); cdecl;
    lookup_by_name: function(resolver: PGResolver; hostname: Pgchar; cancellable: PGCancellable): PGList; cdecl;
    lookup_by_name_async: procedure(resolver: PGResolver; hostname: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    lookup_by_name_finish: function(resolver: PGResolver; result_: PGAsyncResult): PGList; cdecl;
    lookup_by_address: function(resolver: PGResolver; address: PGInetAddress; cancellable: PGCancellable): Pgchar; cdecl;
    lookup_by_address_async: procedure(resolver: PGResolver; address: PGInetAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    lookup_by_address_finish: function(resolver: PGResolver; result_: PGAsyncResult): Pgchar; cdecl;
    lookup_service: function(resolver: PGResolver; rrname: Pgchar; cancellable: PGCancellable): PGList; cdecl;
    lookup_service_async: procedure(resolver: PGResolver; rrname: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    lookup_service_finish: function(resolver: PGResolver; result_: PGAsyncResult): PGList; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
  end;

  PPGResolverError = ^PGResolverError;
  PGResolverError = ^TGResolverError;

  PPGSeekableIface = ^PGSeekableIface;
  PGSeekableIface = ^TGSeekableIface;
  TGSeekableIface = object
    g_iface: TGTypeInterface;
    tell: function(seekable: PGSeekable): gint64; cdecl;
    can_seek: function(seekable: PGSeekable): gboolean; cdecl;
    seek: function(seekable: PGSeekable; offset: gint64; type_: TGSeekType; cancellable: PGCancellable): gboolean; cdecl;
    can_truncate: function(seekable: PGSeekable): gboolean; cdecl;
    truncate_fn: function(seekable: PGSeekable; offset: gint64; cancellable: PGCancellable): gboolean; cdecl;
  end;

  PPGSettings = ^PGSettings;
  PGSettings = ^TGSettings;

  PPGSettingsBackend = ^PGSettingsBackend;
  PGSettingsBackend = ^TGSettingsBackend;

  PPGSettingsBindFlags = ^PGSettingsBindFlags;
  PGSettingsBindFlags = ^TGSettingsBindFlags;
  TGSettingsBindFlags = packed object(TBitObject32)
  public
    property default_: DWord index 0 read GetBit write SetBit;
    property get: DWord index 1 read GetBit write SetBit;
    property set_: DWord index 2 read GetBit write SetBit;
    property no_sensitivity: DWord index 4 read GetBit write SetBit;
    property get_no_changes: DWord index 8 read GetBit write SetBit;
    property invert_boolean: DWord index 16 read GetBit write SetBit;
  end;


  PPGSettingsBindGetMapping = ^PGSettingsBindGetMapping;
  PGSettingsBindGetMapping = ^TGSettingsBindGetMapping;
  TGSettingsBindGetMapping = function(value: PGValue; variant: PGVariant; user_data: gpointer): gboolean; cdecl;

  PPGSettingsBindSetMapping = ^PGSettingsBindSetMapping;
  PGSettingsBindSetMapping = ^TGSettingsBindSetMapping;
  TGSettingsBindSetMapping = function(value: PGValue; expected_type: PGVariantType; user_data: gpointer): PGVariant; cdecl;

  PPGSettingsGetMapping = ^PGSettingsGetMapping;
  PGSettingsGetMapping = ^TGSettingsGetMapping;
  TGSettingsGetMapping = function(value: PGVariant; result_: Pgpointer; user_data: gpointer): gboolean; cdecl;

  PPGSettingsPrivate = ^PGSettingsPrivate;
  PGSettingsPrivate = ^TGSettingsPrivate;
  TGSettings = object(TGObject)
    priv: PGSettingsPrivate;
    function new(schema: Pgchar): PGSettings; cdecl; inline; static;
    function new_with_backend(schema: Pgchar; backend: PGSettingsBackend): PGSettings; cdecl; inline; static;
    function new_with_backend_and_path(schema: Pgchar; backend: PGSettingsBackend; path: Pgchar): PGSettings; cdecl; inline; static;
    function new_with_path(schema: Pgchar; path: Pgchar): PGSettings; cdecl; inline; static;
    function list_relocatable_schemas: PPgchar; cdecl; inline; static;
    function list_schemas: PPgchar; cdecl; inline; static;
    procedure sync; cdecl; inline; static;
    procedure unbind(object_: gpointer; property_: Pgchar); cdecl; inline; static;
    procedure apply; cdecl; inline;
    procedure bind(key: Pgchar; object_: TGObject; property_: Pgchar; flags: TGSettingsBindFlags); cdecl; inline;
    procedure bind_with_mapping(key: Pgchar; object_: TGObject; property_: Pgchar; flags: TGSettingsBindFlags; get_mapping: TGSettingsBindGetMapping; set_mapping: TGSettingsBindSetMapping; user_data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
    procedure bind_writable(key: Pgchar; object_: TGObject; property_: Pgchar; inverted: gboolean); cdecl; inline;
    procedure delay; cdecl; inline;
    //procedure get(key: Pgchar; format: Pgchar; args: array of const); cdecl; inline;
    function get_boolean(key: Pgchar): gboolean; cdecl; inline;
    function get_child(name: Pgchar): PGSettings; cdecl; inline;
    function get_double(key: Pgchar): gdouble; cdecl; inline;
    function get_enum(key: Pgchar): gint; cdecl; inline;
    function get_flags(key: Pgchar): guint; cdecl; inline;
    function get_has_unapplied: gboolean; cdecl; inline;
    function get_int(key: Pgchar): gint; cdecl; inline;
    function get_mapped(key: Pgchar; mapping: TGSettingsGetMapping; user_data: gpointer): gpointer; cdecl; inline;
    function get_range(key: Pgchar): PGVariant; cdecl; inline;
    function get_string(key: Pgchar): Pgchar; cdecl; inline;
    function get_strv(key: Pgchar): PPgchar; cdecl; inline;
    function get_uint(key: Pgchar): guint; cdecl; inline;
    function get_value(key: Pgchar): PGVariant; cdecl; inline;
    function is_writable(name: Pgchar): gboolean; cdecl; inline;
    function list_children: PPgchar; cdecl; inline;
    function list_keys: PPgchar; cdecl; inline;
    function range_check(key: Pgchar; value: PGVariant): gboolean; cdecl; inline;
    procedure reset(key: Pgchar); cdecl; inline;
    procedure revert; cdecl; inline;
    //function set_(key: Pgchar; format: Pgchar; args: array of const): gboolean; cdecl; inline;
    function set_boolean(key: Pgchar; value: gboolean): gboolean; cdecl; inline;
    function set_double(key: Pgchar; value: gdouble): gboolean; cdecl; inline;
    function set_enum(key: Pgchar; value: gint): gboolean; cdecl; inline;
    function set_flags(key: Pgchar; value: guint): gboolean; cdecl; inline;
    function set_int(key: Pgchar; value: gint): gboolean; cdecl; inline;
    function set_string(key: Pgchar; value: Pgchar): gboolean; cdecl; inline;
    function set_strv(key: Pgchar; value: PPgchar): gboolean; cdecl; inline;
    function set_uint(key: Pgchar; value: guint): gboolean; cdecl; inline;
    function set_value(key: Pgchar; value: PGVariant): gboolean; cdecl; inline;
    //property backend: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_backend  { property is writeable but setter not declared } ;
    //property delay_apply: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_delay_apply ;
    property has_unapplied:  gboolean read get_has_unapplied ;
    //property path: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_path  { property is writeable but setter not declared } ;
    //property schema: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_schema  { property is writeable but setter not declared } ;
  end;

  TGSettingsBackend = record
    Unknown: Pointer;
  end;



  TGSettingsPrivate = record
    Unknown: Pointer;
  end;



  PPGSettingsClass = ^PGSettingsClass;
  PGSettingsClass = ^TGSettingsClass;
  TGSettingsClass = object
    parent_class: TGObjectClass;
    writable_changed: procedure(settings: PGSettings; key: Pgchar); cdecl;
    changed: procedure(settings: PGSettings; key: Pgchar); cdecl;
    writable_change_event: function(settings: PGSettings; key: TGQuark): gboolean; cdecl;
    change_event: function(settings: PGSettings; keys: PGQuark; n_keys: gint): gboolean; cdecl;
    padding: array [0..19] of gpointer;
  end;

  PPGSimpleActionGroup = ^PGSimpleActionGroup;
  PGSimpleActionGroup = ^TGSimpleActionGroup;

  PPGSimpleActionGroupPrivate = ^PGSimpleActionGroupPrivate;
  PGSimpleActionGroupPrivate = ^TGSimpleActionGroupPrivate;
  TGSimpleActionGroup = object(TGObject)
    priv: PGSimpleActionGroupPrivate;
    function new: PGSimpleActionGroup; cdecl; inline; static;
    procedure add_entries(entries: PGActionEntry; n_entries: gint; user_data: gpointer); cdecl; inline;
    procedure insert(action: PGAction); cdecl; inline;
    function lookup(action_name: Pgchar): PGAction; cdecl; inline;
    procedure remove(action_name: Pgchar); cdecl; inline;
  end;

  TGSimpleActionGroupPrivate = record
    Unknown: Pointer;
  end;



  PPGSimpleActionGroupClass = ^PGSimpleActionGroupClass;
  PGSimpleActionGroupClass = ^TGSimpleActionGroupClass;
  TGSimpleActionGroupClass = object
    parent_class: TGObjectClass;
    padding: array [0..11] of gpointer;
  end;

  PPGSimpleAsyncResult = ^PGSimpleAsyncResult;
  PGSimpleAsyncResult = ^TGSimpleAsyncResult;

  PPGSimpleAsyncThreadFunc = ^PGSimpleAsyncThreadFunc;
  PGSimpleAsyncThreadFunc = ^TGSimpleAsyncThreadFunc;
  TGSimpleAsyncThreadFunc = procedure(res: PGSimpleAsyncResult; object_: PGObject; cancellable: PGCancellable); cdecl;
  TGSimpleAsyncResult = object(TGObject)
    function new(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; source_tag: gpointer): PGSimpleAsyncResult; cdecl; inline; static;
    //function new_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; domain: TGQuark; code: gint; format: Pgchar; args: array of const): PGSimpleAsyncResult; cdecl; inline; static;
    function new_from_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError): PGSimpleAsyncResult; cdecl; inline; static;
    function new_take_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError): PGSimpleAsyncResult; cdecl; inline; static;
    function is_valid(result_: PGAsyncResult; source: PGObject; source_tag: gpointer): gboolean; cdecl; inline; static;
    procedure complete; cdecl; inline;
    procedure complete_in_idle; cdecl; inline;
    function get_op_res_gboolean: gboolean; cdecl; inline;
    function get_op_res_gpointer: gpointer; cdecl; inline;
    function get_op_res_gssize: gssize; cdecl; inline;
    function get_source_tag: gpointer; cdecl; inline;
    function propagate_error: gboolean; cdecl; inline;
    procedure run_in_thread(func: TGSimpleAsyncThreadFunc; io_priority: gint; cancellable: PGCancellable); cdecl; inline;
    //procedure set_error(domain: TGQuark; code: gint; format: Pgchar; args: array of const); cdecl; inline;
    //procedure set_error_va(domain: TGQuark; code: gint; format: Pgchar; args: Tva_list); cdecl; inline;
    procedure set_from_error(error: PGError); cdecl; inline;
    procedure set_handle_cancellation(handle_cancellation: gboolean); cdecl; inline;
    procedure set_op_res_gboolean(op_res: gboolean); cdecl; inline;
    procedure set_op_res_gpointer(op_res: gpointer; destroy_op_res: TGDestroyNotify); cdecl; inline;
    procedure set_op_res_gssize(op_res: gssize); cdecl; inline;
    procedure take_error(error: PGError); cdecl; inline;
  end;

  PPGSimpleAsyncResultClass = ^PGSimpleAsyncResultClass;
  PGSimpleAsyncResultClass = ^TGSimpleAsyncResultClass;
  TGSimpleAsyncResultClass = object
  end;

  PPGSimplePermission = ^PGSimplePermission;
  PGSimplePermission = ^TGSimplePermission;
  TGSimplePermission = object(TGPermission)
    function new(allowed: gboolean): PGSimplePermission; cdecl; inline; static;
  end;

  PPGSocket = ^PGSocket;
  PGSocket = ^TGSocket;

  PPGSocketType = ^PGSocketType;
  PGSocketType = ^TGSocketType;

  PPGSocketProtocol = ^PGSocketProtocol;
  PGSocketProtocol = ^TGSocketProtocol;

  PPGSocketConnection = ^PGSocketConnection;
  PGSocketConnection = ^TGSocketConnection;

  PPPPGSocketControlMessage = ^PPPGSocketControlMessage;
  PPPGSocketControlMessage = ^PPGSocketControlMessage;
  PPGSocketControlMessage = ^PGSocketControlMessage;
  PGSocketControlMessage = ^TGSocketControlMessage;

  PPGSocketPrivate = ^PGSocketPrivate;
  PGSocketPrivate = ^TGSocketPrivate;
  TGSocket = object(TGObject)
    priv: PGSocketPrivate;
    function new(family: TGSocketFamily; type_: TGSocketType; protocol: TGSocketProtocol): PGSocket; cdecl; inline; static;
    function new_from_fd(fd: gint): PGSocket; cdecl; inline; static;
    function accept(cancellable: PGCancellable): PGSocket; cdecl; inline;
    function bind(address: PGSocketAddress; allow_reuse: gboolean): gboolean; cdecl; inline;
    function check_connect_result: gboolean; cdecl; inline;
    function close: gboolean; cdecl; inline;
    function condition_check(condition: TGIOCondition): TGIOCondition; cdecl; inline;
    function condition_wait(condition: TGIOCondition; cancellable: PGCancellable): gboolean; cdecl; inline;
    function connect(address: PGSocketAddress; cancellable: PGCancellable): gboolean; cdecl; inline;
    function connection_factory_create_connection: PGSocketConnection; cdecl; inline;
    function create_source(condition: TGIOCondition; cancellable: PGCancellable): PGSource; cdecl; inline;
    function get_blocking: gboolean; cdecl; inline;
    function get_credentials: PGCredentials; cdecl; inline;
    function get_family: TGSocketFamily; cdecl; inline;
    function get_fd: gint; cdecl; inline;
    function get_keepalive: gboolean; cdecl; inline;
    function get_listen_backlog: gint; cdecl; inline;
    function get_local_address: PGSocketAddress; cdecl; inline;
    function get_protocol: TGSocketProtocol; cdecl; inline;
    function get_remote_address: PGSocketAddress; cdecl; inline;
    function get_socket_type: TGSocketType; cdecl; inline;
    function get_timeout: guint; cdecl; inline;
    function is_closed: gboolean; cdecl; inline;
    function is_connected: gboolean; cdecl; inline;
    function listen: gboolean; cdecl; inline;
    function receive(buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
    function receive_from(address: PPGSocketAddress; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
    function receive_message(address: PPGSocketAddress; vectors: PGInputVector; num_vectors: gint; messages: PPPGSocketControlMessage; num_messages: Pgint; flags: Pgint; cancellable: PGCancellable): gssize; cdecl; inline;
    function receive_with_blocking(buffer: Pgchar; size: gsize; blocking: gboolean; cancellable: PGCancellable): gssize; cdecl; inline;
    function send(buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
    function send_message(address: PGSocketAddress; vectors: PGOutputVector; num_vectors: gint; messages: PPGSocketControlMessage; num_messages: gint; flags: gint; cancellable: PGCancellable): gssize; cdecl; inline;
    function send_to(address: PGSocketAddress; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; inline;
    function send_with_blocking(buffer: Pgchar; size: gsize; blocking: gboolean; cancellable: PGCancellable): gssize; cdecl; inline;
    procedure set_blocking(blocking: gboolean); cdecl; inline;
    procedure set_keepalive(keepalive: gboolean); cdecl; inline;
    procedure set_listen_backlog(backlog: gint); cdecl; inline;
    procedure set_timeout(timeout: guint); cdecl; inline;
    function shutdown(shutdown_read: gboolean; shutdown_write: gboolean): gboolean; cdecl; inline;
    function speaks_ipv4: gboolean; cdecl; inline;
    property blocking:  gboolean read get_blocking  { property is writeable but setter not declared } ;
    property family:  TGSocketFamily read get_family  { property is writeable but setter not declared } ;
    property fd:  gint read get_fd  { property is writeable but setter not declared } ;
    property keepalive:  gboolean read get_keepalive  { property is writeable but setter not declared } ;
    property listen_backlog:  gint read get_listen_backlog  { property is writeable but setter not declared } ;
    property local_address:  PGSocketAddress read get_local_address ;
    property protocol:  TGSocketProtocol read get_protocol  { property is writeable but setter not declared } ;
    property remote_address:  PGSocketAddress read get_remote_address ;
    property timeout:  guint read get_timeout  { property is writeable but setter not declared } ;
    //property type_: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_type  { property is writeable but setter not declared } ;
  end;

  PPGSocketConnectionPrivate = ^PGSocketConnectionPrivate;
  PGSocketConnectionPrivate = ^TGSocketConnectionPrivate;
  TGSocketConnection = object(TGIOStream)
    priv1: PGSocketConnectionPrivate;
    function factory_lookup_type(family: TGSocketFamily; type_: TGSocketType; protocol_id: gint): TGType; cdecl; inline; static;
    procedure factory_register_type(g_type: TGType; family: TGSocketFamily; type_: TGSocketType; protocol: gint); cdecl; inline; static;
    function get_local_address: PGSocketAddress; cdecl; inline;
    function get_remote_address: PGSocketAddress; cdecl; inline;
    function get_socket: PGSocket; cdecl; inline;
    property socket:  PGSocket read get_socket  { property is writeable but setter not declared } ;
  end;

  PPGSocketControlMessagePrivate = ^PGSocketControlMessagePrivate;
  PGSocketControlMessagePrivate = ^TGSocketControlMessagePrivate;
  TGSocketControlMessage = object(TGObject)
    priv: PGSocketControlMessagePrivate;
    function deserialize(level: gint; type_: gint; size: gsize; data: guint8): PGSocketControlMessage; cdecl; inline; static;
    function get_level: gint; cdecl; inline;
    function get_msg_type: gint; cdecl; inline;
    function get_size: gsize; cdecl; inline;
    procedure serialize(data: gpointer); cdecl; inline;
  end;

  TGSocketPrivate = record
    Unknown: Pointer;
  end;



  PPGSocketClass = ^PGSocketClass;
  PGSocketClass = ^TGSocketClass;
  TGSocketClass = object
    parent_class: TGObjectClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
    _g_reserved7: procedure; cdecl;
    _g_reserved8: procedure; cdecl;
    _g_reserved9: procedure; cdecl;
    _g_reserved10: procedure; cdecl;
  end;

  PPGSocketClient = ^PGSocketClient;
  PGSocketClient = ^TGSocketClient;

  PPGTlsCertificateFlags = ^PGTlsCertificateFlags;
  PGTlsCertificateFlags = ^TGTlsCertificateFlags;
  TGTlsCertificateFlags = packed object(TBitObject32)
  public
    property unknown_ca: DWord index 1 read GetBit write SetBit;
    property bad_identity: DWord index 2 read GetBit write SetBit;
    property not_activated: DWord index 4 read GetBit write SetBit;
    property expired: DWord index 8 read GetBit write SetBit;
    property revoked: DWord index 16 read GetBit write SetBit;
    property insecure: DWord index 32 read GetBit write SetBit;
    property generic_error: DWord index 64 read GetBit write SetBit;
    property validate_all: DWord index 127 read GetBit write SetBit;
  end;


  PPGSocketClientPrivate = ^PGSocketClientPrivate;
  PGSocketClientPrivate = ^TGSocketClientPrivate;
  TGSocketClient = object(TGObject)
    priv: PGSocketClientPrivate;
    function new: PGSocketClient; cdecl; inline; static;
    procedure add_application_proxy(protocol: Pgchar); cdecl; inline;
    function connect(connectable: PGSocketConnectable; cancellable: PGCancellable): PGSocketConnection; cdecl; inline;
    procedure connect_async(connectable: PGSocketConnectable; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function connect_finish(result_: PGAsyncResult): PGSocketConnection; cdecl; inline;
    function connect_to_host(host_and_port: Pgchar; default_port: guint16; cancellable: PGCancellable): PGSocketConnection; cdecl; inline;
    procedure connect_to_host_async(host_and_port: Pgchar; default_port: guint16; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function connect_to_host_finish(result_: PGAsyncResult): PGSocketConnection; cdecl; inline;
    function connect_to_service(domain: Pgchar; service: Pgchar; cancellable: PGCancellable): PGSocketConnection; cdecl; inline;
    procedure connect_to_service_async(domain: Pgchar; service: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function connect_to_service_finish(result_: PGAsyncResult): PGSocketConnection; cdecl; inline;
    function connect_to_uri(uri: Pgchar; default_port: guint16; cancellable: PGCancellable): PGSocketConnection; cdecl; inline;
    procedure connect_to_uri_async(uri: Pgchar; default_port: guint16; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function connect_to_uri_finish(result_: PGAsyncResult): PGSocketConnection; cdecl; inline;
    function get_enable_proxy: gboolean; cdecl; inline;
    function get_family: TGSocketFamily; cdecl; inline;
    function get_local_address: PGSocketAddress; cdecl; inline;
    function get_protocol: TGSocketProtocol; cdecl; inline;
    function get_socket_type: TGSocketType; cdecl; inline;
    function get_timeout: guint; cdecl; inline;
    function get_tls: gboolean; cdecl; inline;
    function get_tls_validation_flags: TGTlsCertificateFlags; cdecl; inline;
    procedure set_enable_proxy(enable: gboolean); cdecl; inline;
    procedure set_family(family: TGSocketFamily); cdecl; inline;
    procedure set_local_address(address: PGSocketAddress); cdecl; inline;
    procedure set_protocol(protocol: TGSocketProtocol); cdecl; inline;
    procedure set_socket_type(type_: TGSocketType); cdecl; inline;
    procedure set_timeout(timeout: guint); cdecl; inline;
    procedure set_tls(tls: gboolean); cdecl; inline;
    procedure set_tls_validation_flags(flags: TGTlsCertificateFlags); cdecl; inline;
    property enable_proxy:  gboolean read get_enable_proxy  { property is writeable but setter not declared } ;
    property family:  TGSocketFamily read get_family  { property is writeable but setter not declared } ;
    property local_address:  PGSocketAddress read get_local_address  { property is writeable but setter not declared } ;
    property protocol:  TGSocketProtocol read get_protocol  { property is writeable but setter not declared } ;
    property timeout:  guint read get_timeout  { property is writeable but setter not declared } ;
    property tls:  gboolean read get_tls  { property is writeable but setter not declared } ;
    property tls_validation_flags:  TGTlsCertificateFlags read get_tls_validation_flags  { property is writeable but setter not declared } ;
    //property type_: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_type  { property is writeable but setter not declared } ;
  end;

  TGSocketClientPrivate = record
    Unknown: Pointer;
  end;



  PPGSocketClientClass = ^PGSocketClientClass;
  PGSocketClientClass = ^TGSocketClientClass;
  TGSocketClientClass = object
    parent_class: TGObjectClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGSocketConnectableIface = ^PGSocketConnectableIface;
  PGSocketConnectableIface = ^TGSocketConnectableIface;
  TGSocketConnectableIface = object
    g_iface: TGTypeInterface;
    enumerate: function(connectable: PGSocketConnectable): PGSocketAddressEnumerator; cdecl;
    proxy_enumerate: function(connectable: PGSocketConnectable): PGSocketAddressEnumerator; cdecl;
  end;

  TGSocketConnectionPrivate = record
    Unknown: Pointer;
  end;



  PPGSocketConnectionClass = ^PGSocketConnectionClass;
  PGSocketConnectionClass = ^TGSocketConnectionClass;
  TGSocketConnectionClass = object
    parent_class: TGIOStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
  end;

  TGSocketControlMessagePrivate = record
    Unknown: Pointer;
  end;



  PPGSocketControlMessageClass = ^PGSocketControlMessageClass;
  PGSocketControlMessageClass = ^TGSocketControlMessageClass;
  TGSocketControlMessageClass = object
    parent_class: TGObjectClass;
    get_size: function(message: PGSocketControlMessage): gsize; cdecl;
    get_level: function(message: PGSocketControlMessage): gint; cdecl;
    get_type: function(message: PGSocketControlMessage): gint; cdecl;
    serialize: procedure(message: PGSocketControlMessage; data: gpointer); cdecl;
    deserialize: function(level: gint; type_: gint; size: gsize; data: gpointer): PGSocketControlMessage; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGSocketListener = ^PGSocketListener;
  PGSocketListener = ^TGSocketListener;

  PPGSocketListenerPrivate = ^PGSocketListenerPrivate;
  PGSocketListenerPrivate = ^TGSocketListenerPrivate;
  TGSocketListener = object(TGObject)
    priv: PGSocketListenerPrivate;
    function new: PGSocketListener; cdecl; inline; static;
    function accept(source_object: PPGObject; cancellable: PGCancellable): PGSocketConnection; cdecl; inline;
    procedure accept_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function accept_finish(result_: PGAsyncResult; source_object: PPGObject): PGSocketConnection; cdecl; inline;
    function accept_socket(source_object: PPGObject; cancellable: PGCancellable): PGSocket; cdecl; inline;
    procedure accept_socket_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function accept_socket_finish(result_: PGAsyncResult; source_object: PPGObject): PGSocket; cdecl; inline;
    function add_address(address: PGSocketAddress; type_: TGSocketType; protocol: TGSocketProtocol; source_object: PGObject; effective_address: PPGSocketAddress): gboolean; cdecl; inline;
    function add_any_inet_port(source_object: PGObject): guint16; cdecl; inline;
    function add_inet_port(port: guint16; source_object: PGObject): gboolean; cdecl; inline;
    function add_socket(socket: PGSocket; source_object: PGObject): gboolean; cdecl; inline;
    procedure close; cdecl; inline;
    procedure set_backlog(listen_backlog: gint); cdecl; inline;
    //property listen_backlog: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_listen_backlog  { property is writeable but setter not declared } ;
  end;

  TGSocketListenerPrivate = record
    Unknown: Pointer;
  end;



  PPGSocketListenerClass = ^PGSocketListenerClass;
  PGSocketListenerClass = ^TGSocketListenerClass;
  TGSocketListenerClass = object
    parent_class: TGObjectClass;
    changed: procedure(listener: PGSocketListener); cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
  end;

  PPGSocketMsgFlags = ^PGSocketMsgFlags;
  PGSocketMsgFlags = ^TGSocketMsgFlags;

  PPGSocketService = ^PGSocketService;
  PGSocketService = ^TGSocketService;

  PPGSocketServicePrivate = ^PGSocketServicePrivate;
  PGSocketServicePrivate = ^TGSocketServicePrivate;
  TGSocketService = object(TGSocketListener)
    priv1: PGSocketServicePrivate;
    function new: PGSocketService; cdecl; inline; static;
    function is_active: gboolean; cdecl; inline;
    procedure start; cdecl; inline;
    procedure stop; cdecl; inline;
  end;

  TGSocketServicePrivate = record
    Unknown: Pointer;
  end;



  PPGSocketServiceClass = ^PGSocketServiceClass;
  PGSocketServiceClass = ^TGSocketServiceClass;
  TGSocketServiceClass = object
    parent_class: TGSocketListenerClass;
    incoming: function(service: PGSocketService; connection: PGSocketConnection; source_object: PGObject): gboolean; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
  end;
  TGSocketSourceFunc = function(socket: PGSocket; condition: TGIOCondition; user_data: gpointer): gboolean; cdecl;

  PPGSrvTarget = ^PGSrvTarget;
  PGSrvTarget = ^TGSrvTarget;
  TGSrvTarget = object
    function new(hostname: Pgchar; port: guint16; priority: guint16; weight: guint16): PGSrvTarget; cdecl; inline; static;
    function copy: PGSrvTarget; cdecl; inline;
    procedure free; cdecl; inline;
    function get_hostname: Pgchar; cdecl; inline;
    function get_port: guint16; cdecl; inline;
    function get_priority: guint16; cdecl; inline;
    function get_weight: guint16; cdecl; inline;
    function list_sort(targets: PGList): PGList; cdecl; inline; static;
  end;

  PPGTcpConnectionPrivate = ^PGTcpConnectionPrivate;
  PGTcpConnectionPrivate = ^TGTcpConnectionPrivate;

  TGTcpConnectionPrivate = record
    Unknown: Pointer;
  end;



  PPGTcpConnection = ^PGTcpConnection;
  PGTcpConnection = ^TGTcpConnection;
  TGTcpConnection = object(TGSocketConnection)
    priv2: PGTcpConnectionPrivate;
    function get_graceful_disconnect: gboolean; cdecl; inline;
    procedure set_graceful_disconnect(graceful_disconnect: gboolean); cdecl; inline;
    property graceful_disconnect:  gboolean read get_graceful_disconnect  { property is writeable but setter not declared } ;
  end;

  PPGTcpConnectionClass = ^PGTcpConnectionClass;
  PGTcpConnectionClass = ^TGTcpConnectionClass;
  TGTcpConnectionClass = object
    parent_class: TGSocketConnectionClass;
  end;

  PPGTcpWrapperConnectionPrivate = ^PGTcpWrapperConnectionPrivate;
  PGTcpWrapperConnectionPrivate = ^TGTcpWrapperConnectionPrivate;

  TGTcpWrapperConnectionPrivate = record
    Unknown: Pointer;
  end;



  PPGTcpWrapperConnection = ^PGTcpWrapperConnection;
  PGTcpWrapperConnection = ^TGTcpWrapperConnection;
  TGTcpWrapperConnection = object(TGTcpConnection)
    priv3: PGTcpWrapperConnectionPrivate;
    function new(base_io_stream: PGIOStream; socket: PGSocket): PGTcpWrapperConnection; cdecl; inline; static;
    function get_base_io_stream: PGIOStream; cdecl; inline;
    property base_io_stream:  PGIOStream read get_base_io_stream  { property is writeable but setter not declared } ;
  end;

  PPGTcpWrapperConnectionClass = ^PGTcpWrapperConnectionClass;
  PGTcpWrapperConnectionClass = ^TGTcpWrapperConnectionClass;
  TGTcpWrapperConnectionClass = object
    parent_class: TGTcpConnectionClass;
  end;

  PPGThemedIcon = ^PGThemedIcon;
  PGThemedIcon = ^TGThemedIcon;
  TGThemedIcon = object(TGObject)
    function new(iconname: Pgchar): PGIcon; cdecl; inline; static;
    function new_from_names(iconnames: PPgchar; len: gint): PGIcon; cdecl; inline; static;
    function new_with_default_fallbacks(iconname: Pgchar): PGIcon; cdecl; inline; static;
    procedure append_name(iconname: Pgchar); cdecl; inline;
    function get_names: PPgchar; cdecl; inline;
    procedure prepend_name(iconname: Pgchar); cdecl; inline;
    //property name: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_name  { property is writeable but setter not declared } ;
    property names:  PPgchar read get_names  { property is writeable but setter not declared } ;
    //property use_default_fallbacks: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_use_default_fallbacks  { property is writeable but setter not declared } ;
  end;

  PPGThemedIconClass = ^PGThemedIconClass;
  PGThemedIconClass = ^TGThemedIconClass;
  TGThemedIconClass = object
  end;

  PPGThreadedSocketServicePrivate = ^PGThreadedSocketServicePrivate;
  PGThreadedSocketServicePrivate = ^TGThreadedSocketServicePrivate;

  TGThreadedSocketServicePrivate = record
    Unknown: Pointer;
  end;



  PPGThreadedSocketService = ^PGThreadedSocketService;
  PGThreadedSocketService = ^TGThreadedSocketService;
  TGThreadedSocketService = object(TGSocketService)
    priv2: PGThreadedSocketServicePrivate;
    function new(max_threads: gint): PGThreadedSocketService; cdecl; inline; static;
    //property max_threads: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_max_threads  { property is writeable but setter not declared } ;
  end;

  PPGThreadedSocketServiceClass = ^PGThreadedSocketServiceClass;
  PGThreadedSocketServiceClass = ^TGThreadedSocketServiceClass;
  TGThreadedSocketServiceClass = object
    parent_class: TGSocketServiceClass;
    run: function(service: PGThreadedSocketService; connection: PGSocketConnection; source_object: PGObject): gboolean; cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGTlsAuthenticationMode = ^PGTlsAuthenticationMode;
  PGTlsAuthenticationMode = ^TGTlsAuthenticationMode;

  PPGTlsBackend = ^PGTlsBackend;
  PGTlsBackend = ^TGTlsBackend;

  PPGTlsDatabase = ^PGTlsDatabase;
  PGTlsDatabase = ^TGTlsDatabase;
  TGTlsBackend = object
    function get_default: PGTlsBackend; cdecl; inline; static;
    function get_certificate_type: TGType; cdecl; inline;
    function get_client_connection_type: TGType; cdecl; inline;
    function get_default_database: PGTlsDatabase; cdecl; inline;
    function get_file_database_type: TGType; cdecl; inline;
    function get_server_connection_type: TGType; cdecl; inline;
    function supports_tls: gboolean; cdecl; inline;
  end;

  PPGTlsCertificate = ^PGTlsCertificate;
  PGTlsCertificate = ^TGTlsCertificate;

  PPGTlsInteraction = ^PGTlsInteraction;
  PGTlsInteraction = ^TGTlsInteraction;

  PPGTlsDatabaseLookupFlags = ^PGTlsDatabaseLookupFlags;
  PGTlsDatabaseLookupFlags = ^TGTlsDatabaseLookupFlags;

  PPGTlsDatabaseVerifyFlags = ^PGTlsDatabaseVerifyFlags;
  PGTlsDatabaseVerifyFlags = ^TGTlsDatabaseVerifyFlags;

  PPGTlsDatabasePrivate = ^PGTlsDatabasePrivate;
  PGTlsDatabasePrivate = ^TGTlsDatabasePrivate;
  TGTlsDatabase = object(TGObject)
    priv: PGTlsDatabasePrivate;
    function create_certificate_handle(certificate: PGTlsCertificate): Pgchar; cdecl; inline;
    function lookup_certificate_for_handle(handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl; inline;
    procedure lookup_certificate_for_handle_async(handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function lookup_certificate_for_handle_finish(result_: PGAsyncResult): PGTlsCertificate; cdecl; inline;
    function lookup_certificate_issuer(certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl; inline;
    procedure lookup_certificate_issuer_async(certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function lookup_certificate_issuer_finish(result_: PGAsyncResult): PGTlsCertificate; cdecl; inline;
    function lookup_certificates_issued_by(issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGList; cdecl; inline;
    procedure lookup_certificates_issued_by_async(issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function lookup_certificates_issued_by_finish(result_: PGAsyncResult): PGList; cdecl; inline;
    function verify_chain(chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable): TGTlsCertificateFlags; cdecl; inline;
    procedure verify_chain_async(chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function verify_chain_finish(result_: PGAsyncResult): TGTlsCertificateFlags; cdecl; inline;
  end;

  PPGTlsBackendInterface = ^PGTlsBackendInterface;
  PGTlsBackendInterface = ^TGTlsBackendInterface;
  TGTlsBackendInterface = object
    g_iface: TGTypeInterface;
    supports_tls: function(backend: PGTlsBackend): gboolean; cdecl;
    get_certificate_type: function: TGType; cdecl;
    get_client_connection_type: function: TGType; cdecl;
    get_server_connection_type: function: TGType; cdecl;
    get_file_database_type: function: TGType; cdecl;
    get_default_database: function(backend: PGTlsBackend): PGTlsDatabase; cdecl;
  end;

  PPGTlsCertificatePrivate = ^PGTlsCertificatePrivate;
  PGTlsCertificatePrivate = ^TGTlsCertificatePrivate;
  TGTlsCertificate = object(TGObject)
    priv: PGTlsCertificatePrivate;
    function new_from_file(file_: Pgchar): PGTlsCertificate; cdecl; inline; static;
    function new_from_files(cert_file: Pgchar; key_file: Pgchar): PGTlsCertificate; cdecl; inline; static;
    function new_from_pem(data: Pgchar; length: gssize): PGTlsCertificate; cdecl; inline; static;
    function list_new_from_file(file_: Pgchar): PGList; cdecl; inline; static;
    function get_issuer: PGTlsCertificate; cdecl; inline;
    function verify(identity: PGSocketConnectable; trusted_ca: PGTlsCertificate): TGTlsCertificateFlags; cdecl; inline;
    //property certificate: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_certificate  { property is writeable but setter not declared } ;
    //property certificate_pem: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_certificate_pem  { property is writeable but setter not declared } ;
    property issuer:  PGTlsCertificate read get_issuer  { property is writeable but setter not declared } ;
    //property private_key: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_private_key  { property is writeable but setter not declared } ;
    //property private_key_pem: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_private_key_pem  { property is writeable but setter not declared } ;
  end;

  TGTlsCertificatePrivate = record
    Unknown: Pointer;
  end;



  PPGTlsCertificateClass = ^PGTlsCertificateClass;
  PGTlsCertificateClass = ^TGTlsCertificateClass;
  TGTlsCertificateClass = object
    parent_class: TGObjectClass;
    verify: function(cert: PGTlsCertificate; identity: PGSocketConnectable; trusted_ca: PGTlsCertificate): TGTlsCertificateFlags; cdecl;
    padding: array [0..7] of gpointer;
  end;

  PPGTlsClientConnection = ^PGTlsClientConnection;
  PGTlsClientConnection = ^TGTlsClientConnection;
  TGTlsClientConnection = object
    function new(base_io_stream: PGIOStream; server_identity: PGSocketConnectable): PGIOStream; cdecl; inline; static;
    function get_accepted_cas: PGList; cdecl; inline;
    function get_server_identity: PGSocketConnectable; cdecl; inline;
    function get_use_ssl3: gboolean; cdecl; inline;
    function get_validation_flags: TGTlsCertificateFlags; cdecl; inline;
    procedure set_server_identity(identity: PGSocketConnectable); cdecl; inline;
    procedure set_use_ssl3(use_ssl3: gboolean); cdecl; inline;
    procedure set_validation_flags(flags: TGTlsCertificateFlags); cdecl; inline;
    property accepted_cas:  PGList read get_accepted_cas ;
    property server_identity:  PGSocketConnectable read get_server_identity  { property is writeable but setter not declared } ;
    property use_ssl3:  gboolean read get_use_ssl3  { property is writeable but setter not declared } ;
    property validation_flags:  TGTlsCertificateFlags read get_validation_flags  { property is writeable but setter not declared } ;
  end;

  PPGTlsClientConnectionInterface = ^PGTlsClientConnectionInterface;
  PGTlsClientConnectionInterface = ^TGTlsClientConnectionInterface;
  TGTlsClientConnectionInterface = object
    g_iface: TGTypeInterface;
  end;

  PPGTlsInteractionResult = ^PGTlsInteractionResult;
  PGTlsInteractionResult = ^TGTlsInteractionResult;

  PPGTlsPassword = ^PGTlsPassword;
  PGTlsPassword = ^TGTlsPassword;

  PPGTlsInteractionPrivate = ^PGTlsInteractionPrivate;
  PGTlsInteractionPrivate = ^TGTlsInteractionPrivate;
  TGTlsInteraction = object(TGObject)
    priv: PGTlsInteractionPrivate;
    function ask_password(password: PGTlsPassword; cancellable: PGCancellable): TGTlsInteractionResult; cdecl; inline;
    procedure ask_password_async(password: PGTlsPassword; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function ask_password_finish(result_: PGAsyncResult): TGTlsInteractionResult; cdecl; inline;
  end;

  PPGTlsRehandshakeMode = ^PGTlsRehandshakeMode;
  PGTlsRehandshakeMode = ^TGTlsRehandshakeMode;

  PPGTlsConnectionPrivate = ^PGTlsConnectionPrivate;
  PGTlsConnectionPrivate = ^TGTlsConnectionPrivate;

  TGTlsConnectionPrivate = record
    Unknown: Pointer;
  end;



  PPGTlsConnection = ^PGTlsConnection;
  PGTlsConnection = ^TGTlsConnection;
  TGTlsConnection = object(TGIOStream)
    priv1: PGTlsConnectionPrivate;
    function emit_accept_certificate(peer_cert: PGTlsCertificate; errors: TGTlsCertificateFlags): gboolean; cdecl; inline;
    function get_certificate: PGTlsCertificate; cdecl; inline;
    function get_database: PGTlsDatabase; cdecl; inline;
    function get_interaction: PGTlsInteraction; cdecl; inline;
    function get_peer_certificate: PGTlsCertificate; cdecl; inline;
    function get_peer_certificate_errors: TGTlsCertificateFlags; cdecl; inline;
    function get_rehandshake_mode: TGTlsRehandshakeMode; cdecl; inline;
    function get_require_close_notify: gboolean; cdecl; inline;
    
    function handshake(cancellable: PGCancellable): gboolean; cdecl; inline;
    procedure handshake_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; inline;
    function handshake_finish(result_: PGAsyncResult): gboolean; cdecl; inline;
    procedure set_certificate(certificate: PGTlsCertificate); cdecl; inline;
    procedure set_database(database: PGTlsDatabase); cdecl; inline;
    procedure set_interaction(interaction: PGTlsInteraction); cdecl; inline;
    procedure set_rehandshake_mode(mode: TGTlsRehandshakeMode); cdecl; inline;
    procedure set_require_close_notify(require_close_notify: gboolean); cdecl; inline;
    
    //property base_io_stream: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_base_io_stream  { property is writeable but setter not declared } ;
    property certificate:  PGTlsCertificate read get_certificate  { property is writeable but setter not declared } ;
    property database:  PGTlsDatabase read get_database  { property is writeable but setter not declared } ;
    property interaction:  PGTlsInteraction read get_interaction  { property is writeable but setter not declared } ;
    property peer_certificate:  PGTlsCertificate read get_peer_certificate ;
    property peer_certificate_errors:  TGTlsCertificateFlags read get_peer_certificate_errors ;
    property rehandshake_mode:  TGTlsRehandshakeMode read get_rehandshake_mode  { property is writeable but setter not declared } ;
    property require_close_notify:  gboolean read get_require_close_notify  { property is writeable but setter not declared } ;
    //property use_system_certdb: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_use_system_certdb  { property is writeable but setter not declared } ;
  end;

  PPGTlsConnectionClass = ^PGTlsConnectionClass;
  PGTlsConnectionClass = ^TGTlsConnectionClass;
  TGTlsConnectionClass = object
    parent_class: TGIOStreamClass;
    accept_certificate: function(connection: PGTlsConnection; peer_cert: PGTlsCertificate; errors: TGTlsCertificateFlags): gboolean; cdecl;
    handshake: function(conn: PGTlsConnection; cancellable: PGCancellable): gboolean; cdecl;
    handshake_async: procedure(conn: PGTlsConnection; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    handshake_finish: function(conn: PGTlsConnection; result_: PGAsyncResult): gboolean; cdecl;
    padding: array [0..7] of gpointer;
  end;

  TGTlsDatabasePrivate = record
    Unknown: Pointer;
  end;



  PPGTlsDatabaseClass = ^PGTlsDatabaseClass;
  PGTlsDatabaseClass = ^TGTlsDatabaseClass;
  TGTlsDatabaseClass = object
    parent_class: TGObjectClass;
    verify_chain: function(self: PGTlsDatabase; chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable): TGTlsCertificateFlags; cdecl;
    verify_chain_async: procedure(self: PGTlsDatabase; chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    verify_chain_finish: function(self: PGTlsDatabase; result_: PGAsyncResult): TGTlsCertificateFlags; cdecl;
    create_certificate_handle: function(self: PGTlsDatabase; certificate: PGTlsCertificate): Pgchar; cdecl;
    lookup_certificate_for_handle: function(self: PGTlsDatabase; handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl;
    lookup_certificate_for_handle_async: procedure(self: PGTlsDatabase; handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    lookup_certificate_for_handle_finish: function(self: PGTlsDatabase; result_: PGAsyncResult): PGTlsCertificate; cdecl;
    lookup_certificate_issuer: function(self: PGTlsDatabase; certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl;
    lookup_certificate_issuer_async: procedure(self: PGTlsDatabase; certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    lookup_certificate_issuer_finish: function(self: PGTlsDatabase; result_: PGAsyncResult): PGTlsCertificate; cdecl;
    lookup_certificates_issued_by: function(self: PGTlsDatabase; issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGList; cdecl;
    lookup_certificates_issued_by_async: procedure(self: PGTlsDatabase; issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    lookup_certificates_issued_by_finish: function(self: PGTlsDatabase; result_: PGAsyncResult): PGList; cdecl;
    padding: array [0..15] of gpointer;
  end;

  PPGTlsError = ^PGTlsError;
  PGTlsError = ^TGTlsError;

  PPGTlsFileDatabase = ^PGTlsFileDatabase;
  PGTlsFileDatabase = ^TGTlsFileDatabase;
  TGTlsFileDatabase = object
    function new(anchors: Pgchar): PGTlsDatabase; cdecl; inline; static;
    //property anchors: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_anchors  { property is writeable but setter not declared } ;
  end;

  PPGTlsFileDatabaseInterface = ^PGTlsFileDatabaseInterface;
  PGTlsFileDatabaseInterface = ^TGTlsFileDatabaseInterface;
  TGTlsFileDatabaseInterface = object
    g_iface: TGTypeInterface;
    padding: array [0..7] of gpointer;
  end;

  PPGTlsPasswordFlags = ^PGTlsPasswordFlags;
  PGTlsPasswordFlags = ^TGTlsPasswordFlags;
  TGTlsPasswordFlags = packed object(TBitObject32)
  public
    property none: DWord index 0 read GetBit write SetBit;
    property retry: DWord index 2 read GetBit write SetBit;
    property many_tries: DWord index 4 read GetBit write SetBit;
    property final_try: DWord index 8 read GetBit write SetBit;
  end;


  PPGTlsPasswordPrivate = ^PGTlsPasswordPrivate;
  PGTlsPasswordPrivate = ^TGTlsPasswordPrivate;
  TGTlsPassword = object(TGObject)
    priv: PGTlsPasswordPrivate;
    function new(flags: TGTlsPasswordFlags; description: Pgchar): PGTlsPassword; cdecl; inline; static;
    function get_description: Pgchar; cdecl; inline;
    function get_flags: TGTlsPasswordFlags; cdecl; inline;
    function get_value(length: Pgsize): Pguint8; cdecl; inline;
    function get_warning: Pgchar; cdecl; inline;
    procedure set_description(description: Pgchar); cdecl; inline;
    procedure set_flags(flags: TGTlsPasswordFlags); cdecl; inline;
    procedure set_value(value: Pguint8; length: gssize); cdecl; inline;
    procedure set_value_full(value: Pguint8; length: gssize; destroy_: TGDestroyNotify); cdecl; inline;
    procedure set_warning(warning: Pgchar); cdecl; inline;
    property description:  Pgchar read get_description  { property is writeable but setter not declared } ;
    property flags:  TGTlsPasswordFlags read get_flags  { property is writeable but setter not declared } ;
    property warning:  Pgchar read get_warning  { property is writeable but setter not declared } ;
  end;

  TGTlsInteractionPrivate = record
    Unknown: Pointer;
  end;



  PPGTlsInteractionClass = ^PGTlsInteractionClass;
  PGTlsInteractionClass = ^TGTlsInteractionClass;
  TGTlsInteractionClass = object
    parent_class: TGObjectClass;
    ask_password: function(interaction: PGTlsInteraction; password: PGTlsPassword; cancellable: PGCancellable): TGTlsInteractionResult; cdecl;
    ask_password_async: procedure(interaction: PGTlsInteraction; password: PGTlsPassword; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    ask_password_finish: function(interaction: PGTlsInteraction; result_: PGAsyncResult): TGTlsInteractionResult; cdecl;
    padding: array [0..23] of gpointer;
  end;

  TGTlsPasswordPrivate = record
    Unknown: Pointer;
  end;



  PPGTlsPasswordClass = ^PGTlsPasswordClass;
  PGTlsPasswordClass = ^TGTlsPasswordClass;
  TGTlsPasswordClass = object
    parent_class: TGObjectClass;
    get_value: function(password: PGTlsPassword; length: Pgsize): Pguint8; cdecl;
    set_value: procedure(password: PGTlsPassword; value: Pguint8; length: gssize; destroy_: TGDestroyNotify); cdecl;
    get_default_warning: function(password: PGTlsPassword): Pgchar; cdecl;
    padding: array [0..3] of gpointer;
  end;

  PPGTlsServerConnection = ^PGTlsServerConnection;
  PGTlsServerConnection = ^TGTlsServerConnection;
  TGTlsServerConnection = object
    function new(base_io_stream: PGIOStream; certificate: PGTlsCertificate): PGIOStream; cdecl; inline; static;
    //property authentication_mode: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_authentication_mode  { property is writeable but setter not declared } ;
  end;

  PPGTlsServerConnectionInterface = ^PGTlsServerConnectionInterface;
  PGTlsServerConnectionInterface = ^TGTlsServerConnectionInterface;
  TGTlsServerConnectionInterface = object
    g_iface: TGTypeInterface;
  end;

  PPGUnixConnectionPrivate = ^PGUnixConnectionPrivate;
  PGUnixConnectionPrivate = ^TGUnixConnectionPrivate;

  TGUnixConnectionPrivate = record
    Unknown: Pointer;
  end;



  PPGUnixConnection = ^PGUnixConnection;
  PGUnixConnection = ^TGUnixConnection;
  TGUnixConnection = object(TGSocketConnection)
    priv2: PGUnixConnectionPrivate;
    function receive_credentials(cancellable: PGCancellable): PGCredentials; cdecl; inline;
    function receive_fd(cancellable: PGCancellable): gint; cdecl; inline;
    function send_credentials(cancellable: PGCancellable): gboolean; cdecl; inline;
    function send_fd(fd: gint; cancellable: PGCancellable): gboolean; cdecl; inline;
  end;

  PPGUnixConnectionClass = ^PGUnixConnectionClass;
  PGUnixConnectionClass = ^TGUnixConnectionClass;
  TGUnixConnectionClass = object
    parent_class: TGSocketConnectionClass;
  end;

  PPGUnixCredentialsMessagePrivate = ^PGUnixCredentialsMessagePrivate;
  PGUnixCredentialsMessagePrivate = ^TGUnixCredentialsMessagePrivate;

  TGUnixCredentialsMessagePrivate = record
    Unknown: Pointer;
  end;



  PPGUnixCredentialsMessage = ^PGUnixCredentialsMessage;
  PGUnixCredentialsMessage = ^TGUnixCredentialsMessage;
  TGUnixCredentialsMessage = object(TGSocketControlMessage)
    priv1: PGUnixCredentialsMessagePrivate;
    function new: PGUnixCredentialsMessage; cdecl; inline; static;
    function new_with_credentials(credentials: PGCredentials): PGUnixCredentialsMessage; cdecl; inline; static;
    function is_supported: gboolean; cdecl; inline; static;
    function get_credentials: PGCredentials; cdecl; inline;
    property credentials:  PGCredentials read get_credentials  { property is writeable but setter not declared } ;
  end;

  PPGUnixCredentialsMessageClass = ^PGUnixCredentialsMessageClass;
  PGUnixCredentialsMessageClass = ^TGUnixCredentialsMessageClass;
  TGUnixCredentialsMessageClass = object
    parent_class: TGSocketControlMessageClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
  end;

  TGUnixFDListPrivate = record
    Unknown: Pointer;
  end;



  PPGUnixFDListClass = ^PGUnixFDListClass;
  PGUnixFDListClass = ^TGUnixFDListClass;
  TGUnixFDListClass = object
    parent_class: TGObjectClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGUnixFDMessagePrivate = ^PGUnixFDMessagePrivate;
  PGUnixFDMessagePrivate = ^TGUnixFDMessagePrivate;

  TGUnixFDMessagePrivate = record
    Unknown: Pointer;
  end;



  PPGUnixFDMessage = ^PGUnixFDMessage;
  PGUnixFDMessage = ^TGUnixFDMessage;
  TGUnixFDMessage = object(TGSocketControlMessage)
    priv1: PGUnixFDMessagePrivate;
    function new: PGUnixFDMessage; cdecl; inline; static;
    function new_with_fd_list(fd_list: PGUnixFDList): PGUnixFDMessage; cdecl; inline; static;
    function append_fd(fd: gint): gboolean; cdecl; inline;
    function get_fd_list: PGUnixFDList; cdecl; inline;
    function steal_fds(length: Pgint): Pgint; cdecl; inline;
    property fd_list:  PGUnixFDList read get_fd_list  { property is writeable but setter not declared } ;
  end;

  PPGUnixFDMessageClass = ^PGUnixFDMessageClass;
  PGUnixFDMessageClass = ^TGUnixFDMessageClass;
  TGUnixFDMessageClass = object
    parent_class: TGSocketControlMessageClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
  end;

  PPGUnixInputStreamPrivate = ^PGUnixInputStreamPrivate;
  PGUnixInputStreamPrivate = ^TGUnixInputStreamPrivate;

  TGUnixInputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGUnixInputStream = ^PGUnixInputStream;
  PGUnixInputStream = ^TGUnixInputStream;
  TGUnixInputStream = object(TGInputStream)
    priv1: PGUnixInputStreamPrivate;
    function new(fd: gint; close_fd: gboolean): PGUnixInputStream; cdecl; inline; static;
    function get_close_fd: gboolean; cdecl; inline;
    function get_fd: gint; cdecl; inline;
    procedure set_close_fd(close_fd: gboolean); cdecl; inline;
    property close_fd:  gboolean read get_close_fd  { property is writeable but setter not declared } ;
    property fd:  gint read get_fd  { property is writeable but setter not declared } ;
  end;

  PPGUnixInputStreamClass = ^PGUnixInputStreamClass;
  PGUnixInputStreamClass = ^TGUnixInputStreamClass;
  TGUnixInputStreamClass = object
    parent_class: TGInputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGUnixMountEntry = ^PGUnixMountEntry;
  PGUnixMountEntry = ^TGUnixMountEntry;

  TGUnixMountEntry = record
    Unknown: Pointer;
  end;



  PPGUnixMountMonitor = ^PGUnixMountMonitor;
  PGUnixMountMonitor = ^TGUnixMountMonitor;
  TGUnixMountMonitor = object(TGObject)
    function new: PGUnixMountMonitor; cdecl; inline; static;
    procedure set_rate_limit(limit_msec: gint); cdecl; inline;
  end;

  PPGUnixMountMonitorClass = ^PGUnixMountMonitorClass;
  PGUnixMountMonitorClass = ^TGUnixMountMonitorClass;
  TGUnixMountMonitorClass = object
  end;

  PPGUnixMountPoint = ^PGUnixMountPoint;
  PGUnixMountPoint = ^TGUnixMountPoint;
  TGUnixMountPoint = object
    function compare(mount2: PGUnixMountPoint): gint; cdecl; inline;
    procedure free; cdecl; inline;
    function get_device_path: Pgchar; cdecl; inline;
    function get_fs_type: Pgchar; cdecl; inline;
    function get_mount_path: Pgchar; cdecl; inline;
    function guess_can_eject: gboolean; cdecl; inline;
    function guess_icon: PGIcon; cdecl; inline;
    function guess_name: Pgchar; cdecl; inline;
    function is_loopback: gboolean; cdecl; inline;
    function is_readonly: gboolean; cdecl; inline;
    function is_user_mountable: gboolean; cdecl; inline;
  end;

  PPGUnixOutputStreamPrivate = ^PGUnixOutputStreamPrivate;
  PGUnixOutputStreamPrivate = ^TGUnixOutputStreamPrivate;

  TGUnixOutputStreamPrivate = record
    Unknown: Pointer;
  end;



  PPGUnixOutputStream = ^PGUnixOutputStream;
  PGUnixOutputStream = ^TGUnixOutputStream;
  TGUnixOutputStream = object(TGOutputStream)
    priv1: PGUnixOutputStreamPrivate;
    function new(fd: gint; close_fd: gboolean): PGUnixOutputStream; cdecl; inline; static;
    function get_close_fd: gboolean; cdecl; inline;
    function get_fd: gint; cdecl; inline;
    procedure set_close_fd(close_fd: gboolean); cdecl; inline;
    property close_fd:  gboolean read get_close_fd  { property is writeable but setter not declared } ;
    property fd:  gint read get_fd  { property is writeable but setter not declared } ;
  end;

  PPGUnixOutputStreamClass = ^PGUnixOutputStreamClass;
  PGUnixOutputStreamClass = ^TGUnixOutputStreamClass;
  TGUnixOutputStreamClass = object
    parent_class: TGOutputStreamClass;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
  end;

  PPGUnixSocketAddressType = ^PGUnixSocketAddressType;
  PGUnixSocketAddressType = ^TGUnixSocketAddressType;

  PPGUnixSocketAddressPrivate = ^PGUnixSocketAddressPrivate;
  PGUnixSocketAddressPrivate = ^TGUnixSocketAddressPrivate;

  TGUnixSocketAddressPrivate = record
    Unknown: Pointer;
  end;



  PPGUnixSocketAddress = ^PGUnixSocketAddress;
  PGUnixSocketAddress = ^TGUnixSocketAddress;
  TGUnixSocketAddress = object(TGSocketAddress)
    priv: PGUnixSocketAddressPrivate;
    function new(path: Pgchar): PGUnixSocketAddress; cdecl; inline; static;
    function new_abstract(path: Pgchar; path_len: gint): PGUnixSocketAddress; cdecl; inline; static;
    function new_with_type(path: Pgchar; path_len: gint; type_: TGUnixSocketAddressType): PGUnixSocketAddress; cdecl; inline; static;
    function abstract_names_supported: gboolean; cdecl; inline; static;
    function get_address_type: TGUnixSocketAddressType; cdecl; inline;
    function get_is_abstract: gboolean; cdecl; inline;
    function get_path: Pgchar; cdecl; inline;
    function get_path_len: gsize; cdecl; inline;
    //property abstract: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_abstract  { property is writeable but setter not declared } ;
    property address_type:  TGUnixSocketAddressType read get_address_type  { property is writeable but setter not declared } ;
    property path:  Pgchar read get_path  { property is writeable but setter not declared } ;
    //property path_as_array: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_path_as_array  { property is writeable but setter not declared } ;
  end;

  PPGUnixSocketAddressClass = ^PGUnixSocketAddressClass;
  PGUnixSocketAddressClass = ^TGUnixSocketAddressClass;
  TGUnixSocketAddressClass = object
    parent_class: TGSocketAddressClass;
  end;

  PPGVfs = ^PGVfs;
  PGVfs = ^TGVfs;
  TGVfs = object(TGObject)
    function get_default: PGVfs; cdecl; inline; static;
    function get_local: PGVfs; cdecl; inline; static;
    function get_file_for_path(path: Pgchar): PGFile; cdecl; inline;
    function get_file_for_uri(uri: Pgchar): PGFile; cdecl; inline;
    function get_supported_uri_schemes: PPgchar; cdecl; inline;
    function is_active: gboolean; cdecl; inline;
    function parse_name(parse_name: Pgchar): PGFile; cdecl; inline;
  end;

  PPGVfsClass = ^PGVfsClass;
  PGVfsClass = ^TGVfsClass;
  TGVfsClass = object
    parent_class: TGObjectClass;
    is_active: function(vfs: PGVfs): gboolean; cdecl;
    get_file_for_path: function(vfs: PGVfs; path: Pgchar): PGFile; cdecl;
    get_file_for_uri: function(vfs: PGVfs; uri: Pgchar): PGFile; cdecl;
    get_supported_uri_schemes: function(vfs: PGVfs): PPgchar; cdecl;
    parse_name: function(vfs: PGVfs; parse_name: Pgchar): PGFile; cdecl;
    local_file_add_info: procedure(vfs: PGVfs; filename: Pgchar; device: guint64; attribute_matcher: PGFileAttributeMatcher; info: PGFileInfo; cancellable: PGCancellable; extra_data: Pgpointer; free_extra_data: PGDestroyNotify); cdecl;
    add_writable_namespaces: procedure(vfs: PGVfs; list: PGFileAttributeInfoList); cdecl;
    local_file_set_attributes: function(vfs: PGVfs; filename: Pgchar; info: PGFileInfo; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
    local_file_removed: procedure(vfs: PGVfs; filename: Pgchar); cdecl;
    local_file_moved: procedure(vfs: PGVfs; source: Pgchar; dest: Pgchar); cdecl;
    _g_reserved1: procedure; cdecl;
    _g_reserved2: procedure; cdecl;
    _g_reserved3: procedure; cdecl;
    _g_reserved4: procedure; cdecl;
    _g_reserved5: procedure; cdecl;
    _g_reserved6: procedure; cdecl;
    _g_reserved7: procedure; cdecl;
  end;

  PPGVolumeIface = ^PGVolumeIface;
  PGVolumeIface = ^TGVolumeIface;
  TGVolumeIface = object
    g_iface: TGTypeInterface;
    changed: procedure(volume: PGVolume); cdecl;
    removed: procedure(volume: PGVolume); cdecl;
    get_name: function(volume: PGVolume): Pgchar; cdecl;
    get_icon: function(volume: PGVolume): PGIcon; cdecl;
    get_uuid: function(volume: PGVolume): Pgchar; cdecl;
    get_drive: function(volume: PGVolume): PGDrive; cdecl;
    get_mount: function(volume: PGVolume): PGMount; cdecl;
    can_mount: function(volume: PGVolume): gboolean; cdecl;
    can_eject: function(volume: PGVolume): gboolean; cdecl;
    mount_fn: procedure(volume: PGVolume; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    mount_finish: function(volume: PGVolume; result_: PGAsyncResult): gboolean; cdecl;
    eject: procedure(volume: PGVolume; flags: TGMountUnmountFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_finish: function(volume: PGVolume; result_: PGAsyncResult): gboolean; cdecl;
    get_identifier: function(volume: PGVolume; kind: Pgchar): Pgchar; cdecl;
    enumerate_identifiers: function(volume: PGVolume): PPgchar; cdecl;
    should_automount: function(volume: PGVolume): gboolean; cdecl;
    get_activation_root: function(volume: PGVolume): PGFile; cdecl;
    eject_with_operation: procedure(volume: PGVolume; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
    eject_with_operation_finish: function(volume: PGVolume; result_: PGAsyncResult): gboolean; cdecl;
  end;

  PPGZlibCompressor = ^PGZlibCompressor;
  PGZlibCompressor = ^TGZlibCompressor;

  PPGZlibCompressorFormat = ^PGZlibCompressorFormat;
  PGZlibCompressorFormat = ^TGZlibCompressorFormat;
  TGZlibCompressor = object(TGObject)
    function new(format: TGZlibCompressorFormat; level: gint): PGZlibCompressor; cdecl; inline; static;
    function get_file_info: PGFileInfo; cdecl; inline;
    procedure set_file_info(file_info: PGFileInfo); cdecl; inline;
    property file_info:  PGFileInfo read get_file_info  { property is writeable but setter not declared } ;
    //property format: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_format  { property is writeable but setter not declared } ;
    //property level: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_level  { property is writeable but setter not declared } ;
  end;

  PPGZlibCompressorClass = ^PGZlibCompressorClass;
  PGZlibCompressorClass = ^TGZlibCompressorClass;
  TGZlibCompressorClass = object
    parent_class: TGObjectClass;
  end;

  PPGZlibDecompressor = ^PGZlibDecompressor;
  PGZlibDecompressor = ^TGZlibDecompressor;
  TGZlibDecompressor = object(TGObject)
    function new(format: TGZlibCompressorFormat): PGZlibDecompressor; cdecl; inline; static;
    function get_file_info: PGFileInfo; cdecl; inline;
    property file_info:  PGFileInfo read get_file_info ;
    //property format: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_format  { property is writeable but setter not declared } ;
  end;

  PPGZlibDecompressorClass = ^PGZlibDecompressorClass;
  PGZlibDecompressorClass = ^TGZlibDecompressorClass;
  TGZlibDecompressorClass = object
    parent_class: TGObjectClass;
  end;

function g_action_get_enabled(AAction: PGAction): gboolean; cdecl; external;
function g_action_get_name(AAction: PGAction): Pgchar; cdecl; external;
function g_action_get_parameter_type(AAction: PGAction): PGVariantType; cdecl; external;
function g_action_get_state(AAction: PGAction): PGVariant; cdecl; external;
function g_action_get_state_hint(AAction: PGAction): PGVariant; cdecl; external;
function g_action_get_state_type(AAction: PGAction): PGVariantType; cdecl; external;
function g_action_get_type: TGType; cdecl; external;
function g_action_group_get_action_enabled(AActionGroup: PGActionGroup; action_name: Pgchar): gboolean; cdecl; external;
function g_action_group_get_action_parameter_type(AActionGroup: PGActionGroup; action_name: Pgchar): PGVariantType; cdecl; external;
function g_action_group_get_action_state(AActionGroup: PGActionGroup; action_name: Pgchar): PGVariant; cdecl; external;
function g_action_group_get_action_state_hint(AActionGroup: PGActionGroup; action_name: Pgchar): PGVariant; cdecl; external;
function g_action_group_get_action_state_type(AActionGroup: PGActionGroup; action_name: Pgchar): PGVariantType; cdecl; external;
function g_action_group_get_type: TGType; cdecl; external;
function g_action_group_has_action(AActionGroup: PGActionGroup; action_name: Pgchar): gboolean; cdecl; external;
function g_action_group_list_actions(AActionGroup: PGActionGroup): PPgchar; cdecl; external;
function g_app_info_add_supports_type(AAppInfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl; external;
function g_app_info_can_delete(AAppInfo: PGAppInfo): gboolean; cdecl; external;
function g_app_info_can_remove_supports_type(AAppInfo: PGAppInfo): gboolean; cdecl; external;
function g_app_info_create_from_commandline(commandline: Pgchar; application_name: Pgchar; flags: TGAppInfoCreateFlags): PGAppInfo; cdecl; external;
function g_app_info_delete(AAppInfo: PGAppInfo): gboolean; cdecl; external;
function g_app_info_dup(AAppInfo: PGAppInfo): PGAppInfo; cdecl; external;
function g_app_info_equal(AAppInfo: PGAppInfo; appinfo2: PGAppInfo): gboolean; cdecl; external;
function g_app_info_get_all: PGList; cdecl; external;
function g_app_info_get_all_for_type(content_type: Pgchar): PGList; cdecl; external;
function g_app_info_get_commandline(AAppInfo: PGAppInfo): Pgchar; cdecl; external;
function g_app_info_get_default_for_type(content_type: Pgchar; must_support_uris: gboolean): PGAppInfo; cdecl; external;
function g_app_info_get_default_for_uri_scheme(uri_scheme: Pgchar): PGAppInfo; cdecl; external;
function g_app_info_get_description(AAppInfo: PGAppInfo): Pgchar; cdecl; external;
function g_app_info_get_display_name(AAppInfo: PGAppInfo): Pgchar; cdecl; external;
function g_app_info_get_executable(AAppInfo: PGAppInfo): Pgchar; cdecl; external;
function g_app_info_get_fallback_for_type(content_type: Pgchar): PGList; cdecl; external;
function g_app_info_get_icon(AAppInfo: PGAppInfo): PGIcon; cdecl; external;
function g_app_info_get_id(AAppInfo: PGAppInfo): Pgchar; cdecl; external;
function g_app_info_get_name(AAppInfo: PGAppInfo): Pgchar; cdecl; external;
function g_app_info_get_recommended_for_type(content_type: Pgchar): PGList; cdecl; external;
function g_app_info_get_type: TGType; cdecl; external;
function g_app_info_launch(AAppInfo: PGAppInfo; files: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl; external;
function g_app_info_launch_default_for_uri(uri: Pgchar; launch_context: PGAppLaunchContext): gboolean; cdecl; external;
function g_app_info_launch_uris(AAppInfo: PGAppInfo; uris: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl; external;
function g_app_info_remove_supports_type(AAppInfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl; external;
function g_app_info_set_as_default_for_extension(AAppInfo: PGAppInfo; extension: Pgchar): gboolean; cdecl; external;
function g_app_info_set_as_default_for_type(AAppInfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl; external;
function g_app_info_set_as_last_used_for_type(AAppInfo: PGAppInfo; content_type: Pgchar): gboolean; cdecl; external;
function g_app_info_should_show(AAppInfo: PGAppInfo): gboolean; cdecl; external;
function g_app_info_supports_files(AAppInfo: PGAppInfo): gboolean; cdecl; external;
function g_app_info_supports_uris(AAppInfo: PGAppInfo): gboolean; cdecl; external;
function g_app_launch_context_get_display(AAppLaunchContext: PGAppLaunchContext; info: PGAppInfo; files: PGList): Pgchar; cdecl; external;
function g_app_launch_context_get_startup_notify_id(AAppLaunchContext: PGAppLaunchContext; info: PGAppInfo; files: PGList): Pgchar; cdecl; external;
function g_app_launch_context_get_type: TGType; cdecl; external;
function g_app_launch_context_new: PGAppLaunchContext; cdecl; external;
function g_application_command_line_get_arguments(AApplicationCommandLine: PGApplicationCommandLine; argc: Pgint): PPgchar; cdecl; external;
function g_application_command_line_get_cwd(AApplicationCommandLine: PGApplicationCommandLine): Pgchar; cdecl; external;
function g_application_command_line_get_environ(AApplicationCommandLine: PGApplicationCommandLine): PPgchar; cdecl; external;
function g_application_command_line_get_exit_status(AApplicationCommandLine: PGApplicationCommandLine): gint; cdecl; external;
function g_application_command_line_get_is_remote(AApplicationCommandLine: PGApplicationCommandLine): gboolean; cdecl; external;
function g_application_command_line_get_platform_data(AApplicationCommandLine: PGApplicationCommandLine): PGVariant; cdecl; external;
function g_application_command_line_get_type: TGType; cdecl; external;
function g_application_command_line_getenv(AApplicationCommandLine: PGApplicationCommandLine; name: Pgchar): Pgchar; cdecl; external;
function g_application_get_application_id(AApplication: PGApplication): Pgchar; cdecl; external;
function g_application_get_flags(AApplication: PGApplication): TGApplicationFlags; cdecl; external;
function g_application_get_inactivity_timeout(AApplication: PGApplication): guint; cdecl; external;
function g_application_get_is_registered(AApplication: PGApplication): gboolean; cdecl; external;
function g_application_get_is_remote(AApplication: PGApplication): gboolean; cdecl; external;
function g_application_get_type: TGType; cdecl; external;
function g_application_id_is_valid(application_id: Pgchar): gboolean; cdecl; external;
function g_application_new(application_id: Pgchar; flags: TGApplicationFlags): PGApplication; cdecl; external;
function g_application_register(AApplication: PGApplication; cancellable: PGCancellable): gboolean; cdecl; external;
function g_application_run(AApplication: PGApplication; argc: gint; argv: PPgchar): gint; cdecl; external;
function g_async_initable_get_type: TGType; cdecl; external;
function g_async_initable_init_finish(AAsyncInitable: PGAsyncInitable; res: PGAsyncResult): gboolean; cdecl; external;
function g_async_initable_new_finish(AAsyncInitable: PGAsyncInitable; res: PGAsyncResult): PGObject; cdecl; external;
function g_async_result_get_source_object(AAsyncResult: PGAsyncResult): PGObject; cdecl; external;
function g_async_result_get_type: TGType; cdecl; external;
function g_async_result_get_user_data(AAsyncResult: PGAsyncResult): gpointer; cdecl; external;
function g_buffered_input_stream_fill(ABufferedInputStream: PGBufferedInputStream; count: gssize; cancellable: PGCancellable): gssize; cdecl; external;
function g_buffered_input_stream_fill_finish(ABufferedInputStream: PGBufferedInputStream; result_: PGAsyncResult): gssize; cdecl; external;
function g_buffered_input_stream_get_available(ABufferedInputStream: PGBufferedInputStream): gsize; cdecl; external;
function g_buffered_input_stream_get_buffer_size(ABufferedInputStream: PGBufferedInputStream): gsize; cdecl; external;
function g_buffered_input_stream_get_type: TGType; cdecl; external;
function g_buffered_input_stream_new(base_stream: PGInputStream): PGBufferedInputStream; cdecl; external;
function g_buffered_input_stream_new_sized(base_stream: PGInputStream; size: gsize): PGBufferedInputStream; cdecl; external;
function g_buffered_input_stream_peek(ABufferedInputStream: PGBufferedInputStream; buffer: Pgpointer; offset: gsize; count: gsize): gsize; cdecl; external;
function g_buffered_input_stream_peek_buffer(ABufferedInputStream: PGBufferedInputStream; count: Pgsize): Pguint8; cdecl; external;
function g_buffered_input_stream_read_byte(ABufferedInputStream: PGBufferedInputStream; cancellable: PGCancellable): gint; cdecl; external;
function g_buffered_output_stream_get_auto_grow(ABufferedOutputStream: PGBufferedOutputStream): gboolean; cdecl; external;
function g_buffered_output_stream_get_buffer_size(ABufferedOutputStream: PGBufferedOutputStream): gsize; cdecl; external;
function g_buffered_output_stream_get_type: TGType; cdecl; external;
function g_buffered_output_stream_new(base_stream: PGOutputStream): PGBufferedOutputStream; cdecl; external;
function g_buffered_output_stream_new_sized(base_stream: PGOutputStream; size: gsize): PGBufferedOutputStream; cdecl; external;
function g_bus_get_finish(res: PGAsyncResult): PGDBusConnection; cdecl; external;
function g_bus_get_sync(bus_type: TGBusType; cancellable: PGCancellable): PGDBusConnection; cdecl; external;
function g_bus_own_name(bus_type: TGBusType; name: Pgchar; flags: TGBusNameOwnerFlags; bus_acquired_handler: TGBusAcquiredCallback; name_acquired_handler: TGBusNameAcquiredCallback; name_lost_handler: TGBusNameLostCallback; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_bus_own_name_on_connection(connection: PGDBusConnection; name: Pgchar; flags: TGBusNameOwnerFlags; name_acquired_handler: TGBusNameAcquiredCallback; name_lost_handler: TGBusNameLostCallback; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_bus_own_name_on_connection_with_closures(connection: PGDBusConnection; name: Pgchar; flags: TGBusNameOwnerFlags; name_acquired_closure: PGClosure; name_lost_closure: PGClosure): guint; cdecl; external;
function g_bus_own_name_with_closures(bus_type: TGBusType; name: Pgchar; flags: TGBusNameOwnerFlags; bus_acquired_closure: PGClosure; name_acquired_closure: PGClosure; name_lost_closure: PGClosure): guint; cdecl; external;
function g_bus_watch_name(bus_type: TGBusType; name: Pgchar; flags: TGBusNameWatcherFlags; name_appeared_handler: TGBusNameAppearedCallback; name_vanished_handler: TGBusNameVanishedCallback; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_bus_watch_name_on_connection(connection: PGDBusConnection; name: Pgchar; flags: TGBusNameWatcherFlags; name_appeared_handler: TGBusNameAppearedCallback; name_vanished_handler: TGBusNameVanishedCallback; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_bus_watch_name_on_connection_with_closures(connection: PGDBusConnection; name: Pgchar; flags: TGBusNameWatcherFlags; name_appeared_closure: PGClosure; name_vanished_closure: PGClosure): guint; cdecl; external;
function g_bus_watch_name_with_closures(bus_type: TGBusType; name: Pgchar; flags: TGBusNameWatcherFlags; name_appeared_closure: PGClosure; name_vanished_closure: PGClosure): guint; cdecl; external;
function g_cancellable_connect(ACancellable: PGCancellable; callback: TGCallback; data: gpointer; data_destroy_func: TGDestroyNotify): gulong; cdecl; external;
function g_cancellable_get_current: PGCancellable; cdecl; external;
function g_cancellable_get_fd(ACancellable: PGCancellable): gint; cdecl; external;
function g_cancellable_get_type: TGType; cdecl; external;
function g_cancellable_is_cancelled(ACancellable: PGCancellable): gboolean; cdecl; external;
function g_cancellable_make_pollfd(ACancellable: PGCancellable; pollfd: PGPollFD): gboolean; cdecl; external;
function g_cancellable_new: PGCancellable; cdecl; external;
function g_cancellable_set_error_if_cancelled(ACancellable: PGCancellable): gboolean; cdecl; external;
function g_cancellable_source_new(ACancellable: PGCancellable): PGSource; cdecl; external;
function g_charset_converter_get_num_fallbacks(ACharsetConverter: PGCharsetConverter): guint; cdecl; external;
function g_charset_converter_get_type: TGType; cdecl; external;
function g_charset_converter_get_use_fallback(ACharsetConverter: PGCharsetConverter): gboolean; cdecl; external;
function g_charset_converter_new(to_charset: Pgchar; from_charset: Pgchar): PGCharsetConverter; cdecl; external;
function g_content_type_can_be_executable(type_: Pgchar): gboolean; cdecl; external;
function g_content_type_equals(type1: Pgchar; type2: Pgchar): gboolean; cdecl; external;
function g_content_type_from_mime_type(mime_type: Pgchar): Pgchar; cdecl; external;
function g_content_type_get_description(type_: Pgchar): Pgchar; cdecl; external;
function g_content_type_get_icon(type_: Pgchar): PGIcon; cdecl; external;
function g_content_type_get_mime_type(type_: Pgchar): Pgchar; cdecl; external;
function g_content_type_guess(filename: Pgchar; data: Pguint8; data_size: gsize; result_uncertain: Pgboolean): Pgchar; cdecl; external;
function g_content_type_guess_for_tree(root: PGFile): PPgchar; cdecl; external;
function g_content_type_is_a(type_: Pgchar; supertype: Pgchar): gboolean; cdecl; external;
function g_content_type_is_unknown(type_: Pgchar): gboolean; cdecl; external;
function g_content_types_get_registered: PGList; cdecl; external;
function g_converter_convert(AConverter: PGConverter; inbuf: Pguint8; inbuf_size: gsize; outbuf: Pgpointer; outbuf_size: gsize; flags: TGConverterFlags; bytes_read: Pgsize; bytes_written: Pgsize): TGConverterResult; cdecl; external;
function g_converter_get_type: TGType; cdecl; external;
function g_converter_input_stream_get_converter(AConverterInputStream: PGConverterInputStream): PGConverter; cdecl; external;
function g_converter_input_stream_get_type: TGType; cdecl; external;
function g_converter_input_stream_new(base_stream: PGInputStream; converter: PGConverter): PGConverterInputStream; cdecl; external;
function g_converter_output_stream_get_converter(AConverterOutputStream: PGConverterOutputStream): PGConverter; cdecl; external;
function g_converter_output_stream_get_type: TGType; cdecl; external;
function g_converter_output_stream_new(base_stream: PGOutputStream; converter: PGConverter): PGConverterOutputStream; cdecl; external;
function g_credentials_get_native(ACredentials: PGCredentials; native_type: TGCredentialsType): gpointer; cdecl; external;
function g_credentials_get_type: TGType; cdecl; external;
function g_credentials_get_unix_user(ACredentials: PGCredentials): guint; cdecl; external;
function g_credentials_is_same_user(ACredentials: PGCredentials; other_credentials: PGCredentials): gboolean; cdecl; external;
function g_credentials_new: PGCredentials; cdecl; external;
function g_credentials_set_unix_user(ACredentials: PGCredentials; uid: guint): gboolean; cdecl; external;
function g_credentials_to_string(ACredentials: PGCredentials): Pgchar; cdecl; external;
function g_data_input_stream_get_byte_order(ADataInputStream: PGDataInputStream): TGDataStreamByteOrder; cdecl; external;
function g_data_input_stream_get_newline_type(ADataInputStream: PGDataInputStream): TGDataStreamNewlineType; cdecl; external;
function g_data_input_stream_get_type: TGType; cdecl; external;
function g_data_input_stream_new(base_stream: PGInputStream): PGDataInputStream; cdecl; external;
function g_data_input_stream_read_byte(ADataInputStream: PGDataInputStream; cancellable: PGCancellable): guint8; cdecl; external;
function g_data_input_stream_read_int16(ADataInputStream: PGDataInputStream; cancellable: PGCancellable): gint16; cdecl; external;
function g_data_input_stream_read_int32(ADataInputStream: PGDataInputStream; cancellable: PGCancellable): gint32; cdecl; external;
function g_data_input_stream_read_int64(ADataInputStream: PGDataInputStream; cancellable: PGCancellable): gint64; cdecl; external;
function g_data_input_stream_read_line(ADataInputStream: PGDataInputStream; length: Pgsize; cancellable: PGCancellable): Pguint8; cdecl; external;
function g_data_input_stream_read_line_finish(ADataInputStream: PGDataInputStream; result_: PGAsyncResult; length: Pgsize): Pguint8; cdecl; external;
function g_data_input_stream_read_line_finish_utf8(ADataInputStream: PGDataInputStream; result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl; external;
function g_data_input_stream_read_line_utf8(ADataInputStream: PGDataInputStream; length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl; external;
function g_data_input_stream_read_uint16(ADataInputStream: PGDataInputStream; cancellable: PGCancellable): guint16; cdecl; external;
function g_data_input_stream_read_uint32(ADataInputStream: PGDataInputStream; cancellable: PGCancellable): guint32; cdecl; external;
function g_data_input_stream_read_uint64(ADataInputStream: PGDataInputStream; cancellable: PGCancellable): guint64; cdecl; external;
function g_data_input_stream_read_until(ADataInputStream: PGDataInputStream; stop_chars: Pgchar; length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl; external;
function g_data_input_stream_read_until_finish(ADataInputStream: PGDataInputStream; result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl; external;
function g_data_input_stream_read_upto(ADataInputStream: PGDataInputStream; stop_chars: Pgchar; stop_chars_len: gssize; length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl; external;
function g_data_input_stream_read_upto_finish(ADataInputStream: PGDataInputStream; result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl; external;
function g_data_output_stream_get_byte_order(ADataOutputStream: PGDataOutputStream): TGDataStreamByteOrder; cdecl; external;
function g_data_output_stream_get_type: TGType; cdecl; external;
function g_data_output_stream_new(base_stream: PGOutputStream): PGDataOutputStream; cdecl; external;
function g_data_output_stream_put_byte(ADataOutputStream: PGDataOutputStream; data: guint8; cancellable: PGCancellable): gboolean; cdecl; external;
function g_data_output_stream_put_int16(ADataOutputStream: PGDataOutputStream; data: gint16; cancellable: PGCancellable): gboolean; cdecl; external;
function g_data_output_stream_put_int32(ADataOutputStream: PGDataOutputStream; data: gint32; cancellable: PGCancellable): gboolean; cdecl; external;
function g_data_output_stream_put_int64(ADataOutputStream: PGDataOutputStream; data: gint64; cancellable: PGCancellable): gboolean; cdecl; external;
function g_data_output_stream_put_string(ADataOutputStream: PGDataOutputStream; str: Pgchar; cancellable: PGCancellable): gboolean; cdecl; external;
function g_data_output_stream_put_uint16(ADataOutputStream: PGDataOutputStream; data: guint16; cancellable: PGCancellable): gboolean; cdecl; external;
function g_data_output_stream_put_uint32(ADataOutputStream: PGDataOutputStream; data: guint32; cancellable: PGCancellable): gboolean; cdecl; external;
function g_data_output_stream_put_uint64(ADataOutputStream: PGDataOutputStream; data: guint64; cancellable: PGCancellable): gboolean; cdecl; external;
function g_dbus_address_get_for_bus_sync(bus_type: TGBusType; cancellable: PGCancellable): Pgchar; cdecl; external;
function g_dbus_address_get_stream_finish(res: PGAsyncResult; out_guid: PPgchar): PGIOStream; cdecl; external;
function g_dbus_address_get_stream_sync(address: Pgchar; out_guid: PPgchar; cancellable: PGCancellable): PGIOStream; cdecl; external;
function g_dbus_annotation_info_get_type: TGType; cdecl; external;
function g_dbus_annotation_info_lookup(annotations: PPGDBusAnnotationInfo; name: Pgchar): Pgchar; cdecl; external;
function g_dbus_annotation_info_ref(ADBusAnnotationInfo: PGDBusAnnotationInfo): PGDBusAnnotationInfo; cdecl; external;
function g_dbus_arg_info_get_type: TGType; cdecl; external;
function g_dbus_arg_info_ref(ADBusArgInfo: PGDBusArgInfo): PGDBusArgInfo; cdecl; external;
function g_dbus_auth_observer_authorize_authenticated_peer(ADBusAuthObserver: PGDBusAuthObserver; stream: PGIOStream; credentials: PGCredentials): gboolean; cdecl; external;
function g_dbus_auth_observer_get_type: TGType; cdecl; external;
function g_dbus_auth_observer_new: PGDBusAuthObserver; cdecl; external;
function g_dbus_connection_add_filter(ADBusConnection: PGDBusConnection; filter_function: TGDBusMessageFilterFunction; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_dbus_connection_call_finish(ADBusConnection: PGDBusConnection; res: PGAsyncResult): PGVariant; cdecl; external;
function g_dbus_connection_call_sync(ADBusConnection: PGDBusConnection; bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable): PGVariant; cdecl; external;
function g_dbus_connection_call_with_unix_fd_list_finish(ADBusConnection: PGDBusConnection; out_fd_list: PPGUnixFDList; res: PGAsyncResult): PGVariant; cdecl; external;
function g_dbus_connection_call_with_unix_fd_list_sync(ADBusConnection: PGDBusConnection; bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; out_fd_list: PPGUnixFDList; cancellable: PGCancellable): PGVariant; cdecl; external;
function g_dbus_connection_close_finish(ADBusConnection: PGDBusConnection; res: PGAsyncResult): gboolean; cdecl; external;
function g_dbus_connection_close_sync(ADBusConnection: PGDBusConnection; cancellable: PGCancellable): gboolean; cdecl; external;
function g_dbus_connection_emit_signal(ADBusConnection: PGDBusConnection; destination_bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; signal_name: Pgchar; parameters: PGVariant): gboolean; cdecl; external;
function g_dbus_connection_flush_finish(ADBusConnection: PGDBusConnection; res: PGAsyncResult): gboolean; cdecl; external;
function g_dbus_connection_flush_sync(ADBusConnection: PGDBusConnection; cancellable: PGCancellable): gboolean; cdecl; external;
function g_dbus_connection_get_capabilities(ADBusConnection: PGDBusConnection): TGDBusCapabilityFlags; cdecl; external;
function g_dbus_connection_get_exit_on_close(ADBusConnection: PGDBusConnection): gboolean; cdecl; external;
function g_dbus_connection_get_guid(ADBusConnection: PGDBusConnection): Pgchar; cdecl; external;
function g_dbus_connection_get_peer_credentials(ADBusConnection: PGDBusConnection): PGCredentials; cdecl; external;
function g_dbus_connection_get_stream(ADBusConnection: PGDBusConnection): PGIOStream; cdecl; external;
function g_dbus_connection_get_type: TGType; cdecl; external;
function g_dbus_connection_get_unique_name(ADBusConnection: PGDBusConnection): Pgchar; cdecl; external;
function g_dbus_connection_is_closed(ADBusConnection: PGDBusConnection): gboolean; cdecl; external;
function g_dbus_connection_new_finish(res: PGAsyncResult): PGDBusConnection; cdecl; external;
function g_dbus_connection_new_for_address_finish(res: PGAsyncResult): PGDBusConnection; cdecl; external;
function g_dbus_connection_new_for_address_sync(address: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusConnection; cdecl; external;
function g_dbus_connection_new_sync(stream: PGIOStream; guid: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusConnection; cdecl; external;
function g_dbus_connection_register_object(ADBusConnection: PGDBusConnection; object_path: Pgchar; interface_info: PGDBusInterfaceInfo; vtable: PGDBusInterfaceVTable; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_dbus_connection_register_subtree(ADBusConnection: PGDBusConnection; object_path: Pgchar; vtable: PGDBusSubtreeVTable; flags: TGDBusSubtreeFlags; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_dbus_connection_send_message(ADBusConnection: PGDBusConnection; message: PGDBusMessage; flags: TGDBusSendMessageFlags; out_serial: Pguint32): gboolean; cdecl; external;
function g_dbus_connection_send_message_with_reply_finish(ADBusConnection: PGDBusConnection; res: PGAsyncResult): PGDBusMessage; cdecl; external;
function g_dbus_connection_send_message_with_reply_sync(ADBusConnection: PGDBusConnection; message: PGDBusMessage; flags: TGDBusSendMessageFlags; timeout_msec: gint; out_serial: Pguint32; cancellable: PGCancellable): PGDBusMessage; cdecl; external;
function g_dbus_connection_signal_subscribe(ADBusConnection: PGDBusConnection; sender: Pgchar; interface_name: Pgchar; member: Pgchar; object_path: Pgchar; arg0: Pgchar; flags: TGDBusSignalFlags; callback: TGDBusSignalCallback; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl; external;
function g_dbus_connection_unregister_object(ADBusConnection: PGDBusConnection; registration_id: guint): gboolean; cdecl; external;
function g_dbus_connection_unregister_subtree(ADBusConnection: PGDBusConnection; registration_id: guint): gboolean; cdecl; external;
function g_dbus_error_encode_gerror(error: PGError): Pgchar; cdecl; external;
function g_dbus_error_get_remote_error(error: PGError): Pgchar; cdecl; external;
function g_dbus_error_is_remote_error(error: PGError): gboolean; cdecl; external;
function g_dbus_error_new_for_dbus_error(dbus_error_name: Pgchar; dbus_error_message: Pgchar): PGError; cdecl; external;
function g_dbus_error_quark: TGQuark; cdecl; external;
function g_dbus_error_register_error(error_domain: TGQuark; error_code: gint; dbus_error_name: Pgchar): gboolean; cdecl; external;
function g_dbus_error_strip_remote_error(error: PGError): gboolean; cdecl; external;
function g_dbus_error_unregister_error(error_domain: TGQuark; error_code: gint; dbus_error_name: Pgchar): gboolean; cdecl; external;
function g_dbus_generate_guid: Pgchar; cdecl; external;
function g_dbus_gvalue_to_gvariant(gvalue: PGValue; type_: PGVariantType): PGVariant; cdecl; external;
function g_dbus_interface_get_info(ADBusInterface: PGDBusInterface): PGDBusInterfaceInfo; cdecl; external;
function g_dbus_interface_get_object(ADBusInterface: PGDBusInterface): PGDBusObject; cdecl; external;
function g_dbus_interface_get_type: TGType; cdecl; external;
function g_dbus_interface_info_get_type: TGType; cdecl; external;
function g_dbus_interface_info_lookup_method(ADBusInterfaceInfo: PGDBusInterfaceInfo; name: Pgchar): PGDBusMethodInfo; cdecl; external;
function g_dbus_interface_info_lookup_property(ADBusInterfaceInfo: PGDBusInterfaceInfo; name: Pgchar): PGDBusPropertyInfo; cdecl; external;
function g_dbus_interface_info_lookup_signal(ADBusInterfaceInfo: PGDBusInterfaceInfo; name: Pgchar): PGDBusSignalInfo; cdecl; external;
function g_dbus_interface_info_ref(ADBusInterfaceInfo: PGDBusInterfaceInfo): PGDBusInterfaceInfo; cdecl; external;
function g_dbus_interface_skeleton_export(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton; connection: PGDBusConnection; object_path: Pgchar): gboolean; cdecl; external;
function g_dbus_interface_skeleton_get_connection(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton): PGDBusConnection; cdecl; external;
function g_dbus_interface_skeleton_get_flags(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton): TGDBusInterfaceSkeletonFlags; cdecl; external;
function g_dbus_interface_skeleton_get_info(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton): PGDBusInterfaceInfo; cdecl; external;
function g_dbus_interface_skeleton_get_object_path(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton): Pgchar; cdecl; external;
function g_dbus_interface_skeleton_get_properties(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton): PGVariant; cdecl; external;
function g_dbus_interface_skeleton_get_type: TGType; cdecl; external;
function g_dbus_interface_skeleton_get_vtable(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton): PGDBusInterfaceVTable; cdecl; external;
function g_dbus_is_address(string_: Pgchar): gboolean; cdecl; external;
function g_dbus_is_guid(string_: Pgchar): gboolean; cdecl; external;
function g_dbus_is_interface_name(string_: Pgchar): gboolean; cdecl; external;
function g_dbus_is_member_name(string_: Pgchar): gboolean; cdecl; external;
function g_dbus_is_name(string_: Pgchar): gboolean; cdecl; external;
function g_dbus_is_supported_address(string_: Pgchar): gboolean; cdecl; external;
function g_dbus_is_unique_name(string_: Pgchar): gboolean; cdecl; external;
function g_dbus_message_bytes_needed(blob: Pguint8; blob_len: gsize): gssize; cdecl; external;
function g_dbus_message_copy(ADBusMessage: PGDBusMessage): PGDBusMessage; cdecl; external;
function g_dbus_message_get_arg0(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_body(ADBusMessage: PGDBusMessage): PGVariant; cdecl; external;
function g_dbus_message_get_byte_order(ADBusMessage: PGDBusMessage): TGDBusMessageByteOrder; cdecl; external;
function g_dbus_message_get_destination(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_error_name(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_flags(ADBusMessage: PGDBusMessage): TGDBusMessageFlags; cdecl; external;
function g_dbus_message_get_header(ADBusMessage: PGDBusMessage; header_field: TGDBusMessageHeaderField): PGVariant; cdecl; external;
function g_dbus_message_get_header_fields(ADBusMessage: PGDBusMessage): Pguint8; cdecl; external;
function g_dbus_message_get_interface(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_locked(ADBusMessage: PGDBusMessage): gboolean; cdecl; external;
function g_dbus_message_get_member(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_message_type(ADBusMessage: PGDBusMessage): TGDBusMessageType; cdecl; external;
function g_dbus_message_get_num_unix_fds(ADBusMessage: PGDBusMessage): guint32; cdecl; external;
function g_dbus_message_get_path(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_reply_serial(ADBusMessage: PGDBusMessage): guint32; cdecl; external;
function g_dbus_message_get_sender(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_serial(ADBusMessage: PGDBusMessage): guint32; cdecl; external;
function g_dbus_message_get_signature(ADBusMessage: PGDBusMessage): Pgchar; cdecl; external;
function g_dbus_message_get_type: TGType; cdecl; external;
function g_dbus_message_get_unix_fd_list(ADBusMessage: PGDBusMessage): PGUnixFDList; cdecl; external;
function g_dbus_message_new: PGDBusMessage; cdecl; external;
function g_dbus_message_new_from_blob(blob: Pguint8; blob_len: gsize; capabilities: TGDBusCapabilityFlags): PGDBusMessage; cdecl; external;
function g_dbus_message_new_method_call(name: Pgchar; path: Pgchar; interface_: Pgchar; method: Pgchar): PGDBusMessage; cdecl; external;
function g_dbus_message_new_method_error(ADBusMessage: PGDBusMessage; error_name: Pgchar; error_message_format: Pgchar; args: array of const): PGDBusMessage; cdecl; external;
function g_dbus_message_new_method_error_literal(ADBusMessage: PGDBusMessage; error_name: Pgchar; error_message: Pgchar): PGDBusMessage; cdecl; external;
function g_dbus_message_new_method_error_valist(ADBusMessage: PGDBusMessage; error_name: Pgchar; error_message_format: Pgchar; var_args: Tva_list): PGDBusMessage; cdecl; external;
function g_dbus_message_new_method_reply(ADBusMessage: PGDBusMessage): PGDBusMessage; cdecl; external;
function g_dbus_message_new_signal(path: Pgchar; interface_: Pgchar; signal: Pgchar): PGDBusMessage; cdecl; external;
function g_dbus_message_print(ADBusMessage: PGDBusMessage; indent: guint): Pgchar; cdecl; external;
function g_dbus_message_to_blob(ADBusMessage: PGDBusMessage; out_size: Pgsize; capabilities: TGDBusCapabilityFlags): Pguint8; cdecl; external;
function g_dbus_message_to_gerror(ADBusMessage: PGDBusMessage): gboolean; cdecl; external;
function g_dbus_method_info_get_type: TGType; cdecl; external;
function g_dbus_method_info_ref(ADBusMethodInfo: PGDBusMethodInfo): PGDBusMethodInfo; cdecl; external;
function g_dbus_method_invocation_get_connection(ADBusMethodInvocation: PGDBusMethodInvocation): PGDBusConnection; cdecl; external;
function g_dbus_method_invocation_get_interface_name(ADBusMethodInvocation: PGDBusMethodInvocation): Pgchar; cdecl; external;
function g_dbus_method_invocation_get_message(ADBusMethodInvocation: PGDBusMethodInvocation): PGDBusMessage; cdecl; external;
function g_dbus_method_invocation_get_method_info(ADBusMethodInvocation: PGDBusMethodInvocation): PGDBusMethodInfo; cdecl; external;
function g_dbus_method_invocation_get_method_name(ADBusMethodInvocation: PGDBusMethodInvocation): Pgchar; cdecl; external;
function g_dbus_method_invocation_get_object_path(ADBusMethodInvocation: PGDBusMethodInvocation): Pgchar; cdecl; external;
function g_dbus_method_invocation_get_parameters(ADBusMethodInvocation: PGDBusMethodInvocation): PGVariant; cdecl; external;
function g_dbus_method_invocation_get_sender(ADBusMethodInvocation: PGDBusMethodInvocation): Pgchar; cdecl; external;
function g_dbus_method_invocation_get_type: TGType; cdecl; external;
function g_dbus_method_invocation_get_user_data(ADBusMethodInvocation: PGDBusMethodInvocation): gpointer; cdecl; external;
function g_dbus_node_info_get_type: TGType; cdecl; external;
function g_dbus_node_info_lookup_interface(ADBusNodeInfo: PGDBusNodeInfo; name: Pgchar): PGDBusInterfaceInfo; cdecl; external;
function g_dbus_node_info_new_for_xml(xml_data: Pgchar): PGDBusNodeInfo; cdecl; external;
function g_dbus_node_info_ref(ADBusNodeInfo: PGDBusNodeInfo): PGDBusNodeInfo; cdecl; external;
function g_dbus_object_get_interface(ADBusObject: PGDBusObject; interface_name: Pgchar): PGDBusInterface; cdecl; external;
function g_dbus_object_get_interfaces(ADBusObject: PGDBusObject): PGList; cdecl; external;
function g_dbus_object_get_object_path(ADBusObject: PGDBusObject): Pgchar; cdecl; external;
function g_dbus_object_get_type: TGType; cdecl; external;
function g_dbus_object_manager_client_get_connection(ADBusObjectManagerClient: PGDBusObjectManagerClient): PGDBusConnection; cdecl; external;
function g_dbus_object_manager_client_get_flags(ADBusObjectManagerClient: PGDBusObjectManagerClient): TGDBusObjectManagerClientFlags; cdecl; external;
function g_dbus_object_manager_client_get_name(ADBusObjectManagerClient: PGDBusObjectManagerClient): Pgchar; cdecl; external;
function g_dbus_object_manager_client_get_name_owner(ADBusObjectManagerClient: PGDBusObjectManagerClient): Pgchar; cdecl; external;
function g_dbus_object_manager_client_get_type: TGType; cdecl; external;
function g_dbus_object_manager_client_new_finish(res: PGAsyncResult): PGDBusObjectManagerClient; cdecl; external;
function g_dbus_object_manager_client_new_for_bus_finish(res: PGAsyncResult): PGDBusObjectManagerClient; cdecl; external;
function g_dbus_object_manager_client_new_for_bus_sync(bus_type: TGBusType; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable): PGDBusObjectManagerClient; cdecl; external;
function g_dbus_object_manager_client_new_sync(connection: PGDBusConnection; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable): PGDBusObjectManagerClient; cdecl; external;
function g_dbus_object_manager_get_interface(ADBusObjectManager: PGDBusObjectManager; object_path: Pgchar; interface_name: Pgchar): PGDBusInterface; cdecl; external;
function g_dbus_object_manager_get_object(ADBusObjectManager: PGDBusObjectManager; object_path: Pgchar): PGDBusObject; cdecl; external;
function g_dbus_object_manager_get_object_path(ADBusObjectManager: PGDBusObjectManager): Pgchar; cdecl; external;
function g_dbus_object_manager_get_objects(ADBusObjectManager: PGDBusObjectManager): PGList; cdecl; external;
function g_dbus_object_manager_get_type: TGType; cdecl; external;
function g_dbus_object_manager_server_get_connection(ADBusObjectManagerServer: PGDBusObjectManagerServer): PGDBusConnection; cdecl; external;
function g_dbus_object_manager_server_get_type: TGType; cdecl; external;
function g_dbus_object_manager_server_new(object_path: Pgchar): PGDBusObjectManagerServer; cdecl; external;
function g_dbus_object_manager_server_unexport(ADBusObjectManagerServer: PGDBusObjectManagerServer; object_path: Pgchar): gboolean; cdecl; external;
function g_dbus_object_proxy_get_connection(ADBusObjectProxy: PGDBusObjectProxy): PGDBusConnection; cdecl; external;
function g_dbus_object_proxy_get_type: TGType; cdecl; external;
function g_dbus_object_proxy_new(connection: PGDBusConnection; object_path: Pgchar): PGDBusObjectProxy; cdecl; external;
function g_dbus_object_skeleton_get_type: TGType; cdecl; external;
function g_dbus_object_skeleton_new(object_path: Pgchar): PGDBusObjectSkeleton; cdecl; external;
function g_dbus_property_info_get_type: TGType; cdecl; external;
function g_dbus_property_info_ref(ADBusPropertyInfo: PGDBusPropertyInfo): PGDBusPropertyInfo; cdecl; external;
function g_dbus_proxy_call_finish(ADBusProxy: PGDBusProxy; res: PGAsyncResult): PGVariant; cdecl; external;
function g_dbus_proxy_call_sync(ADBusProxy: PGDBusProxy; method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable): PGVariant; cdecl; external;
function g_dbus_proxy_call_with_unix_fd_list_finish(ADBusProxy: PGDBusProxy; out_fd_list: PPGUnixFDList; res: PGAsyncResult): PGVariant; cdecl; external;
function g_dbus_proxy_call_with_unix_fd_list_sync(ADBusProxy: PGDBusProxy; method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; out_fd_list: PPGUnixFDList; cancellable: PGCancellable): PGVariant; cdecl; external;
function g_dbus_proxy_get_cached_property(ADBusProxy: PGDBusProxy; property_name: Pgchar): PGVariant; cdecl; external;
function g_dbus_proxy_get_cached_property_names(ADBusProxy: PGDBusProxy): PPgchar; cdecl; external;
function g_dbus_proxy_get_connection(ADBusProxy: PGDBusProxy): PGDBusConnection; cdecl; external;
function g_dbus_proxy_get_default_timeout(ADBusProxy: PGDBusProxy): gint; cdecl; external;
function g_dbus_proxy_get_flags(ADBusProxy: PGDBusProxy): TGDBusProxyFlags; cdecl; external;
function g_dbus_proxy_get_interface_info(ADBusProxy: PGDBusProxy): PGDBusInterfaceInfo; cdecl; external;
function g_dbus_proxy_get_interface_name(ADBusProxy: PGDBusProxy): Pgchar; cdecl; external;
function g_dbus_proxy_get_name(ADBusProxy: PGDBusProxy): Pgchar; cdecl; external;
function g_dbus_proxy_get_name_owner(ADBusProxy: PGDBusProxy): Pgchar; cdecl; external;
function g_dbus_proxy_get_object_path(ADBusProxy: PGDBusProxy): Pgchar; cdecl; external;
function g_dbus_proxy_get_type: TGType; cdecl; external;
function g_dbus_proxy_new_finish(res: PGAsyncResult): PGDBusProxy; cdecl; external;
function g_dbus_proxy_new_for_bus_finish(res: PGAsyncResult): PGDBusProxy; cdecl; external;
function g_dbus_proxy_new_for_bus_sync(bus_type: TGBusType; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable): PGDBusProxy; cdecl; external;
function g_dbus_proxy_new_sync(connection: PGDBusConnection; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable): PGDBusProxy; cdecl; external;
function g_dbus_server_get_client_address(ADBusServer: PGDBusServer): Pgchar; cdecl; external;
function g_dbus_server_get_flags(ADBusServer: PGDBusServer): TGDBusServerFlags; cdecl; external;
function g_dbus_server_get_guid(ADBusServer: PGDBusServer): Pgchar; cdecl; external;
function g_dbus_server_get_type: TGType; cdecl; external;
function g_dbus_server_is_active(ADBusServer: PGDBusServer): gboolean; cdecl; external;
function g_dbus_server_new_sync(address: Pgchar; flags: TGDBusServerFlags; guid: Pgchar; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusServer; cdecl; external;
function g_dbus_signal_info_get_type: TGType; cdecl; external;
function g_dbus_signal_info_ref(ADBusSignalInfo: PGDBusSignalInfo): PGDBusSignalInfo; cdecl; external;
function g_desktop_app_info_get_categories(ADesktopAppInfo: PGDesktopAppInfo): Pgchar; cdecl; external;
function g_desktop_app_info_get_filename(ADesktopAppInfo: PGDesktopAppInfo): Pgchar; cdecl; external;
function g_desktop_app_info_get_generic_name(ADesktopAppInfo: PGDesktopAppInfo): Pgchar; cdecl; external;
function g_desktop_app_info_get_is_hidden(ADesktopAppInfo: PGDesktopAppInfo): gboolean; cdecl; external;
function g_desktop_app_info_get_nodisplay(ADesktopAppInfo: PGDesktopAppInfo): gboolean; cdecl; external;
function g_desktop_app_info_get_show_in(ADesktopAppInfo: PGDesktopAppInfo; desktop_env: Pgchar): gboolean; cdecl; external;
function g_desktop_app_info_get_type: TGType; cdecl; external;
function g_desktop_app_info_launch_uris_as_manager(ADesktopAppInfo: PGDesktopAppInfo; uris: PGList; launch_context: PGAppLaunchContext; spawn_flags: TGSpawnFlags; user_setup: TGSpawnChildSetupFunc; user_setup_data: gpointer; pid_callback: TGDesktopAppLaunchCallback; pid_callback_data: gpointer): gboolean; cdecl; external;
function g_desktop_app_info_lookup_get_default_for_uri_scheme(ADesktopAppInfoLookup: PGDesktopAppInfoLookup; uri_scheme: Pgchar): PGAppInfo; cdecl; external;
function g_desktop_app_info_lookup_get_type: TGType; cdecl; external;
function g_desktop_app_info_new(desktop_id: Pgchar): PGDesktopAppInfo; cdecl; external;
function g_desktop_app_info_new_from_filename(filename: Pgchar): PGDesktopAppInfo; cdecl; external;
function g_desktop_app_info_new_from_keyfile(key_file: PGKeyFile): PGDesktopAppInfo; cdecl; external;
function g_drive_can_eject(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_can_poll_for_media(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_can_start(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_can_start_degraded(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_can_stop(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_eject_with_operation_finish(ADrive: PGDrive; result_: PGAsyncResult): gboolean; cdecl; external;
function g_drive_enumerate_identifiers(ADrive: PGDrive): PPgchar; cdecl; external;
function g_drive_get_icon(ADrive: PGDrive): PGIcon; cdecl; external;
function g_drive_get_identifier(ADrive: PGDrive; kind: Pgchar): Pgchar; cdecl; external;
function g_drive_get_name(ADrive: PGDrive): Pgchar; cdecl; external;
function g_drive_get_start_stop_type(ADrive: PGDrive): TGDriveStartStopType; cdecl; external;
function g_drive_get_type: TGType; cdecl; external;
function g_drive_get_volumes(ADrive: PGDrive): PGList; cdecl; external;
function g_drive_has_media(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_has_volumes(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_is_media_check_automatic(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_is_media_removable(ADrive: PGDrive): gboolean; cdecl; external;
function g_drive_poll_for_media_finish(ADrive: PGDrive; result_: PGAsyncResult): gboolean; cdecl; external;
function g_drive_start_finish(ADrive: PGDrive; result_: PGAsyncResult): gboolean; cdecl; external;
function g_drive_stop_finish(ADrive: PGDrive; result_: PGAsyncResult): gboolean; cdecl; external;
function g_emblem_get_icon(AEmblem: PGEmblem): PGIcon; cdecl; external;
function g_emblem_get_origin(AEmblem: PGEmblem): TGEmblemOrigin; cdecl; external;
function g_emblem_get_type: TGType; cdecl; external;
function g_emblem_new(icon: PGIcon): PGEmblem; cdecl; external;
function g_emblem_new_with_origin(icon: PGIcon; origin: TGEmblemOrigin): PGEmblem; cdecl; external;
function g_emblemed_icon_get_emblems(AEmblemedIcon: PGEmblemedIcon): PGList; cdecl; external;
function g_emblemed_icon_get_icon(AEmblemedIcon: PGEmblemedIcon): PGIcon; cdecl; external;
function g_emblemed_icon_get_type: TGType; cdecl; external;
function g_emblemed_icon_new(icon: PGIcon; emblem: PGEmblem): PGIcon; cdecl; external;
function g_file_append_to(AFile: PGFile; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl; external;
function g_file_append_to_finish(AFile: PGFile; res: PGAsyncResult): PGFileOutputStream; cdecl; external;
function g_file_attribute_info_list_dup(AFileAttributeInfoList: PGFileAttributeInfoList): PGFileAttributeInfoList; cdecl; external;
function g_file_attribute_info_list_get_type: TGType; cdecl; external;
function g_file_attribute_info_list_lookup(AFileAttributeInfoList: PGFileAttributeInfoList; name: Pgchar): PGFileAttributeInfo; cdecl; external;
function g_file_attribute_info_list_new: PGFileAttributeInfoList; cdecl; external;
function g_file_attribute_info_list_ref(AFileAttributeInfoList: PGFileAttributeInfoList): PGFileAttributeInfoList; cdecl; external;
function g_file_attribute_matcher_enumerate_namespace(AFileAttributeMatcher: PGFileAttributeMatcher; ns: Pgchar): gboolean; cdecl; external;
function g_file_attribute_matcher_enumerate_next(AFileAttributeMatcher: PGFileAttributeMatcher): Pgchar; cdecl; external;
function g_file_attribute_matcher_get_type: TGType; cdecl; external;
function g_file_attribute_matcher_matches(AFileAttributeMatcher: PGFileAttributeMatcher; attribute: Pgchar): gboolean; cdecl; external;
function g_file_attribute_matcher_matches_only(AFileAttributeMatcher: PGFileAttributeMatcher; attribute: Pgchar): gboolean; cdecl; external;
function g_file_attribute_matcher_new(attributes: Pgchar): PGFileAttributeMatcher; cdecl; external;
function g_file_attribute_matcher_ref(AFileAttributeMatcher: PGFileAttributeMatcher): PGFileAttributeMatcher; cdecl; external;
function g_file_copy(AFile: PGFile; destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl; external;
function g_file_copy_attributes(AFile: PGFile; destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_copy_finish(AFile: PGFile; res: PGAsyncResult): gboolean; cdecl; external;
function g_file_create(AFile: PGFile; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl; external;
function g_file_create_finish(AFile: PGFile; res: PGAsyncResult): PGFileOutputStream; cdecl; external;
function g_file_create_readwrite(AFile: PGFile; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl; external;
function g_file_create_readwrite_finish(AFile: PGFile; res: PGAsyncResult): PGFileIOStream; cdecl; external;
function g_file_delete(AFile: PGFile; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_descriptor_based_get_fd(AFileDescriptorBased: PGFileDescriptorBased): gint; cdecl; external;
function g_file_descriptor_based_get_type: TGType; cdecl; external;
function g_file_dup(AFile: PGFile): PGFile; cdecl; external;
function g_file_eject_mountable_with_operation_finish(AFile: PGFile; result_: PGAsyncResult): gboolean; cdecl; external;
function g_file_enumerate_children(AFile: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileEnumerator; cdecl; external;
function g_file_enumerate_children_finish(AFile: PGFile; res: PGAsyncResult): PGFileEnumerator; cdecl; external;
function g_file_enumerator_close(AFileEnumerator: PGFileEnumerator; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_enumerator_close_finish(AFileEnumerator: PGFileEnumerator; result_: PGAsyncResult): gboolean; cdecl; external;
function g_file_enumerator_get_container(AFileEnumerator: PGFileEnumerator): PGFile; cdecl; external;
function g_file_enumerator_get_type: TGType; cdecl; external;
function g_file_enumerator_has_pending(AFileEnumerator: PGFileEnumerator): gboolean; cdecl; external;
function g_file_enumerator_is_closed(AFileEnumerator: PGFileEnumerator): gboolean; cdecl; external;
function g_file_enumerator_next_file(AFileEnumerator: PGFileEnumerator; cancellable: PGCancellable): PGFileInfo; cdecl; external;
function g_file_enumerator_next_files_finish(AFileEnumerator: PGFileEnumerator; result_: PGAsyncResult): PGList; cdecl; external;
function g_file_equal(AFile: PGFile; file2: PGFile): gboolean; cdecl; external;
function g_file_find_enclosing_mount(AFile: PGFile; cancellable: PGCancellable): PGMount; cdecl; external;
function g_file_find_enclosing_mount_finish(AFile: PGFile; res: PGAsyncResult): PGMount; cdecl; external;
function g_file_get_basename(AFile: PGFile): Pgchar; cdecl; external;
function g_file_get_child(AFile: PGFile; name: Pgchar): PGFile; cdecl; external;
function g_file_get_child_for_display_name(AFile: PGFile; display_name: Pgchar): PGFile; cdecl; external;
function g_file_get_parent(AFile: PGFile): PGFile; cdecl; external;
function g_file_get_parse_name(AFile: PGFile): Pgchar; cdecl; external;
function g_file_get_path(AFile: PGFile): Pgchar; cdecl; external;
function g_file_get_relative_path(AFile: PGFile; descendant: PGFile): Pgchar; cdecl; external;
function g_file_get_type: TGType; cdecl; external;
function g_file_get_uri(AFile: PGFile): Pgchar; cdecl; external;
function g_file_get_uri_scheme(AFile: PGFile): Pgchar; cdecl; external;
function g_file_has_parent(AFile: PGFile; parent: PGFile): gboolean; cdecl; external;
function g_file_has_prefix(AFile: PGFile; prefix: PGFile): gboolean; cdecl; external;
function g_file_has_uri_scheme(AFile: PGFile; uri_scheme: Pgchar): gboolean; cdecl; external;
function g_file_hash(file_: gpointer): guint; cdecl; external;
function g_file_icon_get_file(AFileIcon: PGFileIcon): PGFile; cdecl; external;
function g_file_icon_get_type: TGType; cdecl; external;
function g_file_icon_new(AFile: PGFile): PGIcon; cdecl; external;
function g_file_info_dup(AFileInfo: PGFileInfo): PGFileInfo; cdecl; external;
function g_file_info_get_attribute_as_string(AFileInfo: PGFileInfo; attribute: Pgchar): Pgchar; cdecl; external;
function g_file_info_get_attribute_boolean(AFileInfo: PGFileInfo; attribute: Pgchar): gboolean; cdecl; external;
function g_file_info_get_attribute_byte_string(AFileInfo: PGFileInfo; attribute: Pgchar): Pgchar; cdecl; external;
function g_file_info_get_attribute_data(AFileInfo: PGFileInfo; attribute: Pgchar; type_: PGFileAttributeType; value_pp: Pgpointer; status: PGFileAttributeStatus): gboolean; cdecl; external;
function g_file_info_get_attribute_int32(AFileInfo: PGFileInfo; attribute: Pgchar): gint32; cdecl; external;
function g_file_info_get_attribute_int64(AFileInfo: PGFileInfo; attribute: Pgchar): gint64; cdecl; external;
function g_file_info_get_attribute_object(AFileInfo: PGFileInfo; attribute: Pgchar): PGObject; cdecl; external;
function g_file_info_get_attribute_status(AFileInfo: PGFileInfo; attribute: Pgchar): TGFileAttributeStatus; cdecl; external;
function g_file_info_get_attribute_string(AFileInfo: PGFileInfo; attribute: Pgchar): Pgchar; cdecl; external;
function g_file_info_get_attribute_stringv(AFileInfo: PGFileInfo; attribute: Pgchar): PPgchar; cdecl; external;
function g_file_info_get_attribute_type(AFileInfo: PGFileInfo; attribute: Pgchar): TGFileAttributeType; cdecl; external;
function g_file_info_get_attribute_uint32(AFileInfo: PGFileInfo; attribute: Pgchar): guint32; cdecl; external;
function g_file_info_get_attribute_uint64(AFileInfo: PGFileInfo; attribute: Pgchar): guint64; cdecl; external;
function g_file_info_get_content_type(AFileInfo: PGFileInfo): Pgchar; cdecl; external;
function g_file_info_get_display_name(AFileInfo: PGFileInfo): Pgchar; cdecl; external;
function g_file_info_get_edit_name(AFileInfo: PGFileInfo): Pgchar; cdecl; external;
function g_file_info_get_etag(AFileInfo: PGFileInfo): Pgchar; cdecl; external;
function g_file_info_get_file_type(AFileInfo: PGFileInfo): TGFileType; cdecl; external;
function g_file_info_get_icon(AFileInfo: PGFileInfo): PGIcon; cdecl; external;
function g_file_info_get_is_backup(AFileInfo: PGFileInfo): gboolean; cdecl; external;
function g_file_info_get_is_hidden(AFileInfo: PGFileInfo): gboolean; cdecl; external;
function g_file_info_get_is_symlink(AFileInfo: PGFileInfo): gboolean; cdecl; external;
function g_file_info_get_name(AFileInfo: PGFileInfo): Pgchar; cdecl; external;
function g_file_info_get_size(AFileInfo: PGFileInfo): gint64; cdecl; external;
function g_file_info_get_sort_order(AFileInfo: PGFileInfo): gint32; cdecl; external;
function g_file_info_get_symlink_target(AFileInfo: PGFileInfo): Pgchar; cdecl; external;
function g_file_info_get_type: TGType; cdecl; external;
function g_file_info_has_attribute(AFileInfo: PGFileInfo; attribute: Pgchar): gboolean; cdecl; external;
function g_file_info_has_namespace(AFileInfo: PGFileInfo; name_space: Pgchar): gboolean; cdecl; external;
function g_file_info_list_attributes(AFileInfo: PGFileInfo; name_space: Pgchar): PPgchar; cdecl; external;
function g_file_info_new: PGFileInfo; cdecl; external;
function g_file_info_set_attribute_status(AFileInfo: PGFileInfo; attribute: Pgchar; status: TGFileAttributeStatus): gboolean; cdecl; external;
function g_file_input_stream_get_type: TGType; cdecl; external;
function g_file_input_stream_query_info(AFileInputStream: PGFileInputStream; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; external;
function g_file_input_stream_query_info_finish(AFileInputStream: PGFileInputStream; result_: PGAsyncResult): PGFileInfo; cdecl; external;
function g_file_io_stream_get_etag(AFileIOStream: PGFileIOStream): Pgchar; cdecl; external;
function g_file_io_stream_get_type: TGType; cdecl; external;
function g_file_io_stream_query_info(AFileIOStream: PGFileIOStream; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; external;
function g_file_io_stream_query_info_finish(AFileIOStream: PGFileIOStream; result_: PGAsyncResult): PGFileInfo; cdecl; external;
function g_file_is_native(AFile: PGFile): gboolean; cdecl; external;
function g_file_load_contents(AFile: PGFile; cancellable: PGCancellable; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl; external;
function g_file_load_contents_finish(AFile: PGFile; res: PGAsyncResult; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl; external;
function g_file_load_partial_contents_finish(AFile: PGFile; res: PGAsyncResult; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl; external;
function g_file_make_directory(AFile: PGFile; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_make_directory_with_parents(AFile: PGFile; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_make_symbolic_link(AFile: PGFile; symlink_value: Pgchar; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_monitor(AFile: PGFile; flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl; external;
function g_file_monitor_cancel(AFileMonitor: PGFileMonitor): gboolean; cdecl; external;
function g_file_monitor_directory(AFile: PGFile; flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl; external;
function g_file_monitor_file(AFile: PGFile; flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl; external;
function g_file_monitor_get_type: TGType; cdecl; external;
function g_file_monitor_is_cancelled(AFileMonitor: PGFileMonitor): gboolean; cdecl; external;
function g_file_mount_enclosing_volume_finish(AFile: PGFile; result_: PGAsyncResult): gboolean; cdecl; external;
function g_file_mount_mountable_finish(AFile: PGFile; result_: PGAsyncResult): PGFile; cdecl; external;
function g_file_move(AFile: PGFile; destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl; external;
function g_file_new_for_commandline_arg(arg: Pgchar): PGFile; cdecl; external;
function g_file_new_for_path(path: Pgchar): PGFile; cdecl; external;
function g_file_new_for_uri(uri: Pgchar): PGFile; cdecl; external;
function g_file_open_readwrite(AFile: PGFile; cancellable: PGCancellable): PGFileIOStream; cdecl; external;
function g_file_open_readwrite_finish(AFile: PGFile; res: PGAsyncResult): PGFileIOStream; cdecl; external;
function g_file_output_stream_get_etag(AFileOutputStream: PGFileOutputStream): Pgchar; cdecl; external;
function g_file_output_stream_get_type: TGType; cdecl; external;
function g_file_output_stream_query_info(AFileOutputStream: PGFileOutputStream; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; external;
function g_file_output_stream_query_info_finish(AFileOutputStream: PGFileOutputStream; result_: PGAsyncResult): PGFileInfo; cdecl; external;
function g_file_parse_name(parse_name: Pgchar): PGFile; cdecl; external;
function g_file_poll_mountable_finish(AFile: PGFile; result_: PGAsyncResult): gboolean; cdecl; external;
function g_file_query_default_handler(AFile: PGFile; cancellable: PGCancellable): PGAppInfo; cdecl; external;
function g_file_query_exists(AFile: PGFile; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_query_file_type(AFile: PGFile; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): TGFileType; cdecl; external;
function g_file_query_filesystem_info(AFile: PGFile; attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl; external;
function g_file_query_filesystem_info_finish(AFile: PGFile; res: PGAsyncResult): PGFileInfo; cdecl; external;
function g_file_query_info(AFile: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileInfo; cdecl; external;
function g_file_query_info_finish(AFile: PGFile; res: PGAsyncResult): PGFileInfo; cdecl; external;
function g_file_query_settable_attributes(AFile: PGFile; cancellable: PGCancellable): PGFileAttributeInfoList; cdecl; external;
function g_file_query_writable_namespaces(AFile: PGFile; cancellable: PGCancellable): PGFileAttributeInfoList; cdecl; external;
function g_file_read(AFile: PGFile; cancellable: PGCancellable): PGFileInputStream; cdecl; external;
function g_file_read_finish(AFile: PGFile; res: PGAsyncResult): PGFileInputStream; cdecl; external;
function g_file_replace(AFile: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl; external;
function g_file_replace_contents(AFile: PGFile; contents: Pguint8; length: gsize; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; new_etag: PPgchar; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_replace_contents_finish(AFile: PGFile; res: PGAsyncResult; new_etag: PPgchar): gboolean; cdecl; external;
function g_file_replace_finish(AFile: PGFile; res: PGAsyncResult): PGFileOutputStream; cdecl; external;
function g_file_replace_readwrite(AFile: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl; external;
function g_file_replace_readwrite_finish(AFile: PGFile; res: PGAsyncResult): PGFileIOStream; cdecl; external;
function g_file_resolve_relative_path(AFile: PGFile; relative_path: Pgchar): PGFile; cdecl; external;
function g_file_set_attribute(AFile: PGFile; attribute: Pgchar; type_: TGFileAttributeType; value_p: gpointer; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_attribute_byte_string(AFile: PGFile; attribute: Pgchar; value: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_attribute_int32(AFile: PGFile; attribute: Pgchar; value: gint32; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_attribute_int64(AFile: PGFile; attribute: Pgchar; value: gint64; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_attribute_string(AFile: PGFile; attribute: Pgchar; value: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_attribute_uint32(AFile: PGFile; attribute: Pgchar; value: guint32; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_attribute_uint64(AFile: PGFile; attribute: Pgchar; value: guint64; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_attributes_finish(AFile: PGFile; result_: PGAsyncResult; info: PPGFileInfo): gboolean; cdecl; external;
function g_file_set_attributes_from_info(AFile: PGFile; info: PGFileInfo; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_set_display_name(AFile: PGFile; display_name: Pgchar; cancellable: PGCancellable): PGFile; cdecl; external;
function g_file_set_display_name_finish(AFile: PGFile; res: PGAsyncResult): PGFile; cdecl; external;
function g_file_start_mountable_finish(AFile: PGFile; result_: PGAsyncResult): gboolean; cdecl; external;
function g_file_stop_mountable_finish(AFile: PGFile; result_: PGAsyncResult): gboolean; cdecl; external;
function g_file_supports_thread_contexts(AFile: PGFile): gboolean; cdecl; external;
function g_file_trash(AFile: PGFile; cancellable: PGCancellable): gboolean; cdecl; external;
function g_file_unmount_mountable_with_operation_finish(AFile: PGFile; result_: PGAsyncResult): gboolean; cdecl; external;
function g_filename_completer_get_completion_suffix(AFilenameCompleter: PGFilenameCompleter; initial_text: Pgchar): Pgchar; cdecl; external;
function g_filename_completer_get_completions(AFilenameCompleter: PGFilenameCompleter; initial_text: Pgchar): PPgchar; cdecl; external;
function g_filename_completer_get_type: TGType; cdecl; external;
function g_filename_completer_new: PGFilenameCompleter; cdecl; external;
function g_filter_input_stream_get_base_stream(AFilterInputStream: PGFilterInputStream): PGInputStream; cdecl; external;
function g_filter_input_stream_get_close_base_stream(AFilterInputStream: PGFilterInputStream): gboolean; cdecl; external;
function g_filter_input_stream_get_type: TGType; cdecl; external;
function g_filter_output_stream_get_base_stream(AFilterOutputStream: PGFilterOutputStream): PGOutputStream; cdecl; external;
function g_filter_output_stream_get_close_base_stream(AFilterOutputStream: PGFilterOutputStream): gboolean; cdecl; external;
function g_filter_output_stream_get_type: TGType; cdecl; external;
function g_icon_equal(AIcon: PGIcon; icon2: PGIcon): gboolean; cdecl; external;
function g_icon_get_type: TGType; cdecl; external;
function g_icon_hash(icon: gpointer): guint; cdecl; external;
function g_icon_new_for_string(str: Pgchar): PGIcon; cdecl; external;
function g_icon_to_string(AIcon: PGIcon): Pgchar; cdecl; external;
function g_inet_address_equal(AInetAddress: PGInetAddress; other_address: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_family(AInetAddress: PGInetAddress): TGSocketFamily; cdecl; external;
function g_inet_address_get_is_any(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_link_local(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_loopback(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_mc_global(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_mc_link_local(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_mc_node_local(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_mc_org_local(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_mc_site_local(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_multicast(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_is_site_local(AInetAddress: PGInetAddress): gboolean; cdecl; external;
function g_inet_address_get_native_size(AInetAddress: PGInetAddress): gsize; cdecl; external;
function g_inet_address_get_type: TGType; cdecl; external;
function g_inet_address_new_any(family: TGSocketFamily): PGInetAddress; cdecl; external;
function g_inet_address_new_from_bytes(bytes: Pguint8; family: TGSocketFamily): PGInetAddress; cdecl; external;
function g_inet_address_new_from_string(string_: Pgchar): PGInetAddress; cdecl; external;
function g_inet_address_new_loopback(family: TGSocketFamily): PGInetAddress; cdecl; external;
function g_inet_address_to_bytes(AInetAddress: PGInetAddress): Pguint8; cdecl; external;
function g_inet_address_to_string(AInetAddress: PGInetAddress): Pgchar; cdecl; external;
function g_inet_socket_address_get_address(AInetSocketAddress: PGInetSocketAddress): PGInetAddress; cdecl; external;
function g_inet_socket_address_get_port(AInetSocketAddress: PGInetSocketAddress): guint16; cdecl; external;
function g_inet_socket_address_get_type: TGType; cdecl; external;
function g_inet_socket_address_new(address: PGInetAddress; port: guint16): PGInetSocketAddress; cdecl; external;
function g_initable_get_type: TGType; cdecl; external;
function g_initable_init(AInitable: PGInitable; cancellable: PGCancellable): gboolean; cdecl; external;
function g_initable_new(object_type: TGType; cancellable: PGCancellable; error: PPGError; first_property_name: Pgchar; args: array of const): gpointer; cdecl; external;
function g_initable_new_valist(object_type: TGType; first_property_name: Pgchar; var_args: Tva_list; cancellable: PGCancellable): PGObject; cdecl; external;
function g_initable_newv(object_type: TGType; n_parameters: guint; parameters: PGParameter; cancellable: PGCancellable): gpointer; cdecl; external;
function g_input_stream_close(AInputStream: PGInputStream; cancellable: PGCancellable): gboolean; cdecl; external;
function g_input_stream_close_finish(AInputStream: PGInputStream; result_: PGAsyncResult): gboolean; cdecl; external;
function g_input_stream_get_type: TGType; cdecl; external;
function g_input_stream_has_pending(AInputStream: PGInputStream): gboolean; cdecl; external;
function g_input_stream_is_closed(AInputStream: PGInputStream): gboolean; cdecl; external;
function g_input_stream_read(AInputStream: PGInputStream; buffer: Pgpointer; count: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_input_stream_read_all(AInputStream: PGInputStream; buffer: Pgpointer; count: gsize; bytes_read: Pgsize; cancellable: PGCancellable): gboolean; cdecl; external;
function g_input_stream_read_finish(AInputStream: PGInputStream; result_: PGAsyncResult): gssize; cdecl; external;
function g_input_stream_set_pending(AInputStream: PGInputStream): gboolean; cdecl; external;
function g_input_stream_skip(AInputStream: PGInputStream; count: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_input_stream_skip_finish(AInputStream: PGInputStream; result_: PGAsyncResult): gssize; cdecl; external;
function g_io_error_from_errno(err_no: gint): TGIOErrorEnum; cdecl; external;
function g_io_error_quark: TGQuark; cdecl; external;
function g_io_extension_get_name(AIOExtension: PGIOExtension): Pgchar; cdecl; external;
function g_io_extension_get_priority(AIOExtension: PGIOExtension): gint; cdecl; external;
function g_io_extension_get_type(extension: PGIOExtension): TGType; cdecl; external;
function g_io_extension_point_get_extension_by_name(AIOExtensionPoint: PGIOExtensionPoint; name: Pgchar): PGIOExtension; cdecl; external;
function g_io_extension_point_get_extensions(AIOExtensionPoint: PGIOExtensionPoint): PGList; cdecl; external;
function g_io_extension_point_get_required_type(AIOExtensionPoint: PGIOExtensionPoint): TGType; cdecl; external;
function g_io_extension_point_implement(extension_point_name: Pgchar; type_: TGType; extension_name: Pgchar; priority: gint): PGIOExtension; cdecl; external;
function g_io_extension_point_lookup(name: Pgchar): PGIOExtensionPoint; cdecl; external;
function g_io_extension_point_register(name: Pgchar): PGIOExtensionPoint; cdecl; external;
function g_io_extension_ref_class(AIOExtension: PGIOExtension): PGTypeClass; cdecl; external;
function g_io_module_get_type: TGType; cdecl; external;
function g_io_module_new(filename: Pgchar): PGIOModule; cdecl; external;
function g_io_module_scope_new(flags: TGIOModuleScopeFlags): PGIOModuleScope; cdecl; external;
function g_io_modules_load_all_in_directory(dirname: Pgchar): PGList; cdecl; external;
function g_io_modules_load_all_in_directory_with_scope(dirname: Pgchar; scope: PGIOModuleScope): PGList; cdecl; external;
function g_io_scheduler_job_send_to_mainloop(AIOSchedulerJob: PGIOSchedulerJob; func: TGSourceFunc; user_data: gpointer; notify: TGDestroyNotify): gboolean; cdecl; external;
function g_io_stream_close(AIOStream: PGIOStream; cancellable: PGCancellable): gboolean; cdecl; external;
function g_io_stream_close_finish(AIOStream: PGIOStream; result_: PGAsyncResult): gboolean; cdecl; external;
function g_io_stream_get_input_stream(AIOStream: PGIOStream): PGInputStream; cdecl; external;
function g_io_stream_get_output_stream(AIOStream: PGIOStream): PGOutputStream; cdecl; external;
function g_io_stream_get_type: TGType; cdecl; external;
function g_io_stream_has_pending(AIOStream: PGIOStream): gboolean; cdecl; external;
function g_io_stream_is_closed(AIOStream: PGIOStream): gboolean; cdecl; external;
function g_io_stream_set_pending(AIOStream: PGIOStream): gboolean; cdecl; external;
function g_io_stream_splice_finish(result_: PGAsyncResult): gboolean; cdecl; external;
function g_loadable_icon_get_type: TGType; cdecl; external;
function g_loadable_icon_load(ALoadableIcon: PGLoadableIcon; size: gint; type_: PPgchar; cancellable: PGCancellable): PGInputStream; cdecl; external;
function g_loadable_icon_load_finish(ALoadableIcon: PGLoadableIcon; res: PGAsyncResult; type_: PPgchar): PGInputStream; cdecl; external;
function g_memory_input_stream_get_type: TGType; cdecl; external;
function g_memory_input_stream_new: PGMemoryInputStream; cdecl; external;
function g_memory_input_stream_new_from_data(data: Pguint8; len: gssize; destroy_: TGDestroyNotify): PGMemoryInputStream; cdecl; external;
function g_memory_output_stream_get_data(AMemoryOutputStream: PGMemoryOutputStream): gpointer; cdecl; external;
function g_memory_output_stream_get_data_size(AMemoryOutputStream: PGMemoryOutputStream): gsize; cdecl; external;
function g_memory_output_stream_get_size(AMemoryOutputStream: PGMemoryOutputStream): gsize; cdecl; external;
function g_memory_output_stream_get_type: TGType; cdecl; external;
function g_memory_output_stream_new(data: gpointer; size: gsize; realloc_function: TGReallocFunc; destroy_function: TGDestroyNotify): PGMemoryOutputStream; cdecl; external;
function g_memory_output_stream_steal_data(AMemoryOutputStream: PGMemoryOutputStream): gpointer; cdecl; external;
function g_mount_can_eject(AMount: PGMount): gboolean; cdecl; external;
function g_mount_can_unmount(AMount: PGMount): gboolean; cdecl; external;
function g_mount_eject_with_operation_finish(AMount: PGMount; result_: PGAsyncResult): gboolean; cdecl; external;
function g_mount_get_default_location(AMount: PGMount): PGFile; cdecl; external;
function g_mount_get_drive(AMount: PGMount): PGDrive; cdecl; external;
function g_mount_get_icon(AMount: PGMount): PGIcon; cdecl; external;
function g_mount_get_name(AMount: PGMount): Pgchar; cdecl; external;
function g_mount_get_root(AMount: PGMount): PGFile; cdecl; external;
function g_mount_get_type: TGType; cdecl; external;
function g_mount_get_uuid(AMount: PGMount): Pgchar; cdecl; external;
function g_mount_get_volume(AMount: PGMount): PGVolume; cdecl; external;
function g_mount_guess_content_type_finish(AMount: PGMount; result_: PGAsyncResult): PPgchar; cdecl; external;
function g_mount_guess_content_type_sync(AMount: PGMount; force_rescan: gboolean; cancellable: PGCancellable): PPgchar; cdecl; external;
function g_mount_is_shadowed(AMount: PGMount): gboolean; cdecl; external;
function g_mount_operation_get_anonymous(AMountOperation: PGMountOperation): gboolean; cdecl; external;
function g_mount_operation_get_choice(AMountOperation: PGMountOperation): gint; cdecl; external;
function g_mount_operation_get_domain(AMountOperation: PGMountOperation): Pgchar; cdecl; external;
function g_mount_operation_get_password(AMountOperation: PGMountOperation): Pgchar; cdecl; external;
function g_mount_operation_get_password_save(AMountOperation: PGMountOperation): TGPasswordSave; cdecl; external;
function g_mount_operation_get_type: TGType; cdecl; external;
function g_mount_operation_get_username(AMountOperation: PGMountOperation): Pgchar; cdecl; external;
function g_mount_operation_new: PGMountOperation; cdecl; external;
function g_mount_remount_finish(AMount: PGMount; result_: PGAsyncResult): gboolean; cdecl; external;
function g_mount_unmount_with_operation_finish(AMount: PGMount; result_: PGAsyncResult): gboolean; cdecl; external;
function g_native_volume_monitor_get_type: TGType; cdecl; external;
function g_network_address_get_hostname(ANetworkAddress: PGNetworkAddress): Pgchar; cdecl; external;
function g_network_address_get_port(ANetworkAddress: PGNetworkAddress): guint16; cdecl; external;
function g_network_address_get_scheme(ANetworkAddress: PGNetworkAddress): Pgchar; cdecl; external;
function g_network_address_get_type: TGType; cdecl; external;
function g_network_address_new(hostname: Pgchar; port: guint16): PGSocketConnectable; cdecl; external;
function g_network_address_parse(host_and_port: Pgchar; default_port: guint16): PGSocketConnectable; cdecl; external;
function g_network_address_parse_uri(uri: Pgchar; default_port: guint16): PGSocketConnectable; cdecl; external;
function g_network_service_get_domain(ANetworkService: PGNetworkService): Pgchar; cdecl; external;
function g_network_service_get_protocol(ANetworkService: PGNetworkService): Pgchar; cdecl; external;
function g_network_service_get_scheme(ANetworkService: PGNetworkService): Pgchar; cdecl; external;
function g_network_service_get_service(ANetworkService: PGNetworkService): Pgchar; cdecl; external;
function g_network_service_get_type: TGType; cdecl; external;
function g_network_service_new(service: Pgchar; protocol: Pgchar; domain: Pgchar): PGSocketConnectable; cdecl; external;
function g_output_stream_close(AOutputStream: PGOutputStream; cancellable: PGCancellable): gboolean; cdecl; external;
function g_output_stream_close_finish(AOutputStream: PGOutputStream; result_: PGAsyncResult): gboolean; cdecl; external;
function g_output_stream_flush(AOutputStream: PGOutputStream; cancellable: PGCancellable): gboolean; cdecl; external;
function g_output_stream_flush_finish(AOutputStream: PGOutputStream; result_: PGAsyncResult): gboolean; cdecl; external;
function g_output_stream_get_type: TGType; cdecl; external;
function g_output_stream_has_pending(AOutputStream: PGOutputStream): gboolean; cdecl; external;
function g_output_stream_is_closed(AOutputStream: PGOutputStream): gboolean; cdecl; external;
function g_output_stream_is_closing(AOutputStream: PGOutputStream): gboolean; cdecl; external;
function g_output_stream_set_pending(AOutputStream: PGOutputStream): gboolean; cdecl; external;
function g_output_stream_splice(AOutputStream: PGOutputStream; source: PGInputStream; flags: TGOutputStreamSpliceFlags; cancellable: PGCancellable): gssize; cdecl; external;
function g_output_stream_splice_finish(AOutputStream: PGOutputStream; result_: PGAsyncResult): gssize; cdecl; external;
function g_output_stream_write(AOutputStream: PGOutputStream; buffer: Pguint8; count: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_output_stream_write_all(AOutputStream: PGOutputStream; buffer: Pguint8; count: gsize; bytes_written: Pgsize; cancellable: PGCancellable): gboolean; cdecl; external;
function g_output_stream_write_finish(AOutputStream: PGOutputStream; result_: PGAsyncResult): gssize; cdecl; external;
function g_permission_acquire(APermission: PGPermission; cancellable: PGCancellable): gboolean; cdecl; external;
function g_permission_acquire_finish(APermission: PGPermission; result_: PGAsyncResult): gboolean; cdecl; external;
function g_permission_get_allowed(APermission: PGPermission): gboolean; cdecl; external;
function g_permission_get_can_acquire(APermission: PGPermission): gboolean; cdecl; external;
function g_permission_get_can_release(APermission: PGPermission): gboolean; cdecl; external;
function g_permission_get_type: TGType; cdecl; external;
function g_permission_release(APermission: PGPermission; cancellable: PGCancellable): gboolean; cdecl; external;
function g_permission_release_finish(APermission: PGPermission; result_: PGAsyncResult): gboolean; cdecl; external;
function g_pollable_input_stream_can_poll(APollableInputStream: PGPollableInputStream): gboolean; cdecl; external;
function g_pollable_input_stream_create_source(APollableInputStream: PGPollableInputStream; cancellable: PGCancellable): PGSource; cdecl; external;
function g_pollable_input_stream_get_type: TGType; cdecl; external;
function g_pollable_input_stream_is_readable(APollableInputStream: PGPollableInputStream): gboolean; cdecl; external;
function g_pollable_input_stream_read_nonblocking(APollableInputStream: PGPollableInputStream; buffer: Pgpointer; size: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_pollable_output_stream_can_poll(APollableOutputStream: PGPollableOutputStream): gboolean; cdecl; external;
function g_pollable_output_stream_create_source(APollableOutputStream: PGPollableOutputStream; cancellable: PGCancellable): PGSource; cdecl; external;
function g_pollable_output_stream_get_type: TGType; cdecl; external;
function g_pollable_output_stream_is_writable(APollableOutputStream: PGPollableOutputStream): gboolean; cdecl; external;
function g_pollable_output_stream_write_nonblocking(APollableOutputStream: PGPollableOutputStream; buffer: Pguint8; size: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_pollable_source_new(pollable_stream: PGObject): PGSource; cdecl; external;
function g_proxy_address_enumerator_get_type: TGType; cdecl; external;
function g_proxy_address_get_destination_hostname(AProxyAddress: PGProxyAddress): Pgchar; cdecl; external;
function g_proxy_address_get_destination_port(AProxyAddress: PGProxyAddress): guint16; cdecl; external;
function g_proxy_address_get_password(AProxyAddress: PGProxyAddress): Pgchar; cdecl; external;
function g_proxy_address_get_protocol(AProxyAddress: PGProxyAddress): Pgchar; cdecl; external;
function g_proxy_address_get_type: TGType; cdecl; external;
function g_proxy_address_get_username(AProxyAddress: PGProxyAddress): Pgchar; cdecl; external;
function g_proxy_address_new(inetaddr: PGInetAddress; port: guint16; protocol: Pgchar; dest_hostname: Pgchar; dest_port: guint16; username: Pgchar; password: Pgchar): PGProxyAddress; cdecl; external;
function g_proxy_connect(AProxy: PGProxy; connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable): PGIOStream; cdecl; external;
function g_proxy_connect_finish(AProxy: PGProxy; result_: PGAsyncResult): PGIOStream; cdecl; external;
function g_proxy_get_default_for_protocol(protocol: Pgchar): PGProxy; cdecl; external;
function g_proxy_get_type: TGType; cdecl; external;
function g_proxy_resolver_get_default: PGProxyResolver; cdecl; external;
function g_proxy_resolver_get_type: TGType; cdecl; external;
function g_proxy_resolver_is_supported(AProxyResolver: PGProxyResolver): gboolean; cdecl; external;
function g_proxy_resolver_lookup(AProxyResolver: PGProxyResolver; uri: Pgchar; cancellable: PGCancellable): PPgchar; cdecl; external;
function g_proxy_resolver_lookup_finish(AProxyResolver: PGProxyResolver; result_: PGAsyncResult): PPgchar; cdecl; external;
function g_proxy_supports_hostname(AProxy: PGProxy): gboolean; cdecl; external;
function g_resolver_error_quark: TGQuark; cdecl; external;
function g_resolver_get_default: PGResolver; cdecl; external;
function g_resolver_get_type: TGType; cdecl; external;
function g_resolver_lookup_by_address(AResolver: PGResolver; address: PGInetAddress; cancellable: PGCancellable): Pgchar; cdecl; external;
function g_resolver_lookup_by_address_finish(AResolver: PGResolver; result_: PGAsyncResult): Pgchar; cdecl; external;
function g_resolver_lookup_by_name(AResolver: PGResolver; hostname: Pgchar; cancellable: PGCancellable): PGList; cdecl; external;
function g_resolver_lookup_by_name_finish(AResolver: PGResolver; result_: PGAsyncResult): PGList; cdecl; external;
function g_resolver_lookup_service(AResolver: PGResolver; service: Pgchar; protocol: Pgchar; domain: Pgchar; cancellable: PGCancellable): PGList; cdecl; external;
function g_resolver_lookup_service_finish(AResolver: PGResolver; result_: PGAsyncResult): PGList; cdecl; external;
function g_seekable_can_seek(ASeekable: PGSeekable): gboolean; cdecl; external;
function g_seekable_can_truncate(ASeekable: PGSeekable): gboolean; cdecl; external;
function g_seekable_get_type: TGType; cdecl; external;
function g_seekable_seek(ASeekable: PGSeekable; offset: gint64; type_: TGSeekType; cancellable: PGCancellable): gboolean; cdecl; external;
function g_seekable_tell(ASeekable: PGSeekable): gint64; cdecl; external;
function g_seekable_truncate(ASeekable: PGSeekable; offset: gint64; cancellable: PGCancellable): gboolean; cdecl; external;
function g_settings_get_boolean(ASettings: PGSettings; key: Pgchar): gboolean; cdecl; external;
function g_settings_get_child(ASettings: PGSettings; name: Pgchar): PGSettings; cdecl; external;
function g_settings_get_double(ASettings: PGSettings; key: Pgchar): gdouble; cdecl; external;
function g_settings_get_enum(ASettings: PGSettings; key: Pgchar): gint; cdecl; external;
function g_settings_get_flags(ASettings: PGSettings; key: Pgchar): guint; cdecl; external;
function g_settings_get_has_unapplied(ASettings: PGSettings): gboolean; cdecl; external;
function g_settings_get_int(ASettings: PGSettings; key: Pgchar): gint; cdecl; external;
function g_settings_get_mapped(ASettings: PGSettings; key: Pgchar; mapping: TGSettingsGetMapping; user_data: gpointer): gpointer; cdecl; external;
function g_settings_get_range(ASettings: PGSettings; key: Pgchar): PGVariant; cdecl; external;
function g_settings_get_string(ASettings: PGSettings; key: Pgchar): Pgchar; cdecl; external;
function g_settings_get_strv(ASettings: PGSettings; key: Pgchar): PPgchar; cdecl; external;
function g_settings_get_type: TGType; cdecl; external;
function g_settings_get_uint(ASettings: PGSettings; key: Pgchar): guint; cdecl; external;
function g_settings_get_value(ASettings: PGSettings; key: Pgchar): PGVariant; cdecl; external;
function g_settings_is_writable(ASettings: PGSettings; name: Pgchar): gboolean; cdecl; external;
function g_settings_list_children(ASettings: PGSettings): PPgchar; cdecl; external;
function g_settings_list_keys(ASettings: PGSettings): PPgchar; cdecl; external;
function g_settings_list_relocatable_schemas: PPgchar; cdecl; external;
function g_settings_list_schemas: PPgchar; cdecl; external;
function g_settings_new(schema: Pgchar): PGSettings; cdecl; external;
function g_settings_new_with_backend(schema: Pgchar; backend: PGSettingsBackend): PGSettings; cdecl; external;
function g_settings_new_with_backend_and_path(schema: Pgchar; backend: PGSettingsBackend; path: Pgchar): PGSettings; cdecl; external;
function g_settings_new_with_path(schema: Pgchar; path: Pgchar): PGSettings; cdecl; external;
function g_settings_range_check(ASettings: PGSettings; key: Pgchar; value: PGVariant): gboolean; cdecl; external;
function g_settings_set(ASettings: PGSettings; key: Pgchar; format: Pgchar; args: array of const): gboolean; cdecl; external;
function g_settings_set_boolean(ASettings: PGSettings; key: Pgchar; value: gboolean): gboolean; cdecl; external;
function g_settings_set_double(ASettings: PGSettings; key: Pgchar; value: gdouble): gboolean; cdecl; external;
function g_settings_set_enum(ASettings: PGSettings; key: Pgchar; value: gint): gboolean; cdecl; external;
function g_settings_set_flags(ASettings: PGSettings; key: Pgchar; value: guint): gboolean; cdecl; external;
function g_settings_set_int(ASettings: PGSettings; key: Pgchar; value: gint): gboolean; cdecl; external;
function g_settings_set_string(ASettings: PGSettings; key: Pgchar; value: Pgchar): gboolean; cdecl; external;
function g_settings_set_strv(ASettings: PGSettings; key: Pgchar; value: PPgchar): gboolean; cdecl; external;
function g_settings_set_uint(ASettings: PGSettings; key: Pgchar; value: guint): gboolean; cdecl; external;
function g_settings_set_value(ASettings: PGSettings; key: Pgchar; value: PGVariant): gboolean; cdecl; external;
function g_simple_action_get_type: TGType; cdecl; external;
function g_simple_action_group_get_type: TGType; cdecl; external;
function g_simple_action_group_lookup(ASimpleActionGroup: PGSimpleActionGroup; action_name: Pgchar): PGAction; cdecl; external;
function g_simple_action_group_new: PGSimpleActionGroup; cdecl; external;
function g_simple_action_new(name: Pgchar; parameter_type: PGVariantType): PGSimpleAction; cdecl; external;
function g_simple_action_new_stateful(name: Pgchar; parameter_type: PGVariantType; state: PGVariant): PGSimpleAction; cdecl; external;
function g_simple_async_result_get_op_res_gboolean(ASimpleAsyncResult: PGSimpleAsyncResult): gboolean; cdecl; external;
function g_simple_async_result_get_op_res_gpointer(ASimpleAsyncResult: PGSimpleAsyncResult): gpointer; cdecl; external;
function g_simple_async_result_get_op_res_gssize(ASimpleAsyncResult: PGSimpleAsyncResult): gssize; cdecl; external;
function g_simple_async_result_get_source_tag(ASimpleAsyncResult: PGSimpleAsyncResult): gpointer; cdecl; external;
function g_simple_async_result_get_type: TGType; cdecl; external;
function g_simple_async_result_is_valid(result_: PGAsyncResult; source: PGObject; source_tag: gpointer): gboolean; cdecl; external;
function g_simple_async_result_new(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; source_tag: gpointer): PGSimpleAsyncResult; cdecl; external;
function g_simple_async_result_new_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; domain: TGQuark; code: gint; format: Pgchar; args: array of const): PGSimpleAsyncResult; cdecl; external;
function g_simple_async_result_new_from_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError): PGSimpleAsyncResult; cdecl; external;
function g_simple_async_result_new_take_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError): PGSimpleAsyncResult; cdecl; external;
function g_simple_async_result_propagate_error(ASimpleAsyncResult: PGSimpleAsyncResult): gboolean; cdecl; external;
function g_simple_permission_get_type: TGType; cdecl; external;
function g_simple_permission_new(allowed: gboolean): PGSimplePermission; cdecl; external;
function g_socket_accept(ASocket: PGSocket; cancellable: PGCancellable): PGSocket; cdecl; external;
function g_socket_address_enumerator_get_type: TGType; cdecl; external;
function g_socket_address_enumerator_next(ASocketAddressEnumerator: PGSocketAddressEnumerator; cancellable: PGCancellable): PGSocketAddress; cdecl; external;
function g_socket_address_enumerator_next_finish(ASocketAddressEnumerator: PGSocketAddressEnumerator; result_: PGAsyncResult): PGSocketAddress; cdecl; external;
function g_socket_address_get_family(ASocketAddress: PGSocketAddress): TGSocketFamily; cdecl; external;
function g_socket_address_get_native_size(ASocketAddress: PGSocketAddress): gssize; cdecl; external;
function g_socket_address_get_type: TGType; cdecl; external;
function g_socket_address_new_from_native(native: gpointer; len: gsize): PGSocketAddress; cdecl; external;
function g_socket_address_to_native(ASocketAddress: PGSocketAddress; dest: gpointer; destlen: gsize): gboolean; cdecl; external;
function g_socket_bind(ASocket: PGSocket; address: PGSocketAddress; allow_reuse: gboolean): gboolean; cdecl; external;
function g_socket_check_connect_result(ASocket: PGSocket): gboolean; cdecl; external;
function g_socket_client_connect(ASocketClient: PGSocketClient; connectable: PGSocketConnectable; cancellable: PGCancellable): PGSocketConnection; cdecl; external;
function g_socket_client_connect_finish(ASocketClient: PGSocketClient; result_: PGAsyncResult): PGSocketConnection; cdecl; external;
function g_socket_client_connect_to_host(ASocketClient: PGSocketClient; host_and_port: Pgchar; default_port: guint16; cancellable: PGCancellable): PGSocketConnection; cdecl; external;
function g_socket_client_connect_to_host_finish(ASocketClient: PGSocketClient; result_: PGAsyncResult): PGSocketConnection; cdecl; external;
function g_socket_client_connect_to_service(ASocketClient: PGSocketClient; domain: Pgchar; service: Pgchar; cancellable: PGCancellable): PGSocketConnection; cdecl; external;
function g_socket_client_connect_to_service_finish(ASocketClient: PGSocketClient; result_: PGAsyncResult): PGSocketConnection; cdecl; external;
function g_socket_client_connect_to_uri(ASocketClient: PGSocketClient; uri: Pgchar; default_port: guint16; cancellable: PGCancellable): PGSocketConnection; cdecl; external;
function g_socket_client_connect_to_uri_finish(ASocketClient: PGSocketClient; result_: PGAsyncResult): PGSocketConnection; cdecl; external;
function g_socket_client_get_enable_proxy(ASocketClient: PGSocketClient): gboolean; cdecl; external;
function g_socket_client_get_family(ASocketClient: PGSocketClient): TGSocketFamily; cdecl; external;
function g_socket_client_get_local_address(ASocketClient: PGSocketClient): PGSocketAddress; cdecl; external;
function g_socket_client_get_protocol(ASocketClient: PGSocketClient): TGSocketProtocol; cdecl; external;
function g_socket_client_get_socket_type(ASocketClient: PGSocketClient): TGSocketType; cdecl; external;
function g_socket_client_get_timeout(ASocketClient: PGSocketClient): guint; cdecl; external;
function g_socket_client_get_tls(ASocketClient: PGSocketClient): gboolean; cdecl; external;
function g_socket_client_get_tls_validation_flags(ASocketClient: PGSocketClient): TGTlsCertificateFlags; cdecl; external;
function g_socket_client_get_type: TGType; cdecl; external;
function g_socket_client_new: PGSocketClient; cdecl; external;
function g_socket_close(ASocket: PGSocket): gboolean; cdecl; external;
function g_socket_condition_check(ASocket: PGSocket; condition: TGIOCondition): TGIOCondition; cdecl; external;
function g_socket_condition_wait(ASocket: PGSocket; condition: TGIOCondition; cancellable: PGCancellable): gboolean; cdecl; external;
function g_socket_connect(ASocket: PGSocket; address: PGSocketAddress; cancellable: PGCancellable): gboolean; cdecl; external;
function g_socket_connectable_enumerate(ASocketConnectable: PGSocketConnectable): PGSocketAddressEnumerator; cdecl; external;
function g_socket_connectable_get_type: TGType; cdecl; external;
function g_socket_connectable_proxy_enumerate(ASocketConnectable: PGSocketConnectable): PGSocketAddressEnumerator; cdecl; external;
function g_socket_connection_factory_create_connection(ASocket: PGSocket): PGSocketConnection; cdecl; external;
function g_socket_connection_factory_lookup_type(family: TGSocketFamily; type_: TGSocketType; protocol_id: gint): TGType; cdecl; external;
function g_socket_connection_get_local_address(ASocketConnection: PGSocketConnection): PGSocketAddress; cdecl; external;
function g_socket_connection_get_remote_address(ASocketConnection: PGSocketConnection): PGSocketAddress; cdecl; external;
function g_socket_connection_get_socket(ASocketConnection: PGSocketConnection): PGSocket; cdecl; external;
function g_socket_connection_get_type: TGType; cdecl; external;
function g_socket_control_message_deserialize(level: gint; type_: gint; size: gsize; data: guint8): PGSocketControlMessage; cdecl; external;
function g_socket_control_message_get_level(ASocketControlMessage: PGSocketControlMessage): gint; cdecl; external;
function g_socket_control_message_get_msg_type(ASocketControlMessage: PGSocketControlMessage): gint; cdecl; external;
function g_socket_control_message_get_size(ASocketControlMessage: PGSocketControlMessage): gsize; cdecl; external;
function g_socket_control_message_get_type: TGType; cdecl; external;
function g_socket_create_source(ASocket: PGSocket; condition: TGIOCondition; cancellable: PGCancellable): PGSource; cdecl; external;
function g_socket_get_blocking(ASocket: PGSocket): gboolean; cdecl; external;
function g_socket_get_credentials(ASocket: PGSocket): PGCredentials; cdecl; external;
function g_socket_get_family(ASocket: PGSocket): TGSocketFamily; cdecl; external;
function g_socket_get_fd(ASocket: PGSocket): gint; cdecl; external;
function g_socket_get_keepalive(ASocket: PGSocket): gboolean; cdecl; external;
function g_socket_get_listen_backlog(ASocket: PGSocket): gint; cdecl; external;
function g_socket_get_local_address(ASocket: PGSocket): PGSocketAddress; cdecl; external;
function g_socket_get_protocol(ASocket: PGSocket): TGSocketProtocol; cdecl; external;
function g_socket_get_remote_address(ASocket: PGSocket): PGSocketAddress; cdecl; external;
function g_socket_get_socket_type(ASocket: PGSocket): TGSocketType; cdecl; external;
function g_socket_get_timeout(ASocket: PGSocket): guint; cdecl; external;
function g_socket_get_type: TGType; cdecl; external;
function g_socket_is_closed(ASocket: PGSocket): gboolean; cdecl; external;
function g_socket_is_connected(ASocket: PGSocket): gboolean; cdecl; external;
function g_socket_listen(ASocket: PGSocket): gboolean; cdecl; external;
function g_socket_listener_accept(ASocketListener: PGSocketListener; source_object: PPGObject; cancellable: PGCancellable): PGSocketConnection; cdecl; external;
function g_socket_listener_accept_finish(ASocketListener: PGSocketListener; result_: PGAsyncResult; source_object: PPGObject): PGSocketConnection; cdecl; external;
function g_socket_listener_accept_socket(ASocketListener: PGSocketListener; source_object: PPGObject; cancellable: PGCancellable): PGSocket; cdecl; external;
function g_socket_listener_accept_socket_finish(ASocketListener: PGSocketListener; result_: PGAsyncResult; source_object: PPGObject): PGSocket; cdecl; external;
function g_socket_listener_add_address(ASocketListener: PGSocketListener; address: PGSocketAddress; type_: TGSocketType; protocol: TGSocketProtocol; source_object: PGObject; effective_address: PPGSocketAddress): gboolean; cdecl; external;
function g_socket_listener_add_any_inet_port(ASocketListener: PGSocketListener; source_object: PGObject): guint16; cdecl; external;
function g_socket_listener_add_inet_port(ASocketListener: PGSocketListener; port: guint16; source_object: PGObject): gboolean; cdecl; external;
function g_socket_listener_add_socket(ASocketListener: PGSocketListener; socket: PGSocket; source_object: PGObject): gboolean; cdecl; external;
function g_socket_listener_get_type: TGType; cdecl; external;
function g_socket_listener_new: PGSocketListener; cdecl; external;
function g_socket_new(family: TGSocketFamily; type_: TGSocketType; protocol: TGSocketProtocol): PGSocket; cdecl; external;
function g_socket_new_from_fd(fd: gint): PGSocket; cdecl; external;
function g_socket_receive(ASocket: PGSocket; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_receive_from(ASocket: PGSocket; address: PPGSocketAddress; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_receive_message(ASocket: PGSocket; address: PPGSocketAddress; vectors: PGInputVector; num_vectors: gint; messages: PPPGSocketControlMessage; num_messages: Pgint; flags: Pgint; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_receive_with_blocking(ASocket: PGSocket; buffer: Pgchar; size: gsize; blocking: gboolean; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_send(ASocket: PGSocket; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_send_message(ASocket: PGSocket; address: PGSocketAddress; vectors: PGOutputVector; num_vectors: gint; messages: PPGSocketControlMessage; num_messages: gint; flags: gint; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_send_to(ASocket: PGSocket; address: PGSocketAddress; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_send_with_blocking(ASocket: PGSocket; buffer: Pgchar; size: gsize; blocking: gboolean; cancellable: PGCancellable): gssize; cdecl; external;
function g_socket_service_get_type: TGType; cdecl; external;
function g_socket_service_is_active(ASocketService: PGSocketService): gboolean; cdecl; external;
function g_socket_service_new: PGSocketService; cdecl; external;
function g_socket_shutdown(ASocket: PGSocket; shutdown_read: gboolean; shutdown_write: gboolean): gboolean; cdecl; external;
function g_socket_speaks_ipv4(ASocket: PGSocket): gboolean; cdecl; external;
function g_srv_target_copy(ASrvTarget: PGSrvTarget): PGSrvTarget; cdecl; external;
function g_srv_target_get_hostname(ASrvTarget: PGSrvTarget): Pgchar; cdecl; external;
function g_srv_target_get_port(ASrvTarget: PGSrvTarget): guint16; cdecl; external;
function g_srv_target_get_priority(ASrvTarget: PGSrvTarget): guint16; cdecl; external;
function g_srv_target_get_type: TGType; cdecl; external;
function g_srv_target_get_weight(ASrvTarget: PGSrvTarget): guint16; cdecl; external;
function g_srv_target_list_sort(targets: PGList): PGList; cdecl; external;
function g_srv_target_new(hostname: Pgchar; port: guint16; priority: guint16; weight: guint16): PGSrvTarget; cdecl; external;
function g_tcp_connection_get_graceful_disconnect(ATcpConnection: PGTcpConnection): gboolean; cdecl; external;
function g_tcp_connection_get_type: TGType; cdecl; external;
function g_tcp_wrapper_connection_get_base_io_stream(ATcpWrapperConnection: PGTcpWrapperConnection): PGIOStream; cdecl; external;
function g_tcp_wrapper_connection_get_type: TGType; cdecl; external;
function g_tcp_wrapper_connection_new(base_io_stream: PGIOStream; socket: PGSocket): PGTcpWrapperConnection; cdecl; external;
function g_themed_icon_get_names(AThemedIcon: PGThemedIcon): PPgchar; cdecl; external;
function g_themed_icon_get_type: TGType; cdecl; external;
function g_themed_icon_new(iconname: Pgchar): PGIcon; cdecl; external;
function g_themed_icon_new_from_names(iconnames: PPgchar; len: gint): PGIcon; cdecl; external;
function g_themed_icon_new_with_default_fallbacks(iconname: Pgchar): PGIcon; cdecl; external;
function g_threaded_socket_service_get_type: TGType; cdecl; external;
function g_threaded_socket_service_new(max_threads: gint): PGThreadedSocketService; cdecl; external;
function g_tls_backend_get_certificate_type(ATlsBackend: PGTlsBackend): TGType; cdecl; external;
function g_tls_backend_get_client_connection_type(ATlsBackend: PGTlsBackend): TGType; cdecl; external;
function g_tls_backend_get_default: PGTlsBackend; cdecl; external;
function g_tls_backend_get_default_database(ATlsBackend: PGTlsBackend): PGTlsDatabase; cdecl; external;
function g_tls_backend_get_file_database_type(ATlsBackend: PGTlsBackend): TGType; cdecl; external;
function g_tls_backend_get_server_connection_type(ATlsBackend: PGTlsBackend): TGType; cdecl; external;
function g_tls_backend_get_type: TGType; cdecl; external;
function g_tls_backend_supports_tls(ATlsBackend: PGTlsBackend): gboolean; cdecl; external;
function g_tls_certificate_get_issuer(ATlsCertificate: PGTlsCertificate): PGTlsCertificate; cdecl; external;
function g_tls_certificate_get_type: TGType; cdecl; external;
function g_tls_certificate_list_new_from_file(file_: Pgchar): PGList; cdecl; external;
function g_tls_certificate_new_from_file(file_: Pgchar): PGTlsCertificate; cdecl; external;
function g_tls_certificate_new_from_files(cert_file: Pgchar; key_file: Pgchar): PGTlsCertificate; cdecl; external;
function g_tls_certificate_new_from_pem(data: Pgchar; length: gssize): PGTlsCertificate; cdecl; external;
function g_tls_certificate_verify(ATlsCertificate: PGTlsCertificate; identity: PGSocketConnectable; trusted_ca: PGTlsCertificate): TGTlsCertificateFlags; cdecl; external;
function g_tls_client_connection_get_accepted_cas(ATlsClientConnection: PGTlsClientConnection): PGList; cdecl; external;
function g_tls_client_connection_get_server_identity(ATlsClientConnection: PGTlsClientConnection): PGSocketConnectable; cdecl; external;
function g_tls_client_connection_get_type: TGType; cdecl; external;
function g_tls_client_connection_get_use_ssl3(ATlsClientConnection: PGTlsClientConnection): gboolean; cdecl; external;
function g_tls_client_connection_get_validation_flags(ATlsClientConnection: PGTlsClientConnection): TGTlsCertificateFlags; cdecl; external;
function g_tls_client_connection_new(base_io_stream: PGIOStream; server_identity: PGSocketConnectable): PGIOStream; cdecl; external;
function g_tls_connection_emit_accept_certificate(ATlsConnection: PGTlsConnection; peer_cert: PGTlsCertificate; errors: TGTlsCertificateFlags): gboolean; cdecl; external;
function g_tls_connection_get_certificate(ATlsConnection: PGTlsConnection): PGTlsCertificate; cdecl; external;
function g_tls_connection_get_database(ATlsConnection: PGTlsConnection): PGTlsDatabase; cdecl; external;
function g_tls_connection_get_interaction(ATlsConnection: PGTlsConnection): PGTlsInteraction; cdecl; external;
function g_tls_connection_get_peer_certificate(ATlsConnection: PGTlsConnection): PGTlsCertificate; cdecl; external;
function g_tls_connection_get_peer_certificate_errors(ATlsConnection: PGTlsConnection): TGTlsCertificateFlags; cdecl; external;
function g_tls_connection_get_rehandshake_mode(ATlsConnection: PGTlsConnection): TGTlsRehandshakeMode; cdecl; external;
function g_tls_connection_get_require_close_notify(ATlsConnection: PGTlsConnection): gboolean; cdecl; external;
function g_tls_connection_get_type: TGType; cdecl; external;
function g_tls_connection_handshake(ATlsConnection: PGTlsConnection; cancellable: PGCancellable): gboolean; cdecl; external;
function g_tls_connection_handshake_finish(ATlsConnection: PGTlsConnection; result_: PGAsyncResult): gboolean; cdecl; external;
function g_tls_database_create_certificate_handle(ATlsDatabase: PGTlsDatabase; certificate: PGTlsCertificate): Pgchar; cdecl; external;
function g_tls_database_get_type: TGType; cdecl; external;
function g_tls_database_lookup_certificate_for_handle(ATlsDatabase: PGTlsDatabase; handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl; external;
function g_tls_database_lookup_certificate_for_handle_finish(ATlsDatabase: PGTlsDatabase; result_: PGAsyncResult): PGTlsCertificate; cdecl; external;
function g_tls_database_lookup_certificate_issuer(ATlsDatabase: PGTlsDatabase; certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl; external;
function g_tls_database_lookup_certificate_issuer_finish(ATlsDatabase: PGTlsDatabase; result_: PGAsyncResult): PGTlsCertificate; cdecl; external;
function g_tls_database_lookup_certificates_issued_by(ATlsDatabase: PGTlsDatabase; issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGList; cdecl; external;
function g_tls_database_lookup_certificates_issued_by_finish(ATlsDatabase: PGTlsDatabase; result_: PGAsyncResult): PGList; cdecl; external;
function g_tls_database_verify_chain(ATlsDatabase: PGTlsDatabase; chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable): TGTlsCertificateFlags; cdecl; external;
function g_tls_database_verify_chain_finish(ATlsDatabase: PGTlsDatabase; result_: PGAsyncResult): TGTlsCertificateFlags; cdecl; external;
function g_tls_error_quark: TGQuark; cdecl; external;
function g_tls_file_database_get_type: TGType; cdecl; external;
function g_tls_file_database_new(anchors: Pgchar): PGTlsDatabase; cdecl; external;
function g_tls_interaction_ask_password(ATlsInteraction: PGTlsInteraction; password: PGTlsPassword; cancellable: PGCancellable): TGTlsInteractionResult; cdecl; external;
function g_tls_interaction_ask_password_finish(ATlsInteraction: PGTlsInteraction; result_: PGAsyncResult): TGTlsInteractionResult; cdecl; external;
function g_tls_interaction_get_type: TGType; cdecl; external;
function g_tls_password_get_description(ATlsPassword: PGTlsPassword): Pgchar; cdecl; external;
function g_tls_password_get_flags(ATlsPassword: PGTlsPassword): TGTlsPasswordFlags; cdecl; external;
function g_tls_password_get_type: TGType; cdecl; external;
function g_tls_password_get_value(ATlsPassword: PGTlsPassword; length: Pgsize): Pguint8; cdecl; external;
function g_tls_password_get_warning(ATlsPassword: PGTlsPassword): Pgchar; cdecl; external;
function g_tls_password_new(flags: TGTlsPasswordFlags; description: Pgchar): PGTlsPassword; cdecl; external;
function g_tls_server_connection_get_type: TGType; cdecl; external;
function g_tls_server_connection_new(base_io_stream: PGIOStream; certificate: PGTlsCertificate): PGIOStream; cdecl; external;
function g_unix_connection_get_type: TGType; cdecl; external;
function g_unix_connection_receive_credentials(AUnixConnection: PGUnixConnection; cancellable: PGCancellable): PGCredentials; cdecl; external;
function g_unix_connection_receive_fd(AUnixConnection: PGUnixConnection; cancellable: PGCancellable): gint; cdecl; external;
function g_unix_connection_send_credentials(AUnixConnection: PGUnixConnection; cancellable: PGCancellable): gboolean; cdecl; external;
function g_unix_connection_send_fd(AUnixConnection: PGUnixConnection; fd: gint; cancellable: PGCancellable): gboolean; cdecl; external;
function g_unix_credentials_message_get_credentials(AUnixCredentialsMessage: PGUnixCredentialsMessage): PGCredentials; cdecl; external;
function g_unix_credentials_message_get_type: TGType; cdecl; external;
function g_unix_credentials_message_is_supported: gboolean; cdecl; external;
function g_unix_credentials_message_new: PGUnixCredentialsMessage; cdecl; external;
function g_unix_credentials_message_new_with_credentials(credentials: PGCredentials): PGUnixCredentialsMessage; cdecl; external;
function g_unix_fd_list_append(AUnixFDList: PGUnixFDList; fd: gint): gint; cdecl; external;
function g_unix_fd_list_get(AUnixFDList: PGUnixFDList; index_: gint): gint; cdecl; external;
function g_unix_fd_list_get_length(AUnixFDList: PGUnixFDList): gint; cdecl; external;
function g_unix_fd_list_get_type: TGType; cdecl; external;
function g_unix_fd_list_new: PGUnixFDList; cdecl; external;
function g_unix_fd_list_new_from_array(fds: Pgint; n_fds: gint): PGUnixFDList; cdecl; external;
function g_unix_fd_list_peek_fds(AUnixFDList: PGUnixFDList; length: Pgint): Pgint; cdecl; external;
function g_unix_fd_list_steal_fds(AUnixFDList: PGUnixFDList; length: Pgint): Pgint; cdecl; external;
function g_unix_fd_message_append_fd(AUnixFDMessage: PGUnixFDMessage; fd: gint): gboolean; cdecl; external;
function g_unix_fd_message_get_fd_list(AUnixFDMessage: PGUnixFDMessage): PGUnixFDList; cdecl; external;
function g_unix_fd_message_get_type: TGType; cdecl; external;
function g_unix_fd_message_new: PGUnixFDMessage; cdecl; external;
function g_unix_fd_message_new_with_fd_list(fd_list: PGUnixFDList): PGUnixFDMessage; cdecl; external;
function g_unix_fd_message_steal_fds(AUnixFDMessage: PGUnixFDMessage; length: Pgint): Pgint; cdecl; external;
function g_unix_input_stream_get_close_fd(AUnixInputStream: PGUnixInputStream): gboolean; cdecl; external;
function g_unix_input_stream_get_fd(AUnixInputStream: PGUnixInputStream): gint; cdecl; external;
function g_unix_input_stream_get_type: TGType; cdecl; external;
function g_unix_input_stream_new(fd: gint; close_fd: gboolean): PGUnixInputStream; cdecl; external;
function g_unix_is_mount_path_system_internal(mount_path: Pgchar): gboolean; cdecl; external;
function g_unix_mount_at(mount_path: Pgchar; time_read: Pguint64): PGUnixMountEntry; cdecl; external;
function g_unix_mount_compare(mount1: PGUnixMountEntry; mount2: PGUnixMountEntry): gint; cdecl; external;
function g_unix_mount_get_device_path(mount_entry: PGUnixMountEntry): Pgchar; cdecl; external;
function g_unix_mount_get_fs_type(mount_entry: PGUnixMountEntry): Pgchar; cdecl; external;
function g_unix_mount_get_mount_path(mount_entry: PGUnixMountEntry): Pgchar; cdecl; external;
function g_unix_mount_guess_can_eject(mount_entry: PGUnixMountEntry): gboolean; cdecl; external;
function g_unix_mount_guess_icon(mount_entry: PGUnixMountEntry): PGIcon; cdecl; external;
function g_unix_mount_guess_name(mount_entry: PGUnixMountEntry): Pgchar; cdecl; external;
function g_unix_mount_guess_should_display(mount_entry: PGUnixMountEntry): gboolean; cdecl; external;
function g_unix_mount_is_readonly(mount_entry: PGUnixMountEntry): gboolean; cdecl; external;
function g_unix_mount_is_system_internal(mount_entry: PGUnixMountEntry): gboolean; cdecl; external;
function g_unix_mount_monitor_get_type: TGType; cdecl; external;
function g_unix_mount_monitor_new: PGUnixMountMonitor; cdecl; external;
function g_unix_mount_point_compare(AUnixMountPoint: PGUnixMountPoint; mount2: PGUnixMountPoint): gint; cdecl; external;
function g_unix_mount_point_get_device_path(AUnixMountPoint: PGUnixMountPoint): Pgchar; cdecl; external;
function g_unix_mount_point_get_fs_type(AUnixMountPoint: PGUnixMountPoint): Pgchar; cdecl; external;
function g_unix_mount_point_get_mount_path(AUnixMountPoint: PGUnixMountPoint): Pgchar; cdecl; external;
function g_unix_mount_point_guess_can_eject(AUnixMountPoint: PGUnixMountPoint): gboolean; cdecl; external;
function g_unix_mount_point_guess_icon(AUnixMountPoint: PGUnixMountPoint): PGIcon; cdecl; external;
function g_unix_mount_point_guess_name(AUnixMountPoint: PGUnixMountPoint): Pgchar; cdecl; external;
function g_unix_mount_point_is_loopback(AUnixMountPoint: PGUnixMountPoint): gboolean; cdecl; external;
function g_unix_mount_point_is_readonly(AUnixMountPoint: PGUnixMountPoint): gboolean; cdecl; external;
function g_unix_mount_point_is_user_mountable(AUnixMountPoint: PGUnixMountPoint): gboolean; cdecl; external;
function g_unix_mount_points_changed_since(time: guint64): gboolean; cdecl; external;
function g_unix_mount_points_get(time_read: Pguint64): PGList; cdecl; external;
function g_unix_mounts_changed_since(time: guint64): gboolean; cdecl; external;
function g_unix_mounts_get(time_read: Pguint64): PGList; cdecl; external;
function g_unix_output_stream_get_close_fd(AUnixOutputStream: PGUnixOutputStream): gboolean; cdecl; external;
function g_unix_output_stream_get_fd(AUnixOutputStream: PGUnixOutputStream): gint; cdecl; external;
function g_unix_output_stream_get_type: TGType; cdecl; external;
function g_unix_output_stream_new(fd: gint; close_fd: gboolean): PGUnixOutputStream; cdecl; external;
function g_unix_socket_address_abstract_names_supported: gboolean; cdecl; external;
function g_unix_socket_address_get_address_type(AUnixSocketAddress: PGUnixSocketAddress): TGUnixSocketAddressType; cdecl; external;
function g_unix_socket_address_get_is_abstract(AUnixSocketAddress: PGUnixSocketAddress): gboolean; cdecl; external;
function g_unix_socket_address_get_path(AUnixSocketAddress: PGUnixSocketAddress): Pgchar; cdecl; external;
function g_unix_socket_address_get_path_len(AUnixSocketAddress: PGUnixSocketAddress): gsize; cdecl; external;
function g_unix_socket_address_get_type: TGType; cdecl; external;
function g_unix_socket_address_new(path: Pgchar): PGUnixSocketAddress; cdecl; external;
function g_unix_socket_address_new_abstract(path: Pgchar; path_len: gint): PGUnixSocketAddress; cdecl; external;
function g_unix_socket_address_new_with_type(path: Pgchar; path_len: gint; type_: TGUnixSocketAddressType): PGUnixSocketAddress; cdecl; external;
function g_vfs_get_default: PGVfs; cdecl; external;
function g_vfs_get_file_for_path(AVfs: PGVfs; path: Pgchar): PGFile; cdecl; external;
function g_vfs_get_file_for_uri(AVfs: PGVfs; uri: Pgchar): PGFile; cdecl; external;
function g_vfs_get_local: PGVfs; cdecl; external;
function g_vfs_get_supported_uri_schemes(AVfs: PGVfs): PPgchar; cdecl; external;
function g_vfs_get_type: TGType; cdecl; external;
function g_vfs_is_active(AVfs: PGVfs): gboolean; cdecl; external;
function g_vfs_parse_name(AVfs: PGVfs; parse_name: Pgchar): PGFile; cdecl; external;
function g_volume_can_eject(AVolume: PGVolume): gboolean; cdecl; external;
function g_volume_can_mount(AVolume: PGVolume): gboolean; cdecl; external;
function g_volume_eject_with_operation_finish(AVolume: PGVolume; result_: PGAsyncResult): gboolean; cdecl; external;
function g_volume_enumerate_identifiers(AVolume: PGVolume): PPgchar; cdecl; external;
function g_volume_get_activation_root(AVolume: PGVolume): PGFile; cdecl; external;
function g_volume_get_drive(AVolume: PGVolume): PGDrive; cdecl; external;
function g_volume_get_icon(AVolume: PGVolume): PGIcon; cdecl; external;
function g_volume_get_identifier(AVolume: PGVolume; kind: Pgchar): Pgchar; cdecl; external;
function g_volume_get_mount(AVolume: PGVolume): PGMount; cdecl; external;
function g_volume_get_name(AVolume: PGVolume): Pgchar; cdecl; external;
function g_volume_get_type: TGType; cdecl; external;
function g_volume_get_uuid(AVolume: PGVolume): Pgchar; cdecl; external;
function g_volume_monitor_get: PGVolumeMonitor; cdecl; external;
function g_volume_monitor_get_connected_drives(AVolumeMonitor: PGVolumeMonitor): PGList; cdecl; external;
function g_volume_monitor_get_mount_for_uuid(AVolumeMonitor: PGVolumeMonitor; uuid: Pgchar): PGMount; cdecl; external;
function g_volume_monitor_get_mounts(AVolumeMonitor: PGVolumeMonitor): PGList; cdecl; external;
function g_volume_monitor_get_type: TGType; cdecl; external;
function g_volume_monitor_get_volume_for_uuid(AVolumeMonitor: PGVolumeMonitor; uuid: Pgchar): PGVolume; cdecl; external;
function g_volume_monitor_get_volumes(AVolumeMonitor: PGVolumeMonitor): PGList; cdecl; external;
function g_volume_mount_finish(AVolume: PGVolume; result_: PGAsyncResult): gboolean; cdecl; external;
function g_volume_should_automount(AVolume: PGVolume): gboolean; cdecl; external;
function g_zlib_compressor_get_file_info(AZlibCompressor: PGZlibCompressor): PGFileInfo; cdecl; external;
function g_zlib_compressor_get_type: TGType; cdecl; external;
function g_zlib_compressor_new(format: TGZlibCompressorFormat; level: gint): PGZlibCompressor; cdecl; external;
function g_zlib_decompressor_get_file_info(AZlibDecompressor: PGZlibDecompressor): PGFileInfo; cdecl; external;
function g_zlib_decompressor_get_type: TGType; cdecl; external;
function g_zlib_decompressor_new(format: TGZlibCompressorFormat): PGZlibDecompressor; cdecl; external;
procedure g_action_activate(AAction: PGAction; parameter: PGVariant); cdecl; external;
procedure g_action_change_state(AAction: PGAction; value: PGVariant); cdecl; external;
procedure g_action_group_action_added(AActionGroup: PGActionGroup; action_name: Pgchar); cdecl; external;
procedure g_action_group_action_enabled_changed(AActionGroup: PGActionGroup; action_name: Pgchar; enabled: gboolean); cdecl; external;
procedure g_action_group_action_removed(AActionGroup: PGActionGroup; action_name: Pgchar); cdecl; external;
procedure g_action_group_action_state_changed(AActionGroup: PGActionGroup; action_name: Pgchar; state: PGVariant); cdecl; external;
procedure g_action_group_activate_action(AActionGroup: PGActionGroup; action_name: Pgchar; parameter: PGVariant); cdecl; external;
procedure g_action_group_change_action_state(AActionGroup: PGActionGroup; action_name: Pgchar; value: PGVariant); cdecl; external;
procedure g_app_info_reset_type_associations(content_type: Pgchar); cdecl; external;
procedure g_app_launch_context_launch_failed(AAppLaunchContext: PGAppLaunchContext; startup_notify_id: Pgchar); cdecl; external;
procedure g_application_activate(AApplication: PGApplication); cdecl; external;
procedure g_application_command_line_print(AApplicationCommandLine: PGApplicationCommandLine; format: Pgchar; args: array of const); cdecl; external;
procedure g_application_command_line_printerr(AApplicationCommandLine: PGApplicationCommandLine; format: Pgchar; args: array of const); cdecl; external;
procedure g_application_command_line_set_exit_status(AApplicationCommandLine: PGApplicationCommandLine; exit_status: gint); cdecl; external;
procedure g_application_hold(AApplication: PGApplication); cdecl; external;
procedure g_application_open(AApplication: PGApplication; files: PPGFile; n_files: gint; hint: Pgchar); cdecl; external;
procedure g_application_release(AApplication: PGApplication); cdecl; external;
procedure g_application_set_action_group(AApplication: PGApplication; action_group: PGActionGroup); cdecl; external;
procedure g_application_set_application_id(AApplication: PGApplication; application_id: Pgchar); cdecl; external;
procedure g_application_set_flags(AApplication: PGApplication; flags: TGApplicationFlags); cdecl; external;
procedure g_application_set_inactivity_timeout(AApplication: PGApplication; inactivity_timeout: guint); cdecl; external;
procedure g_async_initable_init_async(AAsyncInitable: PGAsyncInitable; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_async_initable_new_async(object_type: TGType; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer; first_property_name: Pgchar; args: array of const); cdecl; external;
procedure g_async_initable_new_valist_async(object_type: TGType; first_property_name: Pgchar; var_args: Tva_list; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_async_initable_newv_async(object_type: TGType; n_parameters: guint; parameters: PGParameter; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_buffered_input_stream_fill_async(ABufferedInputStream: PGBufferedInputStream; count: gssize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_buffered_input_stream_set_buffer_size(ABufferedInputStream: PGBufferedInputStream; size: gsize); cdecl; external;
procedure g_buffered_output_stream_set_auto_grow(ABufferedOutputStream: PGBufferedOutputStream; auto_grow: gboolean); cdecl; external;
procedure g_buffered_output_stream_set_buffer_size(ABufferedOutputStream: PGBufferedOutputStream; size: gsize); cdecl; external;
procedure g_bus_get(bus_type: TGBusType; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_bus_unown_name(owner_id: guint); cdecl; external;
procedure g_bus_unwatch_name(watcher_id: guint); cdecl; external;
procedure g_cancellable_cancel(ACancellable: PGCancellable); cdecl; external;
procedure g_cancellable_disconnect(ACancellable: PGCancellable; handler_id: gulong); cdecl; external;
procedure g_cancellable_pop_current(ACancellable: PGCancellable); cdecl; external;
procedure g_cancellable_push_current(ACancellable: PGCancellable); cdecl; external;
procedure g_cancellable_release_fd(ACancellable: PGCancellable); cdecl; external;
procedure g_cancellable_reset(ACancellable: PGCancellable); cdecl; external;
procedure g_charset_converter_set_use_fallback(ACharsetConverter: PGCharsetConverter; use_fallback: gboolean); cdecl; external;
procedure g_converter_reset(AConverter: PGConverter); cdecl; external;
procedure g_credentials_set_native(ACredentials: PGCredentials; native_type: TGCredentialsType; native: gpointer); cdecl; external;
procedure g_data_input_stream_read_line_async(ADataInputStream: PGDataInputStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_data_input_stream_read_until_async(ADataInputStream: PGDataInputStream; stop_chars: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_data_input_stream_read_upto_async(ADataInputStream: PGDataInputStream; stop_chars: Pgchar; stop_chars_len: gssize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_data_input_stream_set_byte_order(ADataInputStream: PGDataInputStream; order: TGDataStreamByteOrder); cdecl; external;
procedure g_data_input_stream_set_newline_type(ADataInputStream: PGDataInputStream; type_: TGDataStreamNewlineType); cdecl; external;
procedure g_data_output_stream_set_byte_order(ADataOutputStream: PGDataOutputStream; order: TGDataStreamByteOrder); cdecl; external;
procedure g_dbus_address_get_stream(address: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_annotation_info_unref(ADBusAnnotationInfo: PGDBusAnnotationInfo); cdecl; external;
procedure g_dbus_arg_info_unref(ADBusArgInfo: PGDBusArgInfo); cdecl; external;
procedure g_dbus_connection_call(ADBusConnection: PGDBusConnection; bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_connection_call_with_unix_fd_list(ADBusConnection: PGDBusConnection; bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_connection_close(ADBusConnection: PGDBusConnection; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_connection_flush(ADBusConnection: PGDBusConnection; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_connection_new(stream: PGIOStream; guid: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_connection_new_for_address(address: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_connection_remove_filter(ADBusConnection: PGDBusConnection; filter_id: guint); cdecl; external;
procedure g_dbus_connection_send_message_with_reply(ADBusConnection: PGDBusConnection; message: PGDBusMessage; flags: TGDBusSendMessageFlags; timeout_msec: gint; out_serial: Pguint32; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_connection_set_exit_on_close(ADBusConnection: PGDBusConnection; exit_on_close: gboolean); cdecl; external;
procedure g_dbus_connection_signal_unsubscribe(ADBusConnection: PGDBusConnection; subscription_id: guint); cdecl; external;
procedure g_dbus_connection_start_message_processing(ADBusConnection: PGDBusConnection); cdecl; external;
procedure g_dbus_error_register_error_domain(error_domain_quark_name: Pgchar; quark_volatile: Pgsize; entries: PGDBusErrorEntry; num_entries: guint); cdecl; external;
procedure g_dbus_error_set_dbus_error(error: PPGError; dbus_error_name: Pgchar; dbus_error_message: Pgchar; format: Pgchar; args: array of const); cdecl; external;
procedure g_dbus_error_set_dbus_error_valist(error: PPGError; dbus_error_name: Pgchar; dbus_error_message: Pgchar; format: Pgchar; var_args: Tva_list); cdecl; external;
procedure g_dbus_gvariant_to_gvalue(value: PGVariant; out_gvalue: PGValue); cdecl; external;
procedure g_dbus_interface_info_cache_build(ADBusInterfaceInfo: PGDBusInterfaceInfo); cdecl; external;
procedure g_dbus_interface_info_cache_release(ADBusInterfaceInfo: PGDBusInterfaceInfo); cdecl; external;
procedure g_dbus_interface_info_generate_xml(ADBusInterfaceInfo: PGDBusInterfaceInfo; indent: guint; string_builder: PGString); cdecl; external;
procedure g_dbus_interface_info_unref(ADBusInterfaceInfo: PGDBusInterfaceInfo); cdecl; external;
procedure g_dbus_interface_set_object(ADBusInterface: PGDBusInterface; object_: PGDBusObject); cdecl; external;
procedure g_dbus_interface_skeleton_flush(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton); cdecl; external;
procedure g_dbus_interface_skeleton_set_flags(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton; flags: TGDBusInterfaceSkeletonFlags); cdecl; external;
procedure g_dbus_interface_skeleton_unexport(ADBusInterfaceSkeleton: PGDBusInterfaceSkeleton); cdecl; external;
procedure g_dbus_message_lock(ADBusMessage: PGDBusMessage); cdecl; external;
procedure g_dbus_message_set_body(ADBusMessage: PGDBusMessage; body: PGVariant); cdecl; external;
procedure g_dbus_message_set_byte_order(ADBusMessage: PGDBusMessage; byte_order: TGDBusMessageByteOrder); cdecl; external;
procedure g_dbus_message_set_destination(ADBusMessage: PGDBusMessage; value: Pgchar); cdecl; external;
procedure g_dbus_message_set_error_name(ADBusMessage: PGDBusMessage; value: Pgchar); cdecl; external;
procedure g_dbus_message_set_flags(ADBusMessage: PGDBusMessage; flags: TGDBusMessageFlags); cdecl; external;
procedure g_dbus_message_set_header(ADBusMessage: PGDBusMessage; header_field: TGDBusMessageHeaderField; value: PGVariant); cdecl; external;
procedure g_dbus_message_set_interface(ADBusMessage: PGDBusMessage; value: Pgchar); cdecl; external;
procedure g_dbus_message_set_member(ADBusMessage: PGDBusMessage; value: Pgchar); cdecl; external;
procedure g_dbus_message_set_message_type(ADBusMessage: PGDBusMessage; type_: TGDBusMessageType); cdecl; external;
procedure g_dbus_message_set_num_unix_fds(ADBusMessage: PGDBusMessage; value: guint32); cdecl; external;
procedure g_dbus_message_set_path(ADBusMessage: PGDBusMessage; value: Pgchar); cdecl; external;
procedure g_dbus_message_set_reply_serial(ADBusMessage: PGDBusMessage; value: guint32); cdecl; external;
procedure g_dbus_message_set_sender(ADBusMessage: PGDBusMessage; value: Pgchar); cdecl; external;
procedure g_dbus_message_set_serial(ADBusMessage: PGDBusMessage; serial: guint32); cdecl; external;
procedure g_dbus_message_set_signature(ADBusMessage: PGDBusMessage; value: Pgchar); cdecl; external;
procedure g_dbus_message_set_unix_fd_list(ADBusMessage: PGDBusMessage; fd_list: PGUnixFDList); cdecl; external;
procedure g_dbus_method_info_unref(ADBusMethodInfo: PGDBusMethodInfo); cdecl; external;
procedure g_dbus_method_invocation_return_dbus_error(ADBusMethodInvocation: PGDBusMethodInvocation; error_name: Pgchar; error_message: Pgchar); cdecl; external;
procedure g_dbus_method_invocation_return_error(ADBusMethodInvocation: PGDBusMethodInvocation; domain: TGQuark; code: gint; format: Pgchar; args: array of const); cdecl; external;
procedure g_dbus_method_invocation_return_error_literal(ADBusMethodInvocation: PGDBusMethodInvocation; domain: TGQuark; code: gint; message: Pgchar); cdecl; external;
procedure g_dbus_method_invocation_return_error_valist(ADBusMethodInvocation: PGDBusMethodInvocation; domain: TGQuark; code: gint; format: Pgchar; var_args: Tva_list); cdecl; external;
procedure g_dbus_method_invocation_return_gerror(ADBusMethodInvocation: PGDBusMethodInvocation; error: PGError); cdecl; external;
procedure g_dbus_method_invocation_return_value(ADBusMethodInvocation: PGDBusMethodInvocation; parameters: PGVariant); cdecl; external;
procedure g_dbus_method_invocation_return_value_with_unix_fd_list(ADBusMethodInvocation: PGDBusMethodInvocation; parameters: PGVariant; fd_list: PGUnixFDList); cdecl; external;
procedure g_dbus_method_invocation_take_error(ADBusMethodInvocation: PGDBusMethodInvocation; error: PGError); cdecl; external;
procedure g_dbus_node_info_generate_xml(ADBusNodeInfo: PGDBusNodeInfo; indent: guint; string_builder: PGString); cdecl; external;
procedure g_dbus_node_info_unref(ADBusNodeInfo: PGDBusNodeInfo); cdecl; external;
procedure g_dbus_object_manager_client_new(connection: PGDBusConnection; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_object_manager_client_new_for_bus(bus_type: TGBusType; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_object_manager_server_export(ADBusObjectManagerServer: PGDBusObjectManagerServer; object_: PGDBusObjectSkeleton); cdecl; external;
procedure g_dbus_object_manager_server_export_uniquely(ADBusObjectManagerServer: PGDBusObjectManagerServer; object_: PGDBusObjectSkeleton); cdecl; external;
procedure g_dbus_object_manager_server_set_connection(ADBusObjectManagerServer: PGDBusObjectManagerServer; connection: PGDBusConnection); cdecl; external;
procedure g_dbus_object_skeleton_add_interface(ADBusObjectSkeleton: PGDBusObjectSkeleton; interface_: PGDBusInterfaceSkeleton); cdecl; external;
procedure g_dbus_object_skeleton_flush(ADBusObjectSkeleton: PGDBusObjectSkeleton); cdecl; external;
procedure g_dbus_object_skeleton_remove_interface(ADBusObjectSkeleton: PGDBusObjectSkeleton; interface_: PGDBusInterfaceSkeleton); cdecl; external;
procedure g_dbus_object_skeleton_remove_interface_by_name(ADBusObjectSkeleton: PGDBusObjectSkeleton; interface_name: Pgchar); cdecl; external;
procedure g_dbus_object_skeleton_set_object_path(ADBusObjectSkeleton: PGDBusObjectSkeleton; object_path: Pgchar); cdecl; external;
procedure g_dbus_property_info_unref(ADBusPropertyInfo: PGDBusPropertyInfo); cdecl; external;
procedure g_dbus_proxy_call(ADBusProxy: PGDBusProxy; method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_proxy_call_with_unix_fd_list(ADBusProxy: PGDBusProxy; method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_proxy_new(connection: PGDBusConnection; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_proxy_new_for_bus(bus_type: TGBusType; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_dbus_proxy_set_cached_property(ADBusProxy: PGDBusProxy; property_name: Pgchar; value: PGVariant); cdecl; external;
procedure g_dbus_proxy_set_default_timeout(ADBusProxy: PGDBusProxy; timeout_msec: gint); cdecl; external;
procedure g_dbus_proxy_set_interface_info(ADBusProxy: PGDBusProxy; info: PGDBusInterfaceInfo); cdecl; external;
procedure g_dbus_server_start(ADBusServer: PGDBusServer); cdecl; external;
procedure g_dbus_server_stop(ADBusServer: PGDBusServer); cdecl; external;
procedure g_dbus_signal_info_unref(ADBusSignalInfo: PGDBusSignalInfo); cdecl; external;
procedure g_desktop_app_info_set_desktop_env(desktop_env: Pgchar); cdecl; external;
procedure g_drive_eject_with_operation(ADrive: PGDrive; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_drive_poll_for_media(ADrive: PGDrive; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_drive_start(ADrive: PGDrive; flags: TGDriveStartFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_drive_stop(ADrive: PGDrive; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_emblemed_icon_add_emblem(AEmblemedIcon: PGEmblemedIcon; emblem: PGEmblem); cdecl; external;
procedure g_emblemed_icon_clear_emblems(AEmblemedIcon: PGEmblemedIcon); cdecl; external;
procedure g_file_append_to_async(AFile: PGFile; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_attribute_info_list_add(AFileAttributeInfoList: PGFileAttributeInfoList; name: Pgchar; type_: TGFileAttributeType; flags: TGFileAttributeInfoFlags); cdecl; external;
procedure g_file_attribute_info_list_unref(AFileAttributeInfoList: PGFileAttributeInfoList); cdecl; external;
procedure g_file_attribute_matcher_unref(AFileAttributeMatcher: PGFileAttributeMatcher); cdecl; external;
procedure g_file_copy_async(AFile: PGFile; destination: PGFile; flags: TGFileCopyFlags; io_priority: gint; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_create_async(AFile: PGFile; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_create_readwrite_async(AFile: PGFile; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_eject_mountable_with_operation(AFile: PGFile; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_enumerate_children_async(AFile: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_enumerator_close_async(AFileEnumerator: PGFileEnumerator; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_enumerator_next_files_async(AFileEnumerator: PGFileEnumerator; num_files: gint; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_enumerator_set_pending(AFileEnumerator: PGFileEnumerator; pending: gboolean); cdecl; external;
procedure g_file_find_enclosing_mount_async(AFile: PGFile; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_info_clear_status(AFileInfo: PGFileInfo); cdecl; external;
procedure g_file_info_copy_into(AFileInfo: PGFileInfo; dest_info: PGFileInfo); cdecl; external;
procedure g_file_info_get_modification_time(AFileInfo: PGFileInfo; result_: PGTimeVal); cdecl; external;
procedure g_file_info_remove_attribute(AFileInfo: PGFileInfo; attribute: Pgchar); cdecl; external;
procedure g_file_info_set_attribute(AFileInfo: PGFileInfo; attribute: Pgchar; type_: TGFileAttributeType; value_p: gpointer); cdecl; external;
procedure g_file_info_set_attribute_boolean(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: gboolean); cdecl; external;
procedure g_file_info_set_attribute_byte_string(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: Pgchar); cdecl; external;
procedure g_file_info_set_attribute_int32(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: gint32); cdecl; external;
procedure g_file_info_set_attribute_int64(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: gint64); cdecl; external;
procedure g_file_info_set_attribute_mask(AFileInfo: PGFileInfo; mask: PGFileAttributeMatcher); cdecl; external;
procedure g_file_info_set_attribute_object(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: PGObject); cdecl; external;
procedure g_file_info_set_attribute_string(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: Pgchar); cdecl; external;
procedure g_file_info_set_attribute_stringv(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: PPgchar); cdecl; external;
procedure g_file_info_set_attribute_uint32(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: guint32); cdecl; external;
procedure g_file_info_set_attribute_uint64(AFileInfo: PGFileInfo; attribute: Pgchar; attr_value: guint64); cdecl; external;
procedure g_file_info_set_content_type(AFileInfo: PGFileInfo; content_type: Pgchar); cdecl; external;
procedure g_file_info_set_display_name(AFileInfo: PGFileInfo; display_name: Pgchar); cdecl; external;
procedure g_file_info_set_edit_name(AFileInfo: PGFileInfo; edit_name: Pgchar); cdecl; external;
procedure g_file_info_set_file_type(AFileInfo: PGFileInfo; type_: TGFileType); cdecl; external;
procedure g_file_info_set_icon(AFileInfo: PGFileInfo; icon: PGIcon); cdecl; external;
procedure g_file_info_set_is_hidden(AFileInfo: PGFileInfo; is_hidden: gboolean); cdecl; external;
procedure g_file_info_set_is_symlink(AFileInfo: PGFileInfo; is_symlink: gboolean); cdecl; external;
procedure g_file_info_set_modification_time(AFileInfo: PGFileInfo; mtime: PGTimeVal); cdecl; external;
procedure g_file_info_set_name(AFileInfo: PGFileInfo; name: Pgchar); cdecl; external;
procedure g_file_info_set_size(AFileInfo: PGFileInfo; size: gint64); cdecl; external;
procedure g_file_info_set_sort_order(AFileInfo: PGFileInfo; sort_order: gint32); cdecl; external;
procedure g_file_info_set_symlink_target(AFileInfo: PGFileInfo; symlink_target: Pgchar); cdecl; external;
procedure g_file_info_unset_attribute_mask(AFileInfo: PGFileInfo); cdecl; external;
procedure g_file_input_stream_query_info_async(AFileInputStream: PGFileInputStream; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_io_stream_query_info_async(AFileIOStream: PGFileIOStream; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_load_contents_async(AFile: PGFile; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_load_partial_contents_async(AFile: PGFile; cancellable: PGCancellable; read_more_callback: TGFileReadMoreCallback; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_monitor_emit_event(AFileMonitor: PGFileMonitor; child: PGFile; other_file: PGFile; event_type: TGFileMonitorEvent); cdecl; external;
procedure g_file_monitor_set_rate_limit(AFileMonitor: PGFileMonitor; limit_msecs: gint); cdecl; external;
procedure g_file_mount_enclosing_volume(AFile: PGFile; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_mount_mountable(AFile: PGFile; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_open_readwrite_async(AFile: PGFile; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_output_stream_query_info_async(AFileOutputStream: PGFileOutputStream; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_poll_mountable(AFile: PGFile; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_query_filesystem_info_async(AFile: PGFile; attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_query_info_async(AFile: PGFile; attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_read_async(AFile: PGFile; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_replace_async(AFile: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_replace_contents_async(AFile: PGFile; contents: Pguint8; length: gsize; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_replace_readwrite_async(AFile: PGFile; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_set_attributes_async(AFile: PGFile; info: PGFileInfo; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_set_display_name_async(AFile: PGFile; display_name: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_start_mountable(AFile: PGFile; flags: TGDriveStartFlags; start_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_stop_mountable(AFile: PGFile; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_file_unmount_mountable_with_operation(AFile: PGFile; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_filename_completer_set_dirs_only(AFilenameCompleter: PGFilenameCompleter; dirs_only: gboolean); cdecl; external;
procedure g_filter_input_stream_set_close_base_stream(AFilterInputStream: PGFilterInputStream; close_base: gboolean); cdecl; external;
procedure g_filter_output_stream_set_close_base_stream(AFilterOutputStream: PGFilterOutputStream; close_base: gboolean); cdecl; external;
procedure g_input_stream_clear_pending(AInputStream: PGInputStream); cdecl; external;
procedure g_input_stream_close_async(AInputStream: PGInputStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_input_stream_read_async(AInputStream: PGInputStream; buffer: Pgpointer; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_input_stream_skip_async(AInputStream: PGInputStream; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_io_extension_point_set_required_type(AIOExtensionPoint: PGIOExtensionPoint; type_: TGType); cdecl; external;
procedure g_io_module_scope_block(AIOModuleScope: PGIOModuleScope; basename: Pgchar); cdecl; external;
procedure g_io_module_scope_free(AIOModuleScope: PGIOModuleScope); cdecl; external;
procedure g_io_modules_scan_all_in_directory(dirname: Pgchar); cdecl; external;
procedure g_io_modules_scan_all_in_directory_with_scope(dirname: Pgchar; scope: PGIOModuleScope); cdecl; external;
procedure g_io_scheduler_cancel_all_jobs; cdecl; external;
procedure g_io_scheduler_job_send_to_mainloop_async(AIOSchedulerJob: PGIOSchedulerJob; func: TGSourceFunc; user_data: gpointer; notify: TGDestroyNotify); cdecl; external;
procedure g_io_scheduler_push_job(job_func: TGIOSchedulerJobFunc; user_data: gpointer; notify: TGDestroyNotify; io_priority: gint; cancellable: PGCancellable); cdecl; external;
procedure g_io_stream_clear_pending(AIOStream: PGIOStream); cdecl; external;
procedure g_io_stream_close_async(AIOStream: PGIOStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_io_stream_splice_async(AIOStream: PGIOStream; stream2: PGIOStream; flags: TGIOStreamSpliceFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_loadable_icon_load_async(ALoadableIcon: PGLoadableIcon; size: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_memory_input_stream_add_data(AMemoryInputStream: PGMemoryInputStream; data: Pguint8; len: gssize; destroy_: TGDestroyNotify); cdecl; external;
procedure g_mount_eject_with_operation(AMount: PGMount; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_mount_guess_content_type(AMount: PGMount; force_rescan: gboolean; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_mount_operation_reply(AMountOperation: PGMountOperation; result_: TGMountOperationResult); cdecl; external;
procedure g_mount_operation_set_anonymous(AMountOperation: PGMountOperation; anonymous: gboolean); cdecl; external;
procedure g_mount_operation_set_choice(AMountOperation: PGMountOperation; choice: gint); cdecl; external;
procedure g_mount_operation_set_domain(AMountOperation: PGMountOperation; domain: Pgchar); cdecl; external;
procedure g_mount_operation_set_password(AMountOperation: PGMountOperation; password: Pgchar); cdecl; external;
procedure g_mount_operation_set_password_save(AMountOperation: PGMountOperation; save: TGPasswordSave); cdecl; external;
procedure g_mount_operation_set_username(AMountOperation: PGMountOperation; username: Pgchar); cdecl; external;
procedure g_mount_remount(AMount: PGMount; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_mount_shadow(AMount: PGMount); cdecl; external;
procedure g_mount_unmount_with_operation(AMount: PGMount; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_mount_unshadow(AMount: PGMount); cdecl; external;
procedure g_network_service_set_scheme(ANetworkService: PGNetworkService; scheme: Pgchar); cdecl; external;
procedure g_output_stream_clear_pending(AOutputStream: PGOutputStream); cdecl; external;
procedure g_output_stream_close_async(AOutputStream: PGOutputStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_output_stream_flush_async(AOutputStream: PGOutputStream; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_output_stream_splice_async(AOutputStream: PGOutputStream; source: PGInputStream; flags: TGOutputStreamSpliceFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_output_stream_write_async(AOutputStream: PGOutputStream; buffer: Pguint8; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_permission_acquire_async(APermission: PGPermission; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_permission_impl_update(APermission: PGPermission; allowed: gboolean; can_acquire: gboolean; can_release: gboolean); cdecl; external;
procedure g_permission_release_async(APermission: PGPermission; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_proxy_connect_async(AProxy: PGProxy; connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_proxy_resolver_lookup_async(AProxyResolver: PGProxyResolver; uri: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_resolver_free_addresses(addresses: PGList); cdecl; external;
procedure g_resolver_free_targets(targets: PGList); cdecl; external;
procedure g_resolver_lookup_by_address_async(AResolver: PGResolver; address: PGInetAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_resolver_lookup_by_name_async(AResolver: PGResolver; hostname: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_resolver_lookup_service_async(AResolver: PGResolver; service: Pgchar; protocol: Pgchar; domain: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_resolver_set_default(AResolver: PGResolver); cdecl; external;
procedure g_settings_apply(ASettings: PGSettings); cdecl; external;
procedure g_settings_bind(ASettings: PGSettings; key: Pgchar; object_: TGObject; property_: Pgchar; flags: TGSettingsBindFlags); cdecl; external;
procedure g_settings_bind_with_mapping(ASettings: PGSettings; key: Pgchar; object_: TGObject; property_: Pgchar; flags: TGSettingsBindFlags; get_mapping: TGSettingsBindGetMapping; set_mapping: TGSettingsBindSetMapping; user_data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure g_settings_bind_writable(ASettings: PGSettings; key: Pgchar; object_: TGObject; property_: Pgchar; inverted: gboolean); cdecl; external;
procedure g_settings_delay(ASettings: PGSettings); cdecl; external;
procedure g_settings_get(ASettings: PGSettings; key: Pgchar; format: Pgchar; args: array of const); cdecl; external;
procedure g_settings_reset(ASettings: PGSettings; key: Pgchar); cdecl; external;
procedure g_settings_revert(ASettings: PGSettings); cdecl; external;
procedure g_settings_sync; cdecl; external;
procedure g_settings_unbind(object_: gpointer; property_: Pgchar); cdecl; external;
procedure g_simple_action_group_add_entries(ASimpleActionGroup: PGSimpleActionGroup; entries: PGActionEntry; n_entries: gint; user_data: gpointer); cdecl; external;
procedure g_simple_action_group_insert(ASimpleActionGroup: PGSimpleActionGroup; action: PGAction); cdecl; external;
procedure g_simple_action_group_remove(ASimpleActionGroup: PGSimpleActionGroup; action_name: Pgchar); cdecl; external;
procedure g_simple_action_set_enabled(ASimpleAction: PGSimpleAction; enabled: gboolean); cdecl; external;
procedure g_simple_action_set_state(ASimpleAction: PGSimpleAction; value: PGVariant); cdecl; external;
procedure g_simple_async_report_error_in_idle(object_: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; domain: TGQuark; code: gint; format: Pgchar; args: array of const); cdecl; external;
procedure g_simple_async_report_gerror_in_idle(object_: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError); cdecl; external;
procedure g_simple_async_report_take_gerror_in_idle(object_: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError); cdecl; external;
procedure g_simple_async_result_complete(ASimpleAsyncResult: PGSimpleAsyncResult); cdecl; external;
procedure g_simple_async_result_complete_in_idle(ASimpleAsyncResult: PGSimpleAsyncResult); cdecl; external;
procedure g_simple_async_result_run_in_thread(ASimpleAsyncResult: PGSimpleAsyncResult; func: TGSimpleAsyncThreadFunc; io_priority: gint; cancellable: PGCancellable); cdecl; external;
procedure g_simple_async_result_set_error(ASimpleAsyncResult: PGSimpleAsyncResult; domain: TGQuark; code: gint; format: Pgchar; args: array of const); cdecl; external;
procedure g_simple_async_result_set_error_va(ASimpleAsyncResult: PGSimpleAsyncResult; domain: TGQuark; code: gint; format: Pgchar; args: Tva_list); cdecl; external;
procedure g_simple_async_result_set_from_error(ASimpleAsyncResult: PGSimpleAsyncResult; error: PGError); cdecl; external;
procedure g_simple_async_result_set_handle_cancellation(ASimpleAsyncResult: PGSimpleAsyncResult; handle_cancellation: gboolean); cdecl; external;
procedure g_simple_async_result_set_op_res_gboolean(ASimpleAsyncResult: PGSimpleAsyncResult; op_res: gboolean); cdecl; external;
procedure g_simple_async_result_set_op_res_gpointer(ASimpleAsyncResult: PGSimpleAsyncResult; op_res: gpointer; destroy_op_res: TGDestroyNotify); cdecl; external;
procedure g_simple_async_result_set_op_res_gssize(ASimpleAsyncResult: PGSimpleAsyncResult; op_res: gssize); cdecl; external;
procedure g_simple_async_result_take_error(ASimpleAsyncResult: PGSimpleAsyncResult; error: PGError); cdecl; external;
procedure g_socket_address_enumerator_next_async(ASocketAddressEnumerator: PGSocketAddressEnumerator; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_socket_client_add_application_proxy(ASocketClient: PGSocketClient; protocol: Pgchar); cdecl; external;
procedure g_socket_client_connect_async(ASocketClient: PGSocketClient; connectable: PGSocketConnectable; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_socket_client_connect_to_host_async(ASocketClient: PGSocketClient; host_and_port: Pgchar; default_port: guint16; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_socket_client_connect_to_service_async(ASocketClient: PGSocketClient; domain: Pgchar; service: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_socket_client_connect_to_uri_async(ASocketClient: PGSocketClient; uri: Pgchar; default_port: guint16; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_socket_client_set_enable_proxy(ASocketClient: PGSocketClient; enable: gboolean); cdecl; external;
procedure g_socket_client_set_family(ASocketClient: PGSocketClient; family: TGSocketFamily); cdecl; external;
procedure g_socket_client_set_local_address(ASocketClient: PGSocketClient; address: PGSocketAddress); cdecl; external;
procedure g_socket_client_set_protocol(ASocketClient: PGSocketClient; protocol: TGSocketProtocol); cdecl; external;
procedure g_socket_client_set_socket_type(ASocketClient: PGSocketClient; type_: TGSocketType); cdecl; external;
procedure g_socket_client_set_timeout(ASocketClient: PGSocketClient; timeout: guint); cdecl; external;
procedure g_socket_client_set_tls(ASocketClient: PGSocketClient; tls: gboolean); cdecl; external;
procedure g_socket_client_set_tls_validation_flags(ASocketClient: PGSocketClient; flags: TGTlsCertificateFlags); cdecl; external;
procedure g_socket_connection_factory_register_type(g_type: TGType; family: TGSocketFamily; type_: TGSocketType; protocol: gint); cdecl; external;
procedure g_socket_control_message_serialize(ASocketControlMessage: PGSocketControlMessage; data: gpointer); cdecl; external;
procedure g_socket_listener_accept_async(ASocketListener: PGSocketListener; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_socket_listener_accept_socket_async(ASocketListener: PGSocketListener; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_socket_listener_close(ASocketListener: PGSocketListener); cdecl; external;
procedure g_socket_listener_set_backlog(ASocketListener: PGSocketListener; listen_backlog: gint); cdecl; external;
procedure g_socket_service_start(ASocketService: PGSocketService); cdecl; external;
procedure g_socket_service_stop(ASocketService: PGSocketService); cdecl; external;
procedure g_socket_set_blocking(ASocket: PGSocket; blocking: gboolean); cdecl; external;
procedure g_socket_set_keepalive(ASocket: PGSocket; keepalive: gboolean); cdecl; external;
procedure g_socket_set_listen_backlog(ASocket: PGSocket; backlog: gint); cdecl; external;
procedure g_socket_set_timeout(ASocket: PGSocket; timeout: guint); cdecl; external;
procedure g_srv_target_free(ASrvTarget: PGSrvTarget); cdecl; external;
procedure g_tcp_connection_set_graceful_disconnect(ATcpConnection: PGTcpConnection; graceful_disconnect: gboolean); cdecl; external;
procedure g_themed_icon_append_name(AThemedIcon: PGThemedIcon; iconname: Pgchar); cdecl; external;
procedure g_themed_icon_prepend_name(AThemedIcon: PGThemedIcon; iconname: Pgchar); cdecl; external;
procedure g_tls_client_connection_set_server_identity(ATlsClientConnection: PGTlsClientConnection; identity: PGSocketConnectable); cdecl; external;
procedure g_tls_client_connection_set_use_ssl3(ATlsClientConnection: PGTlsClientConnection; use_ssl3: gboolean); cdecl; external;
procedure g_tls_client_connection_set_validation_flags(ATlsClientConnection: PGTlsClientConnection; flags: TGTlsCertificateFlags); cdecl; external;
procedure g_tls_connection_handshake_async(ATlsConnection: PGTlsConnection; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_tls_connection_set_certificate(ATlsConnection: PGTlsConnection; certificate: PGTlsCertificate); cdecl; external;
procedure g_tls_connection_set_database(ATlsConnection: PGTlsConnection; database: PGTlsDatabase); cdecl; external;
procedure g_tls_connection_set_interaction(ATlsConnection: PGTlsConnection; interaction: PGTlsInteraction); cdecl; external;
procedure g_tls_connection_set_rehandshake_mode(ATlsConnection: PGTlsConnection; mode: TGTlsRehandshakeMode); cdecl; external;
procedure g_tls_connection_set_require_close_notify(ATlsConnection: PGTlsConnection; require_close_notify: gboolean); cdecl; external;
procedure g_tls_database_lookup_certificate_for_handle_async(ATlsDatabase: PGTlsDatabase; handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_tls_database_lookup_certificate_issuer_async(ATlsDatabase: PGTlsDatabase; certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_tls_database_lookup_certificates_issued_by_async(ATlsDatabase: PGTlsDatabase; issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_tls_database_verify_chain_async(ATlsDatabase: PGTlsDatabase; chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_tls_interaction_ask_password_async(ATlsInteraction: PGTlsInteraction; password: PGTlsPassword; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_tls_password_set_description(ATlsPassword: PGTlsPassword; description: Pgchar); cdecl; external;
procedure g_tls_password_set_flags(ATlsPassword: PGTlsPassword; flags: TGTlsPasswordFlags); cdecl; external;
procedure g_tls_password_set_value(ATlsPassword: PGTlsPassword; value: Pguint8; length: gssize); cdecl; external;
procedure g_tls_password_set_value_full(ATlsPassword: PGTlsPassword; value: Pguint8; length: gssize; destroy_: TGDestroyNotify); cdecl; external;
procedure g_tls_password_set_warning(ATlsPassword: PGTlsPassword; warning: Pgchar); cdecl; external;
procedure g_unix_input_stream_set_close_fd(AUnixInputStream: PGUnixInputStream; close_fd: gboolean); cdecl; external;
procedure g_unix_mount_free(mount_entry: PGUnixMountEntry); cdecl; external;
procedure g_unix_mount_monitor_set_rate_limit(AUnixMountMonitor: PGUnixMountMonitor; limit_msec: gint); cdecl; external;
procedure g_unix_mount_point_free(AUnixMountPoint: PGUnixMountPoint); cdecl; external;
procedure g_unix_output_stream_set_close_fd(AUnixOutputStream: PGUnixOutputStream; close_fd: gboolean); cdecl; external;
procedure g_volume_eject_with_operation(AVolume: PGVolume; flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_volume_mount(AVolume: PGVolume; flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl; external;
procedure g_zlib_compressor_set_file_info(AZlibCompressor: PGZlibCompressor; file_info: PGFileInfo); cdecl; external;
implementation
procedure TGAction.activate(parameter: PGVariant); cdecl;
begin
  Gio2.g_action_activate(@self, parameter);
end;

procedure TGAction.change_state(value: PGVariant); cdecl;
begin
  Gio2.g_action_change_state(@self, value);
end;

function TGAction.get_enabled: gboolean; cdecl;
begin
  Result := Gio2.g_action_get_enabled(@self);
end;

function TGAction.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_action_get_name(@self);
end;

function TGAction.get_parameter_type: PGVariantType; cdecl;
begin
  Result := Gio2.g_action_get_parameter_type(@self);
end;

function TGAction.get_state: PGVariant; cdecl;
begin
  Result := Gio2.g_action_get_state(@self);
end;

function TGAction.get_state_hint: PGVariant; cdecl;
begin
  Result := Gio2.g_action_get_state_hint(@self);
end;

function TGAction.get_state_type: PGVariantType; cdecl;
begin
  Result := Gio2.g_action_get_state_type(@self);
end;

function TGSimpleAction.new(name: Pgchar; parameter_type: PGVariantType): PGSimpleAction; cdecl;
begin
  Result := Gio2.g_simple_action_new(name, parameter_type);
end;

function TGSimpleAction.new_stateful(name: Pgchar; parameter_type: PGVariantType; state: PGVariant): PGSimpleAction; cdecl;
begin
  Result := Gio2.g_simple_action_new_stateful(name, parameter_type, state);
end;

procedure TGSimpleAction.set_enabled(enabled: gboolean); cdecl;
begin
  Gio2.g_simple_action_set_enabled(@self, enabled);
end;

procedure TGSimpleAction.set_state(value: PGVariant); cdecl;
begin
  Gio2.g_simple_action_set_state(@self, value);
end;

procedure TGActionGroup.action_added(action_name: Pgchar); cdecl;
begin
  Gio2.g_action_group_action_added(@self, action_name);
end;

procedure TGActionGroup.action_enabled_changed(action_name: Pgchar; enabled: gboolean); cdecl;
begin
  Gio2.g_action_group_action_enabled_changed(@self, action_name, enabled);
end;

procedure TGActionGroup.action_removed(action_name: Pgchar); cdecl;
begin
  Gio2.g_action_group_action_removed(@self, action_name);
end;

procedure TGActionGroup.action_state_changed(action_name: Pgchar; state: PGVariant); cdecl;
begin
  Gio2.g_action_group_action_state_changed(@self, action_name, state);
end;

procedure TGActionGroup.activate_action(action_name: Pgchar; parameter: PGVariant); cdecl;
begin
  Gio2.g_action_group_activate_action(@self, action_name, parameter);
end;

procedure TGActionGroup.change_action_state(action_name: Pgchar; value: PGVariant); cdecl;
begin
  Gio2.g_action_group_change_action_state(@self, action_name, value);
end;

function TGActionGroup.get_action_enabled(action_name: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_action_group_get_action_enabled(@self, action_name);
end;

function TGActionGroup.get_action_parameter_type(action_name: Pgchar): PGVariantType; cdecl;
begin
  Result := Gio2.g_action_group_get_action_parameter_type(@self, action_name);
end;

function TGActionGroup.get_action_state(action_name: Pgchar): PGVariant; cdecl;
begin
  Result := Gio2.g_action_group_get_action_state(@self, action_name);
end;

function TGActionGroup.get_action_state_hint(action_name: Pgchar): PGVariant; cdecl;
begin
  Result := Gio2.g_action_group_get_action_state_hint(@self, action_name);
end;

function TGActionGroup.get_action_state_type(action_name: Pgchar): PGVariantType; cdecl;
begin
  Result := Gio2.g_action_group_get_action_state_type(@self, action_name);
end;

function TGActionGroup.has_action(action_name: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_action_group_has_action(@self, action_name);
end;

function TGActionGroup.list_actions: PPgchar; cdecl;
begin
  Result := Gio2.g_action_group_list_actions(@self);
end;


function TGAppInfo.create_from_commandline(commandline: Pgchar; application_name: Pgchar; flags: TGAppInfoCreateFlags): PGAppInfo; cdecl;
begin
  Result := Gio2.g_app_info_create_from_commandline(commandline, application_name, flags);
end;

function TGAppInfo.get_all: PGList; cdecl;
begin
  Result := Gio2.g_app_info_get_all();
end;

function TGAppInfo.get_all_for_type(content_type: Pgchar): PGList; cdecl;
begin
  Result := Gio2.g_app_info_get_all_for_type(content_type);
end;

function TGAppInfo.get_default_for_type(content_type: Pgchar; must_support_uris: gboolean): PGAppInfo; cdecl;
begin
  Result := Gio2.g_app_info_get_default_for_type(content_type, must_support_uris);
end;

function TGAppInfo.get_default_for_uri_scheme(uri_scheme: Pgchar): PGAppInfo; cdecl;
begin
  Result := Gio2.g_app_info_get_default_for_uri_scheme(uri_scheme);
end;

function TGAppInfo.get_fallback_for_type(content_type: Pgchar): PGList; cdecl;
begin
  Result := Gio2.g_app_info_get_fallback_for_type(content_type);
end;

function TGAppInfo.get_recommended_for_type(content_type: Pgchar): PGList; cdecl;
begin
  Result := Gio2.g_app_info_get_recommended_for_type(content_type);
end;

function TGAppInfo.launch_default_for_uri(uri: Pgchar; launch_context: PGAppLaunchContext): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_launch_default_for_uri(uri, launch_context);
end;

procedure TGAppInfo.reset_type_associations(content_type: Pgchar); cdecl;
begin
  Gio2.g_app_info_reset_type_associations(content_type);
end;

function TGAppInfo.add_supports_type(content_type: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_add_supports_type(@self, content_type);
end;

function TGAppInfo.can_delete: gboolean; cdecl;
begin
  Result := Gio2.g_app_info_can_delete(@self);
end;

function TGAppInfo.can_remove_supports_type: gboolean; cdecl;
begin
  Result := Gio2.g_app_info_can_remove_supports_type(@self);
end;

function TGAppInfo.delete: gboolean; cdecl;
begin
  Result := Gio2.g_app_info_delete(@self);
end;

function TGAppInfo.dup: PGAppInfo; cdecl;
begin
  Result := Gio2.g_app_info_dup(@self);
end;

function TGAppInfo.equal(appinfo2: PGAppInfo): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_equal(@self, appinfo2);
end;

function TGAppInfo.get_commandline: Pgchar; cdecl;
begin
  Result := Gio2.g_app_info_get_commandline(@self);
end;

function TGAppInfo.get_description: Pgchar; cdecl;
begin
  Result := Gio2.g_app_info_get_description(@self);
end;

function TGAppInfo.get_display_name: Pgchar; cdecl;
begin
  Result := Gio2.g_app_info_get_display_name(@self);
end;

function TGAppInfo.get_executable: Pgchar; cdecl;
begin
  Result := Gio2.g_app_info_get_executable(@self);
end;

function TGAppInfo.get_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_app_info_get_icon(@self);
end;

function TGAppInfo.get_id: Pgchar; cdecl;
begin
  Result := Gio2.g_app_info_get_id(@self);
end;

function TGAppInfo.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_app_info_get_name(@self);
end;

function TGAppInfo.launch(files: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_launch(@self, files, launch_context);
end;

function TGAppInfo.launch_uris(uris: PGList; launch_context: PGAppLaunchContext): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_launch_uris(@self, uris, launch_context);
end;

function TGAppInfo.remove_supports_type(content_type: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_remove_supports_type(@self, content_type);
end;

function TGAppInfo.set_as_default_for_extension(extension: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_set_as_default_for_extension(@self, extension);
end;

function TGAppInfo.set_as_default_for_type(content_type: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_set_as_default_for_type(@self, content_type);
end;

function TGAppInfo.set_as_last_used_for_type(content_type: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_app_info_set_as_last_used_for_type(@self, content_type);
end;

function TGAppInfo.should_show: gboolean; cdecl;
begin
  Result := Gio2.g_app_info_should_show(@self);
end;

function TGAppInfo.supports_files: gboolean; cdecl;
begin
  Result := Gio2.g_app_info_supports_files(@self);
end;

function TGAppInfo.supports_uris: gboolean; cdecl;
begin
  Result := Gio2.g_app_info_supports_uris(@self);
end;

function TGAppLaunchContext.new: PGAppLaunchContext; cdecl;
begin
  Result := Gio2.g_app_launch_context_new();
end;

function TGAppLaunchContext.get_display(info: PGAppInfo; files: PGList): Pgchar; cdecl;
begin
  Result := Gio2.g_app_launch_context_get_display(@self, info, files);
end;

function TGAppLaunchContext.get_startup_notify_id(info: PGAppInfo; files: PGList): Pgchar; cdecl;
begin
  Result := Gio2.g_app_launch_context_get_startup_notify_id(@self, info, files);
end;

procedure TGAppLaunchContext.launch_failed(startup_notify_id: Pgchar); cdecl;
begin
  Gio2.g_app_launch_context_launch_failed(@self, startup_notify_id);
end;

function TGIcon.hash(icon: gpointer): guint; cdecl;
begin
  Result := Gio2.g_icon_hash(icon);
end;

function TGIcon.new_for_string(str: Pgchar): PGIcon; cdecl;
begin
  Result := Gio2.g_icon_new_for_string(str);
end;

function TGIcon.equal(icon2: PGIcon): gboolean; cdecl;
begin
  Result := Gio2.g_icon_equal(@self, icon2);
end;

function TGIcon.to_string: Pgchar; cdecl;
begin
  Result := Gio2.g_icon_to_string(@self);
end;


function TGApplication.new(application_id: Pgchar; flags: TGApplicationFlags): PGApplication; cdecl;
begin
  Result := Gio2.g_application_new(application_id, flags);
end;

function TGApplication.id_is_valid(application_id: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_application_id_is_valid(application_id);
end;

procedure TGApplication.activate; cdecl;
begin
  Gio2.g_application_activate(@self);
end;

function TGApplication.get_application_id: Pgchar; cdecl;
begin
  Result := Gio2.g_application_get_application_id(@self);
end;

function TGApplication.get_flags: TGApplicationFlags; cdecl;
begin
  Result := Gio2.g_application_get_flags(@self);
end;

function TGApplication.get_inactivity_timeout: guint; cdecl;
begin
  Result := Gio2.g_application_get_inactivity_timeout(@self);
end;

function TGApplication.get_is_registered: gboolean; cdecl;
begin
  Result := Gio2.g_application_get_is_registered(@self);
end;

function TGApplication.get_is_remote: gboolean; cdecl;
begin
  Result := Gio2.g_application_get_is_remote(@self);
end;

procedure TGApplication.hold; cdecl;
begin
  Gio2.g_application_hold(@self);
end;

procedure TGApplication.open(files: PPGFile; n_files: gint; hint: Pgchar); cdecl;
begin
  Gio2.g_application_open(@self, files, n_files, hint);
end;

function TGApplication.register(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_application_register(@self, cancellable);
end;

procedure TGApplication.release; cdecl;
begin
  Gio2.g_application_release(@self);
end;

function TGApplication.run(argc: gint; argv: PPgchar): gint; cdecl;
begin
  Result := Gio2.g_application_run(@self, argc, argv);
end;

procedure TGApplication.set_action_group(action_group: PGActionGroup); cdecl;
begin
  Gio2.g_application_set_action_group(@self, action_group);
end;

procedure TGApplication.set_application_id(application_id: Pgchar); cdecl;
begin
  Gio2.g_application_set_application_id(@self, application_id);
end;

procedure TGApplication.set_flags(flags: TGApplicationFlags); cdecl;
begin
  Gio2.g_application_set_flags(@self, flags);
end;

procedure TGApplication.set_inactivity_timeout(inactivity_timeout: guint); cdecl;
begin
  Gio2.g_application_set_inactivity_timeout(@self, inactivity_timeout);
end;

function TGApplicationCommandLine.get_arguments(argc: Pgint): PPgchar; cdecl;
begin
  Result := Gio2.g_application_command_line_get_arguments(@self, argc);
end;

function TGApplicationCommandLine.get_cwd: Pgchar; cdecl;
begin
  Result := Gio2.g_application_command_line_get_cwd(@self);
end;

function TGApplicationCommandLine.get_environ: PPgchar; cdecl;
begin
  Result := Gio2.g_application_command_line_get_environ(@self);
end;

function TGApplicationCommandLine.get_exit_status: gint; cdecl;
begin
  Result := Gio2.g_application_command_line_get_exit_status(@self);
end;

function TGApplicationCommandLine.get_is_remote: gboolean; cdecl;
begin
  Result := Gio2.g_application_command_line_get_is_remote(@self);
end;

function TGApplicationCommandLine.get_platform_data: PGVariant; cdecl;
begin
  Result := Gio2.g_application_command_line_get_platform_data(@self);
end;

function TGApplicationCommandLine.getenv(name: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_application_command_line_getenv(@self, name);
end;

procedure TGApplicationCommandLine.set_exit_status(exit_status: gint); cdecl;
begin
  Gio2.g_application_command_line_set_exit_status(@self, exit_status);
end;

function TGFile.hash(file_: gpointer): guint; cdecl;
begin
  Result := Gio2.g_file_hash(file_);
end;

function TGFile.new_for_commandline_arg(arg: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_file_new_for_commandline_arg(arg);
end;

function TGFile.new_for_path(path: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_file_new_for_path(path);
end;

function TGFile.new_for_uri(uri: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_file_new_for_uri(uri);
end;

function TGFile.parse_name(parse_name: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_file_parse_name(parse_name);
end;


function TGFile.append_to(flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl;
begin
  Result := Gio2.g_file_append_to(@self, flags, cancellable);
end;

procedure TGFile.append_to_async(flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_append_to_async(@self, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.append_to_finish(res: PGAsyncResult): PGFileOutputStream; cdecl;
begin
  Result := Gio2.g_file_append_to_finish(@self, res);
end;


function TGFile.copy(destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl;
begin
  Result := Gio2.g_file_copy(@self, destination, flags, cancellable, progress_callback, progress_callback_data);
end;

procedure TGFile.copy_async(destination: PGFile; flags: TGFileCopyFlags; io_priority: gint; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_copy_async(@self, destination, flags, io_priority, cancellable, progress_callback, progress_callback_data, callback, user_data);
end;

function TGFile.copy_attributes(destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_copy_attributes(@self, destination, flags, cancellable);
end;

function TGFile.copy_finish(res: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_copy_finish(@self, res);
end;

function TGFile.create(flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl;
begin
  Result := Gio2.g_file_create(@self, flags, cancellable);
end;

procedure TGFile.create_async(flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_create_async(@self, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.create_finish(res: PGAsyncResult): PGFileOutputStream; cdecl;
begin
  Result := Gio2.g_file_create_finish(@self, res);
end;

function TGFile.create_readwrite(flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl;
begin
  Result := Gio2.g_file_create_readwrite(@self, flags, cancellable);
end;

procedure TGFile.create_readwrite_async(flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_create_readwrite_async(@self, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.create_readwrite_finish(res: PGAsyncResult): PGFileIOStream; cdecl;
begin
  Result := Gio2.g_file_create_readwrite_finish(@self, res);
end;

function TGFile.delete(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_delete(@self, cancellable);
end;

function TGFile.dup: PGFile; cdecl;
begin
  Result := Gio2.g_file_dup(@self);
end;


procedure TGFile.eject_mountable_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_eject_mountable_with_operation(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGFile.eject_mountable_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_eject_mountable_with_operation_finish(@self, result_);
end;


function TGFile.enumerate_children(attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileEnumerator; cdecl;
begin
  Result := Gio2.g_file_enumerate_children(@self, attributes, flags, cancellable);
end;

procedure TGFile.enumerate_children_async(attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_enumerate_children_async(@self, attributes, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.enumerate_children_finish(res: PGAsyncResult): PGFileEnumerator; cdecl;
begin
  Result := Gio2.g_file_enumerate_children_finish(@self, res);
end;

function TGFile.equal(file2: PGFile): gboolean; cdecl;
begin
  Result := Gio2.g_file_equal(@self, file2);
end;

function TGFile.find_enclosing_mount(cancellable: PGCancellable): PGMount; cdecl;
begin
  Result := Gio2.g_file_find_enclosing_mount(@self, cancellable);
end;

procedure TGFile.find_enclosing_mount_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_find_enclosing_mount_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGFile.find_enclosing_mount_finish(res: PGAsyncResult): PGMount; cdecl;
begin
  Result := Gio2.g_file_find_enclosing_mount_finish(@self, res);
end;

function TGFile.get_basename: Pgchar; cdecl;
begin
  Result := Gio2.g_file_get_basename(@self);
end;

function TGFile.get_child(name: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_file_get_child(@self, name);
end;

function TGFile.get_child_for_display_name(display_name: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_file_get_child_for_display_name(@self, display_name);
end;

function TGFile.get_parent: PGFile; cdecl;
begin
  Result := Gio2.g_file_get_parent(@self);
end;

function TGFile.get_parse_name: Pgchar; cdecl;
begin
  Result := Gio2.g_file_get_parse_name(@self);
end;

function TGFile.get_path: Pgchar; cdecl;
begin
  Result := Gio2.g_file_get_path(@self);
end;

function TGFile.get_relative_path(descendant: PGFile): Pgchar; cdecl;
begin
  Result := Gio2.g_file_get_relative_path(@self, descendant);
end;

function TGFile.get_uri: Pgchar; cdecl;
begin
  Result := Gio2.g_file_get_uri(@self);
end;

function TGFile.get_uri_scheme: Pgchar; cdecl;
begin
  Result := Gio2.g_file_get_uri_scheme(@self);
end;

function TGFile.has_parent(parent: PGFile): gboolean; cdecl;
begin
  Result := Gio2.g_file_has_parent(@self, parent);
end;

function TGFile.has_prefix(prefix: PGFile): gboolean; cdecl;
begin
  Result := Gio2.g_file_has_prefix(@self, prefix);
end;

function TGFile.has_uri_scheme(uri_scheme: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_has_uri_scheme(@self, uri_scheme);
end;

function TGFile.icon_new: PGIcon; cdecl;
begin
  Result := Gio2.g_file_icon_new(@self);
end;

function TGFile.is_native: gboolean; cdecl;
begin
  Result := Gio2.g_file_is_native(@self);
end;

function TGFile.load_contents(cancellable: PGCancellable; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_load_contents(@self, cancellable, contents, length, etag_out);
end;

procedure TGFile.load_contents_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_load_contents_async(@self, cancellable, callback, user_data);
end;

function TGFile.load_contents_finish(res: PGAsyncResult; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_load_contents_finish(@self, res, contents, length, etag_out);
end;

procedure TGFile.load_partial_contents_async(cancellable: PGCancellable; read_more_callback: TGFileReadMoreCallback; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_load_partial_contents_async(@self, cancellable, read_more_callback, callback, user_data);
end;

function TGFile.load_partial_contents_finish(res: PGAsyncResult; contents: PPguint8; length: Pgsize; etag_out: PPgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_load_partial_contents_finish(@self, res, contents, length, etag_out);
end;

function TGFile.make_directory(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_make_directory(@self, cancellable);
end;

function TGFile.make_directory_with_parents(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_make_directory_with_parents(@self, cancellable);
end;

function TGFile.make_symbolic_link(symlink_value: Pgchar; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_make_symbolic_link(@self, symlink_value, cancellable);
end;


function TGFile.monitor(flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl;
begin
  Result := Gio2.g_file_monitor(@self, flags, cancellable);
end;

function TGFile.monitor_directory(flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl;
begin
  Result := Gio2.g_file_monitor_directory(@self, flags, cancellable);
end;

function TGFile.monitor_file(flags: TGFileMonitorFlags; cancellable: PGCancellable): PGFileMonitor; cdecl;
begin
  Result := Gio2.g_file_monitor_file(@self, flags, cancellable);
end;

procedure TGFile.mount_enclosing_volume(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_mount_enclosing_volume(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGFile.mount_enclosing_volume_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_mount_enclosing_volume_finish(@self, result_);
end;

procedure TGFile.mount_mountable(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_mount_mountable(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGFile.mount_mountable_finish(result_: PGAsyncResult): PGFile; cdecl;
begin
  Result := Gio2.g_file_mount_mountable_finish(@self, result_);
end;

function TGFile.move(destination: PGFile; flags: TGFileCopyFlags; cancellable: PGCancellable; progress_callback: TGFileProgressCallback; progress_callback_data: gpointer): gboolean; cdecl;
begin
  Result := Gio2.g_file_move(@self, destination, flags, cancellable, progress_callback, progress_callback_data);
end;

function TGFile.open_readwrite(cancellable: PGCancellable): PGFileIOStream; cdecl;
begin
  Result := Gio2.g_file_open_readwrite(@self, cancellable);
end;

procedure TGFile.open_readwrite_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_open_readwrite_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGFile.open_readwrite_finish(res: PGAsyncResult): PGFileIOStream; cdecl;
begin
  Result := Gio2.g_file_open_readwrite_finish(@self, res);
end;

procedure TGFile.poll_mountable(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_poll_mountable(@self, cancellable, callback, user_data);
end;

function TGFile.poll_mountable_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_poll_mountable_finish(@self, result_);
end;

function TGFile.query_default_handler(cancellable: PGCancellable): PGAppInfo; cdecl;
begin
  Result := Gio2.g_file_query_default_handler(@self, cancellable);
end;

function TGFile.query_exists(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_query_exists(@self, cancellable);
end;

function TGFile.query_file_type(flags: TGFileQueryInfoFlags; cancellable: PGCancellable): TGFileType; cdecl;
begin
  Result := Gio2.g_file_query_file_type(@self, flags, cancellable);
end;

function TGFile.query_filesystem_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_query_filesystem_info(@self, attributes, cancellable);
end;

procedure TGFile.query_filesystem_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_query_filesystem_info_async(@self, attributes, io_priority, cancellable, callback, user_data);
end;

function TGFile.query_filesystem_info_finish(res: PGAsyncResult): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_query_filesystem_info_finish(@self, res);
end;

function TGFile.query_info(attributes: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_query_info(@self, attributes, flags, cancellable);
end;

procedure TGFile.query_info_async(attributes: Pgchar; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_query_info_async(@self, attributes, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.query_info_finish(res: PGAsyncResult): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_query_info_finish(@self, res);
end;

function TGFile.query_settable_attributes(cancellable: PGCancellable): PGFileAttributeInfoList; cdecl;
begin
  Result := Gio2.g_file_query_settable_attributes(@self, cancellable);
end;

function TGFile.query_writable_namespaces(cancellable: PGCancellable): PGFileAttributeInfoList; cdecl;
begin
  Result := Gio2.g_file_query_writable_namespaces(@self, cancellable);
end;

function TGFile.read(cancellable: PGCancellable): PGFileInputStream; cdecl;
begin
  Result := Gio2.g_file_read(@self, cancellable);
end;

procedure TGFile.read_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_read_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGFile.read_finish(res: PGAsyncResult): PGFileInputStream; cdecl;
begin
  Result := Gio2.g_file_read_finish(@self, res);
end;

function TGFile.replace(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileOutputStream; cdecl;
begin
  Result := Gio2.g_file_replace(@self, etag, make_backup, flags, cancellable);
end;

procedure TGFile.replace_async(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_replace_async(@self, etag, make_backup, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.replace_contents(contents: Pguint8; length: gsize; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; new_etag: PPgchar; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_replace_contents(@self, contents, length, etag, make_backup, flags, new_etag, cancellable);
end;

procedure TGFile.replace_contents_async(contents: Pguint8; length: gsize; etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_replace_contents_async(@self, contents, length, etag, make_backup, flags, cancellable, callback, user_data);
end;

function TGFile.replace_contents_finish(res: PGAsyncResult; new_etag: PPgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_replace_contents_finish(@self, res, new_etag);
end;

function TGFile.replace_finish(res: PGAsyncResult): PGFileOutputStream; cdecl;
begin
  Result := Gio2.g_file_replace_finish(@self, res);
end;

function TGFile.replace_readwrite(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; cancellable: PGCancellable): PGFileIOStream; cdecl;
begin
  Result := Gio2.g_file_replace_readwrite(@self, etag, make_backup, flags, cancellable);
end;

procedure TGFile.replace_readwrite_async(etag: Pgchar; make_backup: gboolean; flags: TGFileCreateFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_replace_readwrite_async(@self, etag, make_backup, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.replace_readwrite_finish(res: PGAsyncResult): PGFileIOStream; cdecl;
begin
  Result := Gio2.g_file_replace_readwrite_finish(@self, res);
end;

function TGFile.resolve_relative_path(relative_path: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_file_resolve_relative_path(@self, relative_path);
end;

function TGFile.set_attribute(attribute: Pgchar; type_: TGFileAttributeType; value_p: gpointer; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attribute(@self, attribute, type_, value_p, flags, cancellable);
end;

function TGFile.set_attribute_byte_string(attribute: Pgchar; value: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attribute_byte_string(@self, attribute, value, flags, cancellable);
end;

function TGFile.set_attribute_int32(attribute: Pgchar; value: gint32; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attribute_int32(@self, attribute, value, flags, cancellable);
end;

function TGFile.set_attribute_int64(attribute: Pgchar; value: gint64; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attribute_int64(@self, attribute, value, flags, cancellable);
end;

function TGFile.set_attribute_string(attribute: Pgchar; value: Pgchar; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attribute_string(@self, attribute, value, flags, cancellable);
end;

function TGFile.set_attribute_uint32(attribute: Pgchar; value: guint32; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attribute_uint32(@self, attribute, value, flags, cancellable);
end;

function TGFile.set_attribute_uint64(attribute: Pgchar; value: guint64; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attribute_uint64(@self, attribute, value, flags, cancellable);
end;

procedure TGFile.set_attributes_async(info: PGFileInfo; flags: TGFileQueryInfoFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_set_attributes_async(@self, info, flags, io_priority, cancellable, callback, user_data);
end;

function TGFile.set_attributes_finish(result_: PGAsyncResult; info: PPGFileInfo): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attributes_finish(@self, result_, info);
end;

function TGFile.set_attributes_from_info(info: PGFileInfo; flags: TGFileQueryInfoFlags; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_set_attributes_from_info(@self, info, flags, cancellable);
end;

function TGFile.set_display_name(display_name: Pgchar; cancellable: PGCancellable): PGFile; cdecl;
begin
  Result := Gio2.g_file_set_display_name(@self, display_name, cancellable);
end;

procedure TGFile.set_display_name_async(display_name: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_set_display_name_async(@self, display_name, io_priority, cancellable, callback, user_data);
end;

function TGFile.set_display_name_finish(res: PGAsyncResult): PGFile; cdecl;
begin
  Result := Gio2.g_file_set_display_name_finish(@self, res);
end;

procedure TGFile.start_mountable(flags: TGDriveStartFlags; start_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_start_mountable(@self, flags, start_operation, cancellable, callback, user_data);
end;

function TGFile.start_mountable_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_start_mountable_finish(@self, result_);
end;

procedure TGFile.stop_mountable(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_stop_mountable(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGFile.stop_mountable_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_stop_mountable_finish(@self, result_);
end;

function TGFile.supports_thread_contexts: gboolean; cdecl;
begin
  Result := Gio2.g_file_supports_thread_contexts(@self);
end;

function TGFile.trash(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_trash(@self, cancellable);
end;

procedure TGFile.unmount_mountable_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_unmount_mountable_with_operation(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGFile.unmount_mountable_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_unmount_mountable_with_operation_finish(@self, result_);
end;

function TGCancellable.new: PGCancellable; cdecl;
begin
  Result := Gio2.g_cancellable_new();
end;

function TGCancellable.get_current: PGCancellable; cdecl;
begin
  Result := Gio2.g_cancellable_get_current();
end;

procedure TGCancellable.cancel; cdecl;
begin
  Gio2.g_cancellable_cancel(@self);
end;

function TGCancellable.connect(callback: TGCallback; data: gpointer; data_destroy_func: TGDestroyNotify): gulong; cdecl;
begin
  Result := Gio2.g_cancellable_connect(@self, callback, data, data_destroy_func);
end;

procedure TGCancellable.disconnect(handler_id: gulong); cdecl;
begin
  Gio2.g_cancellable_disconnect(@self, handler_id);
end;

function TGCancellable.get_fd: gint; cdecl;
begin
  Result := Gio2.g_cancellable_get_fd(@self);
end;

function TGCancellable.is_cancelled: gboolean; cdecl;
begin
  Result := Gio2.g_cancellable_is_cancelled(@self);
end;

function TGCancellable.make_pollfd(pollfd: PGPollFD): gboolean; cdecl;
begin
  Result := Gio2.g_cancellable_make_pollfd(@self, pollfd);
end;

procedure TGCancellable.pop_current; cdecl;
begin
  Gio2.g_cancellable_pop_current(@self);
end;

procedure TGCancellable.push_current; cdecl;
begin
  Gio2.g_cancellable_push_current(@self);
end;

procedure TGCancellable.release_fd; cdecl;
begin
  Gio2.g_cancellable_release_fd(@self);
end;

procedure TGCancellable.reset; cdecl;
begin
  Gio2.g_cancellable_reset(@self);
end;

function TGCancellable.set_error_if_cancelled: gboolean; cdecl;
begin
  Result := Gio2.g_cancellable_set_error_if_cancelled(@self);
end;

function TGCancellable.source_new: PGSource; cdecl;
begin
  Result := Gio2.g_cancellable_source_new(@self);
end;


function TGAsyncResult.get_source_object: PGObject; cdecl;
begin
  Result := Gio2.g_async_result_get_source_object(@self);
end;

function TGAsyncResult.get_user_data: gpointer; cdecl;
begin
  Result := Gio2.g_async_result_get_user_data(@self);
end;

procedure TGAsyncInitable.newv_async(object_type: TGType; n_parameters: guint; parameters: PGParameter; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_async_initable_newv_async(object_type, n_parameters, parameters, io_priority, cancellable, callback, user_data);
end;

procedure TGAsyncInitable.init_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_async_initable_init_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGAsyncInitable.init_finish(res: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_async_initable_init_finish(@self, res);
end;

function TGAsyncInitable.new_finish(res: PGAsyncResult): PGObject; cdecl;
begin
  Result := Gio2.g_async_initable_new_finish(@self, res);
end;

procedure TGInputStream.clear_pending; cdecl;
begin
  Gio2.g_input_stream_clear_pending(@self);
end;

function TGInputStream.close(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_input_stream_close(@self, cancellable);
end;

procedure TGInputStream.close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_input_stream_close_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGInputStream.close_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_input_stream_close_finish(@self, result_);
end;

function TGInputStream.has_pending: gboolean; cdecl;
begin
  Result := Gio2.g_input_stream_has_pending(@self);
end;

function TGInputStream.is_closed: gboolean; cdecl;
begin
  Result := Gio2.g_input_stream_is_closed(@self);
end;

function TGInputStream.read(buffer: Pgpointer; count: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_input_stream_read(@self, buffer, count, cancellable);
end;

function TGInputStream.read_all(buffer: Pgpointer; count: gsize; bytes_read: Pgsize; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_input_stream_read_all(@self, buffer, count, bytes_read, cancellable);
end;

procedure TGInputStream.read_async(buffer: Pgpointer; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_input_stream_read_async(@self, buffer, count, io_priority, cancellable, callback, user_data);
end;

function TGInputStream.read_finish(result_: PGAsyncResult): gssize; cdecl;
begin
  Result := Gio2.g_input_stream_read_finish(@self, result_);
end;

function TGInputStream.set_pending: gboolean; cdecl;
begin
  Result := Gio2.g_input_stream_set_pending(@self);
end;

function TGInputStream.skip(count: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_input_stream_skip(@self, count, cancellable);
end;

procedure TGInputStream.skip_async(count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_input_stream_skip_async(@self, count, io_priority, cancellable, callback, user_data);
end;

function TGInputStream.skip_finish(result_: PGAsyncResult): gssize; cdecl;
begin
  Result := Gio2.g_input_stream_skip_finish(@self, result_);
end;

function TGFilterInputStream.get_base_stream: PGInputStream; cdecl;
begin
  Result := Gio2.g_filter_input_stream_get_base_stream(@self);
end;

function TGFilterInputStream.get_close_base_stream: gboolean; cdecl;
begin
  Result := Gio2.g_filter_input_stream_get_close_base_stream(@self);
end;

procedure TGFilterInputStream.set_close_base_stream(close_base: gboolean); cdecl;
begin
  Gio2.g_filter_input_stream_set_close_base_stream(@self, close_base);
end;

function TGBufferedInputStream.new(base_stream: PGInputStream): PGBufferedInputStream; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_new(base_stream);
end;

function TGBufferedInputStream.new_sized(base_stream: PGInputStream; size: gsize): PGBufferedInputStream; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_new_sized(base_stream, size);
end;

function TGBufferedInputStream.fill(count: gssize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_fill(@self, count, cancellable);
end;

procedure TGBufferedInputStream.fill_async(count: gssize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_buffered_input_stream_fill_async(@self, count, io_priority, cancellable, callback, user_data);
end;

function TGBufferedInputStream.fill_finish(result_: PGAsyncResult): gssize; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_fill_finish(@self, result_);
end;

function TGBufferedInputStream.get_available: gsize; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_get_available(@self);
end;

function TGBufferedInputStream.get_buffer_size: gsize; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_get_buffer_size(@self);
end;

function TGBufferedInputStream.peek(buffer: Pgpointer; offset: gsize; count: gsize): gsize; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_peek(@self, buffer, offset, count);
end;

function TGBufferedInputStream.peek_buffer(count: Pgsize): Pguint8; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_peek_buffer(@self, count);
end;

function TGBufferedInputStream.read_byte(cancellable: PGCancellable): gint; cdecl;
begin
  Result := Gio2.g_buffered_input_stream_read_byte(@self, cancellable);
end;

procedure TGBufferedInputStream.set_buffer_size(size: gsize); cdecl;
begin
  Gio2.g_buffered_input_stream_set_buffer_size(@self, size);
end;

procedure TGOutputStream.clear_pending; cdecl;
begin
  Gio2.g_output_stream_clear_pending(@self);
end;

function TGOutputStream.close(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_close(@self, cancellable);
end;

procedure TGOutputStream.close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_output_stream_close_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGOutputStream.close_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_close_finish(@self, result_);
end;

function TGOutputStream.flush(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_flush(@self, cancellable);
end;

procedure TGOutputStream.flush_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_output_stream_flush_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGOutputStream.flush_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_flush_finish(@self, result_);
end;

function TGOutputStream.has_pending: gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_has_pending(@self);
end;

function TGOutputStream.is_closed: gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_is_closed(@self);
end;

function TGOutputStream.is_closing: gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_is_closing(@self);
end;

function TGOutputStream.set_pending: gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_set_pending(@self);
end;


function TGOutputStream.splice(source: PGInputStream; flags: TGOutputStreamSpliceFlags; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_output_stream_splice(@self, source, flags, cancellable);
end;

procedure TGOutputStream.splice_async(source: PGInputStream; flags: TGOutputStreamSpliceFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_output_stream_splice_async(@self, source, flags, io_priority, cancellable, callback, user_data);
end;

function TGOutputStream.splice_finish(result_: PGAsyncResult): gssize; cdecl;
begin
  Result := Gio2.g_output_stream_splice_finish(@self, result_);
end;

function TGOutputStream.write(buffer: Pguint8; count: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_output_stream_write(@self, buffer, count, cancellable);
end;

function TGOutputStream.write_all(buffer: Pguint8; count: gsize; bytes_written: Pgsize; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_output_stream_write_all(@self, buffer, count, bytes_written, cancellable);
end;

procedure TGOutputStream.write_async(buffer: Pguint8; count: gsize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_output_stream_write_async(@self, buffer, count, io_priority, cancellable, callback, user_data);
end;

function TGOutputStream.write_finish(result_: PGAsyncResult): gssize; cdecl;
begin
  Result := Gio2.g_output_stream_write_finish(@self, result_);
end;

function TGFilterOutputStream.get_base_stream: PGOutputStream; cdecl;
begin
  Result := Gio2.g_filter_output_stream_get_base_stream(@self);
end;

function TGFilterOutputStream.get_close_base_stream: gboolean; cdecl;
begin
  Result := Gio2.g_filter_output_stream_get_close_base_stream(@self);
end;

procedure TGFilterOutputStream.set_close_base_stream(close_base: gboolean); cdecl;
begin
  Gio2.g_filter_output_stream_set_close_base_stream(@self, close_base);
end;

function TGBufferedOutputStream.new(base_stream: PGOutputStream): PGBufferedOutputStream; cdecl;
begin
  Result := Gio2.g_buffered_output_stream_new(base_stream);
end;

function TGBufferedOutputStream.new_sized(base_stream: PGOutputStream; size: gsize): PGBufferedOutputStream; cdecl;
begin
  Result := Gio2.g_buffered_output_stream_new_sized(base_stream, size);
end;

function TGBufferedOutputStream.get_auto_grow: gboolean; cdecl;
begin
  Result := Gio2.g_buffered_output_stream_get_auto_grow(@self);
end;

function TGBufferedOutputStream.get_buffer_size: gsize; cdecl;
begin
  Result := Gio2.g_buffered_output_stream_get_buffer_size(@self);
end;

procedure TGBufferedOutputStream.set_auto_grow(auto_grow: gboolean); cdecl;
begin
  Gio2.g_buffered_output_stream_set_auto_grow(@self, auto_grow);
end;

procedure TGBufferedOutputStream.set_buffer_size(size: gsize); cdecl;
begin
  Gio2.g_buffered_output_stream_set_buffer_size(@self, size);
end;

function TGDBusConnection.new_finish(res: PGAsyncResult): PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_connection_new_finish(res);
end;

function TGDBusConnection.new_for_address_finish(res: PGAsyncResult): PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_connection_new_for_address_finish(res);
end;


function TGDBusConnection.new_for_address_sync(address: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_connection_new_for_address_sync(address, flags, observer, cancellable);
end;

function TGDBusConnection.new_sync(stream: PGIOStream; guid: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_connection_new_sync(stream, guid, flags, observer, cancellable);
end;

procedure TGDBusConnection.new(stream: PGIOStream; guid: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_connection_new(stream, guid, flags, observer, cancellable, callback, user_data);
end;

procedure TGDBusConnection.new_for_address(address: Pgchar; flags: TGDBusConnectionFlags; observer: PGDBusAuthObserver; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_connection_new_for_address(address, flags, observer, cancellable, callback, user_data);
end;

function TGDBusConnection.add_filter(filter_function: TGDBusMessageFilterFunction; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl;
begin
  Result := Gio2.g_dbus_connection_add_filter(@self, filter_function, user_data, user_data_free_func);
end;


procedure TGDBusConnection.call(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_connection_call(@self, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, cancellable, callback, user_data);
end;

function TGDBusConnection.call_finish(res: PGAsyncResult): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_connection_call_finish(@self, res);
end;

function TGDBusConnection.call_sync(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_connection_call_sync(@self, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, cancellable);
end;

procedure TGDBusConnection.call_with_unix_fd_list(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_connection_call_with_unix_fd_list(@self, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, fd_list, cancellable, callback, user_data);
end;

function TGDBusConnection.call_with_unix_fd_list_finish(out_fd_list: PPGUnixFDList; res: PGAsyncResult): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_connection_call_with_unix_fd_list_finish(@self, out_fd_list, res);
end;

function TGDBusConnection.call_with_unix_fd_list_sync(bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; method_name: Pgchar; parameters: PGVariant; reply_type: PGVariantType; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; out_fd_list: PPGUnixFDList; cancellable: PGCancellable): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_connection_call_with_unix_fd_list_sync(@self, bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, fd_list, out_fd_list, cancellable);
end;

procedure TGDBusConnection.close(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_connection_close(@self, cancellable, callback, user_data);
end;

function TGDBusConnection.close_finish(res: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_close_finish(@self, res);
end;

function TGDBusConnection.close_sync(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_close_sync(@self, cancellable);
end;

function TGDBusConnection.emit_signal(destination_bus_name: Pgchar; object_path: Pgchar; interface_name: Pgchar; signal_name: Pgchar; parameters: PGVariant): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_emit_signal(@self, destination_bus_name, object_path, interface_name, signal_name, parameters);
end;

procedure TGDBusConnection.flush(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_connection_flush(@self, cancellable, callback, user_data);
end;

function TGDBusConnection.flush_finish(res: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_flush_finish(@self, res);
end;

function TGDBusConnection.flush_sync(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_flush_sync(@self, cancellable);
end;


function TGDBusConnection.get_capabilities: TGDBusCapabilityFlags; cdecl;
begin
  Result := Gio2.g_dbus_connection_get_capabilities(@self);
end;

function TGDBusConnection.get_exit_on_close: gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_get_exit_on_close(@self);
end;

function TGDBusConnection.get_guid: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_connection_get_guid(@self);
end;

function TGDBusConnection.get_peer_credentials: PGCredentials; cdecl;
begin
  Result := Gio2.g_dbus_connection_get_peer_credentials(@self);
end;

function TGDBusConnection.get_stream: PGIOStream; cdecl;
begin
  Result := Gio2.g_dbus_connection_get_stream(@self);
end;

function TGDBusConnection.get_unique_name: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_connection_get_unique_name(@self);
end;

function TGDBusConnection.is_closed: gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_is_closed(@self);
end;

function TGDBusConnection.register_object(object_path: Pgchar; interface_info: PGDBusInterfaceInfo; vtable: PGDBusInterfaceVTable; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl;
begin
  Result := Gio2.g_dbus_connection_register_object(@self, object_path, interface_info, vtable, user_data, user_data_free_func);
end;


function TGDBusConnection.register_subtree(object_path: Pgchar; vtable: PGDBusSubtreeVTable; flags: TGDBusSubtreeFlags; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl;
begin
  Result := Gio2.g_dbus_connection_register_subtree(@self, object_path, vtable, flags, user_data, user_data_free_func);
end;

procedure TGDBusConnection.remove_filter(filter_id: guint); cdecl;
begin
  Gio2.g_dbus_connection_remove_filter(@self, filter_id);
end;


function TGDBusConnection.send_message(message: PGDBusMessage; flags: TGDBusSendMessageFlags; out_serial: Pguint32): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_send_message(@self, message, flags, out_serial);
end;

procedure TGDBusConnection.send_message_with_reply(message: PGDBusMessage; flags: TGDBusSendMessageFlags; timeout_msec: gint; out_serial: Pguint32; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_connection_send_message_with_reply(@self, message, flags, timeout_msec, out_serial, cancellable, callback, user_data);
end;

function TGDBusConnection.send_message_with_reply_finish(res: PGAsyncResult): PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_connection_send_message_with_reply_finish(@self, res);
end;

function TGDBusConnection.send_message_with_reply_sync(message: PGDBusMessage; flags: TGDBusSendMessageFlags; timeout_msec: gint; out_serial: Pguint32; cancellable: PGCancellable): PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_connection_send_message_with_reply_sync(@self, message, flags, timeout_msec, out_serial, cancellable);
end;

procedure TGDBusConnection.set_exit_on_close(exit_on_close: gboolean); cdecl;
begin
  Gio2.g_dbus_connection_set_exit_on_close(@self, exit_on_close);
end;


function TGDBusConnection.signal_subscribe(sender: Pgchar; interface_name: Pgchar; member: Pgchar; object_path: Pgchar; arg0: Pgchar; flags: TGDBusSignalFlags; callback: TGDBusSignalCallback; user_data: gpointer; user_data_free_func: TGDestroyNotify): guint; cdecl;
begin
  Result := Gio2.g_dbus_connection_signal_subscribe(@self, sender, interface_name, member, object_path, arg0, flags, callback, user_data, user_data_free_func);
end;

procedure TGDBusConnection.signal_unsubscribe(subscription_id: guint); cdecl;
begin
  Gio2.g_dbus_connection_signal_unsubscribe(@self, subscription_id);
end;

procedure TGDBusConnection.start_message_processing; cdecl;
begin
  Gio2.g_dbus_connection_start_message_processing(@self);
end;

function TGDBusConnection.unregister_object(registration_id: guint): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_unregister_object(@self, registration_id);
end;

function TGDBusConnection.unregister_subtree(registration_id: guint): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_connection_unregister_subtree(@self, registration_id);
end;




function TGConverter.convert(inbuf: Pguint8; inbuf_size: gsize; outbuf: Pgpointer; outbuf_size: gsize; flags: TGConverterFlags; bytes_read: Pgsize; bytes_written: Pgsize): TGConverterResult; cdecl;
begin
  Result := Gio2.g_converter_convert(@self, inbuf, inbuf_size, outbuf, outbuf_size, flags, bytes_read, bytes_written);
end;

procedure TGConverter.reset; cdecl;
begin
  Gio2.g_converter_reset(@self);
end;

function TGInitable.newv(object_type: TGType; n_parameters: guint; parameters: PGParameter; cancellable: PGCancellable): gpointer; cdecl;
begin
  Result := Gio2.g_initable_newv(object_type, n_parameters, parameters, cancellable);
end;

function TGInitable.init(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_initable_init(@self, cancellable);
end;

function TGCharsetConverter.new(to_charset: Pgchar; from_charset: Pgchar): PGCharsetConverter; cdecl;
begin
  Result := Gio2.g_charset_converter_new(to_charset, from_charset);
end;

function TGCharsetConverter.get_num_fallbacks: guint; cdecl;
begin
  Result := Gio2.g_charset_converter_get_num_fallbacks(@self);
end;

function TGCharsetConverter.get_use_fallback: gboolean; cdecl;
begin
  Result := Gio2.g_charset_converter_get_use_fallback(@self);
end;

procedure TGCharsetConverter.set_use_fallback(use_fallback: gboolean); cdecl;
begin
  Gio2.g_charset_converter_set_use_fallback(@self, use_fallback);
end;

function TGConverterInputStream.new(base_stream: PGInputStream; converter: PGConverter): PGConverterInputStream; cdecl;
begin
  Result := Gio2.g_converter_input_stream_new(base_stream, converter);
end;

function TGConverterInputStream.get_converter: PGConverter; cdecl;
begin
  Result := Gio2.g_converter_input_stream_get_converter(@self);
end;

function TGConverterOutputStream.new(base_stream: PGOutputStream; converter: PGConverter): PGConverterOutputStream; cdecl;
begin
  Result := Gio2.g_converter_output_stream_new(base_stream, converter);
end;

function TGConverterOutputStream.get_converter: PGConverter; cdecl;
begin
  Result := Gio2.g_converter_output_stream_get_converter(@self);
end;

function TGCredentials.new: PGCredentials; cdecl;
begin
  Result := Gio2.g_credentials_new();
end;

function TGCredentials.get_native(native_type: TGCredentialsType): gpointer; cdecl;
begin
  Result := Gio2.g_credentials_get_native(@self, native_type);
end;

function TGCredentials.get_unix_user: guint; cdecl;
begin
  Result := Gio2.g_credentials_get_unix_user(@self);
end;

function TGCredentials.is_same_user(other_credentials: PGCredentials): gboolean; cdecl;
begin
  Result := Gio2.g_credentials_is_same_user(@self, other_credentials);
end;

procedure TGCredentials.set_native(native_type: TGCredentialsType; native: gpointer); cdecl;
begin
  Gio2.g_credentials_set_native(@self, native_type, native);
end;

function TGCredentials.set_unix_user(uid: guint): gboolean; cdecl;
begin
  Result := Gio2.g_credentials_set_unix_user(@self, uid);
end;

function TGCredentials.to_string: Pgchar; cdecl;
begin
  Result := Gio2.g_credentials_to_string(@self);
end;

function TGDBusAnnotationInfo.ref: PGDBusAnnotationInfo; cdecl;
begin
  Result := Gio2.g_dbus_annotation_info_ref(@self);
end;

procedure TGDBusAnnotationInfo.unref; cdecl;
begin
  Gio2.g_dbus_annotation_info_unref(@self);
end;

function TGDBusAnnotationInfo.lookup(annotations: PPGDBusAnnotationInfo; name: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_annotation_info_lookup(annotations, name);
end;

function TGDBusArgInfo.ref: PGDBusArgInfo; cdecl;
begin
  Result := Gio2.g_dbus_arg_info_ref(@self);
end;

procedure TGDBusArgInfo.unref; cdecl;
begin
  Gio2.g_dbus_arg_info_unref(@self);
end;

function TGDBusAuthObserver.new: PGDBusAuthObserver; cdecl;
begin
  Result := Gio2.g_dbus_auth_observer_new();
end;

function TGDBusAuthObserver.authorize_authenticated_peer(stream: PGIOStream; credentials: PGCredentials): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_auth_observer_authorize_authenticated_peer(@self, stream, credentials);
end;

function TGIOStream.splice_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_io_stream_splice_finish(result_);
end;

procedure TGIOStream.clear_pending; cdecl;
begin
  Gio2.g_io_stream_clear_pending(@self);
end;

function TGIOStream.close(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_io_stream_close(@self, cancellable);
end;

procedure TGIOStream.close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_io_stream_close_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGIOStream.close_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_io_stream_close_finish(@self, result_);
end;

function TGIOStream.get_input_stream: PGInputStream; cdecl;
begin
  Result := Gio2.g_io_stream_get_input_stream(@self);
end;

function TGIOStream.get_output_stream: PGOutputStream; cdecl;
begin
  Result := Gio2.g_io_stream_get_output_stream(@self);
end;

function TGIOStream.has_pending: gboolean; cdecl;
begin
  Result := Gio2.g_io_stream_has_pending(@self);
end;

function TGIOStream.is_closed: gboolean; cdecl;
begin
  Result := Gio2.g_io_stream_is_closed(@self);
end;

function TGIOStream.set_pending: gboolean; cdecl;
begin
  Result := Gio2.g_io_stream_set_pending(@self);
end;


procedure TGIOStream.splice_async(stream2: PGIOStream; flags: TGIOStreamSpliceFlags; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_io_stream_splice_async(@self, stream2, flags, io_priority, cancellable, callback, user_data);
end;

function TGUnixFDList.new: PGUnixFDList; cdecl;
begin
  Result := Gio2.g_unix_fd_list_new();
end;

function TGUnixFDList.new_from_array(fds: Pgint; n_fds: gint): PGUnixFDList; cdecl;
begin
  Result := Gio2.g_unix_fd_list_new_from_array(fds, n_fds);
end;

function TGUnixFDList.append(fd: gint): gint; cdecl;
begin
  Result := Gio2.g_unix_fd_list_append(@self, fd);
end;

function TGUnixFDList.get(index_: gint): gint; cdecl;
begin
  Result := Gio2.g_unix_fd_list_get(@self, index_);
end;

function TGUnixFDList.get_length: gint; cdecl;
begin
  Result := Gio2.g_unix_fd_list_get_length(@self);
end;

function TGUnixFDList.peek_fds(length: Pgint): Pgint; cdecl;
begin
  Result := Gio2.g_unix_fd_list_peek_fds(@self, length);
end;

function TGUnixFDList.steal_fds(length: Pgint): Pgint; cdecl;
begin
  Result := Gio2.g_unix_fd_list_steal_fds(@self, length);
end;

procedure TGDBusInterfaceInfo.cache_build; cdecl;
begin
  Gio2.g_dbus_interface_info_cache_build(@self);
end;

procedure TGDBusInterfaceInfo.cache_release; cdecl;
begin
  Gio2.g_dbus_interface_info_cache_release(@self);
end;

procedure TGDBusInterfaceInfo.generate_xml(indent: guint; string_builder: PGString); cdecl;
begin
  Gio2.g_dbus_interface_info_generate_xml(@self, indent, string_builder);
end;

function TGDBusInterfaceInfo.lookup_method(name: Pgchar): PGDBusMethodInfo; cdecl;
begin
  Result := Gio2.g_dbus_interface_info_lookup_method(@self, name);
end;

function TGDBusInterfaceInfo.lookup_property(name: Pgchar): PGDBusPropertyInfo; cdecl;
begin
  Result := Gio2.g_dbus_interface_info_lookup_property(@self, name);
end;

function TGDBusInterfaceInfo.lookup_signal(name: Pgchar): PGDBusSignalInfo; cdecl;
begin
  Result := Gio2.g_dbus_interface_info_lookup_signal(@self, name);
end;

function TGDBusInterfaceInfo.ref: PGDBusInterfaceInfo; cdecl;
begin
  Result := Gio2.g_dbus_interface_info_ref(@self);
end;

procedure TGDBusInterfaceInfo.unref; cdecl;
begin
  Gio2.g_dbus_interface_info_unref(@self);
end;

function TGDBusMessage.new: PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_message_new();
end;

function TGDBusMessage.new_from_blob(blob: Pguint8; blob_len: gsize; capabilities: TGDBusCapabilityFlags): PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_message_new_from_blob(blob, blob_len, capabilities);
end;

function TGDBusMessage.new_method_call(name: Pgchar; path: Pgchar; interface_: Pgchar; method: Pgchar): PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_message_new_method_call(name, path, interface_, method);
end;

function TGDBusMessage.new_signal(path: Pgchar; interface_: Pgchar; signal: Pgchar): PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_message_new_signal(path, interface_, signal);
end;

function TGDBusMessage.bytes_needed(blob: Pguint8; blob_len: gsize): gssize; cdecl;
begin
  Result := Gio2.g_dbus_message_bytes_needed(blob, blob_len);
end;

function TGDBusMessage.copy: PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_message_copy(@self);
end;

function TGDBusMessage.get_arg0: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_arg0(@self);
end;

function TGDBusMessage.get_body: PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_message_get_body(@self);
end;

function TGDBusMessage.get_byte_order: TGDBusMessageByteOrder; cdecl;
begin
  Result := Gio2.g_dbus_message_get_byte_order(@self);
end;

function TGDBusMessage.get_destination: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_destination(@self);
end;

function TGDBusMessage.get_error_name: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_error_name(@self);
end;


function TGDBusMessage.get_flags: TGDBusMessageFlags; cdecl;
begin
  Result := Gio2.g_dbus_message_get_flags(@self);
end;

function TGDBusMessage.get_header(header_field: TGDBusMessageHeaderField): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_message_get_header(@self, header_field);
end;

function TGDBusMessage.get_header_fields: Pguint8; cdecl;
begin
  Result := Gio2.g_dbus_message_get_header_fields(@self);
end;

function TGDBusMessage.get_interface: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_interface(@self);
end;

function TGDBusMessage.get_locked: gboolean; cdecl;
begin
  Result := Gio2.g_dbus_message_get_locked(@self);
end;

function TGDBusMessage.get_member: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_member(@self);
end;

function TGDBusMessage.get_message_type: TGDBusMessageType; cdecl;
begin
  Result := Gio2.g_dbus_message_get_message_type(@self);
end;

function TGDBusMessage.get_num_unix_fds: guint32; cdecl;
begin
  Result := Gio2.g_dbus_message_get_num_unix_fds(@self);
end;

function TGDBusMessage.get_path: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_path(@self);
end;

function TGDBusMessage.get_reply_serial: guint32; cdecl;
begin
  Result := Gio2.g_dbus_message_get_reply_serial(@self);
end;

function TGDBusMessage.get_sender: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_sender(@self);
end;

function TGDBusMessage.get_serial: guint32; cdecl;
begin
  Result := Gio2.g_dbus_message_get_serial(@self);
end;

function TGDBusMessage.get_signature: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_get_signature(@self);
end;

function TGDBusMessage.get_unix_fd_list: PGUnixFDList; cdecl;
begin
  Result := Gio2.g_dbus_message_get_unix_fd_list(@self);
end;

procedure TGDBusMessage.lock; cdecl;
begin
  Gio2.g_dbus_message_lock(@self);
end;

function TGDBusMessage.new_method_error_literal(error_name: Pgchar; error_message: Pgchar): PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_message_new_method_error_literal(@self, error_name, error_message);
end;

function TGDBusMessage.new_method_reply: PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_message_new_method_reply(@self);
end;

function TGDBusMessage.print(indent: guint): Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_message_print(@self, indent);
end;

procedure TGDBusMessage.set_body(body: PGVariant); cdecl;
begin
  Gio2.g_dbus_message_set_body(@self, body);
end;

procedure TGDBusMessage.set_byte_order(byte_order: TGDBusMessageByteOrder); cdecl;
begin
  Gio2.g_dbus_message_set_byte_order(@self, byte_order);
end;

procedure TGDBusMessage.set_destination(value: Pgchar); cdecl;
begin
  Gio2.g_dbus_message_set_destination(@self, value);
end;

procedure TGDBusMessage.set_error_name(value: Pgchar); cdecl;
begin
  Gio2.g_dbus_message_set_error_name(@self, value);
end;

procedure TGDBusMessage.set_flags(flags: TGDBusMessageFlags); cdecl;
begin
  Gio2.g_dbus_message_set_flags(@self, flags);
end;

procedure TGDBusMessage.set_header(header_field: TGDBusMessageHeaderField; value: PGVariant); cdecl;
begin
  Gio2.g_dbus_message_set_header(@self, header_field, value);
end;

procedure TGDBusMessage.set_interface(value: Pgchar); cdecl;
begin
  Gio2.g_dbus_message_set_interface(@self, value);
end;

procedure TGDBusMessage.set_member(value: Pgchar); cdecl;
begin
  Gio2.g_dbus_message_set_member(@self, value);
end;

procedure TGDBusMessage.set_message_type(type_: TGDBusMessageType); cdecl;
begin
  Gio2.g_dbus_message_set_message_type(@self, type_);
end;

procedure TGDBusMessage.set_num_unix_fds(value: guint32); cdecl;
begin
  Gio2.g_dbus_message_set_num_unix_fds(@self, value);
end;

procedure TGDBusMessage.set_path(value: Pgchar); cdecl;
begin
  Gio2.g_dbus_message_set_path(@self, value);
end;

procedure TGDBusMessage.set_reply_serial(value: guint32); cdecl;
begin
  Gio2.g_dbus_message_set_reply_serial(@self, value);
end;

procedure TGDBusMessage.set_sender(value: Pgchar); cdecl;
begin
  Gio2.g_dbus_message_set_sender(@self, value);
end;

procedure TGDBusMessage.set_serial(serial: guint32); cdecl;
begin
  Gio2.g_dbus_message_set_serial(@self, serial);
end;

procedure TGDBusMessage.set_signature(value: Pgchar); cdecl;
begin
  Gio2.g_dbus_message_set_signature(@self, value);
end;

procedure TGDBusMessage.set_unix_fd_list(fd_list: PGUnixFDList); cdecl;
begin
  Gio2.g_dbus_message_set_unix_fd_list(@self, fd_list);
end;

function TGDBusMessage.to_blob(out_size: Pgsize; capabilities: TGDBusCapabilityFlags): Pguint8; cdecl;
begin
  Result := Gio2.g_dbus_message_to_blob(@self, out_size, capabilities);
end;

function TGDBusMessage.to_gerror: gboolean; cdecl;
begin
  Result := Gio2.g_dbus_message_to_gerror(@self);
end;

function TGDBusObject.get_interface(interface_name: Pgchar): PGDBusInterface; cdecl;
begin
  Result := Gio2.g_dbus_object_get_interface(@self, interface_name);
end;

function TGDBusObject.get_interfaces: PGList; cdecl;
begin
  Result := Gio2.g_dbus_object_get_interfaces(@self);
end;

function TGDBusObject.get_object_path: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_object_get_object_path(@self);
end;

function TGDBusInterface.get_info: PGDBusInterfaceInfo; cdecl;
begin
  Result := Gio2.g_dbus_interface_get_info(@self);
end;

function TGDBusInterface.get_object: PGDBusObject; cdecl;
begin
  Result := Gio2.g_dbus_interface_get_object(@self);
end;

procedure TGDBusInterface.set_object(object_: PGDBusObject); cdecl;
begin
  Gio2.g_dbus_interface_set_object(@self, object_);
end;

function TGDBusMethodInfo.ref: PGDBusMethodInfo; cdecl;
begin
  Result := Gio2.g_dbus_method_info_ref(@self);
end;

procedure TGDBusMethodInfo.unref; cdecl;
begin
  Gio2.g_dbus_method_info_unref(@self);
end;

function TGDBusSignalInfo.ref: PGDBusSignalInfo; cdecl;
begin
  Result := Gio2.g_dbus_signal_info_ref(@self);
end;

procedure TGDBusSignalInfo.unref; cdecl;
begin
  Gio2.g_dbus_signal_info_unref(@self);
end;

function TGDBusPropertyInfo.ref: PGDBusPropertyInfo; cdecl;
begin
  Result := Gio2.g_dbus_property_info_ref(@self);
end;

procedure TGDBusPropertyInfo.unref; cdecl;
begin
  Gio2.g_dbus_property_info_unref(@self);
end;


function TGDBusMethodInvocation.get_connection: PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_connection(@self);
end;

function TGDBusMethodInvocation.get_interface_name: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_interface_name(@self);
end;

function TGDBusMethodInvocation.get_message: PGDBusMessage; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_message(@self);
end;

function TGDBusMethodInvocation.get_method_info: PGDBusMethodInfo; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_method_info(@self);
end;

function TGDBusMethodInvocation.get_method_name: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_method_name(@self);
end;

function TGDBusMethodInvocation.get_object_path: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_object_path(@self);
end;

function TGDBusMethodInvocation.get_parameters: PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_parameters(@self);
end;

function TGDBusMethodInvocation.get_sender: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_sender(@self);
end;

function TGDBusMethodInvocation.get_user_data: gpointer; cdecl;
begin
  Result := Gio2.g_dbus_method_invocation_get_user_data(@self);
end;

procedure TGDBusMethodInvocation.return_dbus_error(error_name: Pgchar; error_message: Pgchar); cdecl;
begin
  Gio2.g_dbus_method_invocation_return_dbus_error(@self, error_name, error_message);
end;

procedure TGDBusMethodInvocation.return_error_literal(domain: TGQuark; code: gint; message: Pgchar); cdecl;
begin
  Gio2.g_dbus_method_invocation_return_error_literal(@self, domain, code, message);
end;

procedure TGDBusMethodInvocation.return_gerror(error: PGError); cdecl;
begin
  Gio2.g_dbus_method_invocation_return_gerror(@self, error);
end;

procedure TGDBusMethodInvocation.return_value(parameters: PGVariant); cdecl;
begin
  Gio2.g_dbus_method_invocation_return_value(@self, parameters);
end;

procedure TGDBusMethodInvocation.return_value_with_unix_fd_list(parameters: PGVariant; fd_list: PGUnixFDList); cdecl;
begin
  Gio2.g_dbus_method_invocation_return_value_with_unix_fd_list(@self, parameters, fd_list);
end;

procedure TGDBusMethodInvocation.take_error(error: PGError); cdecl;
begin
  Gio2.g_dbus_method_invocation_take_error(@self, error);
end;


function TGDBusInterfaceSkeleton.export(connection: PGDBusConnection; object_path: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_interface_skeleton_export(@self, connection, object_path);
end;

procedure TGDBusInterfaceSkeleton.flush; cdecl;
begin
  Gio2.g_dbus_interface_skeleton_flush(@self);
end;

function TGDBusInterfaceSkeleton.get_connection: PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_interface_skeleton_get_connection(@self);
end;

function TGDBusInterfaceSkeleton.get_flags: TGDBusInterfaceSkeletonFlags; cdecl;
begin
  Result := Gio2.g_dbus_interface_skeleton_get_flags(@self);
end;

function TGDBusInterfaceSkeleton.get_info: PGDBusInterfaceInfo; cdecl;
begin
  Result := Gio2.g_dbus_interface_skeleton_get_info(@self);
end;

function TGDBusInterfaceSkeleton.get_object_path: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_interface_skeleton_get_object_path(@self);
end;

function TGDBusInterfaceSkeleton.get_properties: PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_interface_skeleton_get_properties(@self);
end;

function TGDBusInterfaceSkeleton.get_vtable: PGDBusInterfaceVTable; cdecl;
begin
  Result := Gio2.g_dbus_interface_skeleton_get_vtable(@self);
end;

procedure TGDBusInterfaceSkeleton.set_flags(flags: TGDBusInterfaceSkeletonFlags); cdecl;
begin
  Gio2.g_dbus_interface_skeleton_set_flags(@self, flags);
end;

procedure TGDBusInterfaceSkeleton.unexport; cdecl;
begin
  Gio2.g_dbus_interface_skeleton_unexport(@self);
end;

function TGDBusNodeInfo.new_for_xml(xml_data: Pgchar): PGDBusNodeInfo; cdecl;
begin
  Result := Gio2.g_dbus_node_info_new_for_xml(xml_data);
end;

procedure TGDBusNodeInfo.generate_xml(indent: guint; string_builder: PGString); cdecl;
begin
  Gio2.g_dbus_node_info_generate_xml(@self, indent, string_builder);
end;

function TGDBusNodeInfo.lookup_interface(name: Pgchar): PGDBusInterfaceInfo; cdecl;
begin
  Result := Gio2.g_dbus_node_info_lookup_interface(@self, name);
end;

function TGDBusNodeInfo.ref: PGDBusNodeInfo; cdecl;
begin
  Result := Gio2.g_dbus_node_info_ref(@self);
end;

procedure TGDBusNodeInfo.unref; cdecl;
begin
  Gio2.g_dbus_node_info_unref(@self);
end;

function TGDBusObjectManager.get_interface(object_path: Pgchar; interface_name: Pgchar): PGDBusInterface; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_get_interface(@self, object_path, interface_name);
end;

function TGDBusObjectManager.get_object(object_path: Pgchar): PGDBusObject; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_get_object(@self, object_path);
end;

function TGDBusObjectManager.get_object_path: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_get_object_path(@self);
end;

function TGDBusObjectManager.get_objects: PGList; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_get_objects(@self);
end;

function TGDBusObjectManagerClient.new_finish(res: PGAsyncResult): PGDBusObjectManagerClient; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_new_finish(res);
end;

function TGDBusObjectManagerClient.new_for_bus_finish(res: PGAsyncResult): PGDBusObjectManagerClient; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_new_for_bus_finish(res);
end;


function TGDBusObjectManagerClient.new_for_bus_sync(bus_type: TGBusType; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable): PGDBusObjectManagerClient; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable);
end;

function TGDBusObjectManagerClient.new_sync(connection: PGDBusConnection; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable): PGDBusObjectManagerClient; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_new_sync(connection, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable);
end;

procedure TGDBusObjectManagerClient.new(connection: PGDBusConnection; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_object_manager_client_new(connection, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, callback, user_data);
end;

procedure TGDBusObjectManagerClient.new_for_bus(bus_type: TGBusType; flags: TGDBusObjectManagerClientFlags; name: Pgchar; object_path: Pgchar; get_proxy_type_func: TGDBusProxyTypeFunc; get_proxy_type_user_data: gpointer; get_proxy_type_destroy_notify: TGDestroyNotify; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_object_manager_client_new_for_bus(bus_type, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, callback, user_data);
end;

function TGDBusObjectManagerClient.get_connection: PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_get_connection(@self);
end;

function TGDBusObjectManagerClient.get_flags: TGDBusObjectManagerClientFlags; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_get_flags(@self);
end;

function TGDBusObjectManagerClient.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_get_name(@self);
end;

function TGDBusObjectManagerClient.get_name_owner: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_client_get_name_owner(@self);
end;

function TGDBusObjectProxy.new(connection: PGDBusConnection; object_path: Pgchar): PGDBusObjectProxy; cdecl;
begin
  Result := Gio2.g_dbus_object_proxy_new(connection, object_path);
end;

function TGDBusObjectProxy.get_connection: PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_object_proxy_get_connection(@self);
end;

function TGDBusProxy.new_finish(res: PGAsyncResult): PGDBusProxy; cdecl;
begin
  Result := Gio2.g_dbus_proxy_new_finish(res);
end;

function TGDBusProxy.new_for_bus_finish(res: PGAsyncResult): PGDBusProxy; cdecl;
begin
  Result := Gio2.g_dbus_proxy_new_for_bus_finish(res);
end;


function TGDBusProxy.new_for_bus_sync(bus_type: TGBusType; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable): PGDBusProxy; cdecl;
begin
  Result := Gio2.g_dbus_proxy_new_for_bus_sync(bus_type, flags, info, name, object_path, interface_name, cancellable);
end;

function TGDBusProxy.new_sync(connection: PGDBusConnection; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable): PGDBusProxy; cdecl;
begin
  Result := Gio2.g_dbus_proxy_new_sync(connection, flags, info, name, object_path, interface_name, cancellable);
end;

procedure TGDBusProxy.new(connection: PGDBusConnection; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_proxy_new(connection, flags, info, name, object_path, interface_name, cancellable, callback, user_data);
end;

procedure TGDBusProxy.new_for_bus(bus_type: TGBusType; flags: TGDBusProxyFlags; info: PGDBusInterfaceInfo; name: Pgchar; object_path: Pgchar; interface_name: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_proxy_new_for_bus(bus_type, flags, info, name, object_path, interface_name, cancellable, callback, user_data);
end;

procedure TGDBusProxy.call(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_proxy_call(@self, method_name, parameters, flags, timeout_msec, cancellable, callback, user_data);
end;

function TGDBusProxy.call_finish(res: PGAsyncResult): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_proxy_call_finish(@self, res);
end;

function TGDBusProxy.call_sync(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; cancellable: PGCancellable): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_proxy_call_sync(@self, method_name, parameters, flags, timeout_msec, cancellable);
end;

procedure TGDBusProxy.call_with_unix_fd_list(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_dbus_proxy_call_with_unix_fd_list(@self, method_name, parameters, flags, timeout_msec, fd_list, cancellable, callback, user_data);
end;

function TGDBusProxy.call_with_unix_fd_list_finish(out_fd_list: PPGUnixFDList; res: PGAsyncResult): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_proxy_call_with_unix_fd_list_finish(@self, out_fd_list, res);
end;

function TGDBusProxy.call_with_unix_fd_list_sync(method_name: Pgchar; parameters: PGVariant; flags: TGDBusCallFlags; timeout_msec: gint; fd_list: PGUnixFDList; out_fd_list: PPGUnixFDList; cancellable: PGCancellable): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_proxy_call_with_unix_fd_list_sync(@self, method_name, parameters, flags, timeout_msec, fd_list, out_fd_list, cancellable);
end;

function TGDBusProxy.get_cached_property(property_name: Pgchar): PGVariant; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_cached_property(@self, property_name);
end;

function TGDBusProxy.get_cached_property_names: PPgchar; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_cached_property_names(@self);
end;

function TGDBusProxy.get_connection: PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_connection(@self);
end;

function TGDBusProxy.get_default_timeout: gint; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_default_timeout(@self);
end;

function TGDBusProxy.get_flags: TGDBusProxyFlags; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_flags(@self);
end;

function TGDBusProxy.get_interface_info: PGDBusInterfaceInfo; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_interface_info(@self);
end;

function TGDBusProxy.get_interface_name: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_interface_name(@self);
end;

function TGDBusProxy.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_name(@self);
end;

function TGDBusProxy.get_name_owner: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_name_owner(@self);
end;

function TGDBusProxy.get_object_path: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_proxy_get_object_path(@self);
end;

procedure TGDBusProxy.set_cached_property(property_name: Pgchar; value: PGVariant); cdecl;
begin
  Gio2.g_dbus_proxy_set_cached_property(@self, property_name, value);
end;

procedure TGDBusProxy.set_default_timeout(timeout_msec: gint); cdecl;
begin
  Gio2.g_dbus_proxy_set_default_timeout(@self, timeout_msec);
end;

procedure TGDBusProxy.set_interface_info(info: PGDBusInterfaceInfo); cdecl;
begin
  Gio2.g_dbus_proxy_set_interface_info(@self, info);
end;

function TGDBusObjectManagerServer.new(object_path: Pgchar): PGDBusObjectManagerServer; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_server_new(object_path);
end;

procedure TGDBusObjectManagerServer.export(object_: PGDBusObjectSkeleton); cdecl;
begin
  Gio2.g_dbus_object_manager_server_export(@self, object_);
end;

procedure TGDBusObjectManagerServer.export_uniquely(object_: PGDBusObjectSkeleton); cdecl;
begin
  Gio2.g_dbus_object_manager_server_export_uniquely(@self, object_);
end;

function TGDBusObjectManagerServer.get_connection: PGDBusConnection; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_server_get_connection(@self);
end;

procedure TGDBusObjectManagerServer.set_connection(connection: PGDBusConnection); cdecl;
begin
  Gio2.g_dbus_object_manager_server_set_connection(@self, connection);
end;

function TGDBusObjectManagerServer.unexport(object_path: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_dbus_object_manager_server_unexport(@self, object_path);
end;

function TGDBusObjectSkeleton.new(object_path: Pgchar): PGDBusObjectSkeleton; cdecl;
begin
  Result := Gio2.g_dbus_object_skeleton_new(object_path);
end;

procedure TGDBusObjectSkeleton.add_interface(interface_: PGDBusInterfaceSkeleton); cdecl;
begin
  Gio2.g_dbus_object_skeleton_add_interface(@self, interface_);
end;

procedure TGDBusObjectSkeleton.flush; cdecl;
begin
  Gio2.g_dbus_object_skeleton_flush(@self);
end;

procedure TGDBusObjectSkeleton.remove_interface(interface_: PGDBusInterfaceSkeleton); cdecl;
begin
  Gio2.g_dbus_object_skeleton_remove_interface(@self, interface_);
end;

procedure TGDBusObjectSkeleton.remove_interface_by_name(interface_name: Pgchar); cdecl;
begin
  Gio2.g_dbus_object_skeleton_remove_interface_by_name(@self, interface_name);
end;

procedure TGDBusObjectSkeleton.set_object_path(object_path: Pgchar); cdecl;
begin
  Gio2.g_dbus_object_skeleton_set_object_path(@self, object_path);
end;


function TGDBusServer.new_sync(address: Pgchar; flags: TGDBusServerFlags; guid: Pgchar; observer: PGDBusAuthObserver; cancellable: PGCancellable): PGDBusServer; cdecl;
begin
  Result := Gio2.g_dbus_server_new_sync(address, flags, guid, observer, cancellable);
end;

function TGDBusServer.get_client_address: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_server_get_client_address(@self);
end;

function TGDBusServer.get_flags: TGDBusServerFlags; cdecl;
begin
  Result := Gio2.g_dbus_server_get_flags(@self);
end;

function TGDBusServer.get_guid: Pgchar; cdecl;
begin
  Result := Gio2.g_dbus_server_get_guid(@self);
end;

function TGDBusServer.is_active: gboolean; cdecl;
begin
  Result := Gio2.g_dbus_server_is_active(@self);
end;

procedure TGDBusServer.start; cdecl;
begin
  Gio2.g_dbus_server_start(@self);
end;

procedure TGDBusServer.stop; cdecl;
begin
  Gio2.g_dbus_server_stop(@self);
end;

function TGDataInputStream.new(base_stream: PGInputStream): PGDataInputStream; cdecl;
begin
  Result := Gio2.g_data_input_stream_new(base_stream);
end;

function TGDataInputStream.get_byte_order: TGDataStreamByteOrder; cdecl;
begin
  Result := Gio2.g_data_input_stream_get_byte_order(@self);
end;

function TGDataInputStream.get_newline_type: TGDataStreamNewlineType; cdecl;
begin
  Result := Gio2.g_data_input_stream_get_newline_type(@self);
end;

function TGDataInputStream.read_byte(cancellable: PGCancellable): guint8; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_byte(@self, cancellable);
end;

function TGDataInputStream.read_int16(cancellable: PGCancellable): gint16; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_int16(@self, cancellable);
end;

function TGDataInputStream.read_int32(cancellable: PGCancellable): gint32; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_int32(@self, cancellable);
end;

function TGDataInputStream.read_int64(cancellable: PGCancellable): gint64; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_int64(@self, cancellable);
end;

function TGDataInputStream.read_line(length: Pgsize; cancellable: PGCancellable): Pguint8; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_line(@self, length, cancellable);
end;

procedure TGDataInputStream.read_line_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_data_input_stream_read_line_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGDataInputStream.read_line_finish(result_: PGAsyncResult; length: Pgsize): Pguint8; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_line_finish(@self, result_, length);
end;

function TGDataInputStream.read_line_finish_utf8(result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_line_finish_utf8(@self, result_, length);
end;

function TGDataInputStream.read_line_utf8(length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_line_utf8(@self, length, cancellable);
end;

function TGDataInputStream.read_uint16(cancellable: PGCancellable): guint16; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_uint16(@self, cancellable);
end;

function TGDataInputStream.read_uint32(cancellable: PGCancellable): guint32; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_uint32(@self, cancellable);
end;

function TGDataInputStream.read_uint64(cancellable: PGCancellable): guint64; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_uint64(@self, cancellable);
end;

function TGDataInputStream.read_until(stop_chars: Pgchar; length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_until(@self, stop_chars, length, cancellable);
end;

procedure TGDataInputStream.read_until_async(stop_chars: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_data_input_stream_read_until_async(@self, stop_chars, io_priority, cancellable, callback, user_data);
end;

function TGDataInputStream.read_until_finish(result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_until_finish(@self, result_, length);
end;

function TGDataInputStream.read_upto(stop_chars: Pgchar; stop_chars_len: gssize; length: Pgsize; cancellable: PGCancellable): Pgchar; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_upto(@self, stop_chars, stop_chars_len, length, cancellable);
end;

procedure TGDataInputStream.read_upto_async(stop_chars: Pgchar; stop_chars_len: gssize; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_data_input_stream_read_upto_async(@self, stop_chars, stop_chars_len, io_priority, cancellable, callback, user_data);
end;

function TGDataInputStream.read_upto_finish(result_: PGAsyncResult; length: Pgsize): Pgchar; cdecl;
begin
  Result := Gio2.g_data_input_stream_read_upto_finish(@self, result_, length);
end;

procedure TGDataInputStream.set_byte_order(order: TGDataStreamByteOrder); cdecl;
begin
  Gio2.g_data_input_stream_set_byte_order(@self, order);
end;

procedure TGDataInputStream.set_newline_type(type_: TGDataStreamNewlineType); cdecl;
begin
  Gio2.g_data_input_stream_set_newline_type(@self, type_);
end;

function TGDataOutputStream.new(base_stream: PGOutputStream): PGDataOutputStream; cdecl;
begin
  Result := Gio2.g_data_output_stream_new(base_stream);
end;

function TGDataOutputStream.get_byte_order: TGDataStreamByteOrder; cdecl;
begin
  Result := Gio2.g_data_output_stream_get_byte_order(@self);
end;

function TGDataOutputStream.put_byte(data: guint8; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_byte(@self, data, cancellable);
end;

function TGDataOutputStream.put_int16(data: gint16; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_int16(@self, data, cancellable);
end;

function TGDataOutputStream.put_int32(data: gint32; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_int32(@self, data, cancellable);
end;

function TGDataOutputStream.put_int64(data: gint64; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_int64(@self, data, cancellable);
end;

function TGDataOutputStream.put_string(str: Pgchar; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_string(@self, str, cancellable);
end;

function TGDataOutputStream.put_uint16(data: guint16; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_uint16(@self, data, cancellable);
end;

function TGDataOutputStream.put_uint32(data: guint32; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_uint32(@self, data, cancellable);
end;

function TGDataOutputStream.put_uint64(data: guint64; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_data_output_stream_put_uint64(@self, data, cancellable);
end;

procedure TGDataOutputStream.set_byte_order(order: TGDataStreamByteOrder); cdecl;
begin
  Gio2.g_data_output_stream_set_byte_order(@self, order);
end;

function TGDesktopAppInfo.new(desktop_id: Pgchar): PGDesktopAppInfo; cdecl;
begin
  Result := Gio2.g_desktop_app_info_new(desktop_id);
end;

function TGDesktopAppInfo.new_from_filename(filename: Pgchar): PGDesktopAppInfo; cdecl;
begin
  Result := Gio2.g_desktop_app_info_new_from_filename(filename);
end;

function TGDesktopAppInfo.new_from_keyfile(key_file: PGKeyFile): PGDesktopAppInfo; cdecl;
begin
  Result := Gio2.g_desktop_app_info_new_from_keyfile(key_file);
end;

procedure TGDesktopAppInfo.set_desktop_env(desktop_env: Pgchar); cdecl;
begin
  Gio2.g_desktop_app_info_set_desktop_env(desktop_env);
end;

function TGDesktopAppInfo.get_categories: Pgchar; cdecl;
begin
  Result := Gio2.g_desktop_app_info_get_categories(@self);
end;

function TGDesktopAppInfo.get_filename: Pgchar; cdecl;
begin
  Result := Gio2.g_desktop_app_info_get_filename(@self);
end;

function TGDesktopAppInfo.get_generic_name: Pgchar; cdecl;
begin
  Result := Gio2.g_desktop_app_info_get_generic_name(@self);
end;

function TGDesktopAppInfo.get_is_hidden: gboolean; cdecl;
begin
  Result := Gio2.g_desktop_app_info_get_is_hidden(@self);
end;

function TGDesktopAppInfo.get_nodisplay: gboolean; cdecl;
begin
  Result := Gio2.g_desktop_app_info_get_nodisplay(@self);
end;

function TGDesktopAppInfo.get_show_in(desktop_env: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_desktop_app_info_get_show_in(@self, desktop_env);
end;

function TGDesktopAppInfo.launch_uris_as_manager(uris: PGList; launch_context: PGAppLaunchContext; spawn_flags: TGSpawnFlags; user_setup: TGSpawnChildSetupFunc; user_setup_data: gpointer; pid_callback: TGDesktopAppLaunchCallback; pid_callback_data: gpointer): gboolean; cdecl;
begin
  Result := Gio2.g_desktop_app_info_launch_uris_as_manager(@self, uris, launch_context, spawn_flags, user_setup, user_setup_data, pid_callback, pid_callback_data);
end;

function TGDesktopAppInfoLookup.get_default_for_uri_scheme(uri_scheme: Pgchar): PGAppInfo; cdecl;
begin
  Result := Gio2.g_desktop_app_info_lookup_get_default_for_uri_scheme(@self, uri_scheme);
end;

function TGMountOperation.new: PGMountOperation; cdecl;
begin
  Result := Gio2.g_mount_operation_new();
end;

function TGMountOperation.get_anonymous: gboolean; cdecl;
begin
  Result := Gio2.g_mount_operation_get_anonymous(@self);
end;

function TGMountOperation.get_choice: gint; cdecl;
begin
  Result := Gio2.g_mount_operation_get_choice(@self);
end;

function TGMountOperation.get_domain: Pgchar; cdecl;
begin
  Result := Gio2.g_mount_operation_get_domain(@self);
end;

function TGMountOperation.get_password: Pgchar; cdecl;
begin
  Result := Gio2.g_mount_operation_get_password(@self);
end;

function TGMountOperation.get_password_save: TGPasswordSave; cdecl;
begin
  Result := Gio2.g_mount_operation_get_password_save(@self);
end;

function TGMountOperation.get_username: Pgchar; cdecl;
begin
  Result := Gio2.g_mount_operation_get_username(@self);
end;

procedure TGMountOperation.reply(result_: TGMountOperationResult); cdecl;
begin
  Gio2.g_mount_operation_reply(@self, result_);
end;

procedure TGMountOperation.set_anonymous(anonymous: gboolean); cdecl;
begin
  Gio2.g_mount_operation_set_anonymous(@self, anonymous);
end;

procedure TGMountOperation.set_choice(choice: gint); cdecl;
begin
  Gio2.g_mount_operation_set_choice(@self, choice);
end;

procedure TGMountOperation.set_domain(domain: Pgchar); cdecl;
begin
  Gio2.g_mount_operation_set_domain(@self, domain);
end;

procedure TGMountOperation.set_password(password: Pgchar); cdecl;
begin
  Gio2.g_mount_operation_set_password(@self, password);
end;

procedure TGMountOperation.set_password_save(save: TGPasswordSave); cdecl;
begin
  Gio2.g_mount_operation_set_password_save(@self, save);
end;

procedure TGMountOperation.set_username(username: Pgchar); cdecl;
begin
  Gio2.g_mount_operation_set_username(@self, username);
end;

function TGDrive.can_eject: gboolean; cdecl;
begin
  Result := Gio2.g_drive_can_eject(@self);
end;

function TGDrive.can_poll_for_media: gboolean; cdecl;
begin
  Result := Gio2.g_drive_can_poll_for_media(@self);
end;

function TGDrive.can_start: gboolean; cdecl;
begin
  Result := Gio2.g_drive_can_start(@self);
end;

function TGDrive.can_start_degraded: gboolean; cdecl;
begin
  Result := Gio2.g_drive_can_start_degraded(@self);
end;

function TGDrive.can_stop: gboolean; cdecl;
begin
  Result := Gio2.g_drive_can_stop(@self);
end;

procedure TGDrive.eject_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_drive_eject_with_operation(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGDrive.eject_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_drive_eject_with_operation_finish(@self, result_);
end;

function TGDrive.enumerate_identifiers: PPgchar; cdecl;
begin
  Result := Gio2.g_drive_enumerate_identifiers(@self);
end;

function TGDrive.get_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_drive_get_icon(@self);
end;

function TGDrive.get_identifier(kind: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_drive_get_identifier(@self, kind);
end;

function TGDrive.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_drive_get_name(@self);
end;

function TGDrive.get_start_stop_type: TGDriveStartStopType; cdecl;
begin
  Result := Gio2.g_drive_get_start_stop_type(@self);
end;

function TGDrive.get_volumes: PGList; cdecl;
begin
  Result := Gio2.g_drive_get_volumes(@self);
end;

function TGDrive.has_media: gboolean; cdecl;
begin
  Result := Gio2.g_drive_has_media(@self);
end;

function TGDrive.has_volumes: gboolean; cdecl;
begin
  Result := Gio2.g_drive_has_volumes(@self);
end;

function TGDrive.is_media_check_automatic: gboolean; cdecl;
begin
  Result := Gio2.g_drive_is_media_check_automatic(@self);
end;

function TGDrive.is_media_removable: gboolean; cdecl;
begin
  Result := Gio2.g_drive_is_media_removable(@self);
end;

procedure TGDrive.poll_for_media(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_drive_poll_for_media(@self, cancellable, callback, user_data);
end;

function TGDrive.poll_for_media_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_drive_poll_for_media_finish(@self, result_);
end;

procedure TGDrive.start(flags: TGDriveStartFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_drive_start(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGDrive.start_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_drive_start_finish(@self, result_);
end;

procedure TGDrive.stop(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_drive_stop(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGDrive.stop_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_drive_stop_finish(@self, result_);
end;

function TGEmblem.new(icon: PGIcon): PGEmblem; cdecl;
begin
  Result := Gio2.g_emblem_new(icon);
end;

function TGEmblem.new_with_origin(icon: PGIcon; origin: TGEmblemOrigin): PGEmblem; cdecl;
begin
  Result := Gio2.g_emblem_new_with_origin(icon, origin);
end;

function TGEmblem.get_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_emblem_get_icon(@self);
end;

function TGEmblem.get_origin: TGEmblemOrigin; cdecl;
begin
  Result := Gio2.g_emblem_get_origin(@self);
end;

function TGEmblemedIcon.new(icon: PGIcon; emblem: PGEmblem): PGIcon; cdecl;
begin
  Result := Gio2.g_emblemed_icon_new(icon, emblem);
end;

procedure TGEmblemedIcon.add_emblem(emblem: PGEmblem); cdecl;
begin
  Gio2.g_emblemed_icon_add_emblem(@self, emblem);
end;

procedure TGEmblemedIcon.clear_emblems; cdecl;
begin
  Gio2.g_emblemed_icon_clear_emblems(@self);
end;

function TGEmblemedIcon.get_emblems: PGList; cdecl;
begin
  Result := Gio2.g_emblemed_icon_get_emblems(@self);
end;

function TGEmblemedIcon.get_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_emblemed_icon_get_icon(@self);
end;

function TGFileOutputStream.get_etag: Pgchar; cdecl;
begin
  Result := Gio2.g_file_output_stream_get_etag(@self);
end;

function TGFileOutputStream.query_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_output_stream_query_info(@self, attributes, cancellable);
end;

procedure TGFileOutputStream.query_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_output_stream_query_info_async(@self, attributes, io_priority, cancellable, callback, user_data);
end;

function TGFileOutputStream.query_info_finish(result_: PGAsyncResult): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_output_stream_query_info_finish(@self, result_);
end;

function TGFileIOStream.get_etag: Pgchar; cdecl;
begin
  Result := Gio2.g_file_io_stream_get_etag(@self);
end;

function TGFileIOStream.query_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_io_stream_query_info(@self, attributes, cancellable);
end;

procedure TGFileIOStream.query_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_io_stream_query_info_async(@self, attributes, io_priority, cancellable, callback, user_data);
end;

function TGFileIOStream.query_info_finish(result_: PGAsyncResult): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_io_stream_query_info_finish(@self, result_);
end;

function TGFileEnumerator.close(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_file_enumerator_close(@self, cancellable);
end;

procedure TGFileEnumerator.close_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_enumerator_close_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGFileEnumerator.close_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_file_enumerator_close_finish(@self, result_);
end;

function TGFileEnumerator.get_container: PGFile; cdecl;
begin
  Result := Gio2.g_file_enumerator_get_container(@self);
end;

function TGFileEnumerator.has_pending: gboolean; cdecl;
begin
  Result := Gio2.g_file_enumerator_has_pending(@self);
end;

function TGFileEnumerator.is_closed: gboolean; cdecl;
begin
  Result := Gio2.g_file_enumerator_is_closed(@self);
end;

function TGFileEnumerator.next_file(cancellable: PGCancellable): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_enumerator_next_file(@self, cancellable);
end;

procedure TGFileEnumerator.next_files_async(num_files: gint; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_enumerator_next_files_async(@self, num_files, io_priority, cancellable, callback, user_data);
end;

function TGFileEnumerator.next_files_finish(result_: PGAsyncResult): PGList; cdecl;
begin
  Result := Gio2.g_file_enumerator_next_files_finish(@self, result_);
end;

procedure TGFileEnumerator.set_pending(pending: gboolean); cdecl;
begin
  Gio2.g_file_enumerator_set_pending(@self, pending);
end;

function TGMount.can_eject: gboolean; cdecl;
begin
  Result := Gio2.g_mount_can_eject(@self);
end;

function TGMount.can_unmount: gboolean; cdecl;
begin
  Result := Gio2.g_mount_can_unmount(@self);
end;

procedure TGMount.eject_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_mount_eject_with_operation(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGMount.eject_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_mount_eject_with_operation_finish(@self, result_);
end;

function TGMount.get_default_location: PGFile; cdecl;
begin
  Result := Gio2.g_mount_get_default_location(@self);
end;

function TGMount.get_drive: PGDrive; cdecl;
begin
  Result := Gio2.g_mount_get_drive(@self);
end;

function TGMount.get_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_mount_get_icon(@self);
end;

function TGMount.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_mount_get_name(@self);
end;

function TGMount.get_root: PGFile; cdecl;
begin
  Result := Gio2.g_mount_get_root(@self);
end;

function TGMount.get_uuid: Pgchar; cdecl;
begin
  Result := Gio2.g_mount_get_uuid(@self);
end;

function TGMount.get_volume: PGVolume; cdecl;
begin
  Result := Gio2.g_mount_get_volume(@self);
end;

procedure TGMount.guess_content_type(force_rescan: gboolean; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_mount_guess_content_type(@self, force_rescan, cancellable, callback, user_data);
end;

function TGMount.guess_content_type_finish(result_: PGAsyncResult): PPgchar; cdecl;
begin
  Result := Gio2.g_mount_guess_content_type_finish(@self, result_);
end;

function TGMount.guess_content_type_sync(force_rescan: gboolean; cancellable: PGCancellable): PPgchar; cdecl;
begin
  Result := Gio2.g_mount_guess_content_type_sync(@self, force_rescan, cancellable);
end;

function TGMount.is_shadowed: gboolean; cdecl;
begin
  Result := Gio2.g_mount_is_shadowed(@self);
end;

procedure TGMount.remount(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_mount_remount(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGMount.remount_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_mount_remount_finish(@self, result_);
end;

procedure TGMount.shadow; cdecl;
begin
  Gio2.g_mount_shadow(@self);
end;

procedure TGMount.unmount_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_mount_unmount_with_operation(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGMount.unmount_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_mount_unmount_with_operation_finish(@self, result_);
end;

procedure TGMount.unshadow; cdecl;
begin
  Gio2.g_mount_unshadow(@self);
end;

function TGFileMonitor.cancel: gboolean; cdecl;
begin
  Result := Gio2.g_file_monitor_cancel(@self);
end;

procedure TGFileMonitor.emit_event(child: PGFile; other_file: PGFile; event_type: TGFileMonitorEvent); cdecl;
begin
  Gio2.g_file_monitor_emit_event(@self, child, other_file, event_type);
end;

function TGFileMonitor.is_cancelled: gboolean; cdecl;
begin
  Result := Gio2.g_file_monitor_is_cancelled(@self);
end;

procedure TGFileMonitor.set_rate_limit(limit_msecs: gint); cdecl;
begin
  Gio2.g_file_monitor_set_rate_limit(@self, limit_msecs);
end;

function TGFileInfo.new: PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_info_new();
end;

procedure TGFileInfo.clear_status; cdecl;
begin
  Gio2.g_file_info_clear_status(@self);
end;

procedure TGFileInfo.copy_into(dest_info: PGFileInfo); cdecl;
begin
  Gio2.g_file_info_copy_into(@self, dest_info);
end;

function TGFileInfo.dup: PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_info_dup(@self);
end;

function TGFileInfo.get_attribute_as_string(attribute: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_as_string(@self, attribute);
end;

function TGFileInfo.get_attribute_boolean(attribute: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_boolean(@self, attribute);
end;

function TGFileInfo.get_attribute_byte_string(attribute: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_byte_string(@self, attribute);
end;

function TGFileInfo.get_attribute_data(attribute: Pgchar; type_: PGFileAttributeType; value_pp: Pgpointer; status: PGFileAttributeStatus): gboolean; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_data(@self, attribute, type_, value_pp, status);
end;

function TGFileInfo.get_attribute_int32(attribute: Pgchar): gint32; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_int32(@self, attribute);
end;

function TGFileInfo.get_attribute_int64(attribute: Pgchar): gint64; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_int64(@self, attribute);
end;

function TGFileInfo.get_attribute_object(attribute: Pgchar): PGObject; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_object(@self, attribute);
end;

function TGFileInfo.get_attribute_status(attribute: Pgchar): TGFileAttributeStatus; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_status(@self, attribute);
end;

function TGFileInfo.get_attribute_string(attribute: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_string(@self, attribute);
end;

function TGFileInfo.get_attribute_stringv(attribute: Pgchar): PPgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_stringv(@self, attribute);
end;

function TGFileInfo.get_attribute_type(attribute: Pgchar): TGFileAttributeType; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_type(@self, attribute);
end;

function TGFileInfo.get_attribute_uint32(attribute: Pgchar): guint32; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_uint32(@self, attribute);
end;

function TGFileInfo.get_attribute_uint64(attribute: Pgchar): guint64; cdecl;
begin
  Result := Gio2.g_file_info_get_attribute_uint64(@self, attribute);
end;

function TGFileInfo.get_content_type: Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_content_type(@self);
end;

function TGFileInfo.get_display_name: Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_display_name(@self);
end;

function TGFileInfo.get_edit_name: Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_edit_name(@self);
end;

function TGFileInfo.get_etag: Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_etag(@self);
end;

function TGFileInfo.get_file_type: TGFileType; cdecl;
begin
  Result := Gio2.g_file_info_get_file_type(@self);
end;

function TGFileInfo.get_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_file_info_get_icon(@self);
end;

function TGFileInfo.get_is_backup: gboolean; cdecl;
begin
  Result := Gio2.g_file_info_get_is_backup(@self);
end;

function TGFileInfo.get_is_hidden: gboolean; cdecl;
begin
  Result := Gio2.g_file_info_get_is_hidden(@self);
end;

function TGFileInfo.get_is_symlink: gboolean; cdecl;
begin
  Result := Gio2.g_file_info_get_is_symlink(@self);
end;

procedure TGFileInfo.get_modification_time(result_: PGTimeVal); cdecl;
begin
  Gio2.g_file_info_get_modification_time(@self, result_);
end;

function TGFileInfo.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_name(@self);
end;

function TGFileInfo.get_size: gint64; cdecl;
begin
  Result := Gio2.g_file_info_get_size(@self);
end;

function TGFileInfo.get_sort_order: gint32; cdecl;
begin
  Result := Gio2.g_file_info_get_sort_order(@self);
end;

function TGFileInfo.get_symlink_target: Pgchar; cdecl;
begin
  Result := Gio2.g_file_info_get_symlink_target(@self);
end;

function TGFileInfo.has_attribute(attribute: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_info_has_attribute(@self, attribute);
end;

function TGFileInfo.has_namespace(name_space: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_info_has_namespace(@self, name_space);
end;

function TGFileInfo.list_attributes(name_space: Pgchar): PPgchar; cdecl;
begin
  Result := Gio2.g_file_info_list_attributes(@self, name_space);
end;

procedure TGFileInfo.remove_attribute(attribute: Pgchar); cdecl;
begin
  Gio2.g_file_info_remove_attribute(@self, attribute);
end;

procedure TGFileInfo.set_attribute(attribute: Pgchar; type_: TGFileAttributeType; value_p: gpointer); cdecl;
begin
  Gio2.g_file_info_set_attribute(@self, attribute, type_, value_p);
end;

procedure TGFileInfo.set_attribute_boolean(attribute: Pgchar; attr_value: gboolean); cdecl;
begin
  Gio2.g_file_info_set_attribute_boolean(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_attribute_byte_string(attribute: Pgchar; attr_value: Pgchar); cdecl;
begin
  Gio2.g_file_info_set_attribute_byte_string(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_attribute_int32(attribute: Pgchar; attr_value: gint32); cdecl;
begin
  Gio2.g_file_info_set_attribute_int32(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_attribute_int64(attribute: Pgchar; attr_value: gint64); cdecl;
begin
  Gio2.g_file_info_set_attribute_int64(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_attribute_mask(mask: PGFileAttributeMatcher); cdecl;
begin
  Gio2.g_file_info_set_attribute_mask(@self, mask);
end;

procedure TGFileInfo.set_attribute_object(attribute: Pgchar; attr_value: PGObject); cdecl;
begin
  Gio2.g_file_info_set_attribute_object(@self, attribute, attr_value);
end;

function TGFileInfo.set_attribute_status(attribute: Pgchar; status: TGFileAttributeStatus): gboolean; cdecl;
begin
  Result := Gio2.g_file_info_set_attribute_status(@self, attribute, status);
end;

procedure TGFileInfo.set_attribute_string(attribute: Pgchar; attr_value: Pgchar); cdecl;
begin
  Gio2.g_file_info_set_attribute_string(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_attribute_stringv(attribute: Pgchar; attr_value: PPgchar); cdecl;
begin
  Gio2.g_file_info_set_attribute_stringv(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_attribute_uint32(attribute: Pgchar; attr_value: guint32); cdecl;
begin
  Gio2.g_file_info_set_attribute_uint32(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_attribute_uint64(attribute: Pgchar; attr_value: guint64); cdecl;
begin
  Gio2.g_file_info_set_attribute_uint64(@self, attribute, attr_value);
end;

procedure TGFileInfo.set_content_type(content_type: Pgchar); cdecl;
begin
  Gio2.g_file_info_set_content_type(@self, content_type);
end;

procedure TGFileInfo.set_display_name(display_name: Pgchar); cdecl;
begin
  Gio2.g_file_info_set_display_name(@self, display_name);
end;

procedure TGFileInfo.set_edit_name(edit_name: Pgchar); cdecl;
begin
  Gio2.g_file_info_set_edit_name(@self, edit_name);
end;

procedure TGFileInfo.set_file_type(type_: TGFileType); cdecl;
begin
  Gio2.g_file_info_set_file_type(@self, type_);
end;

procedure TGFileInfo.set_icon(icon: PGIcon); cdecl;
begin
  Gio2.g_file_info_set_icon(@self, icon);
end;

procedure TGFileInfo.set_is_hidden(is_hidden: gboolean); cdecl;
begin
  Gio2.g_file_info_set_is_hidden(@self, is_hidden);
end;

procedure TGFileInfo.set_is_symlink(is_symlink: gboolean); cdecl;
begin
  Gio2.g_file_info_set_is_symlink(@self, is_symlink);
end;

procedure TGFileInfo.set_modification_time(mtime: PGTimeVal); cdecl;
begin
  Gio2.g_file_info_set_modification_time(@self, mtime);
end;

procedure TGFileInfo.set_name(name: Pgchar); cdecl;
begin
  Gio2.g_file_info_set_name(@self, name);
end;

procedure TGFileInfo.set_size(size: gint64); cdecl;
begin
  Gio2.g_file_info_set_size(@self, size);
end;

procedure TGFileInfo.set_sort_order(sort_order: gint32); cdecl;
begin
  Gio2.g_file_info_set_sort_order(@self, sort_order);
end;

procedure TGFileInfo.set_symlink_target(symlink_target: Pgchar); cdecl;
begin
  Gio2.g_file_info_set_symlink_target(@self, symlink_target);
end;

procedure TGFileInfo.unset_attribute_mask; cdecl;
begin
  Gio2.g_file_info_unset_attribute_mask(@self);
end;

function TGFileAttributeInfoList.new: PGFileAttributeInfoList; cdecl;
begin
  Result := Gio2.g_file_attribute_info_list_new();
end;


procedure TGFileAttributeInfoList.add(name: Pgchar; type_: TGFileAttributeType; flags: TGFileAttributeInfoFlags); cdecl;
begin
  Gio2.g_file_attribute_info_list_add(@self, name, type_, flags);
end;

function TGFileAttributeInfoList.dup: PGFileAttributeInfoList; cdecl;
begin
  Result := Gio2.g_file_attribute_info_list_dup(@self);
end;

function TGFileAttributeInfoList.lookup(name: Pgchar): PGFileAttributeInfo; cdecl;
begin
  Result := Gio2.g_file_attribute_info_list_lookup(@self, name);
end;

function TGFileAttributeInfoList.ref: PGFileAttributeInfoList; cdecl;
begin
  Result := Gio2.g_file_attribute_info_list_ref(@self);
end;

procedure TGFileAttributeInfoList.unref; cdecl;
begin
  Gio2.g_file_attribute_info_list_unref(@self);
end;

function TGFileInputStream.query_info(attributes: Pgchar; cancellable: PGCancellable): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_input_stream_query_info(@self, attributes, cancellable);
end;

procedure TGFileInputStream.query_info_async(attributes: Pgchar; io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_file_input_stream_query_info_async(@self, attributes, io_priority, cancellable, callback, user_data);
end;

function TGFileInputStream.query_info_finish(result_: PGAsyncResult): PGFileInfo; cdecl;
begin
  Result := Gio2.g_file_input_stream_query_info_finish(@self, result_);
end;

function TGFileAttributeMatcher.new(attributes: Pgchar): PGFileAttributeMatcher; cdecl;
begin
  Result := Gio2.g_file_attribute_matcher_new(attributes);
end;

function TGFileAttributeMatcher.enumerate_namespace(ns: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_attribute_matcher_enumerate_namespace(@self, ns);
end;

function TGFileAttributeMatcher.enumerate_next: Pgchar; cdecl;
begin
  Result := Gio2.g_file_attribute_matcher_enumerate_next(@self);
end;

function TGFileAttributeMatcher.matches(attribute: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_attribute_matcher_matches(@self, attribute);
end;

function TGFileAttributeMatcher.matches_only(attribute: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_file_attribute_matcher_matches_only(@self, attribute);
end;

function TGFileAttributeMatcher.ref: PGFileAttributeMatcher; cdecl;
begin
  Result := Gio2.g_file_attribute_matcher_ref(@self);
end;

procedure TGFileAttributeMatcher.unref; cdecl;
begin
  Gio2.g_file_attribute_matcher_unref(@self);
end;

function TGFileDescriptorBased.get_fd: gint; cdecl;
begin
  Result := Gio2.g_file_descriptor_based_get_fd(@self);
end;

function TGSeekable.can_seek: gboolean; cdecl;
begin
  Result := Gio2.g_seekable_can_seek(@self);
end;

function TGSeekable.can_truncate: gboolean; cdecl;
begin
  Result := Gio2.g_seekable_can_truncate(@self);
end;

function TGSeekable.seek(offset: gint64; type_: TGSeekType; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_seekable_seek(@self, offset, type_, cancellable);
end;

function TGSeekable.tell: gint64; cdecl;
begin
  Result := Gio2.g_seekable_tell(@self);
end;

function TGSeekable.truncate(offset: gint64; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_seekable_truncate(@self, offset, cancellable);
end;

function TGLoadableIcon.load(size: gint; type_: PPgchar; cancellable: PGCancellable): PGInputStream; cdecl;
begin
  Result := Gio2.g_loadable_icon_load(@self, size, type_, cancellable);
end;

procedure TGLoadableIcon.load_async(size: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_loadable_icon_load_async(@self, size, cancellable, callback, user_data);
end;

function TGLoadableIcon.load_finish(res: PGAsyncResult; type_: PPgchar): PGInputStream; cdecl;
begin
  Result := Gio2.g_loadable_icon_load_finish(@self, res, type_);
end;

function TGFileIcon.get_file: PGFile; cdecl;
begin
  Result := Gio2.g_file_icon_get_file(@self);
end;

function TGFilenameCompleter.new: PGFilenameCompleter; cdecl;
begin
  Result := Gio2.g_filename_completer_new();
end;

function TGFilenameCompleter.get_completion_suffix(initial_text: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_filename_completer_get_completion_suffix(@self, initial_text);
end;

function TGFilenameCompleter.get_completions(initial_text: Pgchar): PPgchar; cdecl;
begin
  Result := Gio2.g_filename_completer_get_completions(@self, initial_text);
end;

procedure TGFilenameCompleter.set_dirs_only(dirs_only: gboolean); cdecl;
begin
  Gio2.g_filename_completer_set_dirs_only(@self, dirs_only);
end;

function TGIOExtension.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_io_extension_get_name(@self);
end;

function TGIOExtension.get_priority: gint; cdecl;
begin
  Result := Gio2.g_io_extension_get_priority(@self);
end;

function TGIOExtension.ref_class: PGTypeClass; cdecl;
begin
  Result := Gio2.g_io_extension_ref_class(@self);
end;

function TGIOExtensionPoint.get_extension_by_name(name: Pgchar): PGIOExtension; cdecl;
begin
  Result := Gio2.g_io_extension_point_get_extension_by_name(@self, name);
end;

function TGIOExtensionPoint.get_extensions: PGList; cdecl;
begin
  Result := Gio2.g_io_extension_point_get_extensions(@self);
end;

function TGIOExtensionPoint.get_required_type: TGType; cdecl;
begin
  Result := Gio2.g_io_extension_point_get_required_type(@self);
end;

procedure TGIOExtensionPoint.set_required_type(type_: TGType); cdecl;
begin
  Gio2.g_io_extension_point_set_required_type(@self, type_);
end;

function TGIOExtensionPoint.implement(extension_point_name: Pgchar; type_: TGType; extension_name: Pgchar; priority: gint): PGIOExtension; cdecl;
begin
  Result := Gio2.g_io_extension_point_implement(extension_point_name, type_, extension_name, priority);
end;

function TGIOExtensionPoint.lookup(name: Pgchar): PGIOExtensionPoint; cdecl;
begin
  Result := Gio2.g_io_extension_point_lookup(name);
end;

function TGIOExtensionPoint.register(name: Pgchar): PGIOExtensionPoint; cdecl;
begin
  Result := Gio2.g_io_extension_point_register(name);
end;

function TGIOModule.new(filename: Pgchar): PGIOModule; cdecl;
begin
  Result := Gio2.g_io_module_new(filename);
end;

procedure TGIOModuleScope.block(basename: Pgchar); cdecl;
begin
  Gio2.g_io_module_scope_block(@self, basename);
end;

procedure TGIOModuleScope.free; cdecl;
begin
  Gio2.g_io_module_scope_free(@self);
end;

function TGIOModuleScope.new(flags: TGIOModuleScopeFlags): PGIOModuleScope; cdecl;
begin
  Result := Gio2.g_io_module_scope_new(flags);
end;

function TGIOSchedulerJob.send_to_mainloop(func: TGSourceFunc; user_data: gpointer; notify: TGDestroyNotify): gboolean; cdecl;
begin
  Result := Gio2.g_io_scheduler_job_send_to_mainloop(@self, func, user_data, notify);
end;

procedure TGIOSchedulerJob.send_to_mainloop_async(func: TGSourceFunc; user_data: gpointer; notify: TGDestroyNotify); cdecl;
begin
  Gio2.g_io_scheduler_job_send_to_mainloop_async(@self, func, user_data, notify);
end;

function TGInetAddress.new_any(family: TGSocketFamily): PGInetAddress; cdecl;
begin
  Result := Gio2.g_inet_address_new_any(family);
end;

function TGInetAddress.new_from_bytes(bytes: Pguint8; family: TGSocketFamily): PGInetAddress; cdecl;
begin
  Result := Gio2.g_inet_address_new_from_bytes(bytes, family);
end;

function TGInetAddress.new_from_string(string_: Pgchar): PGInetAddress; cdecl;
begin
  Result := Gio2.g_inet_address_new_from_string(string_);
end;

function TGInetAddress.new_loopback(family: TGSocketFamily): PGInetAddress; cdecl;
begin
  Result := Gio2.g_inet_address_new_loopback(family);
end;

function TGInetAddress.equal(other_address: PGInetAddress): gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_equal(@self, other_address);
end;

function TGInetAddress.get_family: TGSocketFamily; cdecl;
begin
  Result := Gio2.g_inet_address_get_family(@self);
end;

function TGInetAddress.get_is_any: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_any(@self);
end;

function TGInetAddress.get_is_link_local: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_link_local(@self);
end;

function TGInetAddress.get_is_loopback: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_loopback(@self);
end;

function TGInetAddress.get_is_mc_global: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_mc_global(@self);
end;

function TGInetAddress.get_is_mc_link_local: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_mc_link_local(@self);
end;

function TGInetAddress.get_is_mc_node_local: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_mc_node_local(@self);
end;

function TGInetAddress.get_is_mc_org_local: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_mc_org_local(@self);
end;

function TGInetAddress.get_is_mc_site_local: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_mc_site_local(@self);
end;

function TGInetAddress.get_is_multicast: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_multicast(@self);
end;

function TGInetAddress.get_is_site_local: gboolean; cdecl;
begin
  Result := Gio2.g_inet_address_get_is_site_local(@self);
end;

function TGInetAddress.get_native_size: gsize; cdecl;
begin
  Result := Gio2.g_inet_address_get_native_size(@self);
end;

function TGInetAddress.to_bytes: Pguint8; cdecl;
begin
  Result := Gio2.g_inet_address_to_bytes(@self);
end;

function TGInetAddress.to_string: Pgchar; cdecl;
begin
  Result := Gio2.g_inet_address_to_string(@self);
end;

function TGSocketConnectable.enumerate: PGSocketAddressEnumerator; cdecl;
begin
  Result := Gio2.g_socket_connectable_enumerate(@self);
end;

function TGSocketConnectable.proxy_enumerate: PGSocketAddressEnumerator; cdecl;
begin
  Result := Gio2.g_socket_connectable_proxy_enumerate(@self);
end;

function TGSocketAddress.new_from_native(native: gpointer; len: gsize): PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_address_new_from_native(native, len);
end;

function TGSocketAddress.get_family: TGSocketFamily; cdecl;
begin
  Result := Gio2.g_socket_address_get_family(@self);
end;

function TGSocketAddress.get_native_size: gssize; cdecl;
begin
  Result := Gio2.g_socket_address_get_native_size(@self);
end;

function TGSocketAddress.to_native(dest: gpointer; destlen: gsize): gboolean; cdecl;
begin
  Result := Gio2.g_socket_address_to_native(@self, dest, destlen);
end;

function TGInetSocketAddress.new(address: PGInetAddress; port: guint16): PGInetSocketAddress; cdecl;
begin
  Result := Gio2.g_inet_socket_address_new(address, port);
end;

function TGInetSocketAddress.get_address: PGInetAddress; cdecl;
begin
  Result := Gio2.g_inet_socket_address_get_address(@self);
end;

function TGInetSocketAddress.get_port: guint16; cdecl;
begin
  Result := Gio2.g_inet_socket_address_get_port(@self);
end;

function TGMemoryInputStream.new: PGMemoryInputStream; cdecl;
begin
  Result := Gio2.g_memory_input_stream_new();
end;

function TGMemoryInputStream.new_from_data(data: Pguint8; len: gssize; destroy_: TGDestroyNotify): PGMemoryInputStream; cdecl;
begin
  Result := Gio2.g_memory_input_stream_new_from_data(data, len, destroy_);
end;

procedure TGMemoryInputStream.add_data(data: Pguint8; len: gssize; destroy_: TGDestroyNotify); cdecl;
begin
  Gio2.g_memory_input_stream_add_data(@self, data, len, destroy_);
end;

function TGMemoryOutputStream.new(data: gpointer; size: gsize; realloc_function: TGReallocFunc; destroy_function: TGDestroyNotify): PGMemoryOutputStream; cdecl;
begin
  Result := Gio2.g_memory_output_stream_new(data, size, realloc_function, destroy_function);
end;

function TGMemoryOutputStream.get_data: gpointer; cdecl;
begin
  Result := Gio2.g_memory_output_stream_get_data(@self);
end;

function TGMemoryOutputStream.get_data_size: gsize; cdecl;
begin
  Result := Gio2.g_memory_output_stream_get_data_size(@self);
end;

function TGMemoryOutputStream.get_size: gsize; cdecl;
begin
  Result := Gio2.g_memory_output_stream_get_size(@self);
end;

function TGMemoryOutputStream.steal_data: gpointer; cdecl;
begin
  Result := Gio2.g_memory_output_stream_steal_data(@self);
end;

function TGVolume.can_eject: gboolean; cdecl;
begin
  Result := Gio2.g_volume_can_eject(@self);
end;

function TGVolume.can_mount: gboolean; cdecl;
begin
  Result := Gio2.g_volume_can_mount(@self);
end;

procedure TGVolume.eject_with_operation(flags: TGMountUnmountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_volume_eject_with_operation(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGVolume.eject_with_operation_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_volume_eject_with_operation_finish(@self, result_);
end;

function TGVolume.enumerate_identifiers: PPgchar; cdecl;
begin
  Result := Gio2.g_volume_enumerate_identifiers(@self);
end;

function TGVolume.get_activation_root: PGFile; cdecl;
begin
  Result := Gio2.g_volume_get_activation_root(@self);
end;

function TGVolume.get_drive: PGDrive; cdecl;
begin
  Result := Gio2.g_volume_get_drive(@self);
end;

function TGVolume.get_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_volume_get_icon(@self);
end;

function TGVolume.get_identifier(kind: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_volume_get_identifier(@self, kind);
end;

function TGVolume.get_mount: PGMount; cdecl;
begin
  Result := Gio2.g_volume_get_mount(@self);
end;

function TGVolume.get_name: Pgchar; cdecl;
begin
  Result := Gio2.g_volume_get_name(@self);
end;

function TGVolume.get_uuid: Pgchar; cdecl;
begin
  Result := Gio2.g_volume_get_uuid(@self);
end;

procedure TGVolume.mount(flags: TGMountMountFlags; mount_operation: PGMountOperation; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_volume_mount(@self, flags, mount_operation, cancellable, callback, user_data);
end;

function TGVolume.mount_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_volume_mount_finish(@self, result_);
end;

function TGVolume.should_automount: gboolean; cdecl;
begin
  Result := Gio2.g_volume_should_automount(@self);
end;

function TGVolumeMonitor.get: PGVolumeMonitor; cdecl;
begin
  Result := Gio2.g_volume_monitor_get();
end;

function TGVolumeMonitor.get_connected_drives: PGList; cdecl;
begin
  Result := Gio2.g_volume_monitor_get_connected_drives(@self);
end;

function TGVolumeMonitor.get_mount_for_uuid(uuid: Pgchar): PGMount; cdecl;
begin
  Result := Gio2.g_volume_monitor_get_mount_for_uuid(@self, uuid);
end;

function TGVolumeMonitor.get_mounts: PGList; cdecl;
begin
  Result := Gio2.g_volume_monitor_get_mounts(@self);
end;

function TGVolumeMonitor.get_volume_for_uuid(uuid: Pgchar): PGVolume; cdecl;
begin
  Result := Gio2.g_volume_monitor_get_volume_for_uuid(@self, uuid);
end;

function TGVolumeMonitor.get_volumes: PGList; cdecl;
begin
  Result := Gio2.g_volume_monitor_get_volumes(@self);
end;

function TGNetworkAddress.new(hostname: Pgchar; port: guint16): PGSocketConnectable; cdecl;
begin
  Result := Gio2.g_network_address_new(hostname, port);
end;

function TGNetworkAddress.parse(host_and_port: Pgchar; default_port: guint16): PGSocketConnectable; cdecl;
begin
  Result := Gio2.g_network_address_parse(host_and_port, default_port);
end;

function TGNetworkAddress.parse_uri(uri: Pgchar; default_port: guint16): PGSocketConnectable; cdecl;
begin
  Result := Gio2.g_network_address_parse_uri(uri, default_port);
end;

function TGNetworkAddress.get_hostname: Pgchar; cdecl;
begin
  Result := Gio2.g_network_address_get_hostname(@self);
end;

function TGNetworkAddress.get_port: guint16; cdecl;
begin
  Result := Gio2.g_network_address_get_port(@self);
end;

function TGNetworkAddress.get_scheme: Pgchar; cdecl;
begin
  Result := Gio2.g_network_address_get_scheme(@self);
end;

function TGNetworkService.new(service: Pgchar; protocol: Pgchar; domain: Pgchar): PGSocketConnectable; cdecl;
begin
  Result := Gio2.g_network_service_new(service, protocol, domain);
end;

function TGNetworkService.get_domain: Pgchar; cdecl;
begin
  Result := Gio2.g_network_service_get_domain(@self);
end;

function TGNetworkService.get_protocol: Pgchar; cdecl;
begin
  Result := Gio2.g_network_service_get_protocol(@self);
end;

function TGNetworkService.get_scheme: Pgchar; cdecl;
begin
  Result := Gio2.g_network_service_get_scheme(@self);
end;

function TGNetworkService.get_service: Pgchar; cdecl;
begin
  Result := Gio2.g_network_service_get_service(@self);
end;

procedure TGNetworkService.set_scheme(scheme: Pgchar); cdecl;
begin
  Gio2.g_network_service_set_scheme(@self, scheme);
end;

function TGPermission.acquire(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_permission_acquire(@self, cancellable);
end;

procedure TGPermission.acquire_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_permission_acquire_async(@self, cancellable, callback, user_data);
end;

function TGPermission.acquire_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_permission_acquire_finish(@self, result_);
end;

function TGPermission.get_allowed: gboolean; cdecl;
begin
  Result := Gio2.g_permission_get_allowed(@self);
end;

function TGPermission.get_can_acquire: gboolean; cdecl;
begin
  Result := Gio2.g_permission_get_can_acquire(@self);
end;

function TGPermission.get_can_release: gboolean; cdecl;
begin
  Result := Gio2.g_permission_get_can_release(@self);
end;

procedure TGPermission.impl_update(allowed: gboolean; can_acquire: gboolean; can_release: gboolean); cdecl;
begin
  Gio2.g_permission_impl_update(@self, allowed, can_acquire, can_release);
end;

function TGPermission.release(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_permission_release(@self, cancellable);
end;

procedure TGPermission.release_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_permission_release_async(@self, cancellable, callback, user_data);
end;

function TGPermission.release_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_permission_release_finish(@self, result_);
end;

function TGPollableInputStream.can_poll: gboolean; cdecl;
begin
  Result := Gio2.g_pollable_input_stream_can_poll(@self);
end;

function TGPollableInputStream.create_source(cancellable: PGCancellable): PGSource; cdecl;
begin
  Result := Gio2.g_pollable_input_stream_create_source(@self, cancellable);
end;

function TGPollableInputStream.is_readable: gboolean; cdecl;
begin
  Result := Gio2.g_pollable_input_stream_is_readable(@self);
end;

function TGPollableInputStream.read_nonblocking(buffer: Pgpointer; size: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_pollable_input_stream_read_nonblocking(@self, buffer, size, cancellable);
end;

function TGPollableOutputStream.can_poll: gboolean; cdecl;
begin
  Result := Gio2.g_pollable_output_stream_can_poll(@self);
end;

function TGPollableOutputStream.create_source(cancellable: PGCancellable): PGSource; cdecl;
begin
  Result := Gio2.g_pollable_output_stream_create_source(@self, cancellable);
end;

function TGPollableOutputStream.is_writable: gboolean; cdecl;
begin
  Result := Gio2.g_pollable_output_stream_is_writable(@self);
end;

function TGPollableOutputStream.write_nonblocking(buffer: Pguint8; size: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_pollable_output_stream_write_nonblocking(@self, buffer, size, cancellable);
end;

function TGProxy.get_default_for_protocol(protocol: Pgchar): PGProxy; cdecl;
begin
  Result := Gio2.g_proxy_get_default_for_protocol(protocol);
end;

function TGProxy.connect(connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable): PGIOStream; cdecl;
begin
  Result := Gio2.g_proxy_connect(@self, connection, proxy_address, cancellable);
end;

procedure TGProxy.connect_async(connection: PGIOStream; proxy_address: PGProxyAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_proxy_connect_async(@self, connection, proxy_address, cancellable, callback, user_data);
end;

function TGProxy.connect_finish(result_: PGAsyncResult): PGIOStream; cdecl;
begin
  Result := Gio2.g_proxy_connect_finish(@self, result_);
end;

function TGProxy.supports_hostname: gboolean; cdecl;
begin
  Result := Gio2.g_proxy_supports_hostname(@self);
end;

function TGProxyAddress.new(inetaddr: PGInetAddress; port: guint16; protocol: Pgchar; dest_hostname: Pgchar; dest_port: guint16; username: Pgchar; password: Pgchar): PGProxyAddress; cdecl;
begin
  Result := Gio2.g_proxy_address_new(inetaddr, port, protocol, dest_hostname, dest_port, username, password);
end;

function TGProxyAddress.get_destination_hostname: Pgchar; cdecl;
begin
  Result := Gio2.g_proxy_address_get_destination_hostname(@self);
end;

function TGProxyAddress.get_destination_port: guint16; cdecl;
begin
  Result := Gio2.g_proxy_address_get_destination_port(@self);
end;

function TGProxyAddress.get_password: Pgchar; cdecl;
begin
  Result := Gio2.g_proxy_address_get_password(@self);
end;

function TGProxyAddress.get_protocol: Pgchar; cdecl;
begin
  Result := Gio2.g_proxy_address_get_protocol(@self);
end;

function TGProxyAddress.get_username: Pgchar; cdecl;
begin
  Result := Gio2.g_proxy_address_get_username(@self);
end;

function TGSocketAddressEnumerator.next(cancellable: PGCancellable): PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_address_enumerator_next(@self, cancellable);
end;

procedure TGSocketAddressEnumerator.next_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_socket_address_enumerator_next_async(@self, cancellable, callback, user_data);
end;

function TGSocketAddressEnumerator.next_finish(result_: PGAsyncResult): PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_address_enumerator_next_finish(@self, result_);
end;

function TGProxyResolver.get_default: PGProxyResolver; cdecl;
begin
  Result := Gio2.g_proxy_resolver_get_default();
end;

function TGProxyResolver.is_supported: gboolean; cdecl;
begin
  Result := Gio2.g_proxy_resolver_is_supported(@self);
end;

function TGProxyResolver.lookup(uri: Pgchar; cancellable: PGCancellable): PPgchar; cdecl;
begin
  Result := Gio2.g_proxy_resolver_lookup(@self, uri, cancellable);
end;

procedure TGProxyResolver.lookup_async(uri: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_proxy_resolver_lookup_async(@self, uri, cancellable, callback, user_data);
end;

function TGProxyResolver.lookup_finish(result_: PGAsyncResult): PPgchar; cdecl;
begin
  Result := Gio2.g_proxy_resolver_lookup_finish(@self, result_);
end;

procedure TGResolver.free_addresses(addresses: PGList); cdecl;
begin
  Gio2.g_resolver_free_addresses(addresses);
end;

procedure TGResolver.free_targets(targets: PGList); cdecl;
begin
  Gio2.g_resolver_free_targets(targets);
end;

function TGResolver.get_default: PGResolver; cdecl;
begin
  Result := Gio2.g_resolver_get_default();
end;

function TGResolver.lookup_by_address(address: PGInetAddress; cancellable: PGCancellable): Pgchar; cdecl;
begin
  Result := Gio2.g_resolver_lookup_by_address(@self, address, cancellable);
end;

procedure TGResolver.lookup_by_address_async(address: PGInetAddress; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_resolver_lookup_by_address_async(@self, address, cancellable, callback, user_data);
end;

function TGResolver.lookup_by_address_finish(result_: PGAsyncResult): Pgchar; cdecl;
begin
  Result := Gio2.g_resolver_lookup_by_address_finish(@self, result_);
end;

function TGResolver.lookup_by_name(hostname: Pgchar; cancellable: PGCancellable): PGList; cdecl;
begin
  Result := Gio2.g_resolver_lookup_by_name(@self, hostname, cancellable);
end;

procedure TGResolver.lookup_by_name_async(hostname: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_resolver_lookup_by_name_async(@self, hostname, cancellable, callback, user_data);
end;

function TGResolver.lookup_by_name_finish(result_: PGAsyncResult): PGList; cdecl;
begin
  Result := Gio2.g_resolver_lookup_by_name_finish(@self, result_);
end;

function TGResolver.lookup_service(service: Pgchar; protocol: Pgchar; domain: Pgchar; cancellable: PGCancellable): PGList; cdecl;
begin
  Result := Gio2.g_resolver_lookup_service(@self, service, protocol, domain, cancellable);
end;

procedure TGResolver.lookup_service_async(service: Pgchar; protocol: Pgchar; domain: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_resolver_lookup_service_async(@self, service, protocol, domain, cancellable, callback, user_data);
end;

function TGResolver.lookup_service_finish(result_: PGAsyncResult): PGList; cdecl;
begin
  Result := Gio2.g_resolver_lookup_service_finish(@self, result_);
end;

procedure TGResolver.set_default; cdecl;
begin
  Gio2.g_resolver_set_default(@self);
end;

function TGSettings.new(schema: Pgchar): PGSettings; cdecl;
begin
  Result := Gio2.g_settings_new(schema);
end;

function TGSettings.new_with_backend(schema: Pgchar; backend: PGSettingsBackend): PGSettings; cdecl;
begin
  Result := Gio2.g_settings_new_with_backend(schema, backend);
end;

function TGSettings.new_with_backend_and_path(schema: Pgchar; backend: PGSettingsBackend; path: Pgchar): PGSettings; cdecl;
begin
  Result := Gio2.g_settings_new_with_backend_and_path(schema, backend, path);
end;

function TGSettings.new_with_path(schema: Pgchar; path: Pgchar): PGSettings; cdecl;
begin
  Result := Gio2.g_settings_new_with_path(schema, path);
end;

function TGSettings.list_relocatable_schemas: PPgchar; cdecl;
begin
  Result := Gio2.g_settings_list_relocatable_schemas();
end;

function TGSettings.list_schemas: PPgchar; cdecl;
begin
  Result := Gio2.g_settings_list_schemas();
end;

procedure TGSettings.sync; cdecl;
begin
  Gio2.g_settings_sync();
end;

procedure TGSettings.unbind(object_: gpointer; property_: Pgchar); cdecl;
begin
  Gio2.g_settings_unbind(object_, property_);
end;

procedure TGSettings.apply; cdecl;
begin
  Gio2.g_settings_apply(@self);
end;


procedure TGSettings.bind(key: Pgchar; object_: TGObject; property_: Pgchar; flags: TGSettingsBindFlags); cdecl;
begin
  Gio2.g_settings_bind(@self, key, object_, property_, flags);
end;

procedure TGSettings.bind_with_mapping(key: Pgchar; object_: TGObject; property_: Pgchar; flags: TGSettingsBindFlags; get_mapping: TGSettingsBindGetMapping; set_mapping: TGSettingsBindSetMapping; user_data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  Gio2.g_settings_bind_with_mapping(@self, key, object_, property_, flags, get_mapping, set_mapping, user_data, destroy_);
end;

procedure TGSettings.bind_writable(key: Pgchar; object_: TGObject; property_: Pgchar; inverted: gboolean); cdecl;
begin
  Gio2.g_settings_bind_writable(@self, key, object_, property_, inverted);
end;

procedure TGSettings.delay; cdecl;
begin
  Gio2.g_settings_delay(@self);
end;

function TGSettings.get_boolean(key: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_settings_get_boolean(@self, key);
end;

function TGSettings.get_child(name: Pgchar): PGSettings; cdecl;
begin
  Result := Gio2.g_settings_get_child(@self, name);
end;

function TGSettings.get_double(key: Pgchar): gdouble; cdecl;
begin
  Result := Gio2.g_settings_get_double(@self, key);
end;

function TGSettings.get_enum(key: Pgchar): gint; cdecl;
begin
  Result := Gio2.g_settings_get_enum(@self, key);
end;

function TGSettings.get_flags(key: Pgchar): guint; cdecl;
begin
  Result := Gio2.g_settings_get_flags(@self, key);
end;

function TGSettings.get_has_unapplied: gboolean; cdecl;
begin
  Result := Gio2.g_settings_get_has_unapplied(@self);
end;

function TGSettings.get_int(key: Pgchar): gint; cdecl;
begin
  Result := Gio2.g_settings_get_int(@self, key);
end;

function TGSettings.get_mapped(key: Pgchar; mapping: TGSettingsGetMapping; user_data: gpointer): gpointer; cdecl;
begin
  Result := Gio2.g_settings_get_mapped(@self, key, mapping, user_data);
end;

function TGSettings.get_range(key: Pgchar): PGVariant; cdecl;
begin
  Result := Gio2.g_settings_get_range(@self, key);
end;

function TGSettings.get_string(key: Pgchar): Pgchar; cdecl;
begin
  Result := Gio2.g_settings_get_string(@self, key);
end;

function TGSettings.get_strv(key: Pgchar): PPgchar; cdecl;
begin
  Result := Gio2.g_settings_get_strv(@self, key);
end;

function TGSettings.get_uint(key: Pgchar): guint; cdecl;
begin
  Result := Gio2.g_settings_get_uint(@self, key);
end;

function TGSettings.get_value(key: Pgchar): PGVariant; cdecl;
begin
  Result := Gio2.g_settings_get_value(@self, key);
end;

function TGSettings.is_writable(name: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_settings_is_writable(@self, name);
end;

function TGSettings.list_children: PPgchar; cdecl;
begin
  Result := Gio2.g_settings_list_children(@self);
end;

function TGSettings.list_keys: PPgchar; cdecl;
begin
  Result := Gio2.g_settings_list_keys(@self);
end;

function TGSettings.range_check(key: Pgchar; value: PGVariant): gboolean; cdecl;
begin
  Result := Gio2.g_settings_range_check(@self, key, value);
end;

procedure TGSettings.reset(key: Pgchar); cdecl;
begin
  Gio2.g_settings_reset(@self, key);
end;

procedure TGSettings.revert; cdecl;
begin
  Gio2.g_settings_revert(@self);
end;

function TGSettings.set_boolean(key: Pgchar; value: gboolean): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_boolean(@self, key, value);
end;

function TGSettings.set_double(key: Pgchar; value: gdouble): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_double(@self, key, value);
end;

function TGSettings.set_enum(key: Pgchar; value: gint): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_enum(@self, key, value);
end;

function TGSettings.set_flags(key: Pgchar; value: guint): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_flags(@self, key, value);
end;

function TGSettings.set_int(key: Pgchar; value: gint): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_int(@self, key, value);
end;

function TGSettings.set_string(key: Pgchar; value: Pgchar): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_string(@self, key, value);
end;

function TGSettings.set_strv(key: Pgchar; value: PPgchar): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_strv(@self, key, value);
end;

function TGSettings.set_uint(key: Pgchar; value: guint): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_uint(@self, key, value);
end;

function TGSettings.set_value(key: Pgchar; value: PGVariant): gboolean; cdecl;
begin
  Result := Gio2.g_settings_set_value(@self, key, value);
end;

function TGSimpleActionGroup.new: PGSimpleActionGroup; cdecl;
begin
  Result := Gio2.g_simple_action_group_new();
end;

procedure TGSimpleActionGroup.add_entries(entries: PGActionEntry; n_entries: gint; user_data: gpointer); cdecl;
begin
  Gio2.g_simple_action_group_add_entries(@self, entries, n_entries, user_data);
end;

procedure TGSimpleActionGroup.insert(action: PGAction); cdecl;
begin
  Gio2.g_simple_action_group_insert(@self, action);
end;

function TGSimpleActionGroup.lookup(action_name: Pgchar): PGAction; cdecl;
begin
  Result := Gio2.g_simple_action_group_lookup(@self, action_name);
end;

procedure TGSimpleActionGroup.remove(action_name: Pgchar); cdecl;
begin
  Gio2.g_simple_action_group_remove(@self, action_name);
end;

function TGSimpleAsyncResult.new(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; source_tag: gpointer): PGSimpleAsyncResult; cdecl;
begin
  Result := Gio2.g_simple_async_result_new(source_object, callback, user_data, source_tag);
end;

function TGSimpleAsyncResult.new_from_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError): PGSimpleAsyncResult; cdecl;
begin
  Result := Gio2.g_simple_async_result_new_from_error(source_object, callback, user_data, error);
end;

function TGSimpleAsyncResult.new_take_error(source_object: PGObject; callback: TGAsyncReadyCallback; user_data: gpointer; error: PGError): PGSimpleAsyncResult; cdecl;
begin
  Result := Gio2.g_simple_async_result_new_take_error(source_object, callback, user_data, error);
end;

function TGSimpleAsyncResult.is_valid(result_: PGAsyncResult; source: PGObject; source_tag: gpointer): gboolean; cdecl;
begin
  Result := Gio2.g_simple_async_result_is_valid(result_, source, source_tag);
end;

procedure TGSimpleAsyncResult.complete; cdecl;
begin
  Gio2.g_simple_async_result_complete(@self);
end;

procedure TGSimpleAsyncResult.complete_in_idle; cdecl;
begin
  Gio2.g_simple_async_result_complete_in_idle(@self);
end;

function TGSimpleAsyncResult.get_op_res_gboolean: gboolean; cdecl;
begin
  Result := Gio2.g_simple_async_result_get_op_res_gboolean(@self);
end;

function TGSimpleAsyncResult.get_op_res_gpointer: gpointer; cdecl;
begin
  Result := Gio2.g_simple_async_result_get_op_res_gpointer(@self);
end;

function TGSimpleAsyncResult.get_op_res_gssize: gssize; cdecl;
begin
  Result := Gio2.g_simple_async_result_get_op_res_gssize(@self);
end;

function TGSimpleAsyncResult.get_source_tag: gpointer; cdecl;
begin
  Result := Gio2.g_simple_async_result_get_source_tag(@self);
end;

function TGSimpleAsyncResult.propagate_error: gboolean; cdecl;
begin
  Result := Gio2.g_simple_async_result_propagate_error(@self);
end;

procedure TGSimpleAsyncResult.run_in_thread(func: TGSimpleAsyncThreadFunc; io_priority: gint; cancellable: PGCancellable); cdecl;
begin
  Gio2.g_simple_async_result_run_in_thread(@self, func, io_priority, cancellable);
end;

procedure TGSimpleAsyncResult.set_from_error(error: PGError); cdecl;
begin
  Gio2.g_simple_async_result_set_from_error(@self, error);
end;

procedure TGSimpleAsyncResult.set_handle_cancellation(handle_cancellation: gboolean); cdecl;
begin
  Gio2.g_simple_async_result_set_handle_cancellation(@self, handle_cancellation);
end;

procedure TGSimpleAsyncResult.set_op_res_gboolean(op_res: gboolean); cdecl;
begin
  Gio2.g_simple_async_result_set_op_res_gboolean(@self, op_res);
end;

procedure TGSimpleAsyncResult.set_op_res_gpointer(op_res: gpointer; destroy_op_res: TGDestroyNotify); cdecl;
begin
  Gio2.g_simple_async_result_set_op_res_gpointer(@self, op_res, destroy_op_res);
end;

procedure TGSimpleAsyncResult.set_op_res_gssize(op_res: gssize); cdecl;
begin
  Gio2.g_simple_async_result_set_op_res_gssize(@self, op_res);
end;

procedure TGSimpleAsyncResult.take_error(error: PGError); cdecl;
begin
  Gio2.g_simple_async_result_take_error(@self, error);
end;

function TGSimplePermission.new(allowed: gboolean): PGSimplePermission; cdecl;
begin
  Result := Gio2.g_simple_permission_new(allowed);
end;

function TGSocket.new(family: TGSocketFamily; type_: TGSocketType; protocol: TGSocketProtocol): PGSocket; cdecl;
begin
  Result := Gio2.g_socket_new(family, type_, protocol);
end;

function TGSocket.new_from_fd(fd: gint): PGSocket; cdecl;
begin
  Result := Gio2.g_socket_new_from_fd(fd);
end;

function TGSocket.accept(cancellable: PGCancellable): PGSocket; cdecl;
begin
  Result := Gio2.g_socket_accept(@self, cancellable);
end;

function TGSocket.bind(address: PGSocketAddress; allow_reuse: gboolean): gboolean; cdecl;
begin
  Result := Gio2.g_socket_bind(@self, address, allow_reuse);
end;

function TGSocket.check_connect_result: gboolean; cdecl;
begin
  Result := Gio2.g_socket_check_connect_result(@self);
end;

function TGSocket.close: gboolean; cdecl;
begin
  Result := Gio2.g_socket_close(@self);
end;

function TGSocket.condition_check(condition: TGIOCondition): TGIOCondition; cdecl;
begin
  Result := Gio2.g_socket_condition_check(@self, condition);
end;

function TGSocket.condition_wait(condition: TGIOCondition; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_socket_condition_wait(@self, condition, cancellable);
end;

function TGSocket.connect(address: PGSocketAddress; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_socket_connect(@self, address, cancellable);
end;

function TGSocket.connection_factory_create_connection: PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_connection_factory_create_connection(@self);
end;

function TGSocket.create_source(condition: TGIOCondition; cancellable: PGCancellable): PGSource; cdecl;
begin
  Result := Gio2.g_socket_create_source(@self, condition, cancellable);
end;

function TGSocket.get_blocking: gboolean; cdecl;
begin
  Result := Gio2.g_socket_get_blocking(@self);
end;

function TGSocket.get_credentials: PGCredentials; cdecl;
begin
  Result := Gio2.g_socket_get_credentials(@self);
end;

function TGSocket.get_family: TGSocketFamily; cdecl;
begin
  Result := Gio2.g_socket_get_family(@self);
end;

function TGSocket.get_fd: gint; cdecl;
begin
  Result := Gio2.g_socket_get_fd(@self);
end;

function TGSocket.get_keepalive: gboolean; cdecl;
begin
  Result := Gio2.g_socket_get_keepalive(@self);
end;

function TGSocket.get_listen_backlog: gint; cdecl;
begin
  Result := Gio2.g_socket_get_listen_backlog(@self);
end;

function TGSocket.get_local_address: PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_get_local_address(@self);
end;

function TGSocket.get_protocol: TGSocketProtocol; cdecl;
begin
  Result := Gio2.g_socket_get_protocol(@self);
end;

function TGSocket.get_remote_address: PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_get_remote_address(@self);
end;

function TGSocket.get_socket_type: TGSocketType; cdecl;
begin
  Result := Gio2.g_socket_get_socket_type(@self);
end;

function TGSocket.get_timeout: guint; cdecl;
begin
  Result := Gio2.g_socket_get_timeout(@self);
end;

function TGSocket.is_closed: gboolean; cdecl;
begin
  Result := Gio2.g_socket_is_closed(@self);
end;

function TGSocket.is_connected: gboolean; cdecl;
begin
  Result := Gio2.g_socket_is_connected(@self);
end;

function TGSocket.listen: gboolean; cdecl;
begin
  Result := Gio2.g_socket_listen(@self);
end;

function TGSocket.receive(buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_receive(@self, buffer, size, cancellable);
end;

function TGSocket.receive_from(address: PPGSocketAddress; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_receive_from(@self, address, buffer, size, cancellable);
end;

function TGSocket.receive_message(address: PPGSocketAddress; vectors: PGInputVector; num_vectors: gint; messages: PPPGSocketControlMessage; num_messages: Pgint; flags: Pgint; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_receive_message(@self, address, vectors, num_vectors, messages, num_messages, flags, cancellable);
end;

function TGSocket.receive_with_blocking(buffer: Pgchar; size: gsize; blocking: gboolean; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_receive_with_blocking(@self, buffer, size, blocking, cancellable);
end;

function TGSocket.send(buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_send(@self, buffer, size, cancellable);
end;

function TGSocket.send_message(address: PGSocketAddress; vectors: PGOutputVector; num_vectors: gint; messages: PPGSocketControlMessage; num_messages: gint; flags: gint; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_send_message(@self, address, vectors, num_vectors, messages, num_messages, flags, cancellable);
end;

function TGSocket.send_to(address: PGSocketAddress; buffer: Pgchar; size: gsize; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_send_to(@self, address, buffer, size, cancellable);
end;

function TGSocket.send_with_blocking(buffer: Pgchar; size: gsize; blocking: gboolean; cancellable: PGCancellable): gssize; cdecl;
begin
  Result := Gio2.g_socket_send_with_blocking(@self, buffer, size, blocking, cancellable);
end;

procedure TGSocket.set_blocking(blocking: gboolean); cdecl;
begin
  Gio2.g_socket_set_blocking(@self, blocking);
end;

procedure TGSocket.set_keepalive(keepalive: gboolean); cdecl;
begin
  Gio2.g_socket_set_keepalive(@self, keepalive);
end;

procedure TGSocket.set_listen_backlog(backlog: gint); cdecl;
begin
  Gio2.g_socket_set_listen_backlog(@self, backlog);
end;

procedure TGSocket.set_timeout(timeout: guint); cdecl;
begin
  Gio2.g_socket_set_timeout(@self, timeout);
end;

function TGSocket.shutdown(shutdown_read: gboolean; shutdown_write: gboolean): gboolean; cdecl;
begin
  Result := Gio2.g_socket_shutdown(@self, shutdown_read, shutdown_write);
end;

function TGSocket.speaks_ipv4: gboolean; cdecl;
begin
  Result := Gio2.g_socket_speaks_ipv4(@self);
end;

function TGSocketConnection.factory_lookup_type(family: TGSocketFamily; type_: TGSocketType; protocol_id: gint): TGType; cdecl;
begin
  Result := Gio2.g_socket_connection_factory_lookup_type(family, type_, protocol_id);
end;

procedure TGSocketConnection.factory_register_type(g_type: TGType; family: TGSocketFamily; type_: TGSocketType; protocol: gint); cdecl;
begin
  Gio2.g_socket_connection_factory_register_type(g_type, family, type_, protocol);
end;

function TGSocketConnection.get_local_address: PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_connection_get_local_address(@self);
end;

function TGSocketConnection.get_remote_address: PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_connection_get_remote_address(@self);
end;

function TGSocketConnection.get_socket: PGSocket; cdecl;
begin
  Result := Gio2.g_socket_connection_get_socket(@self);
end;

function TGSocketControlMessage.deserialize(level: gint; type_: gint; size: gsize; data: guint8): PGSocketControlMessage; cdecl;
begin
  Result := Gio2.g_socket_control_message_deserialize(level, type_, size, data);
end;

function TGSocketControlMessage.get_level: gint; cdecl;
begin
  Result := Gio2.g_socket_control_message_get_level(@self);
end;

function TGSocketControlMessage.get_msg_type: gint; cdecl;
begin
  Result := Gio2.g_socket_control_message_get_msg_type(@self);
end;

function TGSocketControlMessage.get_size: gsize; cdecl;
begin
  Result := Gio2.g_socket_control_message_get_size(@self);
end;

procedure TGSocketControlMessage.serialize(data: gpointer); cdecl;
begin
  Gio2.g_socket_control_message_serialize(@self, data);
end;

function TGSocketClient.new: PGSocketClient; cdecl;
begin
  Result := Gio2.g_socket_client_new();
end;

procedure TGSocketClient.add_application_proxy(protocol: Pgchar); cdecl;
begin
  Gio2.g_socket_client_add_application_proxy(@self, protocol);
end;

function TGSocketClient.connect(connectable: PGSocketConnectable; cancellable: PGCancellable): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect(@self, connectable, cancellable);
end;

procedure TGSocketClient.connect_async(connectable: PGSocketConnectable; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_socket_client_connect_async(@self, connectable, cancellable, callback, user_data);
end;

function TGSocketClient.connect_finish(result_: PGAsyncResult): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect_finish(@self, result_);
end;

function TGSocketClient.connect_to_host(host_and_port: Pgchar; default_port: guint16; cancellable: PGCancellable): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect_to_host(@self, host_and_port, default_port, cancellable);
end;

procedure TGSocketClient.connect_to_host_async(host_and_port: Pgchar; default_port: guint16; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_socket_client_connect_to_host_async(@self, host_and_port, default_port, cancellable, callback, user_data);
end;

function TGSocketClient.connect_to_host_finish(result_: PGAsyncResult): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect_to_host_finish(@self, result_);
end;

function TGSocketClient.connect_to_service(domain: Pgchar; service: Pgchar; cancellable: PGCancellable): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect_to_service(@self, domain, service, cancellable);
end;

procedure TGSocketClient.connect_to_service_async(domain: Pgchar; service: Pgchar; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_socket_client_connect_to_service_async(@self, domain, service, cancellable, callback, user_data);
end;

function TGSocketClient.connect_to_service_finish(result_: PGAsyncResult): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect_to_service_finish(@self, result_);
end;

function TGSocketClient.connect_to_uri(uri: Pgchar; default_port: guint16; cancellable: PGCancellable): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect_to_uri(@self, uri, default_port, cancellable);
end;

procedure TGSocketClient.connect_to_uri_async(uri: Pgchar; default_port: guint16; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_socket_client_connect_to_uri_async(@self, uri, default_port, cancellable, callback, user_data);
end;

function TGSocketClient.connect_to_uri_finish(result_: PGAsyncResult): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_client_connect_to_uri_finish(@self, result_);
end;

function TGSocketClient.get_enable_proxy: gboolean; cdecl;
begin
  Result := Gio2.g_socket_client_get_enable_proxy(@self);
end;

function TGSocketClient.get_family: TGSocketFamily; cdecl;
begin
  Result := Gio2.g_socket_client_get_family(@self);
end;

function TGSocketClient.get_local_address: PGSocketAddress; cdecl;
begin
  Result := Gio2.g_socket_client_get_local_address(@self);
end;

function TGSocketClient.get_protocol: TGSocketProtocol; cdecl;
begin
  Result := Gio2.g_socket_client_get_protocol(@self);
end;

function TGSocketClient.get_socket_type: TGSocketType; cdecl;
begin
  Result := Gio2.g_socket_client_get_socket_type(@self);
end;

function TGSocketClient.get_timeout: guint; cdecl;
begin
  Result := Gio2.g_socket_client_get_timeout(@self);
end;

function TGSocketClient.get_tls: gboolean; cdecl;
begin
  Result := Gio2.g_socket_client_get_tls(@self);
end;


function TGSocketClient.get_tls_validation_flags: TGTlsCertificateFlags; cdecl;
begin
  Result := Gio2.g_socket_client_get_tls_validation_flags(@self);
end;

procedure TGSocketClient.set_enable_proxy(enable: gboolean); cdecl;
begin
  Gio2.g_socket_client_set_enable_proxy(@self, enable);
end;

procedure TGSocketClient.set_family(family: TGSocketFamily); cdecl;
begin
  Gio2.g_socket_client_set_family(@self, family);
end;

procedure TGSocketClient.set_local_address(address: PGSocketAddress); cdecl;
begin
  Gio2.g_socket_client_set_local_address(@self, address);
end;

procedure TGSocketClient.set_protocol(protocol: TGSocketProtocol); cdecl;
begin
  Gio2.g_socket_client_set_protocol(@self, protocol);
end;

procedure TGSocketClient.set_socket_type(type_: TGSocketType); cdecl;
begin
  Gio2.g_socket_client_set_socket_type(@self, type_);
end;

procedure TGSocketClient.set_timeout(timeout: guint); cdecl;
begin
  Gio2.g_socket_client_set_timeout(@self, timeout);
end;

procedure TGSocketClient.set_tls(tls: gboolean); cdecl;
begin
  Gio2.g_socket_client_set_tls(@self, tls);
end;

procedure TGSocketClient.set_tls_validation_flags(flags: TGTlsCertificateFlags); cdecl;
begin
  Gio2.g_socket_client_set_tls_validation_flags(@self, flags);
end;

function TGSocketListener.new: PGSocketListener; cdecl;
begin
  Result := Gio2.g_socket_listener_new();
end;

function TGSocketListener.accept(source_object: PPGObject; cancellable: PGCancellable): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_listener_accept(@self, source_object, cancellable);
end;

procedure TGSocketListener.accept_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_socket_listener_accept_async(@self, cancellable, callback, user_data);
end;

function TGSocketListener.accept_finish(result_: PGAsyncResult; source_object: PPGObject): PGSocketConnection; cdecl;
begin
  Result := Gio2.g_socket_listener_accept_finish(@self, result_, source_object);
end;

function TGSocketListener.accept_socket(source_object: PPGObject; cancellable: PGCancellable): PGSocket; cdecl;
begin
  Result := Gio2.g_socket_listener_accept_socket(@self, source_object, cancellable);
end;

procedure TGSocketListener.accept_socket_async(cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_socket_listener_accept_socket_async(@self, cancellable, callback, user_data);
end;

function TGSocketListener.accept_socket_finish(result_: PGAsyncResult; source_object: PPGObject): PGSocket; cdecl;
begin
  Result := Gio2.g_socket_listener_accept_socket_finish(@self, result_, source_object);
end;

function TGSocketListener.add_address(address: PGSocketAddress; type_: TGSocketType; protocol: TGSocketProtocol; source_object: PGObject; effective_address: PPGSocketAddress): gboolean; cdecl;
begin
  Result := Gio2.g_socket_listener_add_address(@self, address, type_, protocol, source_object, effective_address);
end;

function TGSocketListener.add_any_inet_port(source_object: PGObject): guint16; cdecl;
begin
  Result := Gio2.g_socket_listener_add_any_inet_port(@self, source_object);
end;

function TGSocketListener.add_inet_port(port: guint16; source_object: PGObject): gboolean; cdecl;
begin
  Result := Gio2.g_socket_listener_add_inet_port(@self, port, source_object);
end;

function TGSocketListener.add_socket(socket: PGSocket; source_object: PGObject): gboolean; cdecl;
begin
  Result := Gio2.g_socket_listener_add_socket(@self, socket, source_object);
end;

procedure TGSocketListener.close; cdecl;
begin
  Gio2.g_socket_listener_close(@self);
end;

procedure TGSocketListener.set_backlog(listen_backlog: gint); cdecl;
begin
  Gio2.g_socket_listener_set_backlog(@self, listen_backlog);
end;

function TGSocketService.new: PGSocketService; cdecl;
begin
  Result := Gio2.g_socket_service_new();
end;

function TGSocketService.is_active: gboolean; cdecl;
begin
  Result := Gio2.g_socket_service_is_active(@self);
end;

procedure TGSocketService.start; cdecl;
begin
  Gio2.g_socket_service_start(@self);
end;

procedure TGSocketService.stop; cdecl;
begin
  Gio2.g_socket_service_stop(@self);
end;

function TGSrvTarget.new(hostname: Pgchar; port: guint16; priority: guint16; weight: guint16): PGSrvTarget; cdecl;
begin
  Result := Gio2.g_srv_target_new(hostname, port, priority, weight);
end;

function TGSrvTarget.copy: PGSrvTarget; cdecl;
begin
  Result := Gio2.g_srv_target_copy(@self);
end;

procedure TGSrvTarget.free; cdecl;
begin
  Gio2.g_srv_target_free(@self);
end;

function TGSrvTarget.get_hostname: Pgchar; cdecl;
begin
  Result := Gio2.g_srv_target_get_hostname(@self);
end;

function TGSrvTarget.get_port: guint16; cdecl;
begin
  Result := Gio2.g_srv_target_get_port(@self);
end;

function TGSrvTarget.get_priority: guint16; cdecl;
begin
  Result := Gio2.g_srv_target_get_priority(@self);
end;

function TGSrvTarget.get_weight: guint16; cdecl;
begin
  Result := Gio2.g_srv_target_get_weight(@self);
end;

function TGSrvTarget.list_sort(targets: PGList): PGList; cdecl;
begin
  Result := Gio2.g_srv_target_list_sort(targets);
end;

function TGTcpConnection.get_graceful_disconnect: gboolean; cdecl;
begin
  Result := Gio2.g_tcp_connection_get_graceful_disconnect(@self);
end;

procedure TGTcpConnection.set_graceful_disconnect(graceful_disconnect: gboolean); cdecl;
begin
  Gio2.g_tcp_connection_set_graceful_disconnect(@self, graceful_disconnect);
end;

function TGTcpWrapperConnection.new(base_io_stream: PGIOStream; socket: PGSocket): PGTcpWrapperConnection; cdecl;
begin
  Result := Gio2.g_tcp_wrapper_connection_new(base_io_stream, socket);
end;

function TGTcpWrapperConnection.get_base_io_stream: PGIOStream; cdecl;
begin
  Result := Gio2.g_tcp_wrapper_connection_get_base_io_stream(@self);
end;

function TGThemedIcon.new(iconname: Pgchar): PGIcon; cdecl;
begin
  Result := Gio2.g_themed_icon_new(iconname);
end;

function TGThemedIcon.new_from_names(iconnames: PPgchar; len: gint): PGIcon; cdecl;
begin
  Result := Gio2.g_themed_icon_new_from_names(iconnames, len);
end;

function TGThemedIcon.new_with_default_fallbacks(iconname: Pgchar): PGIcon; cdecl;
begin
  Result := Gio2.g_themed_icon_new_with_default_fallbacks(iconname);
end;

procedure TGThemedIcon.append_name(iconname: Pgchar); cdecl;
begin
  Gio2.g_themed_icon_append_name(@self, iconname);
end;

function TGThemedIcon.get_names: PPgchar; cdecl;
begin
  Result := Gio2.g_themed_icon_get_names(@self);
end;

procedure TGThemedIcon.prepend_name(iconname: Pgchar); cdecl;
begin
  Gio2.g_themed_icon_prepend_name(@self, iconname);
end;

function TGThreadedSocketService.new(max_threads: gint): PGThreadedSocketService; cdecl;
begin
  Result := Gio2.g_threaded_socket_service_new(max_threads);
end;

function TGTlsBackend.get_default: PGTlsBackend; cdecl;
begin
  Result := Gio2.g_tls_backend_get_default();
end;

function TGTlsBackend.get_certificate_type: TGType; cdecl;
begin
  Result := Gio2.g_tls_backend_get_certificate_type(@self);
end;

function TGTlsBackend.get_client_connection_type: TGType; cdecl;
begin
  Result := Gio2.g_tls_backend_get_client_connection_type(@self);
end;

function TGTlsBackend.get_default_database: PGTlsDatabase; cdecl;
begin
  Result := Gio2.g_tls_backend_get_default_database(@self);
end;

function TGTlsBackend.get_file_database_type: TGType; cdecl;
begin
  Result := Gio2.g_tls_backend_get_file_database_type(@self);
end;

function TGTlsBackend.get_server_connection_type: TGType; cdecl;
begin
  Result := Gio2.g_tls_backend_get_server_connection_type(@self);
end;

function TGTlsBackend.supports_tls: gboolean; cdecl;
begin
  Result := Gio2.g_tls_backend_supports_tls(@self);
end;

function TGTlsDatabase.create_certificate_handle(certificate: PGTlsCertificate): Pgchar; cdecl;
begin
  Result := Gio2.g_tls_database_create_certificate_handle(@self, certificate);
end;

function TGTlsDatabase.lookup_certificate_for_handle(handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_database_lookup_certificate_for_handle(@self, handle, interaction, flags, cancellable);
end;

procedure TGTlsDatabase.lookup_certificate_for_handle_async(handle: Pgchar; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_tls_database_lookup_certificate_for_handle_async(@self, handle, interaction, flags, cancellable, callback, user_data);
end;

function TGTlsDatabase.lookup_certificate_for_handle_finish(result_: PGAsyncResult): PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_database_lookup_certificate_for_handle_finish(@self, result_);
end;

function TGTlsDatabase.lookup_certificate_issuer(certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_database_lookup_certificate_issuer(@self, certificate, interaction, flags, cancellable);
end;

procedure TGTlsDatabase.lookup_certificate_issuer_async(certificate: PGTlsCertificate; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_tls_database_lookup_certificate_issuer_async(@self, certificate, interaction, flags, cancellable, callback, user_data);
end;

function TGTlsDatabase.lookup_certificate_issuer_finish(result_: PGAsyncResult): PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_database_lookup_certificate_issuer_finish(@self, result_);
end;

function TGTlsDatabase.lookup_certificates_issued_by(issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable): PGList; cdecl;
begin
  Result := Gio2.g_tls_database_lookup_certificates_issued_by(@self, issuer_raw_dn, interaction, flags, cancellable);
end;

procedure TGTlsDatabase.lookup_certificates_issued_by_async(issuer_raw_dn: Pguint8; interaction: PGTlsInteraction; flags: TGTlsDatabaseLookupFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_tls_database_lookup_certificates_issued_by_async(@self, issuer_raw_dn, interaction, flags, cancellable, callback, user_data);
end;

function TGTlsDatabase.lookup_certificates_issued_by_finish(result_: PGAsyncResult): PGList; cdecl;
begin
  Result := Gio2.g_tls_database_lookup_certificates_issued_by_finish(@self, result_);
end;

function TGTlsDatabase.verify_chain(chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable): TGTlsCertificateFlags; cdecl;
begin
  Result := Gio2.g_tls_database_verify_chain(@self, chain, purpose, identity, interaction, flags, cancellable);
end;

procedure TGTlsDatabase.verify_chain_async(chain: PGTlsCertificate; purpose: Pgchar; identity: PGSocketConnectable; interaction: PGTlsInteraction; flags: TGTlsDatabaseVerifyFlags; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_tls_database_verify_chain_async(@self, chain, purpose, identity, interaction, flags, cancellable, callback, user_data);
end;

function TGTlsDatabase.verify_chain_finish(result_: PGAsyncResult): TGTlsCertificateFlags; cdecl;
begin
  Result := Gio2.g_tls_database_verify_chain_finish(@self, result_);
end;

function TGTlsCertificate.new_from_file(file_: Pgchar): PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_certificate_new_from_file(file_);
end;

function TGTlsCertificate.new_from_files(cert_file: Pgchar; key_file: Pgchar): PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_certificate_new_from_files(cert_file, key_file);
end;

function TGTlsCertificate.new_from_pem(data: Pgchar; length: gssize): PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_certificate_new_from_pem(data, length);
end;

function TGTlsCertificate.list_new_from_file(file_: Pgchar): PGList; cdecl;
begin
  Result := Gio2.g_tls_certificate_list_new_from_file(file_);
end;

function TGTlsCertificate.get_issuer: PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_certificate_get_issuer(@self);
end;

function TGTlsCertificate.verify(identity: PGSocketConnectable; trusted_ca: PGTlsCertificate): TGTlsCertificateFlags; cdecl;
begin
  Result := Gio2.g_tls_certificate_verify(@self, identity, trusted_ca);
end;

function TGTlsClientConnection.new(base_io_stream: PGIOStream; server_identity: PGSocketConnectable): PGIOStream; cdecl;
begin
  Result := Gio2.g_tls_client_connection_new(base_io_stream, server_identity);
end;

function TGTlsClientConnection.get_accepted_cas: PGList; cdecl;
begin
  Result := Gio2.g_tls_client_connection_get_accepted_cas(@self);
end;

function TGTlsClientConnection.get_server_identity: PGSocketConnectable; cdecl;
begin
  Result := Gio2.g_tls_client_connection_get_server_identity(@self);
end;

function TGTlsClientConnection.get_use_ssl3: gboolean; cdecl;
begin
  Result := Gio2.g_tls_client_connection_get_use_ssl3(@self);
end;

function TGTlsClientConnection.get_validation_flags: TGTlsCertificateFlags; cdecl;
begin
  Result := Gio2.g_tls_client_connection_get_validation_flags(@self);
end;

procedure TGTlsClientConnection.set_server_identity(identity: PGSocketConnectable); cdecl;
begin
  Gio2.g_tls_client_connection_set_server_identity(@self, identity);
end;

procedure TGTlsClientConnection.set_use_ssl3(use_ssl3: gboolean); cdecl;
begin
  Gio2.g_tls_client_connection_set_use_ssl3(@self, use_ssl3);
end;

procedure TGTlsClientConnection.set_validation_flags(flags: TGTlsCertificateFlags); cdecl;
begin
  Gio2.g_tls_client_connection_set_validation_flags(@self, flags);
end;

function TGTlsInteraction.ask_password(password: PGTlsPassword; cancellable: PGCancellable): TGTlsInteractionResult; cdecl;
begin
  Result := Gio2.g_tls_interaction_ask_password(@self, password, cancellable);
end;

procedure TGTlsInteraction.ask_password_async(password: PGTlsPassword; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_tls_interaction_ask_password_async(@self, password, cancellable, callback, user_data);
end;

function TGTlsInteraction.ask_password_finish(result_: PGAsyncResult): TGTlsInteractionResult; cdecl;
begin
  Result := Gio2.g_tls_interaction_ask_password_finish(@self, result_);
end;

function TGTlsConnection.emit_accept_certificate(peer_cert: PGTlsCertificate; errors: TGTlsCertificateFlags): gboolean; cdecl;
begin
  Result := Gio2.g_tls_connection_emit_accept_certificate(@self, peer_cert, errors);
end;

function TGTlsConnection.get_certificate: PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_connection_get_certificate(@self);
end;

function TGTlsConnection.get_database: PGTlsDatabase; cdecl;
begin
  Result := Gio2.g_tls_connection_get_database(@self);
end;

function TGTlsConnection.get_interaction: PGTlsInteraction; cdecl;
begin
  Result := Gio2.g_tls_connection_get_interaction(@self);
end;

function TGTlsConnection.get_peer_certificate: PGTlsCertificate; cdecl;
begin
  Result := Gio2.g_tls_connection_get_peer_certificate(@self);
end;

function TGTlsConnection.get_peer_certificate_errors: TGTlsCertificateFlags; cdecl;
begin
  Result := Gio2.g_tls_connection_get_peer_certificate_errors(@self);
end;

function TGTlsConnection.get_rehandshake_mode: TGTlsRehandshakeMode; cdecl;
begin
  Result := Gio2.g_tls_connection_get_rehandshake_mode(@self);
end;

function TGTlsConnection.get_require_close_notify: gboolean; cdecl;
begin
  Result := Gio2.g_tls_connection_get_require_close_notify(@self);
end;

function TGTlsConnection.handshake(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_tls_connection_handshake(@self, cancellable);
end;

procedure TGTlsConnection.handshake_async(io_priority: gint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: gpointer); cdecl;
begin
  Gio2.g_tls_connection_handshake_async(@self, io_priority, cancellable, callback, user_data);
end;

function TGTlsConnection.handshake_finish(result_: PGAsyncResult): gboolean; cdecl;
begin
  Result := Gio2.g_tls_connection_handshake_finish(@self, result_);
end;

procedure TGTlsConnection.set_certificate(certificate: PGTlsCertificate); cdecl;
begin
  Gio2.g_tls_connection_set_certificate(@self, certificate);
end;

procedure TGTlsConnection.set_database(database: PGTlsDatabase); cdecl;
begin
  Gio2.g_tls_connection_set_database(@self, database);
end;

procedure TGTlsConnection.set_interaction(interaction: PGTlsInteraction); cdecl;
begin
  Gio2.g_tls_connection_set_interaction(@self, interaction);
end;

procedure TGTlsConnection.set_rehandshake_mode(mode: TGTlsRehandshakeMode); cdecl;
begin
  Gio2.g_tls_connection_set_rehandshake_mode(@self, mode);
end;

procedure TGTlsConnection.set_require_close_notify(require_close_notify: gboolean); cdecl;
begin
  Gio2.g_tls_connection_set_require_close_notify(@self, require_close_notify);
end;

function TGTlsFileDatabase.new(anchors: Pgchar): PGTlsDatabase; cdecl;
begin
  Result := Gio2.g_tls_file_database_new(anchors);
end;


function TGTlsPassword.new(flags: TGTlsPasswordFlags; description: Pgchar): PGTlsPassword; cdecl;
begin
  Result := Gio2.g_tls_password_new(flags, description);
end;

function TGTlsPassword.get_description: Pgchar; cdecl;
begin
  Result := Gio2.g_tls_password_get_description(@self);
end;

function TGTlsPassword.get_flags: TGTlsPasswordFlags; cdecl;
begin
  Result := Gio2.g_tls_password_get_flags(@self);
end;

function TGTlsPassword.get_value(length: Pgsize): Pguint8; cdecl;
begin
  Result := Gio2.g_tls_password_get_value(@self, length);
end;

function TGTlsPassword.get_warning: Pgchar; cdecl;
begin
  Result := Gio2.g_tls_password_get_warning(@self);
end;

procedure TGTlsPassword.set_description(description: Pgchar); cdecl;
begin
  Gio2.g_tls_password_set_description(@self, description);
end;

procedure TGTlsPassword.set_flags(flags: TGTlsPasswordFlags); cdecl;
begin
  Gio2.g_tls_password_set_flags(@self, flags);
end;

procedure TGTlsPassword.set_value(value: Pguint8; length: gssize); cdecl;
begin
  Gio2.g_tls_password_set_value(@self, value, length);
end;

procedure TGTlsPassword.set_value_full(value: Pguint8; length: gssize; destroy_: TGDestroyNotify); cdecl;
begin
  Gio2.g_tls_password_set_value_full(@self, value, length, destroy_);
end;

procedure TGTlsPassword.set_warning(warning: Pgchar); cdecl;
begin
  Gio2.g_tls_password_set_warning(@self, warning);
end;

function TGTlsServerConnection.new(base_io_stream: PGIOStream; certificate: PGTlsCertificate): PGIOStream; cdecl;
begin
  Result := Gio2.g_tls_server_connection_new(base_io_stream, certificate);
end;

function TGUnixConnection.receive_credentials(cancellable: PGCancellable): PGCredentials; cdecl;
begin
  Result := Gio2.g_unix_connection_receive_credentials(@self, cancellable);
end;

function TGUnixConnection.receive_fd(cancellable: PGCancellable): gint; cdecl;
begin
  Result := Gio2.g_unix_connection_receive_fd(@self, cancellable);
end;

function TGUnixConnection.send_credentials(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_unix_connection_send_credentials(@self, cancellable);
end;

function TGUnixConnection.send_fd(fd: gint; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Gio2.g_unix_connection_send_fd(@self, fd, cancellable);
end;

function TGUnixCredentialsMessage.new: PGUnixCredentialsMessage; cdecl;
begin
  Result := Gio2.g_unix_credentials_message_new();
end;

function TGUnixCredentialsMessage.new_with_credentials(credentials: PGCredentials): PGUnixCredentialsMessage; cdecl;
begin
  Result := Gio2.g_unix_credentials_message_new_with_credentials(credentials);
end;

function TGUnixCredentialsMessage.is_supported: gboolean; cdecl;
begin
  Result := Gio2.g_unix_credentials_message_is_supported();
end;

function TGUnixCredentialsMessage.get_credentials: PGCredentials; cdecl;
begin
  Result := Gio2.g_unix_credentials_message_get_credentials(@self);
end;

function TGUnixFDMessage.new: PGUnixFDMessage; cdecl;
begin
  Result := Gio2.g_unix_fd_message_new();
end;

function TGUnixFDMessage.new_with_fd_list(fd_list: PGUnixFDList): PGUnixFDMessage; cdecl;
begin
  Result := Gio2.g_unix_fd_message_new_with_fd_list(fd_list);
end;

function TGUnixFDMessage.append_fd(fd: gint): gboolean; cdecl;
begin
  Result := Gio2.g_unix_fd_message_append_fd(@self, fd);
end;

function TGUnixFDMessage.get_fd_list: PGUnixFDList; cdecl;
begin
  Result := Gio2.g_unix_fd_message_get_fd_list(@self);
end;

function TGUnixFDMessage.steal_fds(length: Pgint): Pgint; cdecl;
begin
  Result := Gio2.g_unix_fd_message_steal_fds(@self, length);
end;

function TGUnixInputStream.new(fd: gint; close_fd: gboolean): PGUnixInputStream; cdecl;
begin
  Result := Gio2.g_unix_input_stream_new(fd, close_fd);
end;

function TGUnixInputStream.get_close_fd: gboolean; cdecl;
begin
  Result := Gio2.g_unix_input_stream_get_close_fd(@self);
end;

function TGUnixInputStream.get_fd: gint; cdecl;
begin
  Result := Gio2.g_unix_input_stream_get_fd(@self);
end;

procedure TGUnixInputStream.set_close_fd(close_fd: gboolean); cdecl;
begin
  Gio2.g_unix_input_stream_set_close_fd(@self, close_fd);
end;

function TGUnixMountMonitor.new: PGUnixMountMonitor; cdecl;
begin
  Result := Gio2.g_unix_mount_monitor_new();
end;

procedure TGUnixMountMonitor.set_rate_limit(limit_msec: gint); cdecl;
begin
  Gio2.g_unix_mount_monitor_set_rate_limit(@self, limit_msec);
end;

function TGUnixMountPoint.compare(mount2: PGUnixMountPoint): gint; cdecl;
begin
  Result := Gio2.g_unix_mount_point_compare(@self, mount2);
end;

procedure TGUnixMountPoint.free; cdecl;
begin
  Gio2.g_unix_mount_point_free(@self);
end;

function TGUnixMountPoint.get_device_path: Pgchar; cdecl;
begin
  Result := Gio2.g_unix_mount_point_get_device_path(@self);
end;

function TGUnixMountPoint.get_fs_type: Pgchar; cdecl;
begin
  Result := Gio2.g_unix_mount_point_get_fs_type(@self);
end;

function TGUnixMountPoint.get_mount_path: Pgchar; cdecl;
begin
  Result := Gio2.g_unix_mount_point_get_mount_path(@self);
end;

function TGUnixMountPoint.guess_can_eject: gboolean; cdecl;
begin
  Result := Gio2.g_unix_mount_point_guess_can_eject(@self);
end;

function TGUnixMountPoint.guess_icon: PGIcon; cdecl;
begin
  Result := Gio2.g_unix_mount_point_guess_icon(@self);
end;

function TGUnixMountPoint.guess_name: Pgchar; cdecl;
begin
  Result := Gio2.g_unix_mount_point_guess_name(@self);
end;

function TGUnixMountPoint.is_loopback: gboolean; cdecl;
begin
  Result := Gio2.g_unix_mount_point_is_loopback(@self);
end;

function TGUnixMountPoint.is_readonly: gboolean; cdecl;
begin
  Result := Gio2.g_unix_mount_point_is_readonly(@self);
end;

function TGUnixMountPoint.is_user_mountable: gboolean; cdecl;
begin
  Result := Gio2.g_unix_mount_point_is_user_mountable(@self);
end;

function TGUnixOutputStream.new(fd: gint; close_fd: gboolean): PGUnixOutputStream; cdecl;
begin
  Result := Gio2.g_unix_output_stream_new(fd, close_fd);
end;

function TGUnixOutputStream.get_close_fd: gboolean; cdecl;
begin
  Result := Gio2.g_unix_output_stream_get_close_fd(@self);
end;

function TGUnixOutputStream.get_fd: gint; cdecl;
begin
  Result := Gio2.g_unix_output_stream_get_fd(@self);
end;

procedure TGUnixOutputStream.set_close_fd(close_fd: gboolean); cdecl;
begin
  Gio2.g_unix_output_stream_set_close_fd(@self, close_fd);
end;

function TGUnixSocketAddress.new(path: Pgchar): PGUnixSocketAddress; cdecl;
begin
  Result := Gio2.g_unix_socket_address_new(path);
end;

function TGUnixSocketAddress.new_abstract(path: Pgchar; path_len: gint): PGUnixSocketAddress; cdecl;
begin
  Result := Gio2.g_unix_socket_address_new_abstract(path, path_len);
end;

function TGUnixSocketAddress.new_with_type(path: Pgchar; path_len: gint; type_: TGUnixSocketAddressType): PGUnixSocketAddress; cdecl;
begin
  Result := Gio2.g_unix_socket_address_new_with_type(path, path_len, type_);
end;

function TGUnixSocketAddress.abstract_names_supported: gboolean; cdecl;
begin
  Result := Gio2.g_unix_socket_address_abstract_names_supported();
end;

function TGUnixSocketAddress.get_address_type: TGUnixSocketAddressType; cdecl;
begin
  Result := Gio2.g_unix_socket_address_get_address_type(@self);
end;

function TGUnixSocketAddress.get_is_abstract: gboolean; cdecl;
begin
  Result := Gio2.g_unix_socket_address_get_is_abstract(@self);
end;

function TGUnixSocketAddress.get_path: Pgchar; cdecl;
begin
  Result := Gio2.g_unix_socket_address_get_path(@self);
end;

function TGUnixSocketAddress.get_path_len: gsize; cdecl;
begin
  Result := Gio2.g_unix_socket_address_get_path_len(@self);
end;

function TGVfs.get_default: PGVfs; cdecl;
begin
  Result := Gio2.g_vfs_get_default();
end;

function TGVfs.get_local: PGVfs; cdecl;
begin
  Result := Gio2.g_vfs_get_local();
end;

function TGVfs.get_file_for_path(path: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_vfs_get_file_for_path(@self, path);
end;

function TGVfs.get_file_for_uri(uri: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_vfs_get_file_for_uri(@self, uri);
end;

function TGVfs.get_supported_uri_schemes: PPgchar; cdecl;
begin
  Result := Gio2.g_vfs_get_supported_uri_schemes(@self);
end;

function TGVfs.is_active: gboolean; cdecl;
begin
  Result := Gio2.g_vfs_is_active(@self);
end;

function TGVfs.parse_name(parse_name: Pgchar): PGFile; cdecl;
begin
  Result := Gio2.g_vfs_parse_name(@self, parse_name);
end;

function TGZlibCompressor.new(format: TGZlibCompressorFormat; level: gint): PGZlibCompressor; cdecl;
begin
  Result := Gio2.g_zlib_compressor_new(format, level);
end;

function TGZlibCompressor.get_file_info: PGFileInfo; cdecl;
begin
  Result := Gio2.g_zlib_compressor_get_file_info(@self);
end;

procedure TGZlibCompressor.set_file_info(file_info: PGFileInfo); cdecl;
begin
  Gio2.g_zlib_compressor_set_file_info(@self, file_info);
end;

function TGZlibDecompressor.new(format: TGZlibCompressorFormat): PGZlibDecompressor; cdecl;
begin
  Result := Gio2.g_zlib_decompressor_new(format);
end;

function TGZlibDecompressor.get_file_info: PGFileInfo; cdecl;
begin
  Result := Gio2.g_zlib_decompressor_get_file_info(@self);
end;

end.