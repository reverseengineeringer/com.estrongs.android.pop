.class Ljcifs/smb/SmbComNegotiateResponse;
.super Ljcifs/smb/ServerMessageBlock;


# instance fields
.field dialectIndex:I

.field server:Ljcifs/smb/SmbTransport$ServerData;


# direct methods
.method constructor <init>(Ljcifs/smb/SmbTransport$ServerData;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 7

    const v5, 0x8000

    const/16 v4, 0x100

    const/16 v3, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    new-array v1, v1, [B

    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    add-int v1, p2, v0

    iget v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->byteCount:I

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    if-le v0, v3, :cond_6

    :try_start_0
    iget v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->flags2:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_4

    :cond_0
    move v0, v2

    add-int v2, v1, v0

    :try_start_1
    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_3

    :cond_1
    add-int/lit8 v2, v0, 0x2

    if-le v2, v4, :cond_0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "zero termination not found"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    :goto_0
    sget-object v3, Ljcifs/smb/SmbComNegotiateResponse;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    sget-object v3, Ljcifs/smb/SmbComNegotiateResponse;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    :goto_1
    add-int/2addr v0, v1

    :goto_2
    sub-int/2addr v0, p2

    return v0

    :cond_3
    :try_start_3
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_4
    move v0, v2

    add-int v2, v1, v0

    aget-byte v2, p1, v2
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    if-le v2, v4, :cond_4

    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "zero termination not found"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    :try_start_5
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    move v0, v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-array v1, v3, [B

    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->guid:[B

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->guid:[B

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    move v0, p2

    goto :goto_2
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    add-int/lit8 v0, p2, 0x2

    iget v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    sub-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v3, v3, 0x1

    iput v3, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v0, v0, 0x4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v3, v3, 0x8

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    :goto_3
    iput-boolean v1, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v4}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    add-int/lit8 v0, v4, 0x2

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNegotiateResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    sub-int v0, v2, p2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v4, 0x8

    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNegotiateResponse["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",wordCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->wordCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",dialectIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",securityMode=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",security="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v0, :cond_0

    const-string v0, "share"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",encryptedPasswords="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxMpxCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxNumberVcs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxBufferSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxRawSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sessionKey=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    invoke-static {v2, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",capabilities=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    invoke-static {v2, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-wide v4, v3, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTimeZone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",encryptionKeyLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",byteCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->byteCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",oemDomainName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v2, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "user"

    goto/16 :goto_0
.end method

.method writeBytesWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
