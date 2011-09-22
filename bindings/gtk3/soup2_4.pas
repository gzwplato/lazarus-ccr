unit Soup2_4;

{$MODE OBJFPC}{$H+}

{$PACKRECORDS C}
{$BITPACKING ON}
{$MODESWITCH DUPLICATELOCALS+}

{$LINKLIB libsoup-2.4.so.1}
interface
uses
  CTypes, GLib2, GObject2, Gio2;

const
  Soup2_4_library = 'libsoup-2.4.so.1';

  ADDRESS_ANY_PORT = 0;
  ADDRESS_FAMILY = 'family';
  ADDRESS_NAME = 'name';
  ADDRESS_PHYSICAL = 'physical';
  ADDRESS_PORT = 'port';
  ADDRESS_SOCKADDR = 'sockaddr';
  AUTH_DOMAIN_ADD_PATH = 'add-path';
  AUTH_DOMAIN_BASIC_AUTH_CALLBACK = 'auth-callback';
  AUTH_DOMAIN_BASIC_AUTH_DATA = 'auth-data';
  AUTH_DOMAIN_BASIC_H = 1;
  AUTH_DOMAIN_DIGEST_AUTH_CALLBACK = 'auth-callback';
  AUTH_DOMAIN_DIGEST_AUTH_DATA = 'auth-data';
  AUTH_DOMAIN_DIGEST_H = 1;
  AUTH_DOMAIN_FILTER = 'filter';
  AUTH_DOMAIN_FILTER_DATA = 'filter-data';
  AUTH_DOMAIN_GENERIC_AUTH_CALLBACK = 'generic-auth-callback';
  AUTH_DOMAIN_GENERIC_AUTH_DATA = 'generic-auth-data';
  AUTH_DOMAIN_H = 1;
  AUTH_DOMAIN_PROXY = 'proxy';
  AUTH_DOMAIN_REALM = 'realm';
  AUTH_DOMAIN_REMOVE_PATH = 'remove-path';
  AUTH_H = 1;
  AUTH_HOST = 'host';
  AUTH_IS_AUTHENTICATED = 'is-authenticated';
  AUTH_IS_FOR_PROXY = 'is-for-proxy';
  AUTH_REALM = 'realm';
  AUTH_SCHEME_NAME = 'scheme-name';
  CACHE_H = 1;
  CHAR_HTTP_CTL = 16;
  CHAR_HTTP_SEPARATOR = 8;
  CHAR_URI_GEN_DELIMS = 2;
  CHAR_URI_PERCENT_ENCODED = 1;
  CHAR_URI_SUB_DELIMS = 4;
  CONTENT_DECODER_H = 1;
  CONTENT_SNIFFER_H = 1;
  COOKIE_H = 1;
  COOKIE_JAR_ACCEPT_POLICY = 'accept-policy';
  COOKIE_JAR_H = 1;
  COOKIE_JAR_READ_ONLY = 'read-only';
  COOKIE_JAR_TEXT_FILENAME = 'filename';
  COOKIE_JAR_TEXT_H = 1;
  COOKIE_MAX_AGE_ONE_DAY = 0;
  COOKIE_MAX_AGE_ONE_HOUR = 3600;
  COOKIE_MAX_AGE_ONE_WEEK = 0;
  COOKIE_MAX_AGE_ONE_YEAR = 0;
  DATE_H = 1;
  FORM_H = 1;
  FORM_MIME_TYPE_MULTIPART = 'multipart/form-data';
  FORM_MIME_TYPE_URLENCODED = 'application/x-www-form-urlencoded';
  HEADERS_H = 1;
  LOGGER_H = 1;
  MESSAGE_BODY_H = 1;
  MESSAGE_FIRST_PARTY = 'first-party';
  MESSAGE_FLAGS = 'flags';
  MESSAGE_H = 1;
  MESSAGE_HEADERS_H = 1;
  MESSAGE_HTTP_VERSION = 'http-version';
  MESSAGE_METHOD = 'method';
  MESSAGE_REASON_PHRASE = 'reason-phrase';
  MESSAGE_REQUEST_BODY = 'request-body';
  MESSAGE_REQUEST_HEADERS = 'request-headers';
  MESSAGE_RESPONSE_BODY = 'response-body';
  MESSAGE_RESPONSE_HEADERS = 'response-headers';
  MESSAGE_SERVER_SIDE = 'server-side';
  MESSAGE_STATUS_CODE = 'status-code';
  MESSAGE_TLS_CERTIFICATE = 'tls-certificate';
  MESSAGE_TLS_ERRORS = 'tls-errors';
  MESSAGE_URI = 'uri';
  METHOD_H = 1;
  MISC_H = 1;
  MULTIPART_H = 1;
  PASSWORD_MANAGER_H = 1;
  PROXY_RESOLVER_DEFAULT_H = 1;
  PROXY_URI_RESOLVER_H = 1;
  REQUESTER_H = 1;
  REQUEST_DATA_H = 1;
  REQUEST_FILE_H = 1;
  REQUEST_H = 1;
  REQUEST_HTTP_H = 1;
  REQUEST_SESSION = 'session';
  REQUEST_URI = 'uri';
  SERVER_ASYNC_CONTEXT = 'async-context';
  SERVER_H = 1;
  SERVER_INTERFACE = 'interface';
  SERVER_PORT = 'port';
  SERVER_RAW_PATHS = 'raw-paths';
  SERVER_SERVER_HEADER = 'server-header';
  SERVER_SSL_CERT_FILE = 'ssl-cert-file';
  SERVER_SSL_KEY_FILE = 'ssl-key-file';
  SESSION_ACCEPT_LANGUAGE = 'accept-language';
  SESSION_ACCEPT_LANGUAGE_AUTO = 'accept-language-auto';
  SESSION_ASYNC_CONTEXT = 'async-context';
  SESSION_ASYNC_H = 1;
  SESSION_FEATURE_H = 1;
  SESSION_H = 1;
  SESSION_IDLE_TIMEOUT = 'idle-timeout';
  SESSION_MAX_CONNS = 'max-conns';
  SESSION_MAX_CONNS_PER_HOST = 'max-conns-per-host';
  SESSION_PROXY_URI = 'proxy-uri';
  SESSION_SSL_CA_FILE = 'ssl-ca-file';
  SESSION_SSL_STRICT = 'ssl-strict';
  SESSION_SYNC_H = 1;
  SESSION_TIMEOUT = 'timeout';
  SESSION_USER_AGENT = 'user-agent';
  SESSION_USE_NTLM = 'use-ntlm';
  SOCKET_ASYNC_CONTEXT = 'async-context';
  SOCKET_FLAG_NONBLOCKING = 'non-blocking';
  SOCKET_H = 1;
  SOCKET_IS_SERVER = 'is-server';
  SOCKET_LOCAL_ADDRESS = 'local-address';
  SOCKET_REMOTE_ADDRESS = 'remote-address';
  SOCKET_SSL_CREDENTIALS = 'ssl-creds';
  SOCKET_SSL_FALLBACK = 'ssl-fallback';
  SOCKET_SSL_STRICT = 'ssl-strict';
  SOCKET_TIMEOUT = 'timeout';
  SOCKET_TLS_CERTIFICATE = 'tls-certificate';
  SOCKET_TLS_ERRORS = 'tls-errors';
  SOCKET_TRUSTED_CERTIFICATE = 'trusted-certificate';
  STATUS_H = 1;
  TYPES_H = 1;
  URI_H = 1;
  VALUE_UTILS_H = 1;
  XMLRPC_H = 1;

type
  TSoupAddressFamily = Integer;
const
  { SoupAddressFamily }
  SOUP_ADDRESS_FAMILY_INVALID: TSoupAddressFamily = -1;
  SOUP_ADDRESS_FAMILY_IPV4: TSoupAddressFamily = 2;
  SOUP_ADDRESS_FAMILY_IPV6: TSoupAddressFamily = 10;

  { SoupMessageFlags }
  SOUP_MESSAGE_NO_REDIRECT = 2;
  SOUP_MESSAGE_CAN_REBUILD = 4;
  SOUP_MESSAGE_OVERWRITE_CHUNKS = 8;
  SOUP_MESSAGE_CONTENT_DECODED = 16;
  SOUP_MESSAGE_CERTIFICATE_TRUSTED = 32;

type
  TSoupHTTPVersion = Integer;
const
  { SoupHTTPVersion }
  SOUP_HTTP_1_0: TSoupHTTPVersion = 0;
  SOUP_HTTP_1_1: TSoupHTTPVersion = 1;

type
  TSoupMemoryUse = Integer;
const
  { SoupMemoryUse }
  SOUP_MEMORY_STATIC: TSoupMemoryUse = 0;
  SOUP_MEMORY_TAKE: TSoupMemoryUse = 1;
  SOUP_MEMORY_COPY: TSoupMemoryUse = 2;
  SOUP_MEMORY_TEMPORARY: TSoupMemoryUse = 3;

type
  TSoupCacheResponse = Integer;
const
  { SoupCacheResponse }
  SOUP_CACHE_RESPONSE_FRESH: TSoupCacheResponse = 0;
  SOUP_CACHE_RESPONSE_NEEDS_VALIDATION: TSoupCacheResponse = 1;
  SOUP_CACHE_RESPONSE_STALE: TSoupCacheResponse = 2;

type
  TSoupCacheType = Integer;
const
  { SoupCacheType }
  SOUP_CACHE_SINGLE_USER: TSoupCacheType = 0;
  SOUP_CACHE_SHARED: TSoupCacheType = 1;

  { SoupCacheability }
  SOUP_CACHE_CACHEABLE = 1;
  SOUP_CACHE_UNCACHEABLE = 2;
  SOUP_CACHE_INVALIDATES = 4;
  SOUP_CACHE_VALIDATES = 8;

type
  TSoupConnectionState = Integer;
const
  { SoupConnectionState }
  SOUP_CONNECTION_NEW: TSoupConnectionState = 0;
  SOUP_CONNECTION_CONNECTING: TSoupConnectionState = 1;
  SOUP_CONNECTION_IDLE: TSoupConnectionState = 2;
  SOUP_CONNECTION_IN_USE: TSoupConnectionState = 3;
  SOUP_CONNECTION_REMOTE_DISCONNECTED: TSoupConnectionState = 4;
  SOUP_CONNECTION_DISCONNECTED: TSoupConnectionState = 5;

type
  TSoupCookieJarAcceptPolicy = Integer;
const
  { SoupCookieJarAcceptPolicy }
  SOUP_COOKIE_JAR_ACCEPT_ALWAYS: TSoupCookieJarAcceptPolicy = 0;
  SOUP_COOKIE_JAR_ACCEPT_NEVER: TSoupCookieJarAcceptPolicy = 1;
  SOUP_COOKIE_JAR_ACCEPT_NO_THIRD_PARTY: TSoupCookieJarAcceptPolicy = 2;

type
  TSoupDateFormat = Integer;
const
  { SoupDateFormat }
  SOUP_DATE_HTTP: TSoupDateFormat = 1;
  SOUP_DATE_COOKIE: TSoupDateFormat = 2;
  SOUP_DATE_RFC2822: TSoupDateFormat = 3;
  SOUP_DATE_ISO8601_COMPACT: TSoupDateFormat = 4;
  SOUP_DATE_ISO8601_FULL: TSoupDateFormat = 5;
  SOUP_DATE_ISO8601: TSoupDateFormat = 5;
  SOUP_DATE_ISO8601_XMLRPC: TSoupDateFormat = 6;

type
  TSoupEncoding = Integer;
const
  { SoupEncoding }
  SOUP_ENCODING_UNRECOGNIZED: TSoupEncoding = 0;
  SOUP_ENCODING_NONE: TSoupEncoding = 1;
  SOUP_ENCODING_CONTENT_LENGTH: TSoupEncoding = 2;
  SOUP_ENCODING_EOF: TSoupEncoding = 3;
  SOUP_ENCODING_CHUNKED: TSoupEncoding = 4;
  SOUP_ENCODING_BYTERANGES: TSoupEncoding = 5;

  { SoupExpectation }
  SOUP_EXPECTATION_UNRECOGNIZED = 1;
  SOUP_EXPECTATION_CONTINUE = 2;

type
  TSoupKnownStatusCode = Integer;
const
  { SoupKnownStatusCode }
  SOUP_STATUS_NONE: TSoupKnownStatusCode = 0;
  SOUP_STATUS_CANCELLED: TSoupKnownStatusCode = 1;
  SOUP_STATUS_CANT_RESOLVE: TSoupKnownStatusCode = 2;
  SOUP_STATUS_CANT_RESOLVE_PROXY: TSoupKnownStatusCode = 3;
  SOUP_STATUS_CANT_CONNECT: TSoupKnownStatusCode = 4;
  SOUP_STATUS_CANT_CONNECT_PROXY: TSoupKnownStatusCode = 5;
  SOUP_STATUS_SSL_FAILED: TSoupKnownStatusCode = 6;
  SOUP_STATUS_IO_ERROR: TSoupKnownStatusCode = 7;
  SOUP_STATUS_MALFORMED: TSoupKnownStatusCode = 8;
  SOUP_STATUS_TRY_AGAIN: TSoupKnownStatusCode = 9;
  SOUP_STATUS_TOO_MANY_REDIRECTS: TSoupKnownStatusCode = 10;
  SOUP_STATUS_TLS_FAILED: TSoupKnownStatusCode = 11;
  SOUP_STATUS_CONTINUE: TSoupKnownStatusCode = 100;
  SOUP_STATUS_SWITCHING_PROTOCOLS: TSoupKnownStatusCode = 101;
  SOUP_STATUS_PROCESSING: TSoupKnownStatusCode = 102;
  SOUP_STATUS_OK: TSoupKnownStatusCode = 200;
  SOUP_STATUS_CREATED: TSoupKnownStatusCode = 201;
  SOUP_STATUS_ACCEPTED: TSoupKnownStatusCode = 202;
  SOUP_STATUS_NON_AUTHORITATIVE: TSoupKnownStatusCode = 203;
  SOUP_STATUS_NO_CONTENT: TSoupKnownStatusCode = 204;
  SOUP_STATUS_RESET_CONTENT: TSoupKnownStatusCode = 205;
  SOUP_STATUS_PARTIAL_CONTENT: TSoupKnownStatusCode = 206;
  SOUP_STATUS_MULTI_STATUS: TSoupKnownStatusCode = 207;
  SOUP_STATUS_MULTIPLE_CHOICES: TSoupKnownStatusCode = 300;
  SOUP_STATUS_MOVED_PERMANENTLY: TSoupKnownStatusCode = 301;
  SOUP_STATUS_FOUND: TSoupKnownStatusCode = 302;
  SOUP_STATUS_MOVED_TEMPORARILY: TSoupKnownStatusCode = 302;
  SOUP_STATUS_SEE_OTHER: TSoupKnownStatusCode = 303;
  SOUP_STATUS_NOT_MODIFIED: TSoupKnownStatusCode = 304;
  SOUP_STATUS_USE_PROXY: TSoupKnownStatusCode = 305;
  SOUP_STATUS_NOT_APPEARING_IN_THIS_PROTOCOL: TSoupKnownStatusCode = 306;
  SOUP_STATUS_TEMPORARY_REDIRECT: TSoupKnownStatusCode = 307;
  SOUP_STATUS_BAD_REQUEST: TSoupKnownStatusCode = 400;
  SOUP_STATUS_UNAUTHORIZED: TSoupKnownStatusCode = 401;
  SOUP_STATUS_PAYMENT_REQUIRED: TSoupKnownStatusCode = 402;
  SOUP_STATUS_FORBIDDEN: TSoupKnownStatusCode = 403;
  SOUP_STATUS_NOT_FOUND: TSoupKnownStatusCode = 404;
  SOUP_STATUS_METHOD_NOT_ALLOWED: TSoupKnownStatusCode = 405;
  SOUP_STATUS_NOT_ACCEPTABLE: TSoupKnownStatusCode = 406;
  SOUP_STATUS_PROXY_AUTHENTICATION_REQUIRED: TSoupKnownStatusCode = 407;
  SOUP_STATUS_PROXY_UNAUTHORIZED: TSoupKnownStatusCode = 407;
  SOUP_STATUS_REQUEST_TIMEOUT: TSoupKnownStatusCode = 408;
  SOUP_STATUS_CONFLICT: TSoupKnownStatusCode = 409;
  SOUP_STATUS_GONE: TSoupKnownStatusCode = 410;
  SOUP_STATUS_LENGTH_REQUIRED: TSoupKnownStatusCode = 411;
  SOUP_STATUS_PRECONDITION_FAILED: TSoupKnownStatusCode = 412;
  SOUP_STATUS_REQUEST_ENTITY_TOO_LARGE: TSoupKnownStatusCode = 413;
  SOUP_STATUS_REQUEST_URI_TOO_LONG: TSoupKnownStatusCode = 414;
  SOUP_STATUS_UNSUPPORTED_MEDIA_TYPE: TSoupKnownStatusCode = 415;
  SOUP_STATUS_REQUESTED_RANGE_NOT_SATISFIABLE: TSoupKnownStatusCode = 416;
  SOUP_STATUS_INVALID_RANGE: TSoupKnownStatusCode = 416;
  SOUP_STATUS_EXPECTATION_FAILED: TSoupKnownStatusCode = 417;
  SOUP_STATUS_UNPROCESSABLE_ENTITY: TSoupKnownStatusCode = 422;
  SOUP_STATUS_LOCKED: TSoupKnownStatusCode = 423;
  SOUP_STATUS_FAILED_DEPENDENCY: TSoupKnownStatusCode = 424;
  SOUP_STATUS_INTERNAL_SERVER_ERROR: TSoupKnownStatusCode = 500;
  SOUP_STATUS_NOT_IMPLEMENTED: TSoupKnownStatusCode = 501;
  SOUP_STATUS_BAD_GATEWAY: TSoupKnownStatusCode = 502;
  SOUP_STATUS_SERVICE_UNAVAILABLE: TSoupKnownStatusCode = 503;
  SOUP_STATUS_GATEWAY_TIMEOUT: TSoupKnownStatusCode = 504;
  SOUP_STATUS_HTTP_VERSION_NOT_SUPPORTED: TSoupKnownStatusCode = 505;
  SOUP_STATUS_INSUFFICIENT_STORAGE: TSoupKnownStatusCode = 507;
  SOUP_STATUS_NOT_EXTENDED: TSoupKnownStatusCode = 510;

type
  TSoupLoggerLogLevel = Integer;
const
  { SoupLoggerLogLevel }
  SOUP_LOGGER_LOG_NONE: TSoupLoggerLogLevel = 0;
  SOUP_LOGGER_LOG_MINIMAL: TSoupLoggerLogLevel = 1;
  SOUP_LOGGER_LOG_HEADERS: TSoupLoggerLogLevel = 2;
  SOUP_LOGGER_LOG_BODY: TSoupLoggerLogLevel = 3;

type
  TSoupMessageHeadersType = Integer;
const
  { SoupMessageHeadersType }
  SOUP_MESSAGE_HEADERS_REQUEST: TSoupMessageHeadersType = 0;
  SOUP_MESSAGE_HEADERS_RESPONSE: TSoupMessageHeadersType = 1;
  SOUP_MESSAGE_HEADERS_MULTIPART: TSoupMessageHeadersType = 2;

type
  TSoupRequesterError = Integer;
const
  { SoupRequesterError }
  SOUP_REQUESTER_ERROR_BAD_URI: TSoupRequesterError = 0;
  SOUP_REQUESTER_ERROR_UNSUPPORTED_URI_SCHEME: TSoupRequesterError = 1;

type
  TSoupSSLError = Integer;
const
  { SoupSSLError }
  SOUP_SSL_ERROR_HANDSHAKE_NEEDS_READ: TSoupSSLError = 0;
  SOUP_SSL_ERROR_HANDSHAKE_NEEDS_WRITE: TSoupSSLError = 1;
  SOUP_SSL_ERROR_CERTIFICATE: TSoupSSLError = 2;
  SOUP_SSL_ERROR_HANDSHAKE_FAILED: TSoupSSLError = 3;

type
  TSoupSocketIOStatus = Integer;
const
  { SoupSocketIOStatus }
  SOUP_SOCKET_OK: TSoupSocketIOStatus = 0;
  SOUP_SOCKET_WOULD_BLOCK: TSoupSocketIOStatus = 1;
  SOUP_SOCKET_EOF: TSoupSocketIOStatus = 2;
  SOUP_SOCKET_ERROR: TSoupSocketIOStatus = 3;

type
  TSoupXMLRPCError = Integer;
const
  { SoupXMLRPCError }
  SOUP_XMLRPC_ERROR_ARGUMENTS: TSoupXMLRPCError = 0;
  SOUP_XMLRPC_ERROR_RETVAL: TSoupXMLRPCError = 1;

type
  TSoupXMLRPCFault = Integer;
const
  { SoupXMLRPCFault }
  SOUP_XMLRPC_FAULT_PARSE_ERROR_NOT_WELL_FORMED: TSoupXMLRPCFault = -32700;
  SOUP_XMLRPC_FAULT_PARSE_ERROR_UNSUPPORTED_ENCODING: TSoupXMLRPCFault = -32701;
  SOUP_XMLRPC_FAULT_PARSE_ERROR_INVALID_CHARACTER_FOR_ENCODING: TSoupXMLRPCFault = -32702;
  SOUP_XMLRPC_FAULT_SERVER_ERROR_INVALID_XML_RPC: TSoupXMLRPCFault = -32600;
  SOUP_XMLRPC_FAULT_SERVER_ERROR_REQUESTED_METHOD_NOT_FOUND: TSoupXMLRPCFault = -32601;
  SOUP_XMLRPC_FAULT_SERVER_ERROR_INVALID_METHOD_PARAMETERS: TSoupXMLRPCFault = -32602;
  SOUP_XMLRPC_FAULT_SERVER_ERROR_INTERNAL_XML_RPC_ERROR: TSoupXMLRPCFault = -32603;
  SOUP_XMLRPC_FAULT_APPLICATION_ERROR: TSoupXMLRPCFault = -32500;
  SOUP_XMLRPC_FAULT_SYSTEM_ERROR: TSoupXMLRPCFault = -32400;
  SOUP_XMLRPC_FAULT_TRANSPORT_ERROR: TSoupXMLRPCFault = -32300;
type

  PPSoupAddress = ^PSoupAddress;
  PSoupAddress = ^TSoupAddress;

  PPSoupAddressFamily = ^PSoupAddressFamily;
  PSoupAddressFamily = ^TSoupAddressFamily;

  PPSoupAddressCallback = ^PSoupAddressCallback;
  PSoupAddressCallback = ^TSoupAddressCallback;
  TSoupAddressCallback = procedure(addr: PSoupAddress; status: guint; user_data: gpointer); cdecl;
  TSoupAddress = object(TGObject)
    function new(name: Pgchar; port: guint): PSoupAddress; cdecl; inline; static;
    function new_any(family: TSoupAddressFamily; port: guint): PSoupAddress; cdecl; inline; static;
    function new_from_sockaddr(sa: Pgpointer; len: gint): PSoupAddress; cdecl; inline; static;
    function equal_by_ip(addr2: TSoupAddress): gboolean; cdecl; inline;
    function equal_by_name(addr2: TSoupAddress): gboolean; cdecl; inline;
    function get_gsockaddr: PGSocketAddress; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_physical: Pgchar; cdecl; inline;
    function get_port: guint; cdecl; inline;
    function get_sockaddr(len: Pgint): Pgpointer; cdecl; inline;
    function hash_by_ip: guint; cdecl; inline;
    function hash_by_name: guint; cdecl; inline;
    function is_resolved: gboolean; cdecl; inline;
    procedure resolve_async(async_context: PGMainContext; cancellable: PGCancellable; callback: TSoupAddressCallback; user_data: gpointer); cdecl; inline;
    function resolve_sync(cancellable: PGCancellable): guint; cdecl; inline;
    //property family: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_family  { property is writeable but setter not declared } ;
    property name:  Pgchar read get_name  { property is writeable but setter not declared } ;
    property physical:  Pgchar read get_physical ;
    property port:  guint read get_port  { property is writeable but setter not declared } ;
    //property sockaddr: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_sockaddr  { property is writeable but setter not declared } ;
  end;

  PPSoupAddressClass = ^PSoupAddressClass;
  PSoupAddressClass = ^TSoupAddressClass;
  TSoupAddressClass = object
    parent_class: TGObjectClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupAuth = ^PSoupAuth;
  PSoupAuth = ^TSoupAuth;

  PPSoupMessage = ^PSoupMessage;
  PSoupMessage = ^TSoupMessage;

  PPSoupURI = ^PSoupURI;
  PSoupURI = ^TSoupURI;
  TSoupAuth = object(TGObject)
    realm1: Pgchar;
    function new(type_: TGType; msg: PSoupMessage; auth_header: Pgchar): PSoupAuth; cdecl; inline; static;
    procedure authenticate(username: Pgchar; password: Pgchar); cdecl; inline;
    procedure free_protection_space(space: PGSList); cdecl; inline;
    function get_authorization(msg: PSoupMessage): Pgchar; cdecl; inline;
    function get_host: Pgchar; cdecl; inline;
    function get_info: Pgchar; cdecl; inline;
    function get_protection_space(source_uri: PSoupURI): PGSList; cdecl; inline;
    function get_realm: Pgchar; cdecl; inline;
    function get_scheme_name: Pgchar; cdecl; inline;
    function is_authenticated: gboolean; cdecl; inline;
    function is_for_proxy: gboolean; cdecl; inline;
    function update(msg: PSoupMessage; auth_header: Pgchar): gboolean; cdecl; inline;
    property host:  Pgchar read get_host  { property is writeable but setter not declared } ;
    //property is_authenticated1: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_is_authenticated ;
    //property is_for_proxy1: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_is_for_proxy  { property is writeable but setter not declared } ;
    property realm:  Pgchar read get_realm  { property is writeable but setter not declared } ;
    property scheme_name:  Pgchar read get_scheme_name ;
  end;

  PPSoupMessageFlags = ^PSoupMessageFlags;
  PSoupMessageFlags = ^TSoupMessageFlags;
  TSoupMessageFlags = packed object(TBitObject32)
  public
    property no_redirect: DWord index 2 read GetBit write SetBit;
    property can_rebuild: DWord index 4 read GetBit write SetBit;
    property overwrite_chunks: DWord index 8 read GetBit write SetBit;
    property content_decoded: DWord index 16 read GetBit write SetBit;
    property certificate_trusted: DWord index 32 read GetBit write SetBit;
  end;


  PPSoupHTTPVersion = ^PSoupHTTPVersion;
  PSoupHTTPVersion = ^TSoupHTTPVersion;

  PPSoupBuffer = ^PSoupBuffer;
  PSoupBuffer = ^TSoupBuffer;

  PPSoupChunkAllocator = ^PSoupChunkAllocator;
  PSoupChunkAllocator = ^TSoupChunkAllocator;
  TSoupChunkAllocator = function(msg: PSoupMessage; max_len: gsize; user_data: gpointer): PSoupBuffer; cdecl;

  PPSoupMemoryUse = ^PSoupMemoryUse;
  PSoupMemoryUse = ^TSoupMemoryUse;

  PPSoupMessageBody = ^PSoupMessageBody;
  PSoupMessageBody = ^TSoupMessageBody;

  PPSoupMessageHeaders = ^PSoupMessageHeaders;
  PSoupMessageHeaders = ^TSoupMessageHeaders;
  TSoupMessage = object(TGObject)
    method1: Pgchar;
    status_code1: guint;
    reason_phrase1: Pgchar;
    request_body1: PSoupMessageBody;
    request_headers1: PSoupMessageHeaders;
    response_body1: PSoupMessageBody;
    response_headers1: PSoupMessageHeaders;
    function new(method: Pgchar; uri_string: Pgchar): PSoupMessage; cdecl; inline; static;
    function new_from_uri(method: Pgchar; uri: PSoupURI): PSoupMessage; cdecl; inline; static;
    function add_header_handler(signal: Pgchar; header: Pgchar; callback: TGCallback; user_data: gpointer): guint; cdecl; inline;
    function add_status_code_handler(signal: Pgchar; status_code: guint; callback: TGCallback; user_data: gpointer): guint; cdecl; inline;
    procedure content_sniffed(content_type: Pgchar; params: PGHashTable); cdecl; inline;
    procedure disable_feature(feature_type: TGType); cdecl; inline;
    procedure finished; cdecl; inline;
    function get_address: PSoupAddress; cdecl; inline;
    function get_first_party: PSoupURI; cdecl; inline;
    function get_flags: TSoupMessageFlags; cdecl; inline;
    function get_http_version: TSoupHTTPVersion; cdecl; inline;
    function get_https_status(certificate: PPGTlsCertificate; errors: PGTlsCertificateFlags): gboolean; cdecl; inline;
    function get_uri: PSoupURI; cdecl; inline;
    procedure got_body; cdecl; inline;
    procedure got_chunk(chunk: PSoupBuffer); cdecl; inline;
    procedure got_headers; cdecl; inline;
    procedure got_informational; cdecl; inline;
    function is_keepalive: gboolean; cdecl; inline;
    procedure restarted; cdecl; inline;
    procedure set_chunk_allocator(allocator: TSoupChunkAllocator; user_data: gpointer; destroy_notify: TGDestroyNotify); cdecl; inline;
    procedure set_first_party(first_party: PSoupURI); cdecl; inline;
    procedure set_flags(flags: TSoupMessageFlags); cdecl; inline;
    procedure set_http_version(version: TSoupHTTPVersion); cdecl; inline;
    procedure set_request(content_type: Pgchar; req_use: TSoupMemoryUse; req_body: Pgchar; req_length: gsize); cdecl; inline;
    procedure set_response(content_type: Pgchar; resp_use: TSoupMemoryUse; resp_body: Pguint8; resp_length: gsize); cdecl; inline;
    procedure set_status(status_code: guint); cdecl; inline;
    procedure set_status_full(status_code: guint; reason_phrase: Pgchar); cdecl; inline;
    procedure set_uri(uri: PSoupURI); cdecl; inline;
    procedure wrote_body; cdecl; inline;
    procedure wrote_body_data(chunk: PSoupBuffer); cdecl; inline;
    procedure wrote_chunk; cdecl; inline;
    procedure wrote_headers; cdecl; inline;
    procedure wrote_informational; cdecl; inline;
    property first_party:  PSoupURI read get_first_party  { property is writeable but setter not declared } ;
    property flags:  TSoupMessageFlags read get_flags  { property is writeable but setter not declared } ;
    property http_version:  TSoupHTTPVersion read get_http_version  { property is writeable but setter not declared } ;
    //property method: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_method  { property is writeable but setter not declared } ;
    //property reason_phrase: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_reason_phrase  { property is writeable but setter not declared } ;
    //property request_body: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_request_body ;
    //property request_headers: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_request_headers ;
    //property response_body: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_response_body ;
    //property response_headers: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_response_headers ;
    //property server_side: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_server_side  { property is writeable but setter not declared } ;
    //property status_code: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_status_code  { property is writeable but setter not declared } ;
    //property tls_certificate: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_tls_certificate  { property is writeable but setter not declared } ;
    //property tls_errors: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_tls_errors  { property is writeable but setter not declared } ;
    property uri:  PSoupURI read get_uri  { property is writeable but setter not declared } ;
  end;
  TSoupURI = object
    scheme: Pgchar;
    user: Pgchar;
    password: Pgchar;
    host: Pgchar;
    port: guint;
    path: Pgchar;
    query: Pgchar;
    fragment: Pgchar;
    function new(uri_string: Pgchar): PSoupURI; cdecl; inline; static;
    function copy: PSoupURI; cdecl; inline;
    function copy_host: PSoupURI; cdecl; inline;
    function equal(uri2: PSoupURI): gboolean; cdecl; inline;
    procedure free; cdecl; inline;
    function get_fragment: Pgchar; cdecl; inline;
    function get_host: Pgchar; cdecl; inline;
    function get_password: Pgchar; cdecl; inline;
    function get_path: Pgchar; cdecl; inline;
    function get_port: guint; cdecl; inline;
    function get_query: Pgchar; cdecl; inline;
    function get_scheme: Pgchar; cdecl; inline;
    function get_user: Pgchar; cdecl; inline;
    function host_equal(v2: TSoupURI): gboolean; cdecl; inline;
    function host_hash: guint; cdecl; inline;
    function new_with_base(uri_string: Pgchar): PSoupURI; cdecl; inline;
    procedure set_fragment(fragment: Pgchar); cdecl; inline;
    procedure set_host(host: Pgchar); cdecl; inline;
    procedure set_password(password: Pgchar); cdecl; inline;
    procedure set_path(path: Pgchar); cdecl; inline;
    procedure set_port(port: guint); cdecl; inline;
    procedure set_query(query: Pgchar); cdecl; inline;
    //procedure set_query_from_fields(first_field: Pgchar; args: array of const); cdecl; inline;
    procedure set_query_from_form(form: PGHashTable); cdecl; inline;
    procedure set_scheme(scheme: Pgchar); cdecl; inline;
    procedure set_user(user: Pgchar); cdecl; inline;
    function to_string(just_path_and_query: gboolean): Pgchar; cdecl; inline;
    function uses_default_port: gboolean; cdecl; inline;
    function decode(part: Pgchar): Pgchar; cdecl; inline; static;
    function encode(part: Pgchar; escape_extra: Pgchar): Pgchar; cdecl; inline; static;
    function normalize(part: Pgchar; unescape_extra: Pgchar): Pgchar; cdecl; inline; static;
  end;

  PPSoupAuthBasic = ^PSoupAuthBasic;
  PSoupAuthBasic = ^TSoupAuthBasic;
  TSoupAuthBasic = object(TSoupAuth)
  end;

  PPSoupAuthClass = ^PSoupAuthClass;
  PSoupAuthClass = ^TSoupAuthClass;
  TSoupAuthClass = object
    parent_class: TGObjectClass;
    scheme_name: Pgchar;
    strength: guint;
    update: function(auth: PSoupAuth; msg: PSoupMessage; auth_params: PGHashTable): gboolean; cdecl;
    get_protection_space: function(auth: PSoupAuth; source_uri: PSoupURI): PGSList; cdecl;
    authenticate: procedure(auth: PSoupAuth; username: Pgchar; password: Pgchar); cdecl;
    is_authenticated: function(auth: PSoupAuth): gboolean; cdecl;
    get_authorization: function(auth: PSoupAuth; msg: PSoupMessage): Pgchar; cdecl;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupAuthDigest = ^PSoupAuthDigest;
  PSoupAuthDigest = ^TSoupAuthDigest;
  TSoupAuthDigest = object(TSoupAuth)
  end;

  PPSoupAuthDomain = ^PSoupAuthDomain;
  PSoupAuthDomain = ^TSoupAuthDomain;
  TSoupAuthDomainBasicAuthCallback = function(domain: PSoupAuthDomain; msg: PSoupMessage; username: Pgchar; password: Pgchar; user_data: gpointer): gboolean; cdecl;
  TSoupAuthDomainDigestAuthCallback = function(domain: PSoupAuthDomain; msg: PSoupMessage; username: Pgchar; user_data: gpointer): Pgchar; cdecl;
  TSoupAuthDomainFilter = function(domain: PSoupAuthDomain; msg: PSoupMessage; user_data: gpointer): gboolean; cdecl;
  TSoupAuthDomainGenericAuthCallback = function(domain: PSoupAuthDomain; msg: PSoupMessage; username: Pgchar; user_data: gpointer): gboolean; cdecl;

  PPSoupAuthDomainBasicAuthCallback = ^PSoupAuthDomainBasicAuthCallback;
  PSoupAuthDomainBasicAuthCallback = ^TSoupAuthDomainBasicAuthCallback;

  PPSoupAuthDomainDigestAuthCallback = ^PSoupAuthDomainDigestAuthCallback;
  PSoupAuthDomainDigestAuthCallback = ^TSoupAuthDomainDigestAuthCallback;

  PPSoupAuthDomainFilter = ^PSoupAuthDomainFilter;
  PSoupAuthDomainFilter = ^TSoupAuthDomainFilter;

  PPSoupAuthDomainGenericAuthCallback = ^PSoupAuthDomainGenericAuthCallback;
  PSoupAuthDomainGenericAuthCallback = ^TSoupAuthDomainGenericAuthCallback;
  TSoupAuthDomain = object(TGObject)
    function accepts(msg: PSoupMessage): Pgchar; cdecl; inline;
    procedure add_path(path: Pgchar); cdecl; inline;
    procedure basic_set_auth_callback(callback: TSoupAuthDomainBasicAuthCallback; user_data: gpointer; dnotify: TGDestroyNotify); cdecl; inline;
    procedure challenge(msg: PSoupMessage); cdecl; inline;
    function check_password(msg: PSoupMessage; username: Pgchar; password: Pgchar): gboolean; cdecl; inline;
    function covers(msg: PSoupMessage): gboolean; cdecl; inline;
    procedure digest_set_auth_callback(callback: TSoupAuthDomainDigestAuthCallback; user_data: gpointer; dnotify: TGDestroyNotify); cdecl; inline;
    function get_realm: Pgchar; cdecl; inline;
    procedure remove_path(path: Pgchar); cdecl; inline;
    procedure set_filter(filter: TSoupAuthDomainFilter; filter_data: gpointer; dnotify: TGDestroyNotify); cdecl; inline;
    procedure set_generic_auth_callback(auth_callback: TSoupAuthDomainGenericAuthCallback; auth_data: gpointer; dnotify: TGDestroyNotify); cdecl; inline;
    function try_generic_auth_callback(msg: PSoupMessage; username: Pgchar): gboolean; cdecl; inline;
    //property add_path1: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_add_path  { property is writeable but setter not declared } ;
    //property filter: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_filter  { property is writeable but setter not declared } ;
    //property filter_data: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_filter_data  { property is writeable but setter not declared } ;
    //property generic_auth_callback: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_generic_auth_callback  { property is writeable but setter not declared } ;
    //property generic_auth_data: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_generic_auth_data  { property is writeable but setter not declared } ;
    //property proxy: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_proxy  { property is writeable but setter not declared } ;
    property realm:  Pgchar read get_realm  { property is writeable but setter not declared } ;
    //property remove_path1: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_remove_path  { property is writeable but setter not declared } ;
  end;

  PPSoupAuthDomainBasic = ^PSoupAuthDomainBasic;
  PSoupAuthDomainBasic = ^TSoupAuthDomainBasic;
  TSoupAuthDomainBasic = object(TSoupAuthDomain)
    //function new(optname1: Pgchar; args: array of const): PSoupAuthDomainBasic; cdecl; inline; static;
    //property auth_callback: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_auth_callback  { property is writeable but setter not declared } ;
    //property auth_data: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_auth_data  { property is writeable but setter not declared } ;
  end;

  PPSoupAuthDomainClass = ^PSoupAuthDomainClass;
  PSoupAuthDomainClass = ^TSoupAuthDomainClass;
  TSoupAuthDomainClass = object
    parent_class: TGObjectClass;
    accepts: function(domain: PSoupAuthDomain; msg: PSoupMessage; header: Pgchar): Pgchar; cdecl;
    challenge: function(domain: PSoupAuthDomain; msg: PSoupMessage): Pgchar; cdecl;
    check_password: function(domain: PSoupAuthDomain; msg: PSoupMessage; username: Pgchar; password: Pgchar): gboolean; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupAuthDomainBasicClass = ^PSoupAuthDomainBasicClass;
  PSoupAuthDomainBasicClass = ^TSoupAuthDomainBasicClass;
  TSoupAuthDomainBasicClass = object
    parent_class: TSoupAuthDomainClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupAuthDomainDigest = ^PSoupAuthDomainDigest;
  PSoupAuthDomainDigest = ^TSoupAuthDomainDigest;
  TSoupAuthDomainDigest = object(TSoupAuthDomain)
    //function new(optname1: Pgchar; args: array of const): PSoupAuthDomainDigest; cdecl; inline; static;
    function encode_password(username: Pgchar; realm: Pgchar; password: Pgchar): Pgchar; cdecl; inline; static;
    //property auth_callback: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_auth_callback  { property is writeable but setter not declared } ;
    //property auth_data: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_auth_data  { property is writeable but setter not declared } ;
  end;

  PPSoupAuthDomainDigestClass = ^PSoupAuthDomainDigestClass;
  PSoupAuthDomainDigestClass = ^TSoupAuthDomainDigestClass;
  TSoupAuthDomainDigestClass = object
    parent_class: TSoupAuthDomainClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupAuthNTLM = ^PSoupAuthNTLM;
  PSoupAuthNTLM = ^TSoupAuthNTLM;
  TSoupAuthNTLM = object(TSoupAuth)
  end;
  TSoupBuffer = object
    data: gpointer;
    length: gsize;
    function new(use: TSoupMemoryUse; data: gpointer; length: gsize): PSoupBuffer; cdecl; inline; static;
    function new_take(data: Pguint8; length: gsize): PSoupBuffer; cdecl; inline; static;
    function new_with_owner(data: gpointer; length: gsize; owner: gpointer; owner_dnotify: TGDestroyNotify): PSoupBuffer; cdecl; inline; static;
    function copy: PSoupBuffer; cdecl; inline;
    procedure free; cdecl; inline;
    procedure get_data(data: PPguint8; length: Pgsize); cdecl; inline;
    function get_owner: gpointer; cdecl; inline;
    function new_subbuffer(offset: gsize; length: gsize): PSoupBuffer; cdecl; inline;
  end;

  PPSoupCacheResponse = ^PSoupCacheResponse;
  PSoupCacheResponse = ^TSoupCacheResponse;

  PPSoupCacheType = ^PSoupCacheType;
  PSoupCacheType = ^TSoupCacheType;
  TSoupCacheability = packed object(TBitObject32)
  public
    property cacheable: DWord index 1 read GetBit write SetBit;
    property uncacheable: DWord index 2 read GetBit write SetBit;
    property invalidates: DWord index 4 read GetBit write SetBit;
    property validates: DWord index 8 read GetBit write SetBit;
  end;


  PPSoupClientContext = ^PSoupClientContext;
  PSoupClientContext = ^TSoupClientContext;
  TSoupClientContext = object
    function get_address: PSoupAddress; cdecl; inline;
    function get_auth_domain: PSoupAuthDomain; cdecl; inline;
    function get_auth_user: Pgchar; cdecl; inline;
    function get_host: Pgchar; cdecl; inline;
    function get_socket: PGSocket; cdecl; inline;
  end;

  PPSoupConnection = ^PSoupConnection;
  PSoupConnection = ^TSoupConnection;

  TSoupConnection = record
    Unknown: Pointer;
  end;



  PPSoupConnectionState = ^PSoupConnectionState;
  PSoupConnectionState = ^TSoupConnectionState;

  PPSoupSessionFeature = ^PSoupSessionFeature;
  PSoupSessionFeature = ^TSoupSessionFeature;

  PPSoupSession = ^PSoupSession;
  PSoupSession = ^TSoupSession;
  TSoupSessionFeature = object
    function add_feature(type_: TGType): gboolean; cdecl; inline;
    procedure attach(session: PSoupSession); cdecl; inline;
    procedure detach(session: PSoupSession); cdecl; inline;
    function has_feature(type_: TGType): gboolean; cdecl; inline;
    function remove_feature(type_: TGType): gboolean; cdecl; inline;
  end;

  PPSoupContentDecoderPrivate = ^PSoupContentDecoderPrivate;
  PSoupContentDecoderPrivate = ^TSoupContentDecoderPrivate;

  TSoupContentDecoderPrivate = record
    Unknown: Pointer;
  end;



  PPSoupContentDecoder = ^PSoupContentDecoder;
  PSoupContentDecoder = ^TSoupContentDecoder;
  TSoupContentDecoder = object(TGObject)
    priv: PSoupContentDecoderPrivate;
  end;

  PPSoupContentDecoderClass = ^PSoupContentDecoderClass;
  PSoupContentDecoderClass = ^TSoupContentDecoderClass;
  TSoupContentDecoderClass = object
    parent_class: TGObjectClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
    _libsoup_reserved5: procedure; cdecl;
  end;

  PPSoupContentSniffer = ^PSoupContentSniffer;
  PSoupContentSniffer = ^TSoupContentSniffer;

  PPSoupContentSnifferPrivate = ^PSoupContentSnifferPrivate;
  PSoupContentSnifferPrivate = ^TSoupContentSnifferPrivate;
  TSoupContentSniffer = object(TGObject)
    priv: PSoupContentSnifferPrivate;
    function new: PSoupContentSniffer; cdecl; inline; static;
    function sniff(msg: PSoupMessage; buffer: PSoupBuffer; params: PPGHashTable): Pgchar; cdecl; inline;
  end;

  TSoupContentSnifferPrivate = record
    Unknown: Pointer;
  end;



  PPSoupContentSnifferClass = ^PSoupContentSnifferClass;
  PSoupContentSnifferClass = ^TSoupContentSnifferClass;
  TSoupContentSnifferClass = object
    parent_class: TGObjectClass;
    sniff: function(sniffer: PSoupContentSniffer; msg: PSoupMessage; buffer: PSoupBuffer; params: PPGHashTable): Pgchar; cdecl;
    get_buffer_size: function(sniffer: PSoupContentSniffer): gsize; cdecl;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
    _libsoup_reserved5: procedure; cdecl;
  end;

  PPSoupCookie = ^PSoupCookie;
  PSoupCookie = ^TSoupCookie;
  TSoupCookie = object
    name: Pgchar;
    value: Pgchar;
    domain: Pgchar;
    path: Pgchar;
    expires: PGDate;
    secure: gboolean;
    http_only: gboolean;
    function new(name: Pgchar; value: Pgchar; domain: Pgchar; path: Pgchar; max_age: gint): PSoupCookie; cdecl; inline; static;
    function applies_to_uri(uri: PSoupURI): gboolean; cdecl; inline;
    function copy: PSoupCookie; cdecl; inline;
    function domain_matches(host: Pgchar): gboolean; cdecl; inline;
    function equal(cookie2: PSoupCookie): gboolean; cdecl; inline;
    procedure free; cdecl; inline;
    function get_domain: Pgchar; cdecl; inline;
    function get_expires: PGDate; cdecl; inline;
    function get_http_only: gboolean; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    function get_path: Pgchar; cdecl; inline;
    function get_secure: gboolean; cdecl; inline;
    function get_value: Pgchar; cdecl; inline;
    procedure set_domain(domain: Pgchar); cdecl; inline;
    procedure set_expires(expires: PGDate); cdecl; inline;
    procedure set_http_only(http_only: gboolean); cdecl; inline;
    procedure set_max_age(max_age: gint); cdecl; inline;
    procedure set_name(name: Pgchar); cdecl; inline;
    procedure set_path(path: Pgchar); cdecl; inline;
    procedure set_secure(secure: gboolean); cdecl; inline;
    procedure set_value(value: Pgchar); cdecl; inline;
    function to_cookie_header: Pgchar; cdecl; inline;
    function to_set_cookie_header: Pgchar; cdecl; inline;
    function parse(header: Pgchar; origin: PSoupURI): PSoupCookie; cdecl; inline; static;
  end;

  PPSoupCookieJar = ^PSoupCookieJar;
  PSoupCookieJar = ^TSoupCookieJar;

  PPSoupCookieJarAcceptPolicy = ^PSoupCookieJarAcceptPolicy;
  PSoupCookieJarAcceptPolicy = ^TSoupCookieJarAcceptPolicy;
  TSoupCookieJar = object(TGObject)
    function new: PSoupCookieJar; cdecl; inline; static;
    procedure add_cookie(cookie: PSoupCookie); cdecl; inline;
    function all_cookies: PGSList; cdecl; inline;
    procedure delete_cookie(cookie: PSoupCookie); cdecl; inline;
    function get_accept_policy: TSoupCookieJarAcceptPolicy; cdecl; inline;
    function get_cookies(uri: PSoupURI; for_http: gboolean): Pgchar; cdecl; inline;
    procedure save; cdecl; inline;
    procedure set_accept_policy(policy: TSoupCookieJarAcceptPolicy); cdecl; inline;
    procedure set_cookie(uri: PSoupURI; cookie: Pgchar); cdecl; inline;
    procedure set_cookie_with_first_party(uri: PSoupURI; first_party: PSoupURI; cookie: Pgchar); cdecl; inline;
    property accept_policy:  TSoupCookieJarAcceptPolicy read get_accept_policy  { property is writeable but setter not declared } ;
    //property read_only: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_read_only  { property is writeable but setter not declared } ;
  end;

  PPSoupCookieJarClass = ^PSoupCookieJarClass;
  PSoupCookieJarClass = ^TSoupCookieJarClass;
  TSoupCookieJarClass = object
    parent_class: TGObjectClass;
    save: procedure(jar: PSoupCookieJar); cdecl;
    changed: procedure(jar: PSoupCookieJar; old_cookie: PSoupCookie; new_cookie: PSoupCookie); cdecl;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
  end;

  PPSoupCookieJarText = ^PSoupCookieJarText;
  PSoupCookieJarText = ^TSoupCookieJarText;
  TSoupCookieJarText = object(TSoupCookieJar)
    function new(filename: Pgchar; read_only: gboolean): PSoupCookieJarText; cdecl; inline; static;
    //property filename: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_filename  { property is writeable but setter not declared } ;
  end;

  PPSoupCookieJarTextClass = ^PSoupCookieJarTextClass;
  PSoupCookieJarTextClass = ^TSoupCookieJarTextClass;
  TSoupCookieJarTextClass = object
    parent_class: TSoupCookieJarClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupDateFormat = ^PSoupDateFormat;
  PSoupDateFormat = ^TSoupDateFormat;

  PPSoupDate = ^PSoupDate;
  PSoupDate = ^TSoupDate;
  TSoupDate = object
    year: gint;
    month: gint;
    day: gint;
    hour: gint;
    minute: gint;
    second: gint;
    utc: gboolean;
    offset: gint;
    function new(year: gint; month: gint; day: gint; hour: gint; minute: gint; second: gint): PSoupDate; cdecl; inline; static;
    function new_from_now(offset_seconds: gint): PSoupDate; cdecl; inline; static;
    function new_from_string(date_string: Pgchar): PSoupDate; cdecl; inline; static;
    function new_from_time_t(when: glong): PSoupDate; cdecl; inline; static;
    function copy: PGDate; cdecl; inline;
    procedure free; cdecl; inline;
    function get_day: gint; cdecl; inline;
    function get_hour: gint; cdecl; inline;
    function get_minute: gint; cdecl; inline;
    function get_month: gint; cdecl; inline;
    function get_offset: gint; cdecl; inline;
    function get_second: gint; cdecl; inline;
    function get_utc: gint; cdecl; inline;
    function get_year: gint; cdecl; inline;
    function is_past: gboolean; cdecl; inline;
    function to_string(format: TSoupDateFormat): Pgchar; cdecl; inline;
    function to_time_t: glong; cdecl; inline;
    procedure to_timeval(time: PGTimeVal); cdecl; inline;
  end;

  PPSoupEncoding = ^PSoupEncoding;
  PSoupEncoding = ^TSoupEncoding;
  TSoupExpectation = packed object(TBitObject32)
  public
    property unrecognized: DWord index 1 read GetBit write SetBit;
    property continue: DWord index 2 read GetBit write SetBit;
  end;


  PPSoupKnownStatusCode = ^PSoupKnownStatusCode;
  PSoupKnownStatusCode = ^TSoupKnownStatusCode;

  PPSoupLogger = ^PSoupLogger;
  PSoupLogger = ^TSoupLogger;

  PPSoupLoggerLogLevel = ^PSoupLoggerLogLevel;
  PSoupLoggerLogLevel = ^TSoupLoggerLogLevel;

  PPSoupLoggerPrinter = ^PSoupLoggerPrinter;
  PSoupLoggerPrinter = ^TSoupLoggerPrinter;
  TSoupLoggerPrinter = procedure(logger: PSoupLogger; level: TSoupLoggerLogLevel; direction: char; data: Pgchar; user_data: gpointer); cdecl;

  PPSoupLoggerFilter = ^PSoupLoggerFilter;
  PSoupLoggerFilter = ^TSoupLoggerFilter;
  TSoupLoggerFilter = function(logger: PSoupLogger; msg: PSoupMessage; user_data: gpointer): TSoupLoggerLogLevel; cdecl;
  TSoupLogger = object(TGObject)
    function new(level: TSoupLoggerLogLevel; max_body_size: gint): PSoupLogger; cdecl; inline; static;
    procedure attach(session: PSoupSession); cdecl; inline;
    procedure detach(session: PSoupSession); cdecl; inline;
    procedure set_printer(printer: TSoupLoggerPrinter; printer_data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
    procedure set_request_filter(request_filter: TSoupLoggerFilter; filter_data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
    procedure set_response_filter(response_filter: TSoupLoggerFilter; filter_data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
  end;

  PPSoupSessionCallback = ^PSoupSessionCallback;
  PSoupSessionCallback = ^TSoupSessionCallback;
  TSoupSessionCallback = procedure(session: PSoupSession; msg: PSoupMessage; user_data: gpointer); cdecl;
  TSoupSession = object(TGObject)
    procedure abort; cdecl; inline;
    procedure add_feature(feature: PSoupSessionFeature); cdecl; inline;
    procedure add_feature_by_type(feature_type: TGType); cdecl; inline;
    procedure cancel_message(msg: PSoupMessage; status_code: guint); cdecl; inline;
    function get_async_context: PGMainContext; cdecl; inline;
    function get_feature(feature_type: TGType): PSoupSessionFeature; cdecl; inline;
    function get_feature_for_message(feature_type: TGType; msg: PSoupMessage): PSoupSessionFeature; cdecl; inline;
    function get_features(feature_type: TGType): PGSList; cdecl; inline;
    procedure pause_message(msg: PSoupMessage); cdecl; inline;
    procedure prepare_for_uri(uri: PSoupURI); cdecl; inline;
    procedure queue_message(msg: PSoupMessage; callback: TSoupSessionCallback; user_data: gpointer); cdecl; inline;
    procedure remove_feature(feature: PSoupSessionFeature); cdecl; inline;
    procedure remove_feature_by_type(feature_type: TGType); cdecl; inline;
    procedure requeue_message(msg: PSoupMessage); cdecl; inline;
    function send_message(msg: PSoupMessage): guint; cdecl; inline;
    procedure unpause_message(msg: PSoupMessage); cdecl; inline;
    //property accept_language: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_accept_language  { property is writeable but setter not declared } ;
    //property accept_language_auto: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_accept_language_auto  { property is writeable but setter not declared } ;
    //property add_feature1: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_add_feature  { property is writeable but setter not declared } ;
    //property add_feature_by_type1: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_add_feature_by_type  { property is writeable but setter not declared } ;
    property async_context:  PGMainContext read get_async_context  { property is writeable but setter not declared } ;
    //property idle_timeout: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_idle_timeout  { property is writeable but setter not declared } ;
    //property max_conns: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_max_conns  { property is writeable but setter not declared } ;
    //property max_conns_per_host: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_max_conns_per_host  { property is writeable but setter not declared } ;
    //property proxy_uri: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_proxy_uri  { property is writeable but setter not declared } ;
    //property remove_feature_by_type1: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_remove_feature_by_type  { property is writeable but setter not declared } ;
    //property ssl_ca_file: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_ssl_ca_file  { property is writeable but setter not declared } ;
    //property ssl_strict: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_ssl_strict  { property is writeable but setter not declared } ;
    //property timeout: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_timeout  { property is writeable but setter not declared } ;
    //property use_ntlm: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_use_ntlm  { property is writeable but setter not declared } ;
    //property user_agent: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_user_agent  { property is writeable but setter not declared } ;
  end;

  PPSoupLoggerClass = ^PSoupLoggerClass;
  PSoupLoggerClass = ^TSoupLoggerClass;
  TSoupLoggerClass = object
    parent_class: TGObjectClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;
  TSoupMessageBody = object
    data: Pgchar;
    length: gint64;
    function new: PSoupMessageBody; cdecl; inline; static;
    procedure append(use: TSoupMemoryUse; data: guint8; length: gsize); cdecl; inline;
    procedure append_buffer(buffer: PSoupBuffer); cdecl; inline;
    procedure append_take(data: Pguint8; length: gsize); cdecl; inline;
    procedure complete; cdecl; inline;
    function flatten: PSoupBuffer; cdecl; inline;
    procedure free; cdecl; inline;
    function get_accumulate: gboolean; cdecl; inline;
    function get_chunk(offset: gint64): PSoupBuffer; cdecl; inline;
    procedure got_chunk(chunk: PSoupBuffer); cdecl; inline;
    procedure set_accumulate(accumulate: gboolean); cdecl; inline;
    procedure truncate; cdecl; inline;
    procedure wrote_chunk(chunk: PSoupBuffer); cdecl; inline;
  end;

  PPSoupMessageHeadersType = ^PSoupMessageHeadersType;
  PSoupMessageHeadersType = ^TSoupMessageHeadersType;

  PPSoupMessageHeadersForeachFunc = ^PSoupMessageHeadersForeachFunc;
  PSoupMessageHeadersForeachFunc = ^TSoupMessageHeadersForeachFunc;
  TSoupMessageHeadersForeachFunc = procedure(name: Pgchar; value: Pgchar; user_data: gpointer); cdecl;

  PPSoupRange = ^PSoupRange;
  PSoupRange = ^TSoupRange;

  PPSoupExpectation = ^PSoupExpectation;
  PSoupExpectation = ^TSoupExpectation;
  TSoupMessageHeaders = object
    function new(type_: TSoupMessageHeadersType): PSoupMessageHeaders; cdecl; inline; static;
    procedure append(name: Pgchar; value: Pgchar); cdecl; inline;
    procedure clean_connection_headers; cdecl; inline;
    procedure clear; cdecl; inline;
    procedure foreach(func: TSoupMessageHeadersForeachFunc; user_data: gpointer); cdecl; inline;
    procedure free; cdecl; inline;
    procedure free_ranges(ranges: PSoupRange); cdecl; inline;
    function get(name: Pgchar): Pgchar; cdecl; inline;
    function get_content_disposition(disposition: PPgchar; params: PPGHashTable): gboolean; cdecl; inline;
    function get_content_length: gint64; cdecl; inline;
    function get_content_range(start: Pgint64; end_: Pgint64; total_length: Pgint64): gboolean; cdecl; inline;
    function get_content_type(params: PPGHashTable): Pgchar; cdecl; inline;
    function get_encoding: TSoupEncoding; cdecl; inline;
    function get_expectations: TSoupExpectation; cdecl; inline;
    function get_list(name: Pgchar): Pgchar; cdecl; inline;
    function get_one(name: Pgchar): Pgchar; cdecl; inline;
    function get_ranges(total_length: gint64; ranges: PPSoupRange; length: Pgint): gboolean; cdecl; inline;
    procedure remove(name: Pgchar); cdecl; inline;
    procedure replace(name: Pgchar; value: Pgchar); cdecl; inline;
    procedure set_content_disposition(disposition: Pgchar; params: PGHashTable); cdecl; inline;
    procedure set_content_length(content_length: gint64); cdecl; inline;
    procedure set_content_range(start: gint64; end_: gint64; total_length: gint64); cdecl; inline;
    procedure set_content_type(content_type: Pgchar; params: PGHashTable); cdecl; inline;
    procedure set_encoding(encoding: TSoupEncoding); cdecl; inline;
    procedure set_expectations(expectations: TSoupExpectation); cdecl; inline;
    procedure set_range(start: gint64; end_: gint64); cdecl; inline;
    procedure set_ranges(ranges: PSoupRange; length: gint); cdecl; inline;
  end;

  PPSoupMessageClass = ^PSoupMessageClass;
  PSoupMessageClass = ^TSoupMessageClass;
  TSoupMessageClass = object
    parent_class: TGObjectClass;
    wrote_informational: procedure(msg: PSoupMessage); cdecl;
    wrote_headers: procedure(msg: PSoupMessage); cdecl;
    wrote_chunk: procedure(msg: PSoupMessage); cdecl;
    wrote_body: procedure(msg: PSoupMessage); cdecl;
    got_informational: procedure(msg: PSoupMessage); cdecl;
    got_headers: procedure(msg: PSoupMessage); cdecl;
    got_chunk: procedure(msg: PSoupMessage; chunk: PSoupBuffer); cdecl;
    got_body: procedure(msg: PSoupMessage); cdecl;
    restarted: procedure(msg: PSoupMessage); cdecl;
    finished: procedure(msg: PSoupMessage); cdecl;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  TSoupRange = record
    start: gint64;
    end_: gint64;
  end;



  PPSoupMessageHeadersIter = ^PSoupMessageHeadersIter;
  PSoupMessageHeadersIter = ^TSoupMessageHeadersIter;
  TSoupMessageHeadersIter = object
    dummy: array [0..2] of gpointer;
    procedure init(hdrs: PSoupMessageHeaders); cdecl; inline;
    function next(name: PPgchar; value: PPgchar): gboolean; cdecl; inline;
  end;

  PPSoupMessageQueue = ^PSoupMessageQueue;
  PSoupMessageQueue = ^TSoupMessageQueue;

  TSoupMessageQueue = record
    Unknown: Pointer;
  end;



  PPSoupMessageQueueItem = ^PSoupMessageQueueItem;
  PSoupMessageQueueItem = ^TSoupMessageQueueItem;

  TSoupMessageQueueItem = record
    Unknown: Pointer;
  end;



  PPSoupMultipart = ^PSoupMultipart;
  PSoupMultipart = ^TSoupMultipart;
  TSoupMultipart = object
    function new(mime_type: Pgchar): PSoupMultipart; cdecl; inline; static;
    function new_from_message(headers: PSoupMessageHeaders; body: PSoupMessageBody): PSoupMultipart; cdecl; inline; static;
    procedure append_form_file(control_name: Pgchar; filename: Pgchar; content_type: Pgchar; body: PSoupBuffer); cdecl; inline;
    procedure append_form_string(control_name: Pgchar; data: Pgchar); cdecl; inline;
    procedure append_part(headers: PSoupMessageHeaders; body: PSoupBuffer); cdecl; inline;
    procedure free; cdecl; inline;
    function get_length: gint; cdecl; inline;
    function get_part(part: gint; headers: PPSoupMessageHeaders; body: PPSoupBuffer): gboolean; cdecl; inline;
    procedure to_message(dest_headers: PSoupMessageHeaders; dest_body: PSoupMessageBody); cdecl; inline;
  end;

  PPSoupProxyURIResolver = ^PSoupProxyURIResolver;
  PSoupProxyURIResolver = ^TSoupProxyURIResolver;

  PPSoupProxyURIResolverCallback = ^PSoupProxyURIResolverCallback;
  PSoupProxyURIResolverCallback = ^TSoupProxyURIResolverCallback;
  TSoupProxyURIResolverCallback = procedure(resolver: PSoupProxyURIResolver; status: guint; proxy_uri: PSoupURI; user_data: gpointer); cdecl;
  TSoupProxyURIResolver = object
    procedure get_proxy_uri_async(uri: PSoupURI; async_context: PGMainContext; cancellable: PGCancellable; callback: TSoupProxyURIResolverCallback; user_data: gpointer); cdecl; inline;
    function get_proxy_uri_sync(uri: PSoupURI; cancellable: PGCancellable; proxy_uri: PPSoupURI): guint; cdecl; inline;
  end;

  PPSoupProxyResolverDefault = ^PSoupProxyResolverDefault;
  PSoupProxyResolverDefault = ^TSoupProxyResolverDefault;
  TSoupProxyResolverDefault = object(TGObject)
    //property gproxy_resolver: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_gproxy_resolver  { property is writeable but setter not declared } ;
  end;

  PPSoupProxyResolverDefaultClass = ^PSoupProxyResolverDefaultClass;
  PSoupProxyResolverDefaultClass = ^TSoupProxyResolverDefaultClass;
  TSoupProxyResolverDefaultClass = object
    parent_class: TGObjectClass;
  end;

  PPSoupProxyURIResolverInterface = ^PSoupProxyURIResolverInterface;
  PSoupProxyURIResolverInterface = ^TSoupProxyURIResolverInterface;
  TSoupProxyURIResolverInterface = object
    base: TGTypeInterface;
    get_proxy_uri_async: procedure(proxy_uri_resolver: PSoupProxyURIResolver; uri: PSoupURI; async_context: PGMainContext; cancellable: PGCancellable; callback: TSoupProxyURIResolverCallback; user_data: gpointer); cdecl;
    get_proxy_uri_sync: function(proxy_uri_resolver: PSoupProxyURIResolver; uri: PSoupURI; cancellable: PGCancellable; proxy_uri: PPSoupURI): guint; cdecl;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupRequesterError = ^PSoupRequesterError;
  PSoupRequesterError = ^TSoupRequesterError;

  PPSoupSSLError = ^PSoupSSLError;
  PSoupSSLError = ^TSoupSSLError;

  PPSoupServer = ^PSoupServer;
  PSoupServer = ^TSoupServer;

  PPSoupServerCallback = ^PSoupServerCallback;
  PSoupServerCallback = ^TSoupServerCallback;
  TSoupServerCallback = procedure(server: PSoupServer; msg: PSoupMessage; path: Pgchar; query: PGHashTable; client: PSoupClientContext; user_data: gpointer); cdecl;
  TSoupServer = object(TGObject)
    //function new(optname1: Pgchar; args: array of const): PSoupServer; cdecl; inline; static;
    procedure add_auth_domain(auth_domain: PSoupAuthDomain); cdecl; inline;
    procedure add_handler(path: Pgchar; callback: TSoupServerCallback; user_data: gpointer; destroy_: TGDestroyNotify); cdecl; inline;
    procedure disconnect; cdecl; inline;
    function get_async_context: PGMainContext; cdecl; inline;
    function get_listener: PGSocket; cdecl; inline;
    function get_port: guint; cdecl; inline;
    function is_https: gboolean; cdecl; inline;
    procedure pause_message(msg: PSoupMessage); cdecl; inline;
    procedure quit; cdecl; inline;
    procedure remove_auth_domain(auth_domain: PSoupAuthDomain); cdecl; inline;
    procedure remove_handler(path: Pgchar); cdecl; inline;
    procedure run; cdecl; inline;
    procedure run_async; cdecl; inline;
    procedure unpause_message(msg: PSoupMessage); cdecl; inline;
    property async_context:  PGMainContext read get_async_context  { property is writeable but setter not declared } ;
    //property interface_: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_interface  { property is writeable but setter not declared } ;
    property port:  guint read get_port  { property is writeable but setter not declared } ;
    //property raw_paths: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_raw_paths  { property is writeable but setter not declared } ;
    //property server_header: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_server_header  { property is writeable but setter not declared } ;
    //property ssl_cert_file: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_ssl_cert_file  { property is writeable but setter not declared } ;
    //property ssl_key_file: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_ssl_key_file  { property is writeable but setter not declared } ;
  end;

  PPSoupServerClass = ^PSoupServerClass;
  PSoupServerClass = ^TSoupServerClass;
  TSoupServerClass = object
    parent_class: TGObjectClass;
    request_started: procedure(server: PSoupServer; msg: PSoupMessage; client: PSoupClientContext); cdecl;
    request_read: procedure(server: PSoupServer; msg: PSoupMessage; client: PSoupClientContext); cdecl;
    request_finished: procedure(server: PSoupServer; msg: PSoupMessage; client: PSoupClientContext); cdecl;
    request_aborted: procedure(server: PSoupServer; msg: PSoupMessage; client: PSoupClientContext); cdecl;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupSessionAsync = ^PSoupSessionAsync;
  PSoupSessionAsync = ^TSoupSessionAsync;
  TSoupSessionAsync = object(TSoupSession)
    function new: PSoupSessionAsync; cdecl; inline; static;
    //function new_with_options(optname1: Pgchar; args: array of const): PSoupSessionAsync; cdecl; inline; static;
  end;

  PPSoupSessionClass = ^PSoupSessionClass;
  PSoupSessionClass = ^TSoupSessionClass;
  TSoupSessionClass = object
    parent_class: TGObjectClass;
    request_started: procedure(session: PSoupSession; msg: PSoupMessage; socket: PGSocket); cdecl;
    authenticate: procedure(session: PSoupSession; msg: PSoupMessage; auth: PSoupAuth; retrying: gboolean); cdecl;
    queue_message: procedure(session: PSoupSession; msg: PSoupMessage; callback: TSoupSessionCallback; user_data: gpointer); cdecl;
    requeue_message: procedure(session: PSoupSession; msg: PSoupMessage); cdecl;
    send_message: function(session: PSoupSession; msg: PSoupMessage): guint; cdecl;
    cancel_message: procedure(session: PSoupSession; msg: PSoupMessage; status_code: guint); cdecl;
    auth_required: procedure(session: PSoupSession; msg: PSoupMessage; auth: PSoupAuth; retrying: gboolean); cdecl;
    flush_queue: procedure(session: PSoupSession); cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupSessionAsyncClass = ^PSoupSessionAsyncClass;
  PSoupSessionAsyncClass = ^TSoupSessionAsyncClass;
  TSoupSessionAsyncClass = object
    parent_class: TSoupSessionClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupSessionFeatureInterface = ^PSoupSessionFeatureInterface;
  PSoupSessionFeatureInterface = ^TSoupSessionFeatureInterface;
  TSoupSessionFeatureInterface = object
    parent: TGTypeInterface;
    attach: procedure(feature: PSoupSessionFeature; session: PSoupSession); cdecl;
    detach: procedure(feature: PSoupSessionFeature; session: PSoupSession); cdecl;
    request_queued: procedure(feature: PSoupSessionFeature; session: PSoupSession; msg: PSoupMessage); cdecl;
    request_started: procedure(feature: PSoupSessionFeature; session: PSoupSession; msg: PSoupMessage; socket: PGSocket); cdecl;
    request_unqueued: procedure(feature: PSoupSessionFeature; session: PSoupSession; msg: PSoupMessage); cdecl;
    add_feature: function(feature: PSoupSessionFeature; type_: TGType): gboolean; cdecl;
    remove_feature: function(feature: PSoupSessionFeature; type_: TGType): gboolean; cdecl;
    has_feature: function(feature: PSoupSessionFeature; type_: TGType): gboolean; cdecl;
  end;

  PPSoupSessionSync = ^PSoupSessionSync;
  PSoupSessionSync = ^TSoupSessionSync;
  TSoupSessionSync = object(TSoupSession)
    function new: PSoupSessionSync; cdecl; inline; static;
    //function new_with_options(optname1: Pgchar; args: array of const): PSoupSessionSync; cdecl; inline; static;
  end;

  PPSoupSessionSyncClass = ^PSoupSessionSyncClass;
  PSoupSessionSyncClass = ^TSoupSessionSyncClass;
  TSoupSessionSyncClass = object
    parent_class: TSoupSessionClass;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupSocket = ^PSoupSocket;
  PSoupSocket = ^TSoupSocket;
  TSoupSocketCallback = procedure(sock: PSoupSocket; status: guint; user_data: gpointer); cdecl;

  PPSoupSocketIOStatus = ^PSoupSocketIOStatus;
  PSoupSocketIOStatus = ^TSoupSocketIOStatus;

  PPSoupSocketCallback = ^PSoupSocketCallback;
  PSoupSocketCallback = ^TSoupSocketCallback;
  TSoupSocket = object(TGObject)
    //function new(optname1: Pgchar; args: array of const): PSoupSocket; cdecl; inline; static;
    procedure connect_async(cancellable: PGCancellable; callback: TSoupSocketCallback; user_data: gpointer); cdecl; inline;
    function connect_sync(cancellable: PGCancellable): guint; cdecl; inline;
    procedure disconnect; cdecl; inline;
    function get_fd: gint; cdecl; inline;
    function get_local_address: PSoupAddress; cdecl; inline;
    function get_remote_address: PSoupAddress; cdecl; inline;
    function is_connected: gboolean; cdecl; inline;
    function is_ssl: gboolean; cdecl; inline;
    function listen: gboolean; cdecl; inline;
    function read(buffer: gpointer; len: gsize; nread: Pgsize; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl; inline;
    function read_until(buffer: gpointer; len: gsize; boundary: gpointer; boundary_len: gsize; nread: Pgsize; got_boundary: Pgboolean; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl; inline;
    function start_proxy_ssl(ssl_host: Pgchar; cancellable: PGCancellable): gboolean; cdecl; inline;
    function start_ssl(cancellable: PGCancellable): gboolean; cdecl; inline;
    function write(buffer: gpointer; len: gsize; nwrote: Pgsize; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl; inline;
    //property async_context: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_async_context  { property is writeable but setter not declared } ;
    //property clean_dispose: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_clean_dispose  { property is writeable but setter not declared } ;
    //property is_server: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_is_server ;
    property local_address:  PSoupAddress read get_local_address  { property is writeable but setter not declared } ;
    //property non_blocking: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_non_blocking  { property is writeable but setter not declared } ;
    property remote_address:  PSoupAddress read get_remote_address  { property is writeable but setter not declared } ;
    //property ssl_creds: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_ssl_creds  { property is writeable but setter not declared } ;
    //property ssl_fallback: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_ssl_fallback  { property is writeable but setter not declared } ;
    //property ssl_strict: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_ssl_strict  { property is writeable but setter not declared } ;
    //property timeout: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_timeout  { property is writeable but setter not declared } ;
    //property tls_certificate: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_tls_certificate ;
    //property tls_errors: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_tls_errors ;
    //property trusted_certificate: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_trusted_certificate ;
  end;

  PPSoupSocketClass = ^PSoupSocketClass;
  PSoupSocketClass = ^TSoupSocketClass;
  TSoupSocketClass = object
    parent_class: TGObjectClass;
    readable: procedure(param0: PSoupSocket); cdecl;
    writable: procedure(param0: PSoupSocket); cdecl;
    disconnected: procedure(param0: PSoupSocket); cdecl;
    new_connection: procedure(param0: PSoupSocket; param1: PSoupSocket); cdecl;
    _libsoup_reserved1: procedure; cdecl;
    _libsoup_reserved2: procedure; cdecl;
    _libsoup_reserved3: procedure; cdecl;
    _libsoup_reserved4: procedure; cdecl;
  end;

  PPSoupXMLRPCError = ^PSoupXMLRPCError;
  PSoupXMLRPCError = ^TSoupXMLRPCError;

  PPSoupXMLRPCFault = ^PSoupXMLRPCFault;
  PSoupXMLRPCFault = ^TSoupXMLRPCFault;

function soup_add_completion(async_context: PGMainContext; function_: TGSourceFunc; data: gpointer): PGSource; cdecl; external;
function soup_add_idle(async_context: PGMainContext; function_: TGSourceFunc; data: gpointer): PGSource; cdecl; external;
function soup_add_io_watch(async_context: PGMainContext; chan: PGIOChannel; condition: TGIOCondition; function_: TGIOFunc; data: gpointer): PGSource; cdecl; external;
function soup_add_timeout(async_context: PGMainContext; interval: guint; function_: TGSourceFunc; data: gpointer): PGSource; cdecl; external;
function soup_address_equal_by_ip(AAddress: PSoupAddress; addr2: TSoupAddress): gboolean; cdecl; external;
function soup_address_equal_by_name(AAddress: PSoupAddress; addr2: TSoupAddress): gboolean; cdecl; external;
function soup_address_get_gsockaddr(AAddress: PSoupAddress): PGSocketAddress; cdecl; external;
function soup_address_get_name(AAddress: PSoupAddress): Pgchar; cdecl; external;
function soup_address_get_physical(AAddress: PSoupAddress): Pgchar; cdecl; external;
function soup_address_get_port(AAddress: PSoupAddress): guint; cdecl; external;
function soup_address_get_sockaddr(AAddress: PSoupAddress; len: Pgint): Pgpointer; cdecl; external;
function soup_address_get_type: TGType; cdecl; external;
function soup_address_hash_by_ip(AAddress: PSoupAddress): guint; cdecl; external;
function soup_address_hash_by_name(AAddress: PSoupAddress): guint; cdecl; external;
function soup_address_is_resolved(AAddress: PSoupAddress): gboolean; cdecl; external;
function soup_address_new(name: Pgchar; port: guint): PSoupAddress; cdecl; external;
function soup_address_new_any(family: TSoupAddressFamily; port: guint): PSoupAddress; cdecl; external;
function soup_address_new_from_sockaddr(sa: Pgpointer; len: gint): PSoupAddress; cdecl; external;
function soup_address_resolve_sync(AAddress: PSoupAddress; cancellable: PGCancellable): guint; cdecl; external;
function soup_auth_basic_get_type: TGType; cdecl; external;
function soup_auth_digest_get_type: TGType; cdecl; external;
function soup_auth_domain_accepts(AAuthDomain: PSoupAuthDomain; msg: PSoupMessage): Pgchar; cdecl; external;
function soup_auth_domain_basic_get_type: TGType; cdecl; external;
function soup_auth_domain_basic_new(optname1: Pgchar; args: array of const): PSoupAuthDomainBasic; cdecl; external;
function soup_auth_domain_check_password(AAuthDomain: PSoupAuthDomain; msg: PSoupMessage; username: Pgchar; password: Pgchar): gboolean; cdecl; external;
function soup_auth_domain_covers(AAuthDomain: PSoupAuthDomain; msg: PSoupMessage): gboolean; cdecl; external;
function soup_auth_domain_digest_encode_password(username: Pgchar; realm: Pgchar; password: Pgchar): Pgchar; cdecl; external;
function soup_auth_domain_digest_get_type: TGType; cdecl; external;
function soup_auth_domain_digest_new(optname1: Pgchar; args: array of const): PSoupAuthDomainDigest; cdecl; external;
function soup_auth_domain_get_realm(AAuthDomain: PSoupAuthDomain): Pgchar; cdecl; external;
function soup_auth_domain_get_type: TGType; cdecl; external;
function soup_auth_domain_try_generic_auth_callback(AAuthDomain: PSoupAuthDomain; msg: PSoupMessage; username: Pgchar): gboolean; cdecl; external;
function soup_auth_get_authorization(AAuth: PSoupAuth; msg: PSoupMessage): Pgchar; cdecl; external;
function soup_auth_get_host(AAuth: PSoupAuth): Pgchar; cdecl; external;
function soup_auth_get_info(AAuth: PSoupAuth): Pgchar; cdecl; external;
function soup_auth_get_protection_space(AAuth: PSoupAuth; source_uri: PSoupURI): PGSList; cdecl; external;
function soup_auth_get_realm(AAuth: PSoupAuth): Pgchar; cdecl; external;
function soup_auth_get_scheme_name(AAuth: PSoupAuth): Pgchar; cdecl; external;
function soup_auth_get_type: TGType; cdecl; external;
function soup_auth_is_authenticated(AAuth: PSoupAuth): gboolean; cdecl; external;
function soup_auth_is_for_proxy(AAuth: PSoupAuth): gboolean; cdecl; external;
function soup_auth_new(type_: TGType; msg: PSoupMessage; auth_header: Pgchar): PSoupAuth; cdecl; external;
function soup_auth_ntlm_get_type: TGType; cdecl; external;
function soup_auth_update(AAuth: PSoupAuth; msg: PSoupMessage; auth_header: Pgchar): gboolean; cdecl; external;
function soup_buffer_copy(ABuffer: PSoupBuffer): PSoupBuffer; cdecl; external;
function soup_buffer_get_owner(ABuffer: PSoupBuffer): gpointer; cdecl; external;
function soup_buffer_get_type: TGType; cdecl; external;
function soup_buffer_new(use: TSoupMemoryUse; data: gpointer; length: gsize): PSoupBuffer; cdecl; external;
function soup_buffer_new_subbuffer(ABuffer: PSoupBuffer; offset: gsize; length: gsize): PSoupBuffer; cdecl; external;
function soup_buffer_new_take(data: Pguint8; length: gsize): PSoupBuffer; cdecl; external;
function soup_buffer_new_with_owner(data: gpointer; length: gsize; owner: gpointer; owner_dnotify: TGDestroyNotify): PSoupBuffer; cdecl; external;
function soup_client_context_get_address(AClientContext: PSoupClientContext): PSoupAddress; cdecl; external;
function soup_client_context_get_auth_domain(AClientContext: PSoupClientContext): PSoupAuthDomain; cdecl; external;
function soup_client_context_get_auth_user(AClientContext: PSoupClientContext): Pgchar; cdecl; external;
function soup_client_context_get_host(AClientContext: PSoupClientContext): Pgchar; cdecl; external;
function soup_client_context_get_socket(AClientContext: PSoupClientContext): PGSocket; cdecl; external;
function soup_client_context_get_type: TGType; cdecl; external;
function soup_content_decoder_get_type: TGType; cdecl; external;
function soup_content_sniffer_get_type: TGType; cdecl; external;
function soup_content_sniffer_new: PSoupContentSniffer; cdecl; external;
function soup_content_sniffer_sniff(AContentSniffer: PSoupContentSniffer; msg: PSoupMessage; buffer: PSoupBuffer; params: PPGHashTable): Pgchar; cdecl; external;
function soup_cookie_applies_to_uri(ACookie: PSoupCookie; uri: PSoupURI): gboolean; cdecl; external;
function soup_cookie_copy(ACookie: PSoupCookie): PSoupCookie; cdecl; external;
function soup_cookie_domain_matches(ACookie: PSoupCookie; host: Pgchar): gboolean; cdecl; external;
function soup_cookie_equal(ACookie: PSoupCookie; cookie2: PSoupCookie): gboolean; cdecl; external;
function soup_cookie_get_domain(ACookie: PSoupCookie): Pgchar; cdecl; external;
function soup_cookie_get_expires(ACookie: PSoupCookie): PGDate; cdecl; external;
function soup_cookie_get_http_only(ACookie: PSoupCookie): gboolean; cdecl; external;
function soup_cookie_get_name(ACookie: PSoupCookie): Pgchar; cdecl; external;
function soup_cookie_get_path(ACookie: PSoupCookie): Pgchar; cdecl; external;
function soup_cookie_get_secure(ACookie: PSoupCookie): gboolean; cdecl; external;
function soup_cookie_get_type: TGType; cdecl; external;
function soup_cookie_get_value(ACookie: PSoupCookie): Pgchar; cdecl; external;
function soup_cookie_jar_all_cookies(ACookieJar: PSoupCookieJar): PGSList; cdecl; external;
function soup_cookie_jar_get_accept_policy(ACookieJar: PSoupCookieJar): TSoupCookieJarAcceptPolicy; cdecl; external;
function soup_cookie_jar_get_cookies(ACookieJar: PSoupCookieJar; uri: PSoupURI; for_http: gboolean): Pgchar; cdecl; external;
function soup_cookie_jar_get_type: TGType; cdecl; external;
function soup_cookie_jar_new: PSoupCookieJar; cdecl; external;
function soup_cookie_jar_text_get_type: TGType; cdecl; external;
function soup_cookie_jar_text_new(filename: Pgchar; read_only: gboolean): PSoupCookieJarText; cdecl; external;
function soup_cookie_new(name: Pgchar; value: Pgchar; domain: Pgchar; path: Pgchar; max_age: gint): PSoupCookie; cdecl; external;
function soup_cookie_parse(header: Pgchar; origin: PSoupURI): PSoupCookie; cdecl; external;
function soup_cookie_to_cookie_header(ACookie: PSoupCookie): Pgchar; cdecl; external;
function soup_cookie_to_set_cookie_header(ACookie: PSoupCookie): Pgchar; cdecl; external;
function soup_cookies_from_request(msg: PSoupMessage): PGSList; cdecl; external;
function soup_cookies_from_response(msg: PSoupMessage): PGSList; cdecl; external;
function soup_cookies_to_cookie_header(cookies: PGSList): Pgchar; cdecl; external;
function soup_date_copy(ADate: PSoupDate): PGDate; cdecl; external;
function soup_date_get_day(ADate: PSoupDate): gint; cdecl; external;
function soup_date_get_hour(ADate: PSoupDate): gint; cdecl; external;
function soup_date_get_minute(ADate: PSoupDate): gint; cdecl; external;
function soup_date_get_month(ADate: PSoupDate): gint; cdecl; external;
function soup_date_get_offset(ADate: PSoupDate): gint; cdecl; external;
function soup_date_get_second(ADate: PSoupDate): gint; cdecl; external;
function soup_date_get_type: TGType; cdecl; external;
function soup_date_get_utc(ADate: PSoupDate): gint; cdecl; external;
function soup_date_get_year(ADate: PSoupDate): gint; cdecl; external;
function soup_date_is_past(ADate: PSoupDate): gboolean; cdecl; external;
function soup_date_new(year: gint; month: gint; day: gint; hour: gint; minute: gint; second: gint): PSoupDate; cdecl; external;
function soup_date_new_from_now(offset_seconds: gint): PSoupDate; cdecl; external;
function soup_date_new_from_string(date_string: Pgchar): PSoupDate; cdecl; external;
function soup_date_new_from_time_t(when: glong): PSoupDate; cdecl; external;
function soup_date_to_string(ADate: PSoupDate; format: TSoupDateFormat): Pgchar; cdecl; external;
function soup_date_to_time_t(ADate: PSoupDate): glong; cdecl; external;
function soup_form_decode(encoded_form: Pgchar): PGHashTable; cdecl; external;
function soup_form_decode_multipart(msg: PSoupMessage; file_control_name: Pgchar; filename: PPgchar; content_type: PPgchar; file_: PPSoupBuffer): PGHashTable; cdecl; external;
function soup_form_encode(first_field: Pgchar; args: array of const): Pgchar; cdecl; external;
function soup_form_encode_datalist(form_data_set: PPGData): Pgchar; cdecl; external;
function soup_form_encode_hash(form_data_set: PGHashTable): Pgchar; cdecl; external;
function soup_form_encode_valist(first_field: Pgchar; args: Tva_list): Pgchar; cdecl; external;
function soup_form_request_new(method: Pgchar; uri: Pgchar; first_field: Pgchar; args: array of const): PSoupMessage; cdecl; external;
function soup_form_request_new_from_datalist(method: Pgchar; uri: Pgchar; form_data_set: PPGData): PSoupMessage; cdecl; external;
function soup_form_request_new_from_hash(method: Pgchar; uri: Pgchar; form_data_set: PGHashTable): PSoupMessage; cdecl; external;
function soup_form_request_new_from_multipart(uri: Pgchar; multipart: PSoupMultipart): PSoupMessage; cdecl; external;
function soup_header_contains(header: Pgchar; token: Pgchar): gboolean; cdecl; external;
function soup_header_parse_list(header: Pgchar): PGSList; cdecl; external;
function soup_header_parse_param_list(header: Pgchar): PGHashTable; cdecl; external;
function soup_header_parse_quality_list(header: Pgchar; unacceptable: PPGSList): PGSList; cdecl; external;
function soup_header_parse_semi_param_list(header: Pgchar): PGHashTable; cdecl; external;
function soup_headers_parse(str: Pgchar; len: gint; dest: PSoupMessageHeaders): gboolean; cdecl; external;
function soup_headers_parse_request(str: Pgchar; len: gint; req_headers: PSoupMessageHeaders; req_method: PPgchar; req_path: PPgchar; ver: PSoupHTTPVersion): guint; cdecl; external;
function soup_headers_parse_response(str: Pgchar; len: gint; headers: PSoupMessageHeaders; ver: PSoupHTTPVersion; status_code: Pguint; reason_phrase: PPgchar): gboolean; cdecl; external;
function soup_headers_parse_status_line(status_line: Pgchar; ver: PSoupHTTPVersion; status_code: Pguint; reason_phrase: PPgchar): gboolean; cdecl; external;
function soup_http_error_quark: TGQuark; cdecl; external;
function soup_logger_get_type: TGType; cdecl; external;
function soup_logger_new(level: TSoupLoggerLogLevel; max_body_size: gint): PSoupLogger; cdecl; external;
function soup_message_add_header_handler(AMessage: PSoupMessage; signal: Pgchar; header: Pgchar; callback: TGCallback; user_data: gpointer): guint; cdecl; external;
function soup_message_add_status_code_handler(AMessage: PSoupMessage; signal: Pgchar; status_code: guint; callback: TGCallback; user_data: gpointer): guint; cdecl; external;
function soup_message_body_flatten(AMessageBody: PSoupMessageBody): PSoupBuffer; cdecl; external;
function soup_message_body_get_accumulate(AMessageBody: PSoupMessageBody): gboolean; cdecl; external;
function soup_message_body_get_chunk(AMessageBody: PSoupMessageBody; offset: gint64): PSoupBuffer; cdecl; external;
function soup_message_body_get_type: TGType; cdecl; external;
function soup_message_body_new: PSoupMessageBody; cdecl; external;
function soup_message_get_address(AMessage: PSoupMessage): PSoupAddress; cdecl; external;
function soup_message_get_first_party(AMessage: PSoupMessage): PSoupURI; cdecl; external;
function soup_message_get_flags(AMessage: PSoupMessage): TSoupMessageFlags; cdecl; external;
function soup_message_get_http_version(AMessage: PSoupMessage): TSoupHTTPVersion; cdecl; external;
function soup_message_get_https_status(AMessage: PSoupMessage; certificate: PPGTlsCertificate; errors: PGTlsCertificateFlags): gboolean; cdecl; external;
function soup_message_get_type: TGType; cdecl; external;
function soup_message_get_uri(AMessage: PSoupMessage): PSoupURI; cdecl; external;
function soup_message_headers_get(AMessageHeaders: PSoupMessageHeaders; name: Pgchar): Pgchar; cdecl; external;
function soup_message_headers_get_content_disposition(AMessageHeaders: PSoupMessageHeaders; disposition: PPgchar; params: PPGHashTable): gboolean; cdecl; external;
function soup_message_headers_get_content_length(AMessageHeaders: PSoupMessageHeaders): gint64; cdecl; external;
function soup_message_headers_get_content_range(AMessageHeaders: PSoupMessageHeaders; start: Pgint64; end_: Pgint64; total_length: Pgint64): gboolean; cdecl; external;
function soup_message_headers_get_content_type(AMessageHeaders: PSoupMessageHeaders; params: PPGHashTable): Pgchar; cdecl; external;
function soup_message_headers_get_encoding(AMessageHeaders: PSoupMessageHeaders): TSoupEncoding; cdecl; external;
function soup_message_headers_get_expectations(AMessageHeaders: PSoupMessageHeaders): TSoupExpectation; cdecl; external;
function soup_message_headers_get_list(AMessageHeaders: PSoupMessageHeaders; name: Pgchar): Pgchar; cdecl; external;
function soup_message_headers_get_one(AMessageHeaders: PSoupMessageHeaders; name: Pgchar): Pgchar; cdecl; external;
function soup_message_headers_get_ranges(AMessageHeaders: PSoupMessageHeaders; total_length: gint64; ranges: PPSoupRange; length: Pgint): gboolean; cdecl; external;
function soup_message_headers_get_type: TGType; cdecl; external;
function soup_message_headers_iter_next(AMessageHeadersIter: PSoupMessageHeadersIter; name: PPgchar; value: PPgchar): gboolean; cdecl; external;
function soup_message_headers_new(type_: TSoupMessageHeadersType): PSoupMessageHeaders; cdecl; external;
function soup_message_is_keepalive(AMessage: PSoupMessage): gboolean; cdecl; external;
function soup_message_new(method: Pgchar; uri_string: Pgchar): PSoupMessage; cdecl; external;
function soup_message_new_from_uri(method: Pgchar; uri: PSoupURI): PSoupMessage; cdecl; external;
function soup_multipart_get_length(AMultipart: PSoupMultipart): gint; cdecl; external;
function soup_multipart_get_part(AMultipart: PSoupMultipart; part: gint; headers: PPSoupMessageHeaders; body: PPSoupBuffer): gboolean; cdecl; external;
function soup_multipart_get_type: TGType; cdecl; external;
function soup_multipart_new(mime_type: Pgchar): PSoupMultipart; cdecl; external;
function soup_multipart_new_from_message(headers: PSoupMessageHeaders; body: PSoupMessageBody): PSoupMultipart; cdecl; external;
function soup_proxy_resolver_default_get_type: TGType; cdecl; external;
function soup_proxy_uri_resolver_get_proxy_uri_sync(AProxyURIResolver: PSoupProxyURIResolver; uri: PSoupURI; cancellable: PGCancellable; proxy_uri: PPSoupURI): guint; cdecl; external;
function soup_proxy_uri_resolver_get_type: TGType; cdecl; external;
function soup_server_get_async_context(AServer: PSoupServer): PGMainContext; cdecl; external;
function soup_server_get_listener(AServer: PSoupServer): PGSocket; cdecl; external;
function soup_server_get_port(AServer: PSoupServer): guint; cdecl; external;
function soup_server_get_type: TGType; cdecl; external;
function soup_server_is_https(AServer: PSoupServer): gboolean; cdecl; external;
function soup_server_new(optname1: Pgchar; args: array of const): PSoupServer; cdecl; external;
function soup_session_async_get_type: TGType; cdecl; external;
function soup_session_async_new: PSoupSessionAsync; cdecl; external;
function soup_session_async_new_with_options(optname1: Pgchar; args: array of const): PSoupSessionAsync; cdecl; external;
function soup_session_feature_add_feature(ASessionFeature: PSoupSessionFeature; type_: TGType): gboolean; cdecl; external;
function soup_session_feature_get_type: TGType; cdecl; external;
function soup_session_feature_has_feature(ASessionFeature: PSoupSessionFeature; type_: TGType): gboolean; cdecl; external;
function soup_session_feature_remove_feature(ASessionFeature: PSoupSessionFeature; type_: TGType): gboolean; cdecl; external;
function soup_session_get_async_context(ASession: PSoupSession): PGMainContext; cdecl; external;
function soup_session_get_feature(ASession: PSoupSession; feature_type: TGType): PSoupSessionFeature; cdecl; external;
function soup_session_get_feature_for_message(ASession: PSoupSession; feature_type: TGType; msg: PSoupMessage): PSoupSessionFeature; cdecl; external;
function soup_session_get_features(ASession: PSoupSession; feature_type: TGType): PGSList; cdecl; external;
function soup_session_get_type: TGType; cdecl; external;
function soup_session_send_message(ASession: PSoupSession; msg: PSoupMessage): guint; cdecl; external;
function soup_session_sync_get_type: TGType; cdecl; external;
function soup_session_sync_new: PSoupSessionSync; cdecl; external;
function soup_session_sync_new_with_options(optname1: Pgchar; args: array of const): PSoupSessionSync; cdecl; external;
function soup_socket_connect_sync(ASocket: PSoupSocket; cancellable: PGCancellable): guint; cdecl; external;
function soup_socket_get_fd(ASocket: PSoupSocket): gint; cdecl; external;
function soup_socket_get_local_address(ASocket: PSoupSocket): PSoupAddress; cdecl; external;
function soup_socket_get_remote_address(ASocket: PSoupSocket): PSoupAddress; cdecl; external;
function soup_socket_get_type: TGType; cdecl; external;
function soup_socket_is_connected(ASocket: PSoupSocket): gboolean; cdecl; external;
function soup_socket_is_ssl(ASocket: PSoupSocket): gboolean; cdecl; external;
function soup_socket_listen(ASocket: PSoupSocket): gboolean; cdecl; external;
function soup_socket_new(optname1: Pgchar; args: array of const): PSoupSocket; cdecl; external;
function soup_socket_read(ASocket: PSoupSocket; buffer: gpointer; len: gsize; nread: Pgsize; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl; external;
function soup_socket_read_until(ASocket: PSoupSocket; buffer: gpointer; len: gsize; boundary: gpointer; boundary_len: gsize; nread: Pgsize; got_boundary: Pgboolean; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl; external;
function soup_socket_start_proxy_ssl(ASocket: PSoupSocket; ssl_host: Pgchar; cancellable: PGCancellable): gboolean; cdecl; external;
function soup_socket_start_ssl(ASocket: PSoupSocket; cancellable: PGCancellable): gboolean; cdecl; external;
function soup_socket_write(ASocket: PSoupSocket; buffer: gpointer; len: gsize; nwrote: Pgsize; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl; external;
function soup_ssl_error_quark: TGQuark; cdecl; external;
function soup_status_get_phrase(status_code: guint): Pgchar; cdecl; external;
function soup_status_proxify(status_code: guint): guint; cdecl; external;
function soup_str_case_equal(v1: gpointer; v2: gpointer): gboolean; cdecl; external;
function soup_str_case_hash(key: gpointer): guint; cdecl; external;
function soup_uri_copy(AURI: PSoupURI): PSoupURI; cdecl; external;
function soup_uri_copy_host(AURI: PSoupURI): PSoupURI; cdecl; external;
function soup_uri_decode(part: Pgchar): Pgchar; cdecl; external;
function soup_uri_encode(part: Pgchar; escape_extra: Pgchar): Pgchar; cdecl; external;
function soup_uri_equal(AURI: PSoupURI; uri2: PSoupURI): gboolean; cdecl; external;
function soup_uri_get_fragment(AURI: PSoupURI): Pgchar; cdecl; external;
function soup_uri_get_host(AURI: PSoupURI): Pgchar; cdecl; external;
function soup_uri_get_password(AURI: PSoupURI): Pgchar; cdecl; external;
function soup_uri_get_path(AURI: PSoupURI): Pgchar; cdecl; external;
function soup_uri_get_port(AURI: PSoupURI): guint; cdecl; external;
function soup_uri_get_query(AURI: PSoupURI): Pgchar; cdecl; external;
function soup_uri_get_scheme(AURI: PSoupURI): Pgchar; cdecl; external;
function soup_uri_get_type: TGType; cdecl; external;
function soup_uri_get_user(AURI: PSoupURI): Pgchar; cdecl; external;
function soup_uri_host_equal(AURI: PSoupURI; v2: TSoupURI): gboolean; cdecl; external;
function soup_uri_host_hash(AURI: PSoupURI): guint; cdecl; external;
function soup_uri_new(uri_string: Pgchar): PSoupURI; cdecl; external;
function soup_uri_new_with_base(AURI: PSoupURI; uri_string: Pgchar): PSoupURI; cdecl; external;
function soup_uri_normalize(part: Pgchar; unescape_extra: Pgchar): Pgchar; cdecl; external;
function soup_uri_to_string(AURI: PSoupURI; just_path_and_query: gboolean): Pgchar; cdecl; external;
function soup_uri_uses_default_port(AURI: PSoupURI): gboolean; cdecl; external;
function soup_value_array_from_args(args: Tva_list): PGValueArray; cdecl; external;
function soup_value_array_get_nth(array_: PGValueArray; index_: guint; type_: TGType; args: array of const): gboolean; cdecl; external;
function soup_value_array_new: PGValueArray; cdecl; external;
function soup_value_array_new_with_vals(first_type: TGType; args: array of const): PGValueArray; cdecl; external;
function soup_value_array_to_args(array_: PGValueArray; args: Tva_list): gboolean; cdecl; external;
function soup_value_hash_lookup(hash: PGHashTable; key: Pgchar; type_: TGType; args: array of const): gboolean; cdecl; external;
function soup_value_hash_lookup_vals(hash: PGHashTable; first_key: Pgchar; args: array of const): gboolean; cdecl; external;
function soup_value_hash_new: PGHashTable; cdecl; external;
function soup_value_hash_new_with_vals(first_key: Pgchar; args: array of const): PGHashTable; cdecl; external;
function soup_xmlrpc_build_fault(fault_code: gint; fault_format: Pgchar; args: array of const): Pgchar; cdecl; external;
function soup_xmlrpc_build_method_call(method_name: Pgchar; params: PGValue; n_params: gint): Pgchar; cdecl; external;
function soup_xmlrpc_build_method_response(value: PGValue): Pgchar; cdecl; external;
function soup_xmlrpc_error_quark: TGQuark; cdecl; external;
function soup_xmlrpc_extract_method_call(method_call: Pgchar; length: gint; method_name: PPgchar; args: array of const): gboolean; cdecl; external;
function soup_xmlrpc_extract_method_response(method_response: Pgchar; length: gint; error: PPGError; type_: TGType; args: array of const): gboolean; cdecl; external;
function soup_xmlrpc_fault_quark: TGQuark; cdecl; external;
function soup_xmlrpc_parse_method_call(method_call: Pgchar; length: gint; method_name: PPgchar; params: PPGValueArray): gboolean; cdecl; external;
function soup_xmlrpc_parse_method_response(method_response: Pgchar; length: gint; value: PGValue): gboolean; cdecl; external;
function soup_xmlrpc_request_new(uri: Pgchar; method_name: Pgchar; args: array of const): PSoupMessage; cdecl; external;
procedure soup_address_resolve_async(AAddress: PSoupAddress; async_context: PGMainContext; cancellable: PGCancellable; callback: TSoupAddressCallback; user_data: gpointer); cdecl; external;
procedure soup_auth_authenticate(AAuth: PSoupAuth; username: Pgchar; password: Pgchar); cdecl; external;
procedure soup_auth_domain_add_path(AAuthDomain: PSoupAuthDomain; path: Pgchar); cdecl; external;
procedure soup_auth_domain_basic_set_auth_callback(AAuthDomain: PSoupAuthDomain; callback: TSoupAuthDomainBasicAuthCallback; user_data: gpointer; dnotify: TGDestroyNotify); cdecl; external;
procedure soup_auth_domain_challenge(AAuthDomain: PSoupAuthDomain; msg: PSoupMessage); cdecl; external;
procedure soup_auth_domain_digest_set_auth_callback(AAuthDomain: PSoupAuthDomain; callback: TSoupAuthDomainDigestAuthCallback; user_data: gpointer; dnotify: TGDestroyNotify); cdecl; external;
procedure soup_auth_domain_remove_path(AAuthDomain: PSoupAuthDomain; path: Pgchar); cdecl; external;
procedure soup_auth_domain_set_filter(AAuthDomain: PSoupAuthDomain; filter: TSoupAuthDomainFilter; filter_data: gpointer; dnotify: TGDestroyNotify); cdecl; external;
procedure soup_auth_domain_set_generic_auth_callback(AAuthDomain: PSoupAuthDomain; auth_callback: TSoupAuthDomainGenericAuthCallback; auth_data: gpointer; dnotify: TGDestroyNotify); cdecl; external;
procedure soup_auth_free_protection_space(AAuth: PSoupAuth; space: PGSList); cdecl; external;
procedure soup_buffer_free(ABuffer: PSoupBuffer); cdecl; external;
procedure soup_buffer_get_data(ABuffer: PSoupBuffer; data: PPguint8; length: Pgsize); cdecl; external;
procedure soup_cookie_free(ACookie: PSoupCookie); cdecl; external;
procedure soup_cookie_jar_add_cookie(ACookieJar: PSoupCookieJar; cookie: PSoupCookie); cdecl; external;
procedure soup_cookie_jar_delete_cookie(ACookieJar: PSoupCookieJar; cookie: PSoupCookie); cdecl; external;
procedure soup_cookie_jar_save(ACookieJar: PSoupCookieJar); cdecl; external;
procedure soup_cookie_jar_set_accept_policy(ACookieJar: PSoupCookieJar; policy: TSoupCookieJarAcceptPolicy); cdecl; external;
procedure soup_cookie_jar_set_cookie(ACookieJar: PSoupCookieJar; uri: PSoupURI; cookie: Pgchar); cdecl; external;
procedure soup_cookie_jar_set_cookie_with_first_party(ACookieJar: PSoupCookieJar; uri: PSoupURI; first_party: PSoupURI; cookie: Pgchar); cdecl; external;
procedure soup_cookie_set_domain(ACookie: PSoupCookie; domain: Pgchar); cdecl; external;
procedure soup_cookie_set_expires(ACookie: PSoupCookie; expires: PGDate); cdecl; external;
procedure soup_cookie_set_http_only(ACookie: PSoupCookie; http_only: gboolean); cdecl; external;
procedure soup_cookie_set_max_age(ACookie: PSoupCookie; max_age: gint); cdecl; external;
procedure soup_cookie_set_name(ACookie: PSoupCookie; name: Pgchar); cdecl; external;
procedure soup_cookie_set_path(ACookie: PSoupCookie; path: Pgchar); cdecl; external;
procedure soup_cookie_set_secure(ACookie: PSoupCookie; secure: gboolean); cdecl; external;
procedure soup_cookie_set_value(ACookie: PSoupCookie; value: Pgchar); cdecl; external;
procedure soup_cookies_free(cookies: PGSList); cdecl; external;
procedure soup_cookies_to_request(cookies: PGSList; msg: PSoupMessage); cdecl; external;
procedure soup_cookies_to_response(cookies: PGSList; msg: PSoupMessage); cdecl; external;
procedure soup_date_free(ADate: PSoupDate); cdecl; external;
procedure soup_date_to_timeval(ADate: PSoupDate; time: PGTimeVal); cdecl; external;
procedure soup_header_free_list(list: PGSList); cdecl; external;
procedure soup_header_free_param_list(param_list: PGHashTable); cdecl; external;
procedure soup_header_g_string_append_param(string_: PGString; name: Pgchar; value: Pgchar); cdecl; external;
procedure soup_header_g_string_append_param_quoted(string_: PGString; name: Pgchar; value: Pgchar); cdecl; external;
procedure soup_logger_attach(ALogger: PSoupLogger; session: PSoupSession); cdecl; external;
procedure soup_logger_detach(ALogger: PSoupLogger; session: PSoupSession); cdecl; external;
procedure soup_logger_set_printer(ALogger: PSoupLogger; printer: TSoupLoggerPrinter; printer_data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure soup_logger_set_request_filter(ALogger: PSoupLogger; request_filter: TSoupLoggerFilter; filter_data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure soup_logger_set_response_filter(ALogger: PSoupLogger; response_filter: TSoupLoggerFilter; filter_data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure soup_message_body_append(AMessageBody: PSoupMessageBody; use: TSoupMemoryUse; data: guint8; length: gsize); cdecl; external;
procedure soup_message_body_append_buffer(AMessageBody: PSoupMessageBody; buffer: PSoupBuffer); cdecl; external;
procedure soup_message_body_append_take(AMessageBody: PSoupMessageBody; data: Pguint8; length: gsize); cdecl; external;
procedure soup_message_body_complete(AMessageBody: PSoupMessageBody); cdecl; external;
procedure soup_message_body_free(AMessageBody: PSoupMessageBody); cdecl; external;
procedure soup_message_body_got_chunk(AMessageBody: PSoupMessageBody; chunk: PSoupBuffer); cdecl; external;
procedure soup_message_body_set_accumulate(AMessageBody: PSoupMessageBody; accumulate: gboolean); cdecl; external;
procedure soup_message_body_truncate(AMessageBody: PSoupMessageBody); cdecl; external;
procedure soup_message_body_wrote_chunk(AMessageBody: PSoupMessageBody; chunk: PSoupBuffer); cdecl; external;
procedure soup_message_content_sniffed(AMessage: PSoupMessage; content_type: Pgchar; params: PGHashTable); cdecl; external;
procedure soup_message_disable_feature(AMessage: PSoupMessage; feature_type: TGType); cdecl; external;
procedure soup_message_finished(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_got_body(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_got_chunk(AMessage: PSoupMessage; chunk: PSoupBuffer); cdecl; external;
procedure soup_message_got_headers(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_got_informational(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_headers_append(AMessageHeaders: PSoupMessageHeaders; name: Pgchar; value: Pgchar); cdecl; external;
procedure soup_message_headers_clean_connection_headers(AMessageHeaders: PSoupMessageHeaders); cdecl; external;
procedure soup_message_headers_clear(AMessageHeaders: PSoupMessageHeaders); cdecl; external;
procedure soup_message_headers_foreach(AMessageHeaders: PSoupMessageHeaders; func: TSoupMessageHeadersForeachFunc; user_data: gpointer); cdecl; external;
procedure soup_message_headers_free(AMessageHeaders: PSoupMessageHeaders); cdecl; external;
procedure soup_message_headers_free_ranges(AMessageHeaders: PSoupMessageHeaders; ranges: PSoupRange); cdecl; external;
procedure soup_message_headers_iter_init(AMessageHeadersIter: PSoupMessageHeadersIter; hdrs: PSoupMessageHeaders); cdecl; external;
procedure soup_message_headers_remove(AMessageHeaders: PSoupMessageHeaders; name: Pgchar); cdecl; external;
procedure soup_message_headers_replace(AMessageHeaders: PSoupMessageHeaders; name: Pgchar; value: Pgchar); cdecl; external;
procedure soup_message_headers_set_content_disposition(AMessageHeaders: PSoupMessageHeaders; disposition: Pgchar; params: PGHashTable); cdecl; external;
procedure soup_message_headers_set_content_length(AMessageHeaders: PSoupMessageHeaders; content_length: gint64); cdecl; external;
procedure soup_message_headers_set_content_range(AMessageHeaders: PSoupMessageHeaders; start: gint64; end_: gint64; total_length: gint64); cdecl; external;
procedure soup_message_headers_set_content_type(AMessageHeaders: PSoupMessageHeaders; content_type: Pgchar; params: PGHashTable); cdecl; external;
procedure soup_message_headers_set_encoding(AMessageHeaders: PSoupMessageHeaders; encoding: TSoupEncoding); cdecl; external;
procedure soup_message_headers_set_expectations(AMessageHeaders: PSoupMessageHeaders; expectations: TSoupExpectation); cdecl; external;
procedure soup_message_headers_set_range(AMessageHeaders: PSoupMessageHeaders; start: gint64; end_: gint64); cdecl; external;
procedure soup_message_headers_set_ranges(AMessageHeaders: PSoupMessageHeaders; ranges: PSoupRange; length: gint); cdecl; external;
procedure soup_message_restarted(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_set_chunk_allocator(AMessage: PSoupMessage; allocator: TSoupChunkAllocator; user_data: gpointer; destroy_notify: TGDestroyNotify); cdecl; external;
procedure soup_message_set_first_party(AMessage: PSoupMessage; first_party: PSoupURI); cdecl; external;
procedure soup_message_set_flags(AMessage: PSoupMessage; flags: TSoupMessageFlags); cdecl; external;
procedure soup_message_set_http_version(AMessage: PSoupMessage; version: TSoupHTTPVersion); cdecl; external;
procedure soup_message_set_request(AMessage: PSoupMessage; content_type: Pgchar; req_use: TSoupMemoryUse; req_body: Pgchar; req_length: gsize); cdecl; external;
procedure soup_message_set_response(AMessage: PSoupMessage; content_type: Pgchar; resp_use: TSoupMemoryUse; resp_body: Pguint8; resp_length: gsize); cdecl; external;
procedure soup_message_set_status(AMessage: PSoupMessage; status_code: guint); cdecl; external;
procedure soup_message_set_status_full(AMessage: PSoupMessage; status_code: guint; reason_phrase: Pgchar); cdecl; external;
procedure soup_message_set_uri(AMessage: PSoupMessage; uri: PSoupURI); cdecl; external;
procedure soup_message_wrote_body(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_wrote_body_data(AMessage: PSoupMessage; chunk: PSoupBuffer); cdecl; external;
procedure soup_message_wrote_chunk(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_wrote_headers(AMessage: PSoupMessage); cdecl; external;
procedure soup_message_wrote_informational(AMessage: PSoupMessage); cdecl; external;
procedure soup_multipart_append_form_file(AMultipart: PSoupMultipart; control_name: Pgchar; filename: Pgchar; content_type: Pgchar; body: PSoupBuffer); cdecl; external;
procedure soup_multipart_append_form_string(AMultipart: PSoupMultipart; control_name: Pgchar; data: Pgchar); cdecl; external;
procedure soup_multipart_append_part(AMultipart: PSoupMultipart; headers: PSoupMessageHeaders; body: PSoupBuffer); cdecl; external;
procedure soup_multipart_free(AMultipart: PSoupMultipart); cdecl; external;
procedure soup_multipart_to_message(AMultipart: PSoupMultipart; dest_headers: PSoupMessageHeaders; dest_body: PSoupMessageBody); cdecl; external;
procedure soup_proxy_uri_resolver_get_proxy_uri_async(AProxyURIResolver: PSoupProxyURIResolver; uri: PSoupURI; async_context: PGMainContext; cancellable: PGCancellable; callback: TSoupProxyURIResolverCallback; user_data: gpointer); cdecl; external;
procedure soup_server_add_auth_domain(AServer: PSoupServer; auth_domain: PSoupAuthDomain); cdecl; external;
procedure soup_server_add_handler(AServer: PSoupServer; path: Pgchar; callback: TSoupServerCallback; user_data: gpointer; destroy_: TGDestroyNotify); cdecl; external;
procedure soup_server_disconnect(AServer: PSoupServer); cdecl; external;
procedure soup_server_pause_message(AServer: PSoupServer; msg: PSoupMessage); cdecl; external;
procedure soup_server_quit(AServer: PSoupServer); cdecl; external;
procedure soup_server_remove_auth_domain(AServer: PSoupServer; auth_domain: PSoupAuthDomain); cdecl; external;
procedure soup_server_remove_handler(AServer: PSoupServer; path: Pgchar); cdecl; external;
procedure soup_server_run(AServer: PSoupServer); cdecl; external;
procedure soup_server_run_async(AServer: PSoupServer); cdecl; external;
procedure soup_server_unpause_message(AServer: PSoupServer; msg: PSoupMessage); cdecl; external;
procedure soup_session_abort(ASession: PSoupSession); cdecl; external;
procedure soup_session_add_feature(ASession: PSoupSession; feature: PSoupSessionFeature); cdecl; external;
procedure soup_session_add_feature_by_type(ASession: PSoupSession; feature_type: TGType); cdecl; external;
procedure soup_session_cancel_message(ASession: PSoupSession; msg: PSoupMessage; status_code: guint); cdecl; external;
procedure soup_session_feature_attach(ASessionFeature: PSoupSessionFeature; session: PSoupSession); cdecl; external;
procedure soup_session_feature_detach(ASessionFeature: PSoupSessionFeature; session: PSoupSession); cdecl; external;
procedure soup_session_pause_message(ASession: PSoupSession; msg: PSoupMessage); cdecl; external;
procedure soup_session_prepare_for_uri(ASession: PSoupSession; uri: PSoupURI); cdecl; external;
procedure soup_session_queue_message(ASession: PSoupSession; msg: PSoupMessage; callback: TSoupSessionCallback; user_data: gpointer); cdecl; external;
procedure soup_session_remove_feature(ASession: PSoupSession; feature: PSoupSessionFeature); cdecl; external;
procedure soup_session_remove_feature_by_type(ASession: PSoupSession; feature_type: TGType); cdecl; external;
procedure soup_session_requeue_message(ASession: PSoupSession; msg: PSoupMessage); cdecl; external;
procedure soup_session_unpause_message(ASession: PSoupSession; msg: PSoupMessage); cdecl; external;
procedure soup_socket_connect_async(ASocket: PSoupSocket; cancellable: PGCancellable; callback: TSoupSocketCallback; user_data: gpointer); cdecl; external;
procedure soup_socket_disconnect(ASocket: PSoupSocket); cdecl; external;
procedure soup_uri_free(AURI: PSoupURI); cdecl; external;
procedure soup_uri_set_fragment(AURI: PSoupURI; fragment: Pgchar); cdecl; external;
procedure soup_uri_set_host(AURI: PSoupURI; host: Pgchar); cdecl; external;
procedure soup_uri_set_password(AURI: PSoupURI; password: Pgchar); cdecl; external;
procedure soup_uri_set_path(AURI: PSoupURI; path: Pgchar); cdecl; external;
procedure soup_uri_set_port(AURI: PSoupURI; port: guint); cdecl; external;
procedure soup_uri_set_query(AURI: PSoupURI; query: Pgchar); cdecl; external;
procedure soup_uri_set_query_from_fields(AURI: PSoupURI; first_field: Pgchar; args: array of const); cdecl; external;
procedure soup_uri_set_query_from_form(AURI: PSoupURI; form: PGHashTable); cdecl; external;
procedure soup_uri_set_scheme(AURI: PSoupURI; scheme: Pgchar); cdecl; external;
procedure soup_uri_set_user(AURI: PSoupURI; user: Pgchar); cdecl; external;
procedure soup_value_array_append(array_: PGValueArray; type_: TGType; args: array of const); cdecl; external;
procedure soup_value_array_append_vals(array_: PGValueArray; first_type: TGType; args: array of const); cdecl; external;
procedure soup_value_array_insert(array_: PGValueArray; index_: guint; type_: TGType; args: array of const); cdecl; external;
procedure soup_value_hash_insert(hash: PGHashTable; key: Pgchar; type_: TGType; args: array of const); cdecl; external;
procedure soup_value_hash_insert_vals(hash: PGHashTable; first_key: Pgchar; args: array of const); cdecl; external;
procedure soup_value_hash_insert_value(hash: PGHashTable; key: Pgchar; value: PGValue); cdecl; external;
procedure soup_xmlrpc_set_fault(msg: PSoupMessage; fault_code: gint; fault_format: Pgchar; args: array of const); cdecl; external;
procedure soup_xmlrpc_set_response(msg: PSoupMessage; type_: TGType; args: array of const); cdecl; external;
implementation
function TSoupAddress.new(name: Pgchar; port: guint): PSoupAddress; cdecl;
begin
  Result := Soup2_4.soup_address_new(name, port);
end;

function TSoupAddress.new_any(family: TSoupAddressFamily; port: guint): PSoupAddress; cdecl;
begin
  Result := Soup2_4.soup_address_new_any(family, port);
end;

function TSoupAddress.new_from_sockaddr(sa: Pgpointer; len: gint): PSoupAddress; cdecl;
begin
  Result := Soup2_4.soup_address_new_from_sockaddr(sa, len);
end;

function TSoupAddress.equal_by_ip(addr2: TSoupAddress): gboolean; cdecl;
begin
  Result := Soup2_4.soup_address_equal_by_ip(@self, addr2);
end;

function TSoupAddress.equal_by_name(addr2: TSoupAddress): gboolean; cdecl;
begin
  Result := Soup2_4.soup_address_equal_by_name(@self, addr2);
end;

function TSoupAddress.get_gsockaddr: PGSocketAddress; cdecl;
begin
  Result := Soup2_4.soup_address_get_gsockaddr(@self);
end;

function TSoupAddress.get_name: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_address_get_name(@self);
end;

function TSoupAddress.get_physical: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_address_get_physical(@self);
end;

function TSoupAddress.get_port: guint; cdecl;
begin
  Result := Soup2_4.soup_address_get_port(@self);
end;

function TSoupAddress.get_sockaddr(len: Pgint): Pgpointer; cdecl;
begin
  Result := Soup2_4.soup_address_get_sockaddr(@self, len);
end;

function TSoupAddress.hash_by_ip: guint; cdecl;
begin
  Result := Soup2_4.soup_address_hash_by_ip(@self);
end;

function TSoupAddress.hash_by_name: guint; cdecl;
begin
  Result := Soup2_4.soup_address_hash_by_name(@self);
end;

function TSoupAddress.is_resolved: gboolean; cdecl;
begin
  Result := Soup2_4.soup_address_is_resolved(@self);
end;

procedure TSoupAddress.resolve_async(async_context: PGMainContext; cancellable: PGCancellable; callback: TSoupAddressCallback; user_data: gpointer); cdecl;
begin
  Soup2_4.soup_address_resolve_async(@self, async_context, cancellable, callback, user_data);
end;

function TSoupAddress.resolve_sync(cancellable: PGCancellable): guint; cdecl;
begin
  Result := Soup2_4.soup_address_resolve_sync(@self, cancellable);
end;

function TSoupAuth.new(type_: TGType; msg: PSoupMessage; auth_header: Pgchar): PSoupAuth; cdecl;
begin
  Result := Soup2_4.soup_auth_new(type_, msg, auth_header);
end;

procedure TSoupAuth.authenticate(username: Pgchar; password: Pgchar); cdecl;
begin
  Soup2_4.soup_auth_authenticate(@self, username, password);
end;

procedure TSoupAuth.free_protection_space(space: PGSList); cdecl;
begin
  Soup2_4.soup_auth_free_protection_space(@self, space);
end;

function TSoupAuth.get_authorization(msg: PSoupMessage): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_get_authorization(@self, msg);
end;

function TSoupAuth.get_host: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_get_host(@self);
end;

function TSoupAuth.get_info: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_get_info(@self);
end;

function TSoupAuth.get_protection_space(source_uri: PSoupURI): PGSList; cdecl;
begin
  Result := Soup2_4.soup_auth_get_protection_space(@self, source_uri);
end;

function TSoupAuth.get_realm: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_get_realm(@self);
end;

function TSoupAuth.get_scheme_name: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_get_scheme_name(@self);
end;

function TSoupAuth.is_authenticated: gboolean; cdecl;
begin
  Result := Soup2_4.soup_auth_is_authenticated(@self);
end;

function TSoupAuth.is_for_proxy: gboolean; cdecl;
begin
  Result := Soup2_4.soup_auth_is_for_proxy(@self);
end;

function TSoupAuth.update(msg: PSoupMessage; auth_header: Pgchar): gboolean; cdecl;
begin
  Result := Soup2_4.soup_auth_update(@self, msg, auth_header);
end;

function TSoupMessage.new(method: Pgchar; uri_string: Pgchar): PSoupMessage; cdecl;
begin
  Result := Soup2_4.soup_message_new(method, uri_string);
end;

function TSoupMessage.new_from_uri(method: Pgchar; uri: PSoupURI): PSoupMessage; cdecl;
begin
  Result := Soup2_4.soup_message_new_from_uri(method, uri);
end;

function TSoupMessage.add_header_handler(signal: Pgchar; header: Pgchar; callback: TGCallback; user_data: gpointer): guint; cdecl;
begin
  Result := Soup2_4.soup_message_add_header_handler(@self, signal, header, callback, user_data);
end;

function TSoupMessage.add_status_code_handler(signal: Pgchar; status_code: guint; callback: TGCallback; user_data: gpointer): guint; cdecl;
begin
  Result := Soup2_4.soup_message_add_status_code_handler(@self, signal, status_code, callback, user_data);
end;

procedure TSoupMessage.content_sniffed(content_type: Pgchar; params: PGHashTable); cdecl;
begin
  Soup2_4.soup_message_content_sniffed(@self, content_type, params);
end;

procedure TSoupMessage.disable_feature(feature_type: TGType); cdecl;
begin
  Soup2_4.soup_message_disable_feature(@self, feature_type);
end;

procedure TSoupMessage.finished; cdecl;
begin
  Soup2_4.soup_message_finished(@self);
end;

function TSoupMessage.get_address: PSoupAddress; cdecl;
begin
  Result := Soup2_4.soup_message_get_address(@self);
end;

function TSoupMessage.get_first_party: PSoupURI; cdecl;
begin
  Result := Soup2_4.soup_message_get_first_party(@self);
end;


function TSoupMessage.get_flags: TSoupMessageFlags; cdecl;
begin
  Result := Soup2_4.soup_message_get_flags(@self);
end;

function TSoupMessage.get_http_version: TSoupHTTPVersion; cdecl;
begin
  Result := Soup2_4.soup_message_get_http_version(@self);
end;

function TSoupMessage.get_https_status(certificate: PPGTlsCertificate; errors: PGTlsCertificateFlags): gboolean; cdecl;
begin
  Result := Soup2_4.soup_message_get_https_status(@self, certificate, errors);
end;

function TSoupMessage.get_uri: PSoupURI; cdecl;
begin
  Result := Soup2_4.soup_message_get_uri(@self);
end;

procedure TSoupMessage.got_body; cdecl;
begin
  Soup2_4.soup_message_got_body(@self);
end;

procedure TSoupMessage.got_chunk(chunk: PSoupBuffer); cdecl;
begin
  Soup2_4.soup_message_got_chunk(@self, chunk);
end;

procedure TSoupMessage.got_headers; cdecl;
begin
  Soup2_4.soup_message_got_headers(@self);
end;

procedure TSoupMessage.got_informational; cdecl;
begin
  Soup2_4.soup_message_got_informational(@self);
end;

function TSoupMessage.is_keepalive: gboolean; cdecl;
begin
  Result := Soup2_4.soup_message_is_keepalive(@self);
end;

procedure TSoupMessage.restarted; cdecl;
begin
  Soup2_4.soup_message_restarted(@self);
end;

procedure TSoupMessage.set_chunk_allocator(allocator: TSoupChunkAllocator; user_data: gpointer; destroy_notify: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_message_set_chunk_allocator(@self, allocator, user_data, destroy_notify);
end;

procedure TSoupMessage.set_first_party(first_party: PSoupURI); cdecl;
begin
  Soup2_4.soup_message_set_first_party(@self, first_party);
end;

procedure TSoupMessage.set_flags(flags: TSoupMessageFlags); cdecl;
begin
  Soup2_4.soup_message_set_flags(@self, flags);
end;

procedure TSoupMessage.set_http_version(version: TSoupHTTPVersion); cdecl;
begin
  Soup2_4.soup_message_set_http_version(@self, version);
end;

procedure TSoupMessage.set_request(content_type: Pgchar; req_use: TSoupMemoryUse; req_body: Pgchar; req_length: gsize); cdecl;
begin
  Soup2_4.soup_message_set_request(@self, content_type, req_use, req_body, req_length);
end;

procedure TSoupMessage.set_response(content_type: Pgchar; resp_use: TSoupMemoryUse; resp_body: Pguint8; resp_length: gsize); cdecl;
begin
  Soup2_4.soup_message_set_response(@self, content_type, resp_use, resp_body, resp_length);
end;

procedure TSoupMessage.set_status(status_code: guint); cdecl;
begin
  Soup2_4.soup_message_set_status(@self, status_code);
end;

procedure TSoupMessage.set_status_full(status_code: guint; reason_phrase: Pgchar); cdecl;
begin
  Soup2_4.soup_message_set_status_full(@self, status_code, reason_phrase);
end;

procedure TSoupMessage.set_uri(uri: PSoupURI); cdecl;
begin
  Soup2_4.soup_message_set_uri(@self, uri);
end;

procedure TSoupMessage.wrote_body; cdecl;
begin
  Soup2_4.soup_message_wrote_body(@self);
end;

procedure TSoupMessage.wrote_body_data(chunk: PSoupBuffer); cdecl;
begin
  Soup2_4.soup_message_wrote_body_data(@self, chunk);
end;

procedure TSoupMessage.wrote_chunk; cdecl;
begin
  Soup2_4.soup_message_wrote_chunk(@self);
end;

procedure TSoupMessage.wrote_headers; cdecl;
begin
  Soup2_4.soup_message_wrote_headers(@self);
end;

procedure TSoupMessage.wrote_informational; cdecl;
begin
  Soup2_4.soup_message_wrote_informational(@self);
end;

function TSoupURI.new(uri_string: Pgchar): PSoupURI; cdecl;
begin
  Result := Soup2_4.soup_uri_new(uri_string);
end;

function TSoupURI.copy: PSoupURI; cdecl;
begin
  Result := Soup2_4.soup_uri_copy(@self);
end;

function TSoupURI.copy_host: PSoupURI; cdecl;
begin
  Result := Soup2_4.soup_uri_copy_host(@self);
end;

function TSoupURI.equal(uri2: PSoupURI): gboolean; cdecl;
begin
  Result := Soup2_4.soup_uri_equal(@self, uri2);
end;

procedure TSoupURI.free; cdecl;
begin
  Soup2_4.soup_uri_free(@self);
end;

function TSoupURI.get_fragment: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_get_fragment(@self);
end;

function TSoupURI.get_host: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_get_host(@self);
end;

function TSoupURI.get_password: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_get_password(@self);
end;

function TSoupURI.get_path: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_get_path(@self);
end;

function TSoupURI.get_port: guint; cdecl;
begin
  Result := Soup2_4.soup_uri_get_port(@self);
end;

function TSoupURI.get_query: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_get_query(@self);
end;

function TSoupURI.get_scheme: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_get_scheme(@self);
end;

function TSoupURI.get_user: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_get_user(@self);
end;

function TSoupURI.host_equal(v2: TSoupURI): gboolean; cdecl;
begin
  Result := Soup2_4.soup_uri_host_equal(@self, v2);
end;

function TSoupURI.host_hash: guint; cdecl;
begin
  Result := Soup2_4.soup_uri_host_hash(@self);
end;

function TSoupURI.new_with_base(uri_string: Pgchar): PSoupURI; cdecl;
begin
  Result := Soup2_4.soup_uri_new_with_base(@self, uri_string);
end;

procedure TSoupURI.set_fragment(fragment: Pgchar); cdecl;
begin
  Soup2_4.soup_uri_set_fragment(@self, fragment);
end;

procedure TSoupURI.set_host(host: Pgchar); cdecl;
begin
  Soup2_4.soup_uri_set_host(@self, host);
end;

procedure TSoupURI.set_password(password: Pgchar); cdecl;
begin
  Soup2_4.soup_uri_set_password(@self, password);
end;

procedure TSoupURI.set_path(path: Pgchar); cdecl;
begin
  Soup2_4.soup_uri_set_path(@self, path);
end;

procedure TSoupURI.set_port(port: guint); cdecl;
begin
  Soup2_4.soup_uri_set_port(@self, port);
end;

procedure TSoupURI.set_query(query: Pgchar); cdecl;
begin
  Soup2_4.soup_uri_set_query(@self, query);
end;

procedure TSoupURI.set_query_from_form(form: PGHashTable); cdecl;
begin
  Soup2_4.soup_uri_set_query_from_form(@self, form);
end;

procedure TSoupURI.set_scheme(scheme: Pgchar); cdecl;
begin
  Soup2_4.soup_uri_set_scheme(@self, scheme);
end;

procedure TSoupURI.set_user(user: Pgchar); cdecl;
begin
  Soup2_4.soup_uri_set_user(@self, user);
end;

function TSoupURI.to_string(just_path_and_query: gboolean): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_to_string(@self, just_path_and_query);
end;

function TSoupURI.uses_default_port: gboolean; cdecl;
begin
  Result := Soup2_4.soup_uri_uses_default_port(@self);
end;

function TSoupURI.decode(part: Pgchar): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_decode(part);
end;

function TSoupURI.encode(part: Pgchar; escape_extra: Pgchar): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_encode(part, escape_extra);
end;

function TSoupURI.normalize(part: Pgchar; unescape_extra: Pgchar): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_uri_normalize(part, unescape_extra);
end;

function TSoupAuthDomain.accepts(msg: PSoupMessage): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_domain_accepts(@self, msg);
end;

procedure TSoupAuthDomain.add_path(path: Pgchar); cdecl;
begin
  Soup2_4.soup_auth_domain_add_path(@self, path);
end;

procedure TSoupAuthDomain.basic_set_auth_callback(callback: TSoupAuthDomainBasicAuthCallback; user_data: gpointer; dnotify: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_auth_domain_basic_set_auth_callback(@self, callback, user_data, dnotify);
end;

procedure TSoupAuthDomain.challenge(msg: PSoupMessage); cdecl;
begin
  Soup2_4.soup_auth_domain_challenge(@self, msg);
end;

function TSoupAuthDomain.check_password(msg: PSoupMessage; username: Pgchar; password: Pgchar): gboolean; cdecl;
begin
  Result := Soup2_4.soup_auth_domain_check_password(@self, msg, username, password);
end;

function TSoupAuthDomain.covers(msg: PSoupMessage): gboolean; cdecl;
begin
  Result := Soup2_4.soup_auth_domain_covers(@self, msg);
end;

procedure TSoupAuthDomain.digest_set_auth_callback(callback: TSoupAuthDomainDigestAuthCallback; user_data: gpointer; dnotify: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_auth_domain_digest_set_auth_callback(@self, callback, user_data, dnotify);
end;

function TSoupAuthDomain.get_realm: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_domain_get_realm(@self);
end;

procedure TSoupAuthDomain.remove_path(path: Pgchar); cdecl;
begin
  Soup2_4.soup_auth_domain_remove_path(@self, path);
end;

procedure TSoupAuthDomain.set_filter(filter: TSoupAuthDomainFilter; filter_data: gpointer; dnotify: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_auth_domain_set_filter(@self, filter, filter_data, dnotify);
end;

procedure TSoupAuthDomain.set_generic_auth_callback(auth_callback: TSoupAuthDomainGenericAuthCallback; auth_data: gpointer; dnotify: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_auth_domain_set_generic_auth_callback(@self, auth_callback, auth_data, dnotify);
end;

function TSoupAuthDomain.try_generic_auth_callback(msg: PSoupMessage; username: Pgchar): gboolean; cdecl;
begin
  Result := Soup2_4.soup_auth_domain_try_generic_auth_callback(@self, msg, username);
end;

function TSoupAuthDomainDigest.encode_password(username: Pgchar; realm: Pgchar; password: Pgchar): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_auth_domain_digest_encode_password(username, realm, password);
end;

function TSoupBuffer.new(use: TSoupMemoryUse; data: gpointer; length: gsize): PSoupBuffer; cdecl;
begin
  Result := Soup2_4.soup_buffer_new(use, data, length);
end;

function TSoupBuffer.new_take(data: Pguint8; length: gsize): PSoupBuffer; cdecl;
begin
  Result := Soup2_4.soup_buffer_new_take(data, length);
end;

function TSoupBuffer.new_with_owner(data: gpointer; length: gsize; owner: gpointer; owner_dnotify: TGDestroyNotify): PSoupBuffer; cdecl;
begin
  Result := Soup2_4.soup_buffer_new_with_owner(data, length, owner, owner_dnotify);
end;

function TSoupBuffer.copy: PSoupBuffer; cdecl;
begin
  Result := Soup2_4.soup_buffer_copy(@self);
end;

procedure TSoupBuffer.free; cdecl;
begin
  Soup2_4.soup_buffer_free(@self);
end;

procedure TSoupBuffer.get_data(data: PPguint8; length: Pgsize); cdecl;
begin
  Soup2_4.soup_buffer_get_data(@self, data, length);
end;

function TSoupBuffer.get_owner: gpointer; cdecl;
begin
  Result := Soup2_4.soup_buffer_get_owner(@self);
end;

function TSoupBuffer.new_subbuffer(offset: gsize; length: gsize): PSoupBuffer; cdecl;
begin
  Result := Soup2_4.soup_buffer_new_subbuffer(@self, offset, length);
end;


function TSoupClientContext.get_address: PSoupAddress; cdecl;
begin
  Result := Soup2_4.soup_client_context_get_address(@self);
end;

function TSoupClientContext.get_auth_domain: PSoupAuthDomain; cdecl;
begin
  Result := Soup2_4.soup_client_context_get_auth_domain(@self);
end;

function TSoupClientContext.get_auth_user: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_client_context_get_auth_user(@self);
end;

function TSoupClientContext.get_host: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_client_context_get_host(@self);
end;

function TSoupClientContext.get_socket: PGSocket; cdecl;
begin
  Result := Soup2_4.soup_client_context_get_socket(@self);
end;

function TSoupSessionFeature.add_feature(type_: TGType): gboolean; cdecl;
begin
  Result := Soup2_4.soup_session_feature_add_feature(@self, type_);
end;

procedure TSoupSessionFeature.attach(session: PSoupSession); cdecl;
begin
  Soup2_4.soup_session_feature_attach(@self, session);
end;

procedure TSoupSessionFeature.detach(session: PSoupSession); cdecl;
begin
  Soup2_4.soup_session_feature_detach(@self, session);
end;

function TSoupSessionFeature.has_feature(type_: TGType): gboolean; cdecl;
begin
  Result := Soup2_4.soup_session_feature_has_feature(@self, type_);
end;

function TSoupSessionFeature.remove_feature(type_: TGType): gboolean; cdecl;
begin
  Result := Soup2_4.soup_session_feature_remove_feature(@self, type_);
end;

function TSoupContentSniffer.new: PSoupContentSniffer; cdecl;
begin
  Result := Soup2_4.soup_content_sniffer_new();
end;

function TSoupContentSniffer.sniff(msg: PSoupMessage; buffer: PSoupBuffer; params: PPGHashTable): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_content_sniffer_sniff(@self, msg, buffer, params);
end;

function TSoupCookie.new(name: Pgchar; value: Pgchar; domain: Pgchar; path: Pgchar; max_age: gint): PSoupCookie; cdecl;
begin
  Result := Soup2_4.soup_cookie_new(name, value, domain, path, max_age);
end;

function TSoupCookie.applies_to_uri(uri: PSoupURI): gboolean; cdecl;
begin
  Result := Soup2_4.soup_cookie_applies_to_uri(@self, uri);
end;

function TSoupCookie.copy: PSoupCookie; cdecl;
begin
  Result := Soup2_4.soup_cookie_copy(@self);
end;

function TSoupCookie.domain_matches(host: Pgchar): gboolean; cdecl;
begin
  Result := Soup2_4.soup_cookie_domain_matches(@self, host);
end;

function TSoupCookie.equal(cookie2: PSoupCookie): gboolean; cdecl;
begin
  Result := Soup2_4.soup_cookie_equal(@self, cookie2);
end;

procedure TSoupCookie.free; cdecl;
begin
  Soup2_4.soup_cookie_free(@self);
end;

function TSoupCookie.get_domain: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_cookie_get_domain(@self);
end;

function TSoupCookie.get_expires: PGDate; cdecl;
begin
  Result := Soup2_4.soup_cookie_get_expires(@self);
end;

function TSoupCookie.get_http_only: gboolean; cdecl;
begin
  Result := Soup2_4.soup_cookie_get_http_only(@self);
end;

function TSoupCookie.get_name: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_cookie_get_name(@self);
end;

function TSoupCookie.get_path: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_cookie_get_path(@self);
end;

function TSoupCookie.get_secure: gboolean; cdecl;
begin
  Result := Soup2_4.soup_cookie_get_secure(@self);
end;

function TSoupCookie.get_value: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_cookie_get_value(@self);
end;

procedure TSoupCookie.set_domain(domain: Pgchar); cdecl;
begin
  Soup2_4.soup_cookie_set_domain(@self, domain);
end;

procedure TSoupCookie.set_expires(expires: PGDate); cdecl;
begin
  Soup2_4.soup_cookie_set_expires(@self, expires);
end;

procedure TSoupCookie.set_http_only(http_only: gboolean); cdecl;
begin
  Soup2_4.soup_cookie_set_http_only(@self, http_only);
end;

procedure TSoupCookie.set_max_age(max_age: gint); cdecl;
begin
  Soup2_4.soup_cookie_set_max_age(@self, max_age);
end;

procedure TSoupCookie.set_name(name: Pgchar); cdecl;
begin
  Soup2_4.soup_cookie_set_name(@self, name);
end;

procedure TSoupCookie.set_path(path: Pgchar); cdecl;
begin
  Soup2_4.soup_cookie_set_path(@self, path);
end;

procedure TSoupCookie.set_secure(secure: gboolean); cdecl;
begin
  Soup2_4.soup_cookie_set_secure(@self, secure);
end;

procedure TSoupCookie.set_value(value: Pgchar); cdecl;
begin
  Soup2_4.soup_cookie_set_value(@self, value);
end;

function TSoupCookie.to_cookie_header: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_cookie_to_cookie_header(@self);
end;

function TSoupCookie.to_set_cookie_header: Pgchar; cdecl;
begin
  Result := Soup2_4.soup_cookie_to_set_cookie_header(@self);
end;

function TSoupCookie.parse(header: Pgchar; origin: PSoupURI): PSoupCookie; cdecl;
begin
  Result := Soup2_4.soup_cookie_parse(header, origin);
end;

function TSoupCookieJar.new: PSoupCookieJar; cdecl;
begin
  Result := Soup2_4.soup_cookie_jar_new();
end;

procedure TSoupCookieJar.add_cookie(cookie: PSoupCookie); cdecl;
begin
  Soup2_4.soup_cookie_jar_add_cookie(@self, cookie);
end;

function TSoupCookieJar.all_cookies: PGSList; cdecl;
begin
  Result := Soup2_4.soup_cookie_jar_all_cookies(@self);
end;

procedure TSoupCookieJar.delete_cookie(cookie: PSoupCookie); cdecl;
begin
  Soup2_4.soup_cookie_jar_delete_cookie(@self, cookie);
end;

function TSoupCookieJar.get_accept_policy: TSoupCookieJarAcceptPolicy; cdecl;
begin
  Result := Soup2_4.soup_cookie_jar_get_accept_policy(@self);
end;

function TSoupCookieJar.get_cookies(uri: PSoupURI; for_http: gboolean): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_cookie_jar_get_cookies(@self, uri, for_http);
end;

procedure TSoupCookieJar.save; cdecl;
begin
  Soup2_4.soup_cookie_jar_save(@self);
end;

procedure TSoupCookieJar.set_accept_policy(policy: TSoupCookieJarAcceptPolicy); cdecl;
begin
  Soup2_4.soup_cookie_jar_set_accept_policy(@self, policy);
end;

procedure TSoupCookieJar.set_cookie(uri: PSoupURI; cookie: Pgchar); cdecl;
begin
  Soup2_4.soup_cookie_jar_set_cookie(@self, uri, cookie);
end;

procedure TSoupCookieJar.set_cookie_with_first_party(uri: PSoupURI; first_party: PSoupURI; cookie: Pgchar); cdecl;
begin
  Soup2_4.soup_cookie_jar_set_cookie_with_first_party(@self, uri, first_party, cookie);
end;

function TSoupCookieJarText.new(filename: Pgchar; read_only: gboolean): PSoupCookieJarText; cdecl;
begin
  Result := Soup2_4.soup_cookie_jar_text_new(filename, read_only);
end;

function TSoupDate.new(year: gint; month: gint; day: gint; hour: gint; minute: gint; second: gint): PSoupDate; cdecl;
begin
  Result := Soup2_4.soup_date_new(year, month, day, hour, minute, second);
end;

function TSoupDate.new_from_now(offset_seconds: gint): PSoupDate; cdecl;
begin
  Result := Soup2_4.soup_date_new_from_now(offset_seconds);
end;

function TSoupDate.new_from_string(date_string: Pgchar): PSoupDate; cdecl;
begin
  Result := Soup2_4.soup_date_new_from_string(date_string);
end;

function TSoupDate.new_from_time_t(when: glong): PSoupDate; cdecl;
begin
  Result := Soup2_4.soup_date_new_from_time_t(when);
end;

function TSoupDate.copy: PGDate; cdecl;
begin
  Result := Soup2_4.soup_date_copy(@self);
end;

procedure TSoupDate.free; cdecl;
begin
  Soup2_4.soup_date_free(@self);
end;

function TSoupDate.get_day: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_day(@self);
end;

function TSoupDate.get_hour: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_hour(@self);
end;

function TSoupDate.get_minute: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_minute(@self);
end;

function TSoupDate.get_month: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_month(@self);
end;

function TSoupDate.get_offset: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_offset(@self);
end;

function TSoupDate.get_second: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_second(@self);
end;

function TSoupDate.get_utc: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_utc(@self);
end;

function TSoupDate.get_year: gint; cdecl;
begin
  Result := Soup2_4.soup_date_get_year(@self);
end;

function TSoupDate.is_past: gboolean; cdecl;
begin
  Result := Soup2_4.soup_date_is_past(@self);
end;

function TSoupDate.to_string(format: TSoupDateFormat): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_date_to_string(@self, format);
end;

function TSoupDate.to_time_t: glong; cdecl;
begin
  Result := Soup2_4.soup_date_to_time_t(@self);
end;

procedure TSoupDate.to_timeval(time: PGTimeVal); cdecl;
begin
  Soup2_4.soup_date_to_timeval(@self, time);
end;


function TSoupLogger.new(level: TSoupLoggerLogLevel; max_body_size: gint): PSoupLogger; cdecl;
begin
  Result := Soup2_4.soup_logger_new(level, max_body_size);
end;

procedure TSoupLogger.attach(session: PSoupSession); cdecl;
begin
  Soup2_4.soup_logger_attach(@self, session);
end;

procedure TSoupLogger.detach(session: PSoupSession); cdecl;
begin
  Soup2_4.soup_logger_detach(@self, session);
end;

procedure TSoupLogger.set_printer(printer: TSoupLoggerPrinter; printer_data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_logger_set_printer(@self, printer, printer_data, destroy_);
end;

procedure TSoupLogger.set_request_filter(request_filter: TSoupLoggerFilter; filter_data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_logger_set_request_filter(@self, request_filter, filter_data, destroy_);
end;

procedure TSoupLogger.set_response_filter(response_filter: TSoupLoggerFilter; filter_data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_logger_set_response_filter(@self, response_filter, filter_data, destroy_);
end;

procedure TSoupSession.abort; cdecl;
begin
  Soup2_4.soup_session_abort(@self);
end;

procedure TSoupSession.add_feature(feature: PSoupSessionFeature); cdecl;
begin
  Soup2_4.soup_session_add_feature(@self, feature);
end;

procedure TSoupSession.add_feature_by_type(feature_type: TGType); cdecl;
begin
  Soup2_4.soup_session_add_feature_by_type(@self, feature_type);
end;

procedure TSoupSession.cancel_message(msg: PSoupMessage; status_code: guint); cdecl;
begin
  Soup2_4.soup_session_cancel_message(@self, msg, status_code);
end;

function TSoupSession.get_async_context: PGMainContext; cdecl;
begin
  Result := Soup2_4.soup_session_get_async_context(@self);
end;

function TSoupSession.get_feature(feature_type: TGType): PSoupSessionFeature; cdecl;
begin
  Result := Soup2_4.soup_session_get_feature(@self, feature_type);
end;

function TSoupSession.get_feature_for_message(feature_type: TGType; msg: PSoupMessage): PSoupSessionFeature; cdecl;
begin
  Result := Soup2_4.soup_session_get_feature_for_message(@self, feature_type, msg);
end;

function TSoupSession.get_features(feature_type: TGType): PGSList; cdecl;
begin
  Result := Soup2_4.soup_session_get_features(@self, feature_type);
end;

procedure TSoupSession.pause_message(msg: PSoupMessage); cdecl;
begin
  Soup2_4.soup_session_pause_message(@self, msg);
end;

procedure TSoupSession.prepare_for_uri(uri: PSoupURI); cdecl;
begin
  Soup2_4.soup_session_prepare_for_uri(@self, uri);
end;

procedure TSoupSession.queue_message(msg: PSoupMessage; callback: TSoupSessionCallback; user_data: gpointer); cdecl;
begin
  Soup2_4.soup_session_queue_message(@self, msg, callback, user_data);
end;

procedure TSoupSession.remove_feature(feature: PSoupSessionFeature); cdecl;
begin
  Soup2_4.soup_session_remove_feature(@self, feature);
end;

procedure TSoupSession.remove_feature_by_type(feature_type: TGType); cdecl;
begin
  Soup2_4.soup_session_remove_feature_by_type(@self, feature_type);
end;

procedure TSoupSession.requeue_message(msg: PSoupMessage); cdecl;
begin
  Soup2_4.soup_session_requeue_message(@self, msg);
end;

function TSoupSession.send_message(msg: PSoupMessage): guint; cdecl;
begin
  Result := Soup2_4.soup_session_send_message(@self, msg);
end;

procedure TSoupSession.unpause_message(msg: PSoupMessage); cdecl;
begin
  Soup2_4.soup_session_unpause_message(@self, msg);
end;

function TSoupMessageBody.new: PSoupMessageBody; cdecl;
begin
  Result := Soup2_4.soup_message_body_new();
end;

procedure TSoupMessageBody.append(use: TSoupMemoryUse; data: guint8; length: gsize); cdecl;
begin
  Soup2_4.soup_message_body_append(@self, use, data, length);
end;

procedure TSoupMessageBody.append_buffer(buffer: PSoupBuffer); cdecl;
begin
  Soup2_4.soup_message_body_append_buffer(@self, buffer);
end;

procedure TSoupMessageBody.append_take(data: Pguint8; length: gsize); cdecl;
begin
  Soup2_4.soup_message_body_append_take(@self, data, length);
end;

procedure TSoupMessageBody.complete; cdecl;
begin
  Soup2_4.soup_message_body_complete(@self);
end;

function TSoupMessageBody.flatten: PSoupBuffer; cdecl;
begin
  Result := Soup2_4.soup_message_body_flatten(@self);
end;

procedure TSoupMessageBody.free; cdecl;
begin
  Soup2_4.soup_message_body_free(@self);
end;

function TSoupMessageBody.get_accumulate: gboolean; cdecl;
begin
  Result := Soup2_4.soup_message_body_get_accumulate(@self);
end;

function TSoupMessageBody.get_chunk(offset: gint64): PSoupBuffer; cdecl;
begin
  Result := Soup2_4.soup_message_body_get_chunk(@self, offset);
end;

procedure TSoupMessageBody.got_chunk(chunk: PSoupBuffer); cdecl;
begin
  Soup2_4.soup_message_body_got_chunk(@self, chunk);
end;

procedure TSoupMessageBody.set_accumulate(accumulate: gboolean); cdecl;
begin
  Soup2_4.soup_message_body_set_accumulate(@self, accumulate);
end;

procedure TSoupMessageBody.truncate; cdecl;
begin
  Soup2_4.soup_message_body_truncate(@self);
end;

procedure TSoupMessageBody.wrote_chunk(chunk: PSoupBuffer); cdecl;
begin
  Soup2_4.soup_message_body_wrote_chunk(@self, chunk);
end;

function TSoupMessageHeaders.new(type_: TSoupMessageHeadersType): PSoupMessageHeaders; cdecl;
begin
  Result := Soup2_4.soup_message_headers_new(type_);
end;

procedure TSoupMessageHeaders.append(name: Pgchar; value: Pgchar); cdecl;
begin
  Soup2_4.soup_message_headers_append(@self, name, value);
end;

procedure TSoupMessageHeaders.clean_connection_headers; cdecl;
begin
  Soup2_4.soup_message_headers_clean_connection_headers(@self);
end;

procedure TSoupMessageHeaders.clear; cdecl;
begin
  Soup2_4.soup_message_headers_clear(@self);
end;

procedure TSoupMessageHeaders.foreach(func: TSoupMessageHeadersForeachFunc; user_data: gpointer); cdecl;
begin
  Soup2_4.soup_message_headers_foreach(@self, func, user_data);
end;

procedure TSoupMessageHeaders.free; cdecl;
begin
  Soup2_4.soup_message_headers_free(@self);
end;

procedure TSoupMessageHeaders.free_ranges(ranges: PSoupRange); cdecl;
begin
  Soup2_4.soup_message_headers_free_ranges(@self, ranges);
end;

function TSoupMessageHeaders.get(name: Pgchar): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get(@self, name);
end;

function TSoupMessageHeaders.get_content_disposition(disposition: PPgchar; params: PPGHashTable): gboolean; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_content_disposition(@self, disposition, params);
end;

function TSoupMessageHeaders.get_content_length: gint64; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_content_length(@self);
end;

function TSoupMessageHeaders.get_content_range(start: Pgint64; end_: Pgint64; total_length: Pgint64): gboolean; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_content_range(@self, start, end_, total_length);
end;

function TSoupMessageHeaders.get_content_type(params: PPGHashTable): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_content_type(@self, params);
end;

function TSoupMessageHeaders.get_encoding: TSoupEncoding; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_encoding(@self);
end;

function TSoupMessageHeaders.get_expectations: TSoupExpectation; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_expectations(@self);
end;

function TSoupMessageHeaders.get_list(name: Pgchar): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_list(@self, name);
end;

function TSoupMessageHeaders.get_one(name: Pgchar): Pgchar; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_one(@self, name);
end;

function TSoupMessageHeaders.get_ranges(total_length: gint64; ranges: PPSoupRange; length: Pgint): gboolean; cdecl;
begin
  Result := Soup2_4.soup_message_headers_get_ranges(@self, total_length, ranges, length);
end;

procedure TSoupMessageHeaders.remove(name: Pgchar); cdecl;
begin
  Soup2_4.soup_message_headers_remove(@self, name);
end;

procedure TSoupMessageHeaders.replace(name: Pgchar; value: Pgchar); cdecl;
begin
  Soup2_4.soup_message_headers_replace(@self, name, value);
end;

procedure TSoupMessageHeaders.set_content_disposition(disposition: Pgchar; params: PGHashTable); cdecl;
begin
  Soup2_4.soup_message_headers_set_content_disposition(@self, disposition, params);
end;

procedure TSoupMessageHeaders.set_content_length(content_length: gint64); cdecl;
begin
  Soup2_4.soup_message_headers_set_content_length(@self, content_length);
end;

procedure TSoupMessageHeaders.set_content_range(start: gint64; end_: gint64; total_length: gint64); cdecl;
begin
  Soup2_4.soup_message_headers_set_content_range(@self, start, end_, total_length);
end;

procedure TSoupMessageHeaders.set_content_type(content_type: Pgchar; params: PGHashTable); cdecl;
begin
  Soup2_4.soup_message_headers_set_content_type(@self, content_type, params);
end;

procedure TSoupMessageHeaders.set_encoding(encoding: TSoupEncoding); cdecl;
begin
  Soup2_4.soup_message_headers_set_encoding(@self, encoding);
end;

procedure TSoupMessageHeaders.set_expectations(expectations: TSoupExpectation); cdecl;
begin
  Soup2_4.soup_message_headers_set_expectations(@self, expectations);
end;

procedure TSoupMessageHeaders.set_range(start: gint64; end_: gint64); cdecl;
begin
  Soup2_4.soup_message_headers_set_range(@self, start, end_);
end;

procedure TSoupMessageHeaders.set_ranges(ranges: PSoupRange; length: gint); cdecl;
begin
  Soup2_4.soup_message_headers_set_ranges(@self, ranges, length);
end;

procedure TSoupMessageHeadersIter.init(hdrs: PSoupMessageHeaders); cdecl;
begin
  Soup2_4.soup_message_headers_iter_init(@self, hdrs);
end;

function TSoupMessageHeadersIter.next(name: PPgchar; value: PPgchar): gboolean; cdecl;
begin
  Result := Soup2_4.soup_message_headers_iter_next(@self, name, value);
end;

function TSoupMultipart.new(mime_type: Pgchar): PSoupMultipart; cdecl;
begin
  Result := Soup2_4.soup_multipart_new(mime_type);
end;

function TSoupMultipart.new_from_message(headers: PSoupMessageHeaders; body: PSoupMessageBody): PSoupMultipart; cdecl;
begin
  Result := Soup2_4.soup_multipart_new_from_message(headers, body);
end;

procedure TSoupMultipart.append_form_file(control_name: Pgchar; filename: Pgchar; content_type: Pgchar; body: PSoupBuffer); cdecl;
begin
  Soup2_4.soup_multipart_append_form_file(@self, control_name, filename, content_type, body);
end;

procedure TSoupMultipart.append_form_string(control_name: Pgchar; data: Pgchar); cdecl;
begin
  Soup2_4.soup_multipart_append_form_string(@self, control_name, data);
end;

procedure TSoupMultipart.append_part(headers: PSoupMessageHeaders; body: PSoupBuffer); cdecl;
begin
  Soup2_4.soup_multipart_append_part(@self, headers, body);
end;

procedure TSoupMultipart.free; cdecl;
begin
  Soup2_4.soup_multipart_free(@self);
end;

function TSoupMultipart.get_length: gint; cdecl;
begin
  Result := Soup2_4.soup_multipart_get_length(@self);
end;

function TSoupMultipart.get_part(part: gint; headers: PPSoupMessageHeaders; body: PPSoupBuffer): gboolean; cdecl;
begin
  Result := Soup2_4.soup_multipart_get_part(@self, part, headers, body);
end;

procedure TSoupMultipart.to_message(dest_headers: PSoupMessageHeaders; dest_body: PSoupMessageBody); cdecl;
begin
  Soup2_4.soup_multipart_to_message(@self, dest_headers, dest_body);
end;

procedure TSoupProxyURIResolver.get_proxy_uri_async(uri: PSoupURI; async_context: PGMainContext; cancellable: PGCancellable; callback: TSoupProxyURIResolverCallback; user_data: gpointer); cdecl;
begin
  Soup2_4.soup_proxy_uri_resolver_get_proxy_uri_async(@self, uri, async_context, cancellable, callback, user_data);
end;

function TSoupProxyURIResolver.get_proxy_uri_sync(uri: PSoupURI; cancellable: PGCancellable; proxy_uri: PPSoupURI): guint; cdecl;
begin
  Result := Soup2_4.soup_proxy_uri_resolver_get_proxy_uri_sync(@self, uri, cancellable, proxy_uri);
end;

procedure TSoupServer.add_auth_domain(auth_domain: PSoupAuthDomain); cdecl;
begin
  Soup2_4.soup_server_add_auth_domain(@self, auth_domain);
end;

procedure TSoupServer.add_handler(path: Pgchar; callback: TSoupServerCallback; user_data: gpointer; destroy_: TGDestroyNotify); cdecl;
begin
  Soup2_4.soup_server_add_handler(@self, path, callback, user_data, destroy_);
end;

procedure TSoupServer.disconnect; cdecl;
begin
  Soup2_4.soup_server_disconnect(@self);
end;

function TSoupServer.get_async_context: PGMainContext; cdecl;
begin
  Result := Soup2_4.soup_server_get_async_context(@self);
end;

function TSoupServer.get_listener: PGSocket; cdecl;
begin
  Result := Soup2_4.soup_server_get_listener(@self);
end;

function TSoupServer.get_port: guint; cdecl;
begin
  Result := Soup2_4.soup_server_get_port(@self);
end;

function TSoupServer.is_https: gboolean; cdecl;
begin
  Result := Soup2_4.soup_server_is_https(@self);
end;

procedure TSoupServer.pause_message(msg: PSoupMessage); cdecl;
begin
  Soup2_4.soup_server_pause_message(@self, msg);
end;

procedure TSoupServer.quit; cdecl;
begin
  Soup2_4.soup_server_quit(@self);
end;

procedure TSoupServer.remove_auth_domain(auth_domain: PSoupAuthDomain); cdecl;
begin
  Soup2_4.soup_server_remove_auth_domain(@self, auth_domain);
end;

procedure TSoupServer.remove_handler(path: Pgchar); cdecl;
begin
  Soup2_4.soup_server_remove_handler(@self, path);
end;

procedure TSoupServer.run; cdecl;
begin
  Soup2_4.soup_server_run(@self);
end;

procedure TSoupServer.run_async; cdecl;
begin
  Soup2_4.soup_server_run_async(@self);
end;

procedure TSoupServer.unpause_message(msg: PSoupMessage); cdecl;
begin
  Soup2_4.soup_server_unpause_message(@self, msg);
end;

function TSoupSessionAsync.new: PSoupSessionAsync; cdecl;
begin
  Result := Soup2_4.soup_session_async_new();
end;

function TSoupSessionSync.new: PSoupSessionSync; cdecl;
begin
  Result := Soup2_4.soup_session_sync_new();
end;

procedure TSoupSocket.connect_async(cancellable: PGCancellable; callback: TSoupSocketCallback; user_data: gpointer); cdecl;
begin
  Soup2_4.soup_socket_connect_async(@self, cancellable, callback, user_data);
end;

function TSoupSocket.connect_sync(cancellable: PGCancellable): guint; cdecl;
begin
  Result := Soup2_4.soup_socket_connect_sync(@self, cancellable);
end;

procedure TSoupSocket.disconnect; cdecl;
begin
  Soup2_4.soup_socket_disconnect(@self);
end;

function TSoupSocket.get_fd: gint; cdecl;
begin
  Result := Soup2_4.soup_socket_get_fd(@self);
end;

function TSoupSocket.get_local_address: PSoupAddress; cdecl;
begin
  Result := Soup2_4.soup_socket_get_local_address(@self);
end;

function TSoupSocket.get_remote_address: PSoupAddress; cdecl;
begin
  Result := Soup2_4.soup_socket_get_remote_address(@self);
end;

function TSoupSocket.is_connected: gboolean; cdecl;
begin
  Result := Soup2_4.soup_socket_is_connected(@self);
end;

function TSoupSocket.is_ssl: gboolean; cdecl;
begin
  Result := Soup2_4.soup_socket_is_ssl(@self);
end;

function TSoupSocket.listen: gboolean; cdecl;
begin
  Result := Soup2_4.soup_socket_listen(@self);
end;

function TSoupSocket.read(buffer: gpointer; len: gsize; nread: Pgsize; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl;
begin
  Result := Soup2_4.soup_socket_read(@self, buffer, len, nread, cancellable);
end;

function TSoupSocket.read_until(buffer: gpointer; len: gsize; boundary: gpointer; boundary_len: gsize; nread: Pgsize; got_boundary: Pgboolean; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl;
begin
  Result := Soup2_4.soup_socket_read_until(@self, buffer, len, boundary, boundary_len, nread, got_boundary, cancellable);
end;

function TSoupSocket.start_proxy_ssl(ssl_host: Pgchar; cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Soup2_4.soup_socket_start_proxy_ssl(@self, ssl_host, cancellable);
end;

function TSoupSocket.start_ssl(cancellable: PGCancellable): gboolean; cdecl;
begin
  Result := Soup2_4.soup_socket_start_ssl(@self, cancellable);
end;

function TSoupSocket.write(buffer: gpointer; len: gsize; nwrote: Pgsize; cancellable: PGCancellable): TSoupSocketIOStatus; cdecl;
begin
  Result := Soup2_4.soup_socket_write(@self, buffer, len, nwrote, cancellable);
end;

end.