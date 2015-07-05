.class Ljcifs/smb/SmbComTreeConnectAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;


# static fields
.field private static final SMB_SHARE_IS_IN_DFS:I = 0x2

.field private static final SMB_SUPPORT_SEARCH_BITS:I = 0x1


# instance fields
.field nativeFileSystem:Ljava/lang/String;

.field service:Ljava/lang/String;

.field shareIsInDfs:Z

.field supportSearchBits:Z


# direct methods
.method constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 1

    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SmbComTreeConnectAndXResponse;->readStringLength([BII)I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p1, p2, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    sub-int/2addr v0, p2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    return v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComTreeConnectAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",supportSearchBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",shareIsInDfs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeFileSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

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
