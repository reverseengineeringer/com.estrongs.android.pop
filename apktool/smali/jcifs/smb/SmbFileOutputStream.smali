.class public Ljcifs/smb/SmbFileOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private access:I

.field private append:Z

.field private file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private req:Ljcifs/smb/SmbComWrite;

.field private reqx:Ljcifs/smb/SmbComWriteAndX;

.field private rsp:Ljcifs/smb/SmbComWriteResponse;

.field private rspx:Ljcifs/smb/SmbComWriteAndXResponse;

.field private tmp:[B

.field private useNTSmbs:Z

.field private writeSize:I

.field private writeSizeFile:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 v0, 0x16

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    return-void

    :cond_0
    const/16 v0, 0x52

    goto :goto_0
.end method

.method constructor <init>(Ljcifs/smb/SmbFile;ZI)V
    .locals 4

    const v3, 0x8000

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iput-boolean p2, p0, Ljcifs/smb/SmbFileOutputStream;->append:Z

    iput p3, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    ushr-int/lit8 v0, p3, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    instance-of v0, p1, Ljcifs/smb/SmbNamedPipe;

    if-eqz v0, :cond_1

    iget-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v1, "\\pipe\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    new-instance v0, Ljcifs/smb/TransWaitNamedPipe;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\pipe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v1}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_1
    iget v0, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    or-int/lit8 v0, v0, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    iget v0, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Ljcifs/smb/SmbFileOutputStream;->writeSize:I

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-boolean v0, v0, Ljcifs/smb/SmbSession;->server_is_windows:Z

    if-nez v0, :cond_2

    sget v0, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    add-int/lit8 v0, v0, -0x46

    const v1, 0xffb9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbFileOutputStream;->writeSizeFile:I

    :goto_1
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    iget-boolean v0, p0, Ljcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljcifs/smb/SmbComWriteAndX;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    new-instance v0, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    :goto_2
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Ljcifs/smb/SmbFileOutputStream;->writeSize:I

    iput v0, p0, Ljcifs/smb/SmbFileOutputStream;->writeSizeFile:I

    goto :goto_1

    :cond_3
    new-instance v0, Ljcifs/smb/SmbComWrite;

    invoke-direct {v0}, Ljcifs/smb/SmbComWrite;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    new-instance v0, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    return-void
.end method

.method ensureOpen()V
    .locals 5

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v1, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    iget v2, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    or-int/lit8 v2, v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    iget-boolean v0, p0, Ljcifs/smb/SmbFileOutputStream;->append:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    instance-of v0, v0, Ljcifs/smb/SmbNamedPipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    new-instance v1, Ljcifs/smb/TransWaitNamedPipe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\pipe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v3, v3, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    return-void
.end method

.method public writeDirect([BIII)V
    .locals 8

    if-gtz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFileOutputStream;->ensureOpen()V

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_2
    move v6, p2

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v7, p0, Ljcifs/smb/SmbFileOutputStream;->writeSizeFile:I

    :goto_1
    if-le p3, v7, :cond_4

    :goto_2
    iget-boolean v0, p0, Ljcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    sub-int v4, p3, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    move v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    const/16 v1, 0x8

    iput v1, v0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    :goto_3
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    int-to-long v0, p3

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    :goto_4
    if-gtz p3, :cond_2

    goto/16 :goto_0

    :cond_3
    iget v7, p0, Ljcifs/smb/SmbFileOutputStream;->writeSize:I

    goto :goto_1

    :cond_4
    move v7, p3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    const/4 v1, 0x0

    iput v1, v0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    goto :goto_3

    :cond_6
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    sub-int v4, p3, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    iget-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    int-to-long v0, p3

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteResponse;->count:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteResponse;->count:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_4
.end method
