.class Ljcifs/smb/Trans2FindFirst2Response;
.super Ljcifs/smb/SmbComTransactionResponse;


# static fields
.field static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field static final SMB_FILE_NAMES_INFO:I = 0x103

.field static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field eaErrorOffset:I

.field isEndOfSearch:Z

.field lastName:Ljava/lang/String;

.field lastNameBufferIndex:I

.field lastNameOffset:I

.field resumeKey:I

.field sid:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->command:B

    const/4 v0, 0x1

    iput-byte v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 6

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    new-array v0, v0, [Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    iput-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->results:[Ljcifs/smb/FileEntry;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->results:[Ljcifs/smb/FileEntry;

    new-instance v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    invoke-direct {v2, p0}, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;-><init>(Ljcifs/smb/Trans2FindFirst2Response;)V

    aput-object v2, v1, v0

    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/Trans2FindFirst2Response;->readTime([BI)J

    move-result-wide v4

    iput-wide v4, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v1}, Ljcifs/smb/Trans2FindFirst2Response;->readTime([BI)J

    move-result-wide v4

    iput-wide v4, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    add-int/lit8 v1, p2, 0x28

    invoke-static {p1, v1}, Ljcifs/smb/Trans2FindFirst2Response;->readInt8([BI)J

    move-result-wide v4

    iput-wide v4, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    add-int/lit8 v1, p2, 0x38

    invoke-static {p1, v1}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    add-int/lit8 v1, p2, 0x3c

    invoke-static {p1, v1}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    add-int/lit8 v1, p2, 0x5e

    iget v3, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    invoke-virtual {p0, p1, v1, v3}, Ljcifs/smb/Trans2FindFirst2Response;->readString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    iget v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    if-lt v1, p2, :cond_1

    iget v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    if-eqz v1, :cond_0

    iget v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    iget v3, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr v3, p2

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    iget v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    iput v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    :cond_1
    iget v1, v2, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->dataCount:I

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 3

    const/4 v1, 0x1

    iget-byte v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    add-int/lit8 v0, p2, 0x2

    :goto_0
    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    add-int/lit8 v2, v0, 0x2

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method readSetupWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readString([BII)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->useUnicode:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-lez p3, :cond_1

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljcifs/smb/Trans2FindFirst2Response;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    sget-object v2, Ljcifs/smb/Trans2FindFirst2Response;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Trans2FindFirst2Response["

    :goto_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",searchCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",isEndOfSearch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",eaErrorOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",lastNameOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",lastName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

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
    const-string v0, "Trans2FindNext2Response["

    goto :goto_0
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
