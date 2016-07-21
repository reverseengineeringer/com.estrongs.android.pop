.class Ljcifs/smb/SmbComWriteAndX;
.super Ljcifs/smb/AndXServerMessageBlock;


# static fields
.field private static final CLOSE_BATCH_LIMIT:I

.field private static final READ_ANDX_BATCH_LIMIT:I


# instance fields
.field private b:[B

.field private dataLength:I

.field private dataOffset:I

.field private fid:I

.field private off:I

.field private offset:J

.field private pad:I

.field private remaining:I

.field writeMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/SmbComWriteAndX;->command:B

    return-void
.end method

.method constructor <init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V
    .locals 2

    invoke-direct {p0, p8}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/SmbComWriteAndX;->command:B

    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    sget v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

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

    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbComWriteAndX;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComWriteAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",writeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

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

    move v0, p2

    :goto_0
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, -0x12

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->headerStart:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1a

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->headerStart:I

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWriteAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/4 v4, -0x1

    aput-byte v4, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    rsub-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWriteAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method
