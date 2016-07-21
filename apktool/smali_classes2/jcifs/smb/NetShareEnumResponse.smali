.class Ljcifs/smb/NetShareEnumResponse;
.super Ljcifs/smb/SmbComTransactionResponse;


# instance fields
.field private converter:I

.field private totalAvailableEntries:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljcifs/smb/NetShareEnumResponse;->useUnicode:Z

    iget v0, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    new-array v0, v0, [Ljcifs/smb/SmbShareInfo;

    iput-object v0, p0, Ljcifs/smb/NetShareEnumResponse;->results:[Ljcifs/smb/FileEntry;

    move v0, v1

    move v2, p2

    :goto_0
    iget v3, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljcifs/smb/NetShareEnumResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v4, Ljcifs/smb/SmbShareInfo;

    invoke-direct {v4}, Ljcifs/smb/SmbShareInfo;-><init>()V

    aput-object v4, v3, v0

    const/16 v3, 0xd

    invoke-virtual {p0, p1, v2, v3, v1}, Ljcifs/smb/NetShareEnumResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    add-int/lit8 v2, v2, 0xe

    invoke-static {p1, v2}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v3

    iput v3, v4, Ljcifs/smb/SmbShareInfo;->type:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljcifs/smb/NetShareEnumResponse;->readInt4([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x4

    const v5, 0xffff

    and-int/2addr v3, v5

    iget v5, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    sub-int/2addr v3, v5

    add-int/2addr v3, p2

    const/16 v5, 0x80

    invoke-virtual {p0, p1, v3, v5, v1}, Ljcifs/smb/NetShareEnumResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    sget-object v3, Ljcifs/smb/NetShareEnumResponse;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_0

    sget-object v3, Ljcifs/smb/NetShareEnumResponse;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v2, p2

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 2

    invoke-static {p1, p2}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NetShareEnumResponse;->status:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetShareEnumResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
