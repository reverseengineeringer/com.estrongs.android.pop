.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;


# instance fields
.field a:[B

.field final synthetic b:Lcom/jcraft/jsch/Channel;

.field private c:I

.field private d:Lcom/jcraft/jsch/Buffer;

.field private e:Lcom/jcraft/jsch/Packet;

.field private f:Z

.field private final synthetic g:Lcom/jcraft/jsch/Channel;


# direct methods
.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0xe

    add-int/lit8 v0, v0, -0x54

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Packet;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize the channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->g:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b(I)V

    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->g:Lcom/jcraft/jsch/Channel;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->g:Lcom/jcraft/jsch/Channel;

    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->j()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->g:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->a:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->a:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v3, v2

    move v1, p3

    :goto_0
    if-gtz v1, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    add-int/lit8 v0, v0, 0xe

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, -0x54

    if-le v1, v0, :cond_4

    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    add-int/lit8 v0, v0, 0xe

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, -0x54

    :goto_1
    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    add-int/lit8 v4, v4, 0xe

    invoke-static {p1, p2, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/jcraft/jsch/Channel$1;->c:I

    add-int/2addr p2, v0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
