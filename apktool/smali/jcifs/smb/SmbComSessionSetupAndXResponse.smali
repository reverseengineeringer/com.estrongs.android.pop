.class Ljcifs/smb/SmbComSessionSetupAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;


# instance fields
.field blob:[B

.field isLoggedInAsGuest:Z

.field private nativeLanMan:Ljava/lang/String;

.field public nativeOs:Ljava/lang/String;

.field private primaryDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 1

    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 6

    const/16 v4, 0xff

    iget-boolean v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->extendedSecurity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v0, v0

    add-int/2addr v0, p2

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int v2, v0, v1

    iget v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->byteCount:I

    add-int v3, p2, v0

    iget-boolean v5, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->useUnicode:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readString([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->extendedSecurity:Z

    if-nez v0, :cond_0

    iget v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->byteCount:I

    add-int v3, p2, v0

    iget-boolean v5, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->useUnicode:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readString([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    sub-int v0, v2, p2

    return v0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 2

    const/4 v0, 0x1

    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    add-int/lit8 v0, p2, 0x2

    iget-boolean v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->extendedSecurity:Z

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readInt2([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    :cond_0
    sub-int/2addr v0, p2

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComSessionSetupAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isLoggedInAsGuest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeOs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeLanMan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

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
