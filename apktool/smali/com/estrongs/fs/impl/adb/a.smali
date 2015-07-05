.class public Lcom/estrongs/fs/impl/adb/a;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lcom/estrongs/fs/impl/adb/e;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/adb/e;)V
    .locals 1

    invoke-static {p1}, Lcom/estrongs/fs/impl/adb/c;->a(Lcom/estrongs/fs/impl/adb/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/fs/impl/adb/a;->a:Lcom/estrongs/fs/impl/adb/e;

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/a;->a:Lcom/estrongs/fs/impl/adb/e;

    iget-object v0, v0, Lcom/estrongs/fs/impl/adb/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/adb/a;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/a;->a:Lcom/estrongs/fs/impl/adb/e;

    iget-object v0, v0, Lcom/estrongs/fs/impl/adb/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/a;->a:Lcom/estrongs/fs/impl/adb/e;

    iget-object v0, v0, Lcom/estrongs/fs/impl/adb/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/a;->a:Lcom/estrongs/fs/impl/adb/e;

    iget v0, v0, Lcom/estrongs/fs/impl/adb/e;->d:I

    return v0
.end method

.method protected canDelete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canRead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canWrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createdTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected doGetFileType()Lcom/estrongs/fs/m;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    return-object v0
.end method

.method public exists()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->b()Lcom/estrongs/old/fs/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/adb/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/old/fs/a;->b(Ljava/lang/String;)Z
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
    .locals 1

    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    return-object v0
.end method

.method public hasPermission(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/adb/a;->canRead()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/adb/a;->canWrite()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/adb/a;->canDelete()Z

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

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/a;->a:Lcom/estrongs/fs/impl/adb/e;

    iget-wide v0, v0, Lcom/estrongs/fs/impl/adb/e;->h:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/a;->a:Lcom/estrongs/fs/impl/adb/e;

    iget-wide v0, v0, Lcom/estrongs/fs/impl/adb/e;->g:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/adb/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
