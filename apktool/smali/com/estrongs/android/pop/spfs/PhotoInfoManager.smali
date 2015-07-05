.class public Lcom/estrongs/android/pop/spfs/PhotoInfoManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->addComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static addNote(Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)Lcom/gmail/yuyang226/flickr/a/a;
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->addNote(Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)Lcom/gmail/yuyang226/flickr/a/a;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static addPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->addPhoto(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;
    .locals 1

    invoke-static {p2}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->deleteComment(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->deleteNote(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static editNote(Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->editNote(Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getAllAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getAllAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getBuddyIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getBuddyIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getComments(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a/a/a;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getComments(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getPhotoInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getPhotoInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static removePhoto(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->removePhoto(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removePhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->removePhoto(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static setPerms(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->setPerms(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static setTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->setTags(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method
