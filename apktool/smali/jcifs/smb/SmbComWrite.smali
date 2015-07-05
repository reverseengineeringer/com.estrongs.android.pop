.class Ljcifs/smb/SmbComWrite;
.super Ljcifs/smb/ServerMessageBlock;


# instance fields
.field private b:[B

.field private count:I

.field private fid:I

.field private off:I

.field private offset:I

.field private remaining:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/16 v0, 0xb

    iput-byte v0, p0, Ljcifs/smb/SmbComWrite;->command:B

    return-void
.end method

.method constructor <init>(III[BII)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    iput p1, p0, Ljcifs/smb/SmbComWrite;->fid:I

    iput p6, p0, Ljcifs/smb/SmbComWrite;->count:I

    iput p2, p0, Ljcifs/smb/SmbComWrite;->offset:I

    iput p3, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    iput-object p4, p0, Ljcifs/smb/SmbComWrite;->b:[B

    iput p5, p0, Ljcifs/smb/SmbComWrite;->off:I

    const/16 v0, 0xb

    iput-byte v0, p0, Ljcifs/smb/SmbComWrite;->command:B

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

.method setParam(IJI[BII)V
    .locals 2

    iput p1, p0, Ljcifs/smb/SmbComWrite;->fid:I

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Ljcifs/smb/SmbComWrite;->offset:I

    iput p4, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWrite;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWrite;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWrite;->count:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbComWrite;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComWrite["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWrite;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWrite;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWrite;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWrite;->remaining:I

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

.method writeBytesWireFormat([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    aput-byte v1, p1, p2

    iget v1, p0, Ljcifs/smb/SmbComWrite;->count:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/SmbComWrite;->b:[B

    iget v2, p0, Ljcifs/smb/SmbComWrite;->off:I

    iget v3, p0, Ljcifs/smb/SmbComWrite;->count:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljcifs/smb/SmbComWrite;->count:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 4

    iget v0, p0, Ljcifs/smb/SmbComWrite;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/SmbComWrite;->count:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComWrite;->offset:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWrite;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method
