.class public Lcom/estrongs/fs/impl/j/a;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lcom/estrongs/android/pop/netfs/NetFileInfo;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/netfs/NetFileInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iput-object p1, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/j/a;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method protected canDelete()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected canRead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canWrite()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/j/a;->canDelete()Z

    move-result v0

    return v0
.end method

.method public createdTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected doGetFileType()Lcom/estrongs/fs/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-object v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileType()Lcom/estrongs/fs/m;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->type:Lcom/estrongs/fs/m;

    sget-object v1, Lcom/estrongs/fs/m;->M:Lcom/estrongs/fs/m;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/j/a;->doGetFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/j/a;->type:Lcom/estrongs/fs/m;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->type:Lcom/estrongs/fs/m;

    return-object v0
.end method

.method public hasPermission(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/j/a;->canRead()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/j/a;->canWrite()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/j/a;->canDelete()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public lastAccessed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-wide v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/j/a;->a:Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-wide v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/j/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
