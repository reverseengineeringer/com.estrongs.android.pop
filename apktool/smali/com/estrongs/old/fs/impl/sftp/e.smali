.class public Lcom/estrongs/old/fs/impl/sftp/e;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lcom/jcraft/jsch/SftpATTRS;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/SftpATTRS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/old/fs/impl/sftp/e;->a:Lcom/jcraft/jsch/SftpATTRS;

    invoke-static {p2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/old/fs/impl/sftp/e;->setName(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/old/fs/impl/sftp/e;->isLink:Z

    iput-object p3, p0, Lcom/estrongs/old/fs/impl/sftp/e;->linkTarget:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected canDelete()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/old/fs/impl/sftp/e;->canWrite()Z

    move-result v0

    return v0
.end method

.method protected canRead()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/old/fs/impl/sftp/e;->a:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canWrite()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/e;->a:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x77

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doGetFileType()Lcom/estrongs/fs/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/e;->a:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastModified()J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/e;->a:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->l()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/e;->a:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v0

    return-wide v0
.end method
