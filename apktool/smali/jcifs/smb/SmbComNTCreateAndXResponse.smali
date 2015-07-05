.class Ljcifs/smb/SmbComNTCreateAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;


# static fields
.field static final BATCH_OPLOCK_GRANTED:I = 0x2

.field static final EXCLUSIVE_OPLOCK_GRANTED:I = 0x1

.field static final LEVEL_II_OPLOCK_GRANTED:I = 0x3


# instance fields
.field allocationSize:J

.field changeTime:J

.field createAction:I

.field creationTime:J

.field deviceState:I

.field directory:Z

.field endOfFile:J

.field extFileAttributes:I

.field fid:I

.field fileType:I

.field isExtended:Z

.field lastAccessTime:J

.field lastWriteTime:J

.field oplockLevel:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput-byte v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    sub-int v0, v1, p2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNTCreateAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oplockLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",createAction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastAccessTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",changeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extFileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",endOfFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
