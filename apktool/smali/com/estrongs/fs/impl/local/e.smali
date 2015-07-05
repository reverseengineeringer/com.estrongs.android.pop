.class public Lcom/estrongs/fs/impl/local/e;
.super Ljava/io/InputStream;


# instance fields
.field a:J

.field private b:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/local/e;->a:J

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/local/e;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/estrongs/fs/impl/local/e;->a:J

    iget-object v1, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
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
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/e;->b:Ljava/io/RandomAccessFile;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
