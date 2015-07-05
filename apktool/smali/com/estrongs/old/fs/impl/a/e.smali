.class public Lcom/estrongs/old/fs/impl/a/e;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final a:Lorg/apache/commons/net/ftp/FTPClient;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/estrongs/old/fs/impl/a/e;->a:Lorg/apache/commons/net/ftp/FTPClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/e;->a:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/e;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v0, v0, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/e;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v0, Lcom/estrongs/old/fs/impl/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/old/fs/impl/a/d;->a:Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/e;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/e;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/e;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
