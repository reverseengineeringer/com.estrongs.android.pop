.class Ljcifs/smb/TransPeekNamedPipe;
.super Ljcifs/smb/SmbComTransaction;


# instance fields
.field private fid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput-object p1, p0, Ljcifs/smb/TransPeekNamedPipe;->name:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/TransPeekNamedPipe;->fid:I

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/TransPeekNamedPipe;->command:B

    const/16 v0, 0x23

    iput-byte v0, p0, Ljcifs/smb/TransPeekNamedPipe;->subCommand:B

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/TransPeekNamedPipe;->timeout:I

    const/4 v0, 0x6

    iput v0, p0, Ljcifs/smb/TransPeekNamedPipe;->maxParameterCount:I

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/TransPeekNamedPipe;->maxDataCount:I

    const/4 v0, 0x0

    iput-byte v0, p0, Ljcifs/smb/TransPeekNamedPipe;->maxSetupCount:B

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/TransPeekNamedPipe;->setupCount:I

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

    const-string v2, "TransPeekNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/TransPeekNamedPipe;->name:Ljava/lang/String;

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
    .locals 4

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/TransPeekNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/TransPeekNamedPipe;->fid:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/TransPeekNamedPipe;->writeInt2(J[BI)V

    const/4 v0, 0x4

    return v0
.end method
