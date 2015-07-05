.class public Lcom/estrongs/old/fs/impl/a/b;
.super Ljava/io/BufferedInputStream;


# instance fields
.field public a:Lorg/apache/commons/net/ftp/FTPClient;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v0, v0, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v0, Lcom/estrongs/old/fs/impl/a/d;

    iput-boolean v2, v0, Lcom/estrongs/old/fs/impl/a/d;->a:Z

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v3, :cond_3

    :try_start_4
    iget-object v3, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    iget-object v3, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v0, v0, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v0, Lcom/estrongs/old/fs/impl/a/d;

    iput-boolean v2, v0, Lcom/estrongs/old/fs/impl/a/d;->a:Z

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/b;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_4
    throw v1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move v1, v2

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_2
.end method
