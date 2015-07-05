.class Ljcifs/smb/SmbComRename;
.super Ljcifs/smb/ServerMessageBlock;


# instance fields
.field private newFileName:Ljava/lang/String;

.field private oldFileName:Ljava/lang/String;

.field private searchAttributes:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x7

    iput-byte v0, p0, Ljcifs/smb/SmbComRename;->command:B

    iput-object p1, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComRename["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oldFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

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
    .locals 3

    const/4 v2, 0x4

    add-int/lit8 v0, p2, 0x1

    aput-byte v2, p1, p2

    iget-object v1, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComRename;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    iget-boolean v0, p0, Ljcifs/smb/SmbComRename;->useUnicode:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    :goto_0
    iget-object v1, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComRename;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComRename;->writeInt2(J[BI)V

    const/4 v0, 0x2

    return v0
.end method
