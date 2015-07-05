.class public Lcom/estrongs/fs/impl/p/a;
.super Lcom/estrongs/fs/a;


# instance fields
.field protected a:Z

.field protected b:Z


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/p/a;->a:Z

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/p/a;->b:Z

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/a;->size:J

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->canWrite()Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/p/a;->a:Z

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->canRead()Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/p/a;->b:Z

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getLastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/a;->lastModified:J

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    iput-object v1, p0, Lcom/estrongs/fs/impl/p/a;->type:Lcom/estrongs/fs/m;
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/p/a;->setName(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_2
    sget-object v1, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    iput-object v1, p0, Lcom/estrongs/fs/impl/p/a;->type:Lcom/estrongs/fs/m;
    :try_end_2
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljcifs/smb/SmbException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected canDelete()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/p/a;->canWrite()Z

    move-result v0

    return v0
.end method

.method protected canRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/p/a;->b:Z

    return v0
.end method

.method protected canWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/p/a;->a:Z

    return v0
.end method

.method public exists()Z
    .locals 2

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/p/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/impl/p/a;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/fs/a;->setName(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/p/a;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/impl/p/a;->path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/p/a;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/p/a;->path:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/p/a;->absolutePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/p/a;->absolutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/p/a;->absolutePath:Ljava/lang/String;

    :cond_2
    return-void
.end method
