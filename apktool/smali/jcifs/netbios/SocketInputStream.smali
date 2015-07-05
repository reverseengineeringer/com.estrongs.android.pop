.class Ljcifs/netbios/SocketInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final TMP_BUFFER_SIZE:I = 0x100


# instance fields
.field private bip:I

.field private header:[B

.field private in:Ljava/io/InputStream;

.field private n:I

.field private ssp:Ljcifs/netbios/SessionServicePacket;

.field private tmp:[B

.field private tot:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-lez v0, :cond_0

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    :cond_2
    :goto_1
    :sswitch_0
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-lez v1, :cond_4

    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    if-lez v1, :cond_0

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    goto :goto_0

    :cond_3
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    add-int/2addr p2, v1

    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr p3, v1

    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-nez p3, :cond_2

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_1
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    if-lez v1, :cond_0

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljcifs/netbios/SessionServicePacket;->readLength([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_2
        0x85 -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized skip(J)J
    .locals 9

    const-wide/16 v0, 0x0

    monitor-enter p0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    move-wide v2, p1

    :goto_1
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    :try_start_0
    iget-object v4, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x100

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Ljcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gez v4, :cond_2

    :cond_1
    sub-long v0, p1, v2

    goto :goto_0

    :cond_2
    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
