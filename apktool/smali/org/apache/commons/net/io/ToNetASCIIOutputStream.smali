.class public final Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized write(I)V
    .locals 2

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized write([B)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-gtz p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v1, p2, 0x1

    :try_start_0
    aget-byte v2, p1, p2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p3, v0

    move p2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
