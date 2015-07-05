.class abstract Ljcifs/smb/SmbComNtTransactionResponse;
.super Ljcifs/smb/SmbComTransactionResponse;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method readParameterWordsWireFormat([BI)I
    .locals 4

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0x1

    aput-byte v2, p1, p2

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->totalParameterCount:I

    iget v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->bufDataStart:I

    if-nez v1, :cond_0

    iget v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->totalParameterCount:I

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->bufDataStart:I

    :cond_0
    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->totalDataCount:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->parameterCount:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->parameterOffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->parameterDisplacement:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->dataCount:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->dataOffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->dataDisplacement:I

    add-int/lit8 v0, v0, 0x4

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->setupCount:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->setupCount:I

    if-eqz v1, :cond_1

    sget-object v1, Ljcifs/smb/SmbComNtTransactionResponse;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    sget-object v1, Ljcifs/smb/SmbComNtTransactionResponse;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupCount is not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/smb/SmbComNtTransactionResponse;->setupCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method
