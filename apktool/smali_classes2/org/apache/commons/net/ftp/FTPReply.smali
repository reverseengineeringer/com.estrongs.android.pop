.class public final Lorg/apache/commons/net/ftp/FTPReply;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ABORTED:I = 0x1c3

.field public static final BAD_COMMAND_SEQUENCE:I = 0x1f7

.field public static final BAD_TLS_NEGOTIATION_OR_DATA_ENCRYPTION_REQUIRED:I = 0x20a

.field public static final CANNOT_OPEN_DATA_CONNECTION:I = 0x1a9

.field public static final CLOSING_DATA_CONNECTION:I = 0xe2

.field public static final COMMAND_IS_SUPERFLUOUS:I = 0xca

.field public static final COMMAND_NOT_IMPLEMENTED:I = 0x1f6

.field public static final COMMAND_NOT_IMPLEMENTED_FOR_PARAMETER:I = 0x1f8

.field public static final COMMAND_OK:I = 0xc8

.field public static final DATA_CONNECTION_ALREADY_OPEN:I = 0x7d

.field public static final DATA_CONNECTION_OPEN:I = 0xe1

.field public static final DENIED_FOR_POLICY_REASONS:I = 0x215

.field public static final DIRECTORY_STATUS:I = 0xd4

.field public static final ENTERING_EPSV_MODE:I = 0xe5

.field public static final ENTERING_PASSIVE_MODE:I = 0xe3

.field public static final EXTENDED_PORT_FAILURE:I = 0x20a

.field public static final FAILED_SECURITY_CHECK:I = 0x217

.field public static final FILE_ACTION_NOT_TAKEN:I = 0x1c2

.field public static final FILE_ACTION_OK:I = 0xfa

.field public static final FILE_ACTION_PENDING:I = 0x15e

.field public static final FILE_NAME_NOT_ALLOWED:I = 0x229

.field public static final FILE_STATUS:I = 0xd5

.field public static final FILE_STATUS_OK:I = 0x96

.field public static final FILE_UNAVAILABLE:I = 0x226

.field public static final HELP_MESSAGE:I = 0xd6

.field public static final INSUFFICIENT_STORAGE:I = 0x1c4

.field public static final NAME_SYSTEM_TYPE:I = 0xd7

.field public static final NEED_ACCOUNT:I = 0x14c

.field public static final NEED_ACCOUNT_FOR_STORING_FILES:I = 0x214

.field public static final NEED_PASSWORD:I = 0x14b

.field public static final NOT_LOGGED_IN:I = 0x212

.field public static final PAGE_TYPE_UNKNOWN:I = 0x227

.field public static final PATHNAME_CREATED:I = 0x101

.field public static final REQUESTED_PROT_LEVEL_NOT_SUPPORTED:I = 0x218

.field public static final REQUEST_DENIED:I = 0x216

.field public static final RESTART_MARKER:I = 0x6e

.field public static final SECURITY_DATA_EXCHANGE_COMPLETE:I = 0xea

.field public static final SECURITY_DATA_EXCHANGE_SUCCESSFULLY:I = 0xeb

.field public static final SECURITY_DATA_IS_ACCEPTABLE:I = 0x14f

.field public static final SECURITY_MECHANISM_IS_OK:I = 0x14e

.field public static final SERVICE_CLOSING_CONTROL_CONNECTION:I = 0xdd

.field public static final SERVICE_NOT_AVAILABLE:I = 0x1a5

.field public static final SERVICE_NOT_READY:I = 0x78

.field public static final SERVICE_READY:I = 0xdc

.field public static final STORAGE_ALLOCATION_EXCEEDED:I = 0x228

.field public static final SYNTAX_ERROR_IN_ARGUMENTS:I = 0x1f5

.field public static final SYSTEM_STATUS:I = 0xd3

.field public static final TRANSFER_ABORTED:I = 0x1aa

.field public static final UNAVAILABLE_RESOURCE:I = 0x1af

.field public static final UNRECOGNIZED_COMMAND:I = 0x1f4

.field public static final USER_LOGGED_IN:I = 0xe6


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNegativePermanent(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNegativeTransient(I)Z
    .locals 1

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPositiveCompletion(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPositiveIntermediate(I)Z
    .locals 1

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPositivePreliminary(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProtectedReplyCode(I)Z
    .locals 1

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
