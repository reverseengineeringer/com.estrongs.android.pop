.class public Lcom/estrongs/old/fs/impl/a/a;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lorg/apache/commons/net/ftp/FTPFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/old/fs/impl/a/a;->a:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/old/fs/impl/a/a;->setName(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/old/fs/impl/a/a;->isLink:Z

    iput-object p3, p0, Lcom/estrongs/old/fs/impl/a/a;->linkTarget:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected canDelete()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/old/fs/impl/a/a;->canWrite()Z

    move-result v0

    return v0
.end method

.method protected canRead()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/a;->a:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0, v1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v0

    return v0
.end method

.method protected canWrite()Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/a;->a:Lorg/apache/commons/net/ftp/FTPFile;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v0

    return v0
.end method

.method protected doGetFileType()Lcom/estrongs/fs/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/a;->a:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->b()Lcom/estrongs/old/fs/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/old/fs/impl/a/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/old/fs/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/a;->a:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/a;->a:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/a;->a:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v0

    return-wide v0
.end method
