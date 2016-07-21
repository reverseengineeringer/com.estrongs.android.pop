.class Ljcifs/smb/Trans2SetFileInformation;
.super Ljcifs/smb/SmbComTransaction;


# static fields
.field static final SMB_FILE_BASIC_INFO:I = 0x101


# instance fields
.field private attributes:I

.field private createTime:J

.field private fid:I

.field private lastWriteTime:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    iput p2, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    iput-wide p3, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    iput-wide p5, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/Trans2SetFileInformation;->command:B

    const/16 v0, 0x8

    iput-byte v0, p0, Ljcifs/smb/Trans2SetFileInformation;->subCommand:B

    const/4 v0, 0x6

    iput v0, p0, Ljcifs/smb/Trans2SetFileInformation;->maxParameterCount:I

    iput v1, p0, Ljcifs/smb/Trans2SetFileInformation;->maxDataCount:I

    iput-byte v1, p0, Ljcifs/smb/Trans2SetFileInformation;->maxSetupCount:B

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

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

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2SetFileInformation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

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
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 v0, p2, 0x8

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget-wide v2, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 v0, v0, 0x8

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    or-int/lit16 v1, v1, 0x80

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, p2

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 4

    iget v0, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    const-wide/16 v2, 0x101

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/Trans2SetFileInformation;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method
