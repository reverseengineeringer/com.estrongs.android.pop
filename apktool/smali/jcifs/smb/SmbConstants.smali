.class interface abstract Ljcifs/smb/SmbConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field public static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field public static final ATTR_HIDDEN:I = 0x2

.field public static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field public static final ATTR_SYSTEM:I = 0x4

.field public static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

.field public static final CAPABILITIES:I

.field public static final CAP_DFS:I = 0x1000

.field public static final CAP_EXTENDED_SECURITY:I = -0x80000000

.field public static final CAP_LARGE_FILES:I = 0x8

.field public static final CAP_LARGE_READX:I = 0x4000

.field public static final CAP_LARGE_WRITEX:I = 0x8000

.field public static final CAP_LEVEL_II_OPLOCKS:I = 0x80

.field public static final CAP_LOCK_AND_READ:I = 0x100

.field public static final CAP_MPX_MODE:I = 0x2

.field public static final CAP_NONE:I = 0x0

.field public static final CAP_NT_FIND:I = 0x200

.field public static final CAP_NT_SMBS:I = 0x10

.field public static final CAP_RAW_MODE:I = 0x1

.field public static final CAP_RPC_REMOTE_APIS:I = 0x20

.field public static final CAP_STATUS32:I = 0x40

.field public static final CAP_UNICODE:I = 0x4

.field public static final CMD_OFFSET:I = 0x4

.field public static final CONNECTIONS:Ljava/util/LinkedList;

.field public static final CONN_TIMEOUT:I

.field public static final DEFAULT_CAPABILITIES:I

.field public static final DEFAULT_CONN_TIMEOUT:I = 0x88b8

.field public static final DEFAULT_FLAGS2:I

.field public static final DEFAULT_MAX_MPX_COUNT:I = 0xa

.field public static final DEFAULT_PORT:I = 0x1bd

.field public static final DEFAULT_RCV_BUF_SIZE:I = 0xf046

.field public static final DEFAULT_RESPONSE_TIMEOUT:I = 0x7530

.field public static final DEFAULT_SND_BUF_SIZE:I = 0xf046

.field public static final DEFAULT_SO_TIMEOUT:I = 0x88b8

.field public static final DEFAULT_SSN_LIMIT:I = 0xfa

.field public static final DELETE:I = 0x10000

.field public static final ERROR_CODE_OFFSET:I = 0x5

.field public static final FILE_APPEND_DATA:I = 0x4

.field public static final FILE_DELETE:I = 0x40

.field public static final FILE_EXECUTE:I = 0x20

.field public static final FILE_READ_ATTRIBUTES:I = 0x80

.field public static final FILE_READ_DATA:I = 0x1

.field public static final FILE_READ_EA:I = 0x8

.field public static final FILE_WRITE_ATTRIBUTES:I = 0x100

.field public static final FILE_WRITE_DATA:I = 0x2

.field public static final FILE_WRITE_EA:I = 0x10

.field public static final FLAGS2:I

.field public static final FLAGS2_EXTENDED_ATTRIBUTES:I = 0x2

.field public static final FLAGS2_EXTENDED_SECURITY_NEGOTIATION:I = 0x800

.field public static final FLAGS2_LONG_FILENAMES:I = 0x1

.field public static final FLAGS2_NONE:I = 0x0

.field public static final FLAGS2_PERMIT_READ_IF_EXECUTE_PERM:I = 0x2000

.field public static final FLAGS2_RESOLVE_PATHS_IN_DFS:I = 0x1000

.field public static final FLAGS2_SECURITY_SIGNATURES:I = 0x4

.field public static final FLAGS2_STATUS32:I = 0x4000

.field public static final FLAGS2_UNICODE:I = 0x8000

.field public static final FLAGS_COPY_SOURCE_MODE_ASCII:I = 0x8

.field public static final FLAGS_COPY_TARGET_MODE_ASCII:I = 0x4

.field public static final FLAGS_LOCK_AND_READ_WRITE_AND_UNLOCK:I = 0x1

.field public static final FLAGS_NONE:I = 0x0

.field public static final FLAGS_NOTIFY_OF_MODIFY_ACTION:I = 0x40

.field public static final FLAGS_OFFSET:I = 0x9

.field public static final FLAGS_OPLOCK_REQUESTED_OR_GRANTED:I = 0x20

.field public static final FLAGS_PATH_NAMES_CANONICALIZED:I = 0x10

.field public static final FLAGS_PATH_NAMES_CASELESS:I = 0x8

.field public static final FLAGS_RECEIVE_BUFFER_POSTED:I = 0x2

.field public static final FLAGS_RESPONSE:I = 0x80

.field public static final FLAGS_TARGET_MUST_BE_DIRECTORY:I = 0x2

.field public static final FLAGS_TARGET_MUST_BE_FILE:I = 0x1

.field public static final FLAGS_TREE_COPY:I = 0x20

.field public static final FLAGS_VERIFY_ALL_WRITES:I = 0x10

.field public static final FORCE_UNICODE:Z

.field public static final GENERIC_ALL:I = 0x10000000

.field public static final GENERIC_EXECUTE:I = 0x20000000

.field public static final GENERIC_READ:I = -0x80000000

.field public static final GENERIC_WRITE:I = 0x40000000

.field public static final HEADER_LENGTH:I = 0x20

.field public static final LADDR:Ljava/net/InetAddress;

.field public static final LM_COMPATIBILITY:I

.field public static final LPORT:I

.field public static final MAX_MPX_COUNT:I

.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final NATIVE_LANMAN:Ljava/lang/String;

.field public static final NATIVE_OS:Ljava/lang/String;

.field public static final NETBIOS_HOSTNAME:Ljava/lang/String;

.field public static final NULL_TRANSPORT:Ljcifs/smb/SmbTransport;

.field public static final OEM_ENCODING:Ljava/lang/String;

.field public static final OPEN_FUNCTION_FAIL_IF_EXISTS:I = 0x0

.field public static final OPEN_FUNCTION_OVERWRITE_IF_EXISTS:I = 0x20

.field public static final PID:I

.field public static final RCV_BUF_SIZE:I

.field public static final READ_CONTROL:I = 0x20000

.field public static final RESPONSE_TIMEOUT:I

.field public static final SECURITY_SHARE:I = 0x0

.field public static final SECURITY_USER:I = 0x1

.field public static final SIGNATURE_OFFSET:I = 0xe

.field public static final SIGNPREF:Z

.field public static final SND_BUF_SIZE:I

.field public static final SO_TIMEOUT:I

.field public static final SSN_LIMIT:I

.field public static final SYNCHRONIZE:I = 0x100000

.field public static final TCP_NODELAY:Z

.field public static final TID_OFFSET:I = 0x18

.field public static final TZ:Ljava/util/TimeZone;

.field public static final UNI_ENCODING:Ljava/lang/String; = "UTF-16LE"

.field public static final USE_BATCHING:Z

.field public static final USE_EXTSEC:Z

.field public static final USE_NTSMBS:Z

.field public static final USE_NTSTATUS:Z

.field public static final USE_UNICODE:Z

.field public static final VC_NUMBER:I = 0x1

.field public static final WRITE_DAC:I = 0x40000

.field public static final WRITE_OWNER:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const v10, 0x88b8

    const/4 v2, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljcifs/Config;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->LADDR:Ljava/net/InetAddress;

    const-string v0, "jcifs.smb.client.lport"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->LPORT:I

    const-string v0, "jcifs.smb.client.maxMpxCount"

    const/16 v3, 0xa

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->MAX_MPX_COUNT:I

    const-string v0, "jcifs.smb.client.snd_buf_size"

    const v3, 0xf046

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SND_BUF_SIZE:I

    const-string v0, "jcifs.smb.client.rcv_buf_size"

    const v3, 0xf046

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v8}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->FORCE_UNICODE:Z

    const-string v0, "jcifs.smb.client.useNtStatus"

    invoke-static {v0, v8}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    const-string v0, "jcifs.smb.client.signingPreferred"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    const-string v0, "jcifs.smb.client.useNTSmbs"

    invoke-static {v0, v8}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSMBS:Z

    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    invoke-static {v0, v8}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_EXTSEC:Z

    const-string v0, "jcifs.netbios.hostname"

    invoke-static {v0, v9}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NETBIOS_HOSTNAME:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    sput v0, Ljcifs/smb/SmbConstants;->PID:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->TZ:Ljava/util/TimeZone;

    const-string v0, "jcifs.smb.client.useBatching"

    invoke-static {v0, v8}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_BATCHING:Z

    const-string v0, "jcifs.encoding"

    sget-object v3, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    invoke-static {v0, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_EXTSEC:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x800

    :goto_0
    or-int/lit8 v3, v0, 0x3

    sget-boolean v0, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    or-int/2addr v3, v0

    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4000

    :goto_2
    or-int/2addr v3, v0

    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    if-eqz v0, :cond_3

    const v0, 0x8000

    :goto_3
    or-int/2addr v0, v3

    sput v0, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSMBS:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    :goto_4
    sget-boolean v3, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x40

    :goto_5
    or-int/2addr v0, v3

    sget-boolean v3, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    if-eqz v3, :cond_6

    :goto_6
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x1000

    sput v0, Ljcifs/smb/SmbConstants;->DEFAULT_CAPABILITIES:I

    const-string v0, "jcifs.smb.client.flags2"

    sget v2, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->FLAGS2:I

    const-string v0, "jcifs.smb.client.capabilities"

    sget v2, Ljcifs/smb/SmbConstants;->DEFAULT_CAPABILITIES:I

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->CAPABILITIES:I

    const-string v0, "jcifs.smb.client.tcpNoDelay"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->TCP_NODELAY:Z

    const-string v0, "jcifs.smb.client.responseTimeout"

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    const-string v0, "jcifs.smb.client.ssnLimit"

    const/16 v2, 0xfa

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    const-string v0, "jcifs.smb.client.soTimeout"

    invoke-static {v0, v10}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    const-string v0, "jcifs.smb.client.connTimeout"

    invoke-static {v0, v10}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->CONN_TIMEOUT:I

    const-string v0, "jcifs.smb.client.nativeOs"

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_OS:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.nativeLanMan"

    const-string v2, "jCIFS"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_LANMAN:Ljava/lang/String;

    new-instance v0, Ljcifs/smb/SmbTransport;

    invoke-direct {v0, v9, v1, v9, v1}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    sput-object v0, Ljcifs/smb/SmbConstants;->NULL_TRANSPORT:Ljcifs/smb/SmbTransport;

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_3

    :cond_4
    move v0, v1

    goto/16 :goto_4

    :cond_5
    move v3, v1

    goto/16 :goto_5

    :cond_6
    move v2, v1

    goto :goto_6
.end method
