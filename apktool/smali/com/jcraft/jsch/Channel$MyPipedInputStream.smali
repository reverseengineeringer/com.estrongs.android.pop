.class Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.super Ljava/io/PipedInputStream;


# instance fields
.field final synthetic a:Lcom/jcraft/jsch/Channel;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;I)V
    .locals 1

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->c:I

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->c:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->c:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V
    .locals 1

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->c:I

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    return-void
.end method

.method private b()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v0, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b()I

    move-result v0

    if-ge v0, p1, :cond_7

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v0, v0

    :goto_0
    sub-int v2, v0, v1

    if-lt v2, p1, :cond_2

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->c:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sub-int v1, v0, v1

    if-ge v1, p1, :cond_3

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    :try_start_1
    new-array v0, v0, [B

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    if-ge v1, v2, :cond_6

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    array-length v3, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    iput v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    if-le v0, v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    :cond_8
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
