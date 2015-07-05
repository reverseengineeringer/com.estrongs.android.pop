.class public Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;
.super Lcom/estrongs/a/a;


# instance fields
.field fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

.field privacies:Lcom/estrongs/android/util/TypedMap;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/spfs/SPFileObject;Lcom/estrongs/android/util/TypedMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    return-void
.end method


# virtual methods
.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public task()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileObject;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "description"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileObject;->setDescription(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "tags"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->setTags(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "sets"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "sets"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v4, v1, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->addPhoto(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/Album;->description:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/android/pop/spfs/AlbumException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    const/16 v1, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :goto_2
    return v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "sets_delete"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "sets_delete"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v3, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->removePhoto(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "is_public"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->setPerms(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "is_public"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileObject;->setPublicFlag(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "is_friend"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileObject;->setFriendFlag(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->privacies:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "is_family"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileObject;->setFamilyFlag(Z)V

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/estrongs/android/pop/spfs/AlbumException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/AlbumException;->printStackTrace()V

    const/16 v1, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/AlbumException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->setTaskResult(ILjava/lang/Object;)V

    move v0, v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->setTaskResult(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    throw v0
.end method
