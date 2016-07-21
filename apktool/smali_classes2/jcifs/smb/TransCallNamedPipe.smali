.class Ljcifs/smb/TransCallNamedPipe;
.super Ljcifs/smb/SmbComTransaction;


# instance fields
.field private pipeData:[B

.field private pipeDataLen:I

.field private pipeDataOff:I


# direct methods
.method constructor <init>(Ljava/lang/String;[BII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput-object p1, p0, Ljcifs/smb/TransCallNamedPipe;->name:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/smb/TransCallNamedPipe;->pipeData:[B

    iput p3, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataOff:I

    iput p4, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/TransCallNamedPipe;->command:B

    const/16 v0, 0x54

    iput-byte v0, p0, Ljcifs/smb/TransCallNamedPipe;->subCommand:B

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/TransCallNamedPipe;->timeout:I

    iput v1, p0, Ljcifs/smb/TransCallNamedPipe;->maxParameterCount:I

    const v0, 0xffff

    iput v0, p0, Ljcifs/smb/TransCallNamedPipe;->maxDataCount:I

    iput-byte v1, p0, Ljcifs/smb/TransCallNamedPipe;->maxSetupCount:B

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/TransCallNamedPipe;->setupCount:I

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

    const-string v2, "TransCallNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/TransCallNamedPipe;->name:Ljava/lang/String;

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
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    if-ge v0, v1, :cond_1

    sget-object v0, Ljcifs/smb/TransCallNamedPipe;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/TransCallNamedPipe;->log:Ljcifs/util/LogStream;

    const-string v1, "TransCallNamedPipe data too long for buffer"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/TransCallNamedPipe;->pipeData:[B

    iget v1, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataOff:I

    iget v2, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    goto :goto_0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 3

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/TransCallNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    const/4 v0, 0x4

    return v0
.end method
