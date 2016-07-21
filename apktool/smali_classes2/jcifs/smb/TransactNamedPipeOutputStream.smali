.class Ljcifs/smb/TransactNamedPipeOutputStream;
.super Ljcifs/smb/SmbFileOutputStream;


# instance fields
.field private dcePipe:Z

.field private path:Ljava/lang/String;

.field private pipe:Ljcifs/smb/SmbNamedPipe;

.field private tmp:[B


# direct methods
.method constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {p0, p1, v1, v2}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    new-array v2, v0, [B

    iput-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v2, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v2, v2, 0x600

    const/16 v3, 0x600

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    iget-object v0, p1, Ljcifs/smb/SmbNamedPipe;->unc:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->close()V

    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance v1, Ljcifs/smb/TransWaitNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance v1, Ljcifs/smb/TransCallNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, Ljcifs/smb/TransCallNamedPipe;-><init>(Ljava/lang/String;[BII)V

    new-instance v2, Ljcifs/smb/TransCallNamedPipeResponse;

    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {v2, v3}, Ljcifs/smb/TransCallNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/TransactNamedPipeOutputStream;->ensureOpen()V

    new-instance v0, Ljcifs/smb/TransTransactNamedPipe;

    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v1, v1, Ljcifs/smb/SmbNamedPipe;->fid:I

    invoke-direct {v0, v1, p1, p2, p3}, Ljcifs/smb/TransTransactNamedPipe;-><init>(I[BII)V

    iget-boolean v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x400

    iput v1, v0, Ljcifs/smb/TransTransactNamedPipe;->maxDataCount:I

    :cond_3
    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance v2, Ljcifs/smb/TransTransactNamedPipeResponse;

    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {v2, v3}, Ljcifs/smb/TransTransactNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {v1, v0, v2}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0
.end method
