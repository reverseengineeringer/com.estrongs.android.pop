.class public Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final allocatedAt:Ljava/lang/Throwable;

.field final buffer:[B

.field closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

.field readLaps:I

.field readPosition:I

.field source:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field writeLaps:I

.field writePosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readLaps:I

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writeLaps:I

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->allocatedAt:Ljava/lang/Throwable;

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;)V
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;-><init>(Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;I)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readLaps:I

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writeLaps:I

    iput v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->allocatedAt:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->connect(Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;)V

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    return-void
.end method

.method private source()Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->source:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Writer side has already been abandoned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->allocatedAt:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    sub-int/2addr v0, v2

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writeLaps:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readLaps:I

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    array-length v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->source:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unconnected pipe"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    invoke-direct {v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->source:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->source:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->source:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unconnected pipe"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->source()Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writeLaps:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readLaps:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    if-eqz v0, :cond_0

    monitor-exit v1

    const/4 v0, -0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :try_start_4
    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    if-le v0, v2, :cond_4

    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    :goto_1
    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    iget v3, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    iget-object v3, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    array-length v3, v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    iget v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readLaps:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readLaps:I

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
