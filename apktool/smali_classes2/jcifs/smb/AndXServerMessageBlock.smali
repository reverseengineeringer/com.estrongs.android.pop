.class abstract Ljcifs/smb/AndXServerMessageBlock;
.super Ljcifs/smb/ServerMessageBlock;


# static fields
.field private static final ANDX_COMMAND_OFFSET:I = 0x1

.field private static final ANDX_OFFSET_OFFSET:I = 0x3

.field private static final ANDX_RESERVED_OFFSET:I = 0x2


# instance fields
.field andx:Ljcifs/smb/ServerMessageBlock;

.field private andxCommand:B

.field private andxOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    return-void
.end method

.method constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    :cond_0
    return-void
.end method


# virtual methods
.method decode([BI)I
    .locals 2

    iput p2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/AndXServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    return v0
.end method

.method encode([BI)I
    .locals 6

    iput p2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/AndXServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    iget v3, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    iget-object v5, p0, Ljcifs/smb/AndXServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_0
    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    return v0
.end method

.method getBatchLimit(B)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readAndXWireFormat([BI)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, -0x1

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    if-eqz v1, :cond_2

    aget-byte v1, p1, v0

    iput-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    if-nez v1, :cond_0

    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    :cond_0
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    if-le v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readParameterWordsWireFormat([BI)I

    iget-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->command:B

    const/16 v1, -0x5e

    if-ne v0, v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljcifs/smb/SmbComNTCreateAndXResponse;

    iget-boolean v0, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    :cond_1
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_2
    invoke-static {p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readBytesWireFormat([BI)I

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->errorCode:I

    if-nez v1, :cond_4

    iget-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    if-ne v1, v2, :cond_5

    :cond_4
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    :goto_0
    sub-int/2addr v0, p2

    return v0

    :cond_5
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-nez v0, :cond_6

    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no andx command supplied with response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    add-int/2addr v1, v0

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    iput-byte v2, v0, Ljcifs/smb/ServerMessageBlock;->command:B

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->errorCode:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->flags:B

    iput-byte v2, v0, Ljcifs/smb/ServerMessageBlock;->flags:B

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->flags2:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->tid:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->tid:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->pid:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->pid:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->uid:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->uid:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->mid:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-boolean v2, p0, Ljcifs/smb/AndXServerMessageBlock;->useUnicode:Z

    iput-boolean v2, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    instance-of v0, v0, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result v0

    add-int/2addr v0, v1

    :cond_7
    :goto_1
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljcifs/smb/ServerMessageBlock;->received:Z

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v1, v1, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v1, :cond_9

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v1, v1, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-le v1, v3, :cond_9

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-static {p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v1, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v1, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",andxCommand=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",andxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeAndXWireFormat([BI)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, -0x22

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/2addr v1, v0

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_0

    sget-boolean v0, Ljcifs/smb/AndXServerMessageBlock;->USE_BATCHING:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->batchLevel:I

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte v2, v2, Ljcifs/smb/ServerMessageBlock;->command:B

    invoke-virtual {p0, v2}, Ljcifs/smb/AndXServerMessageBlock;->getBatchLimit(B)I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    iput-byte v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    add-int/lit8 v0, p2, 0x1

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    aput-byte v5, p1, v0

    add-int/lit8 v0, p2, 0x3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    aput-byte v3, p1, v0

    sub-int v0, v1, p2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->batchLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    add-int/lit8 v0, p2, 0x1

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x2

    aput-byte v5, p1, v0

    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    sub-int v0, v1, v0

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    int-to-long v2, v0

    add-int/lit8 v0, p2, 0x3

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->writeInt2(J[BI)V

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-boolean v2, p0, Ljcifs/smb/AndXServerMessageBlock;->useUnicode:Z

    iput-boolean v2, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    instance-of v0, v0, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->uid:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->uid:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    sub-int/2addr v0, p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v2, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v0, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v3, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v1, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v0, v1

    goto :goto_1
.end method
