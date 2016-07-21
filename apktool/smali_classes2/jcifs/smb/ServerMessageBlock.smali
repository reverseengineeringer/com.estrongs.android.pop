.class abstract Ljcifs/smb/ServerMessageBlock;
.super Ljcifs/util/transport/Response;

# interfaces
.implements Ljcifs/smb/SmbConstants;
.implements Ljcifs/util/transport/Request;


# static fields
.field static final SMB_COM_CHECK_DIRECTORY:B = 0x10t

.field static final SMB_COM_CLOSE:B = 0x4t

.field static final SMB_COM_CREATE_DIRECTORY:B = 0x0t

.field static final SMB_COM_DELETE:B = 0x6t

.field static final SMB_COM_DELETE_DIRECTORY:B = 0x1t

.field static final SMB_COM_ECHO:B = 0x2bt

.field static final SMB_COM_FIND_CLOSE2:B = 0x34t

.field static final SMB_COM_LOGOFF_ANDX:B = 0x74t

.field static final SMB_COM_MOVE:B = 0x2at

.field static final SMB_COM_NEGOTIATE:B = 0x72t

.field static final SMB_COM_NT_CREATE_ANDX:B = -0x5et

.field static final SMB_COM_NT_TRANSACT:B = -0x60t

.field static final SMB_COM_NT_TRANSACT_SECONDARY:B = -0x5ft

.field static final SMB_COM_OPEN_ANDX:B = 0x2dt

.field static final SMB_COM_QUERY_INFORMATION:B = 0x8t

.field static final SMB_COM_READ_ANDX:B = 0x2et

.field static final SMB_COM_RENAME:B = 0x7t

.field static final SMB_COM_SESSION_SETUP_ANDX:B = 0x73t

.field static final SMB_COM_TRANSACTION:B = 0x25t

.field static final SMB_COM_TRANSACTION2:B = 0x32t

.field static final SMB_COM_TRANSACTION_SECONDARY:B = 0x26t

.field static final SMB_COM_TREE_CONNECT_ANDX:B = 0x75t

.field static final SMB_COM_TREE_DISCONNECT:B = 0x71t

.field static final SMB_COM_WRITE:B = 0xbt

.field static final SMB_COM_WRITE_ANDX:B = 0x2ft

.field static final header:[B

.field static log:Ljcifs/util/LogStream;


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field batchLevel:I

.field byteCount:I

.field command:B

.field digest:Ljcifs/smb/SigningDigest;

.field errorCode:I

.field extendedSecurity:Z

.field flags:B

.field flags2:I

.field headerStart:I

.field length:I

.field mid:I

.field path:Ljava/lang/String;

.field pid:I

.field received:Z

.field response:Ljcifs/smb/ServerMessageBlock;

.field responseTimeout:J

.field signSeq:I

.field tid:I

.field uid:I

.field useUnicode:Z

.field verifyFailed:Z

.field wordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljcifs/util/transport/Response;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    iput-object v2, p0, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v2, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    sget v0, Ljcifs/smb/ServerMessageBlock;->PID:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    return-void
.end method

.method static readInt2([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt4([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt8([BI)J
    .locals 5

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static readTime([BI)J
    .locals 6

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    const-wide v2, 0xa9730b66800L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static readUTime([BI)J
    .locals 4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static writeInt2(J[BI)V
    .locals 4

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static writeInt4(J[BI)V
    .locals 6

    const/16 v4, 0x8

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static writeInt8(J[BI)V
    .locals 6

    const/16 v4, 0x8

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static writeTime(J[BI)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide v0, 0xa9730b66800L

    add-long/2addr v0, p0

    const-wide/16 v2, 0x2710

    mul-long p0, v0, v2

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    return-void
.end method

.method static writeUTime(J[BI)V
    .locals 6

    const-wide/32 v4, 0x36ee80

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    goto :goto_0

    :cond_3
    sub-long/2addr p0, v4

    goto :goto_1

    :cond_4
    :try_start_1
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-long/2addr p0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method decode([BI)I
    .locals 6

    const/4 v5, 0x5

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v0

    add-int v1, p2, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v1

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wordCount * 2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but readParameterWordsWireFormat returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    move-result v1

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eq v1, v2, :cond_2

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_2

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but readBytesWireFormat returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v0, v1

    :cond_3
    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v0
.end method

.method encode([BI)I
    .locals 6

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v5, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_0
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_0

    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    return v0
.end method

.method isResponse()Z
    .locals 2

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract readBytesWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .locals 1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    add-int/lit8 v0, p2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    const/16 v0, 0x20

    return v0
.end method

.method abstract readParameterWordsWireFormat([BI)I
.end method

.method readString([BI)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x100

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, v0, v1}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readString([BIIIZ)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-eqz p5, :cond_8

    :try_start_0
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v3, p2, v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    :goto_0
    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    if-ge v3, p3, :cond_1

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-nez v3, :cond_2

    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    if-le v2, p4, :cond_6

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_4

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v0, :cond_3

    add-int/lit8 v0, p4, 0x8

    :cond_3
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :cond_8
    if-ge p2, p3, :cond_9

    add-int v3, p2, v2

    :try_start_1
    aget-byte v3, p1, v3

    if-nez v3, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_1

    :cond_a
    if-le v2, p4, :cond_7

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_c

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v0, :cond_b

    add-int/lit8 v0, p4, 0x8

    :cond_b
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method readString([BIIZ)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x80

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_6

    :try_start_0
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v3, p2, v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-nez v3, :cond_1

    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_5

    :cond_1
    add-int/lit8 v2, v2, 0x2

    if-le v2, p3, :cond_0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_3

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_2

    add-int/lit8 v0, p3, 0x8

    :cond_2
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-eqz v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    if-le v2, p3, :cond_6

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_8

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_7

    add-int/lit8 v0, p3, 0x8

    :cond_7
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method readStringLength([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    if-le v0, p3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zero termination not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method reset()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    iput-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method stringWireLength(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x4

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v1, :cond_0

    const-string v1, "0"

    :goto_1
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",received="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",errorCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags2=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    invoke-static {v1, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",signSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",wordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",byteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    :sswitch_0
    const-string v0, "SMB_COM_NEGOTIATE"

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "SMB_COM_TRANSACTION"

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "SMB_COM_TRANSACTION2"

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "SMB_COM_FIND_CLOSE2"

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "SMB_COM_ECHO"

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "SMB_COM_MOVE"

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "SMB_COM_RENAME"

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "SMB_COM_DELETE"

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "SMB_COM_OPEN_ANDX"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "SMB_COM_READ_ANDX"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "SMB_COM_CLOSE"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "SMB_COM_WRITE_ANDX"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "SMB_COM_NT_TRANSACT"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    goto/16 :goto_0

    :cond_0
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60 -> :sswitch_16
        -0x5f -> :sswitch_17
        -0x5e -> :sswitch_10
        0x0 -> :sswitch_15
        0x1 -> :sswitch_f
        0x4 -> :sswitch_13
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x25 -> :sswitch_5
        0x26 -> :sswitch_7
        0x2a -> :sswitch_c
        0x2b -> :sswitch_b
        0x2d -> :sswitch_11
        0x2e -> :sswitch_12
        0x2f -> :sswitch_14
        0x32 -> :sswitch_6
        0x34 -> :sswitch_8
        0x71 -> :sswitch_9
        0x72 -> :sswitch_0
        0x73 -> :sswitch_1
        0x74 -> :sswitch_a
        0x75 -> :sswitch_2
    .end sparse-switch
.end method

.method abstract writeBytesWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .locals 4

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->header:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x9

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    aput-byte v1, p1, v0

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x9

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x18

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    int-to-long v2, v1

    add-int/lit8 v1, v0, 0x2

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    int-to-long v2, v1

    add-int/lit8 v1, v0, 0x4

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    int-to-long v2, v1

    add-int/lit8 v0, v0, 0x6

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    const/16 v0, 0x20

    return v0
.end method

.method abstract writeParameterWordsWireFormat([BI)I
.end method

.method writeString(Ljava/lang/String;[BI)I
    .locals 1

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result v0

    return v0
.end method

.method writeString(Ljava/lang/String;[BIZ)I
    .locals 5

    if-eqz p4, :cond_1

    :try_start_0
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v0, p3, v0

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    add-int/lit8 v1, p3, 0x1

    const/4 v0, 0x0

    :try_start_1
    aput-byte v0, p2, p3

    :goto_0
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p2, v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    aput-byte v2, p2, v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    sub-int/2addr v0, p3

    return v0

    :cond_1
    :try_start_3
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    add-int v1, p3, v0

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    aput-byte v2, p2, v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, p3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_2

    :cond_2
    move v1, p3

    goto :goto_0
.end method
