.class public abstract Lcom/estrongs/fs/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/h;


# instance fields
.field protected absolutePath:Ljava/lang/String;

.field protected esType:I

.field protected extras:Lcom/estrongs/android/util/TypedMap;

.field protected isLink:Z

.field protected isShouldTryLoadThumbnail:Z

.field protected lastAccessed:J

.field protected lastModified:J

.field protected linkTarget:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected size:J

.field protected type:Lcom/estrongs/fs/w;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/estrongs/fs/w;->L:Lcom/estrongs/fs/w;

    iput-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    iput-wide v2, p0, Lcom/estrongs/fs/a;->size:J

    iput-wide v2, p0, Lcom/estrongs/fs/a;->lastModified:J

    iput-wide v2, p0, Lcom/estrongs/fs/a;->lastAccessed:J

    iput-object v1, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/a;->isLink:Z

    iput-object v1, p0, Lcom/estrongs/fs/a;->linkTarget:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/fs/a;->esType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/a;->isShouldTryLoadThumbnail:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/estrongs/fs/w;->L:Lcom/estrongs/fs/w;

    iput-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    iput-wide v2, p0, Lcom/estrongs/fs/a;->size:J

    iput-wide v2, p0, Lcom/estrongs/fs/a;->lastModified:J

    iput-wide v2, p0, Lcom/estrongs/fs/a;->lastAccessed:J

    iput-object v1, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/a;->isLink:Z

    iput-object v1, p0, Lcom/estrongs/fs/a;->linkTarget:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/fs/a;->esType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/a;->isShouldTryLoadThumbnail:Z

    iput-object p1, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/estrongs/fs/w;->L:Lcom/estrongs/fs/w;

    iput-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    iput-wide v2, p0, Lcom/estrongs/fs/a;->size:J

    iput-wide v2, p0, Lcom/estrongs/fs/a;->lastModified:J

    iput-wide v2, p0, Lcom/estrongs/fs/a;->lastAccessed:J

    iput-object v1, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/a;->isLink:Z

    iput-object v1, p0, Lcom/estrongs/fs/a;->linkTarget:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/fs/a;->esType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/a;->isShouldTryLoadThumbnail:Z

    iput-object p1, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/w;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    return-void
.end method


# virtual methods
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

    const/4 v0, 0x1

    return v0
.end method

.method public createdTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/a;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method protected doGetFileType()Lcom/estrongs/fs/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getESFileType()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/a;->esType:I

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileType()Lcom/estrongs/fs/w;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    sget-object v1, Lcom/estrongs/fs/w;->L:Lcom/estrongs/fs/w;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/a;->doGetFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    return-object v0
.end method

.method public getLinkTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a;->linkTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPermission(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/estrongs/fs/a;->canRead()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/estrongs/fs/a;->canWrite()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/estrongs/fs/a;->canDelete()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isLink()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/a;->isLink:Z

    return v0
.end method

.method public lastAccessed()J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/fs/a;->lastAccessed:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/a;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/a;->lastAccessed:J

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/fs/a;->lastAccessed:J

    return-wide v0
.end method

.method public lastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/a;->lastModified:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/a;->size:J

    return-wide v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/a;->extras:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    return-object v0
.end method

.method public setESFileType(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/a;->esType:I

    return-void
.end method

.method public setFileType(Lcom/estrongs/fs/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/a;->type:Lcom/estrongs/fs/w;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/a;->path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/a;->absolutePath:Ljava/lang/String;

    :cond_3
    iput-object p1, p0, Lcom/estrongs/fs/a;->name:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/fs/a;->esType:I

    goto :goto_0
.end method

.method public setShouldTryLoadThumbnail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/a;->isShouldTryLoadThumbnail:Z

    return-void
.end method

.method public shouldTryLoadThumbnail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/a;->isShouldTryLoadThumbnail:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
