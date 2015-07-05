.class Ljcifs/smb/NetServerEnum2Response;
.super Ljcifs/smb/SmbComTransactionResponse;


# instance fields
.field private converter:I

.field lastName:Ljava/lang/String;

.field private totalAvailableEntries:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    new-array v0, v0, [Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    iput-object v0, p0, Ljcifs/smb/NetServerEnum2Response;->results:[Ljcifs/smb/FileEntry;

    move v0, v1

    move-object v2, v3

    move v4, p2

    :goto_0
    iget v5, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Ljcifs/smb/NetServerEnum2Response;->results:[Ljcifs/smb/FileEntry;

    new-instance v2, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    invoke-direct {v2, p0}, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;-><init>(Ljcifs/smb/NetServerEnum2Response;)V

    aput-object v2, v5, v0

    const/16 v5, 0x10

    invoke-virtual {p0, p1, v4, v5, v1}, Ljcifs/smb/NetServerEnum2Response;->readString([BIIZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v2, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v2, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    invoke-static {p1, v4}, Ljcifs/smb/NetServerEnum2Response;->readInt4([BI)I

    move-result v5

    iput v5, v2, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Ljcifs/smb/NetServerEnum2Response;->readInt4([BI)I

    move-result v5

    add-int/lit8 v4, v4, 0x4

    const v6, 0xffff

    and-int/2addr v5, v6

    iget v6, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    const/16 v6, 0x30

    invoke-virtual {p0, p1, v5, v6, v1}, Ljcifs/smb/NetServerEnum2Response;->readString([BIIZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

    sget-object v5, Ljcifs/smb/NetServerEnum2Response;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    sget-object v5, Ljcifs/smb/NetServerEnum2Response;->log:Ljcifs/util/LogStream;

    invoke-virtual {v5, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    if-nez v0, :cond_2

    :goto_1
    iput-object v3, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    sub-int v0, v4, p2

    return v0

    :cond_2
    iget-object v3, v2, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method readParametersWireFormat([BII)I
    .locals 2

    invoke-static {p1, p2}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NetServerEnum2Response;->status:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

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

    const-string v2, "NetServerEnum2Response["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
