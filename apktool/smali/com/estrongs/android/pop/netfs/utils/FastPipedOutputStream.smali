.class public Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field static final TIMEOUT:I = 0x3e8


# instance fields
.field private final allocatedAt:Ljava/lang/Throwable;

.field sink:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private written:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->written:J

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->allocatedAt:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->written:J

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->allocatedAt:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->connect(Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;-><init>(Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;)V

    return-void
.end method

.method private sink()Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader side has already been abandoned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->allocatedAt:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unconnected pipe"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink()Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    move-result-object v0

    iget-object v1, v0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    invoke-direct {v2}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->flush()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->source:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public flush()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink()Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    move-result-object v0

    iget-object v1, v0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

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

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unconnected pipe"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->sink()Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    move-result-object v1

    iget-object v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Pipe is already closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->closed:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream$ClosedBy;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    monitor-enter v2

    :try_start_0
    iget v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    if-ne v0, v3, :cond_3

    iget v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writeLaps:I

    iget v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readLaps:I

    if-le v0, v3, :cond_3

    iget-object v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    :cond_2
    :goto_0
    if-gtz p3, :cond_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/InterruptedIOException;

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    iget v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    if-ge v0, v3, :cond_5

    iget v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->readPosition:I

    :goto_1
    iget v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    sub-int/2addr v0, v3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    iget v4, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget-object v4, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    array-length v4, v4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    iput v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writePosition:I

    iget v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writeLaps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->writeLaps:I

    :cond_4
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-wide v4, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->written:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;->written:J

    iget-object v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->buffer:[B

    array-length v0, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
