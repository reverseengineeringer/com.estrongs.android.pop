.class Ljcifs/smb/Trans2QueryFSInformationResponse;
.super Ljcifs/smb/SmbComTransactionResponse;


# static fields
.field static final SMB_FS_FULL_SIZE_INFORMATION:I = 0x3ef

.field static final SMB_INFO_ALLOCATION:I = 0x1

.field static final SMB_QUERY_FS_SIZE_INFO:I = 0x103


# instance fields
.field info:Ljcifs/smb/AllocInfo;

.field private informationLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->command:B

    const/4 v0, 0x3

    iput-byte v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1

    iget v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbInfoAllocationWireFormat([BI)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbQueryFSSizeInfoWireFormat([BI)I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readFsFullSizeInformationWireFormat([BI)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x103 -> :sswitch_1
        0x3ef -> :sswitch_2
    .end sparse-switch
.end method

.method readFsFullSizeInformationWireFormat([BI)I
    .locals 4

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int v0, v1, p2

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readSmbInfoAllocationWireFormat([BI)I
    .locals 4

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt2([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int v0, v1, p2

    return v0
.end method

.method readSmbQueryFSSizeInfoWireFormat([BI)I
    .locals 4

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int v0, v1, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryFSInformationResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

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
