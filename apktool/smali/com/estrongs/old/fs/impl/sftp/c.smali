.class Lcom/estrongs/old/fs/impl/sftp/c;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Lcom/estrongs/old/fs/impl/sftp/d;

.field private b:Ljava/io/OutputStream;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/estrongs/old/fs/impl/sftp/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->b:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->f:Z

    iput-object p1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->b:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/estrongs/old/fs/impl/sftp/c;->a:Lcom/estrongs/old/fs/impl/sftp/d;

    iput-object p3, p0, Lcom/estrongs/old/fs/impl/sftp/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/old/fs/impl/sftp/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/old/fs/impl/sftp/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-boolean v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/old/fs/impl/sftp/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/old/fs/impl/sftp/c;->a:Lcom/estrongs/old/fs/impl/sftp/d;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->a:Lcom/estrongs/old/fs/impl/sftp/d;

    iget-object v0, v0, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->h()V

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->a:Lcom/estrongs/old/fs/impl/sftp/d;

    iget-object v0, v0, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->a:Lcom/estrongs/old/fs/impl/sftp/d;

    iget-object v1, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp;->h()V

    iget-object v1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->a:Lcom/estrongs/old/fs/impl/sftp/d;

    iget-object v1, v1, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->b()V

    throw v0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->f:Z

    throw v0
.end method

.method public write(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->f:Z

    throw v0
.end method

.method public write([B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->f:Z

    throw v0
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/old/fs/impl/sftp/c;->f:Z

    throw v0
.end method
