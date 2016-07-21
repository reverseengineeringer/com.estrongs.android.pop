.class Ljcifs/smb/TransTransactNamedPipe;
.super Ljcifs/smb/SmbComTransaction;


# instance fields
.field private pipeData:[B

.field private pipeDataLen:I

.field private pipeDataOff:I

.field private pipeFid:I


# direct methods
.method constructor <init>(I[BII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput p1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    iput-object p2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    iput p3, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    iput p4, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/TransTransactNamedPipe;->command:B

    const/16 v0, 0x26

    iput-byte v0, p0, Ljcifs/smb/TransTransactNamedPipe;->subCommand:B

    iput v1, p0, Ljcifs/smb/TransTransactNamedPipe;->maxParameterCount:I

    const v0, 0xffff

    iput v0, p0, Ljcifs/smb/TransTransactNamedPipe;->maxDataCount:I

    iput-byte v1, p0, Ljcifs/smb/TransTransactNamedPipe;->maxSetupCount:B

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/TransTransactNamedPipe;->setupCount:I

    const-string v0, "\\PIPE\\"

    iput-object v0, p0, Ljcifs/smb/TransTransactNamedPipe;->name:Ljava/lang/String;

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

    const-string v2, "TransTransactNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

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
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    if-ge v0, v1, :cond_1

    sget-object v0, Ljcifs/smb/TransTransactNamedPipe;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/TransTransactNamedPipe;->log:Ljcifs/util/LogStream;

    const-string v1, "TransTransactNamedPipe data too long for buffer"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    iget v1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    goto :goto_0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/TransTransactNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/TransTransactNamedPipe;->writeInt2(J[BI)V

    add-int/lit8 v0, v1, 0x2

    const/4 v0, 0x4

    return v0
.end method
