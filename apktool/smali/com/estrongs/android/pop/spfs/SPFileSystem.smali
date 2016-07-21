.class public Lcom/estrongs/android/pop/spfs/SPFileSystem;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SPFileSystem"

.field private static netfs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/ISPFileSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static netfsName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static netfs_cfg_path:Ljava/lang/String;

.field private static private_cfg_path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfs_cfg_path:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->private_cfg_path:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfsName:Ljava/util/HashMap;

    sget-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfsName:Ljava/util/HashMap;

    const-string v1, "Flickr"

    const-string v2, "com.estrongs.android.pop.spfs.flickr.FlickrFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfsName:Ljava/util/HashMap;

    const-string v1, "Instagram"

    const-string v2, "com.estrongs.android.pop.spfs.instagram.InstagramFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfsName:Ljava/util/HashMap;

    const-string v1, "Facebook"

    const-string v2, "com.estrongs.android.pop.spfs.facebook.FacebookFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfsName:Ljava/util/HashMap;

    const-string v1, "pcs"

    const-string v2, "com.estrongs.android.pop.spfs.pcs.SPPCSFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static addNote(Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)Lcom/gmail/yuyang226/flickr/a/a;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->addNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)Lcom/gmail/yuyang226/flickr/a/a;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static addPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static authenticate(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->addServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static convertToFileInfo(Lcom/estrongs/android/pop/spfs/SPFileInfo;)Lcom/estrongs/fs/c;
    .locals 4

    new-instance v0, Lcom/estrongs/fs/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->readable:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->k:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->writable:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->l:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->hidden:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z

    iget-wide v2, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    iput-wide v2, v0, Lcom/estrongs/fs/c;->j:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    iput-wide v2, v0, Lcom/estrongs/fs/c;->e:J

    return-object v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;
    .locals 3

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-static {p2}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p0, p1, v2}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFile(Ljava/lang/String;Z)Z
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static createThumbnail(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/h/h;->a(Landroid/content/Context;)Lcom/estrongs/android/h/h;

    move-result-object v5

    invoke-static {p1}, Lcom/estrongs/android/util/bg;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v2, v3, v4}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v5, p1, v1}, Lcom/estrongs/android/h/h;->a(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static delServer(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->delServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->deleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deleteFile(Ljava/lang/String;J)Z
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static deleteNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->deleteNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static editNote(Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->editNote(Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAccessTokenParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getAccessTokenParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAccessTokenUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getAccessTokenUrl()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->getAlbums(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/estrongs/fs/a/a;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getAllAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->getAllAlbums(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/estrongs/fs/a/a;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getBuddyIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->getBuddyIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getComments(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 4
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

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->getComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getFileInfo(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getNetFileInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->convertToFileInfo(Lcom/estrongs/android/pop/spfs/SPFileInfo;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getFileInputStream(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 7

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getFileLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFileObject(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileObject;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getNetFileInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/spfs/SPFileObject;-><init>(Lcom/estrongs/android/pop/spfs/SPFileInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFileOutputStream(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    .locals 7

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileSystem(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    sget-object v1, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfsName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez v0, :cond_0

    const-class v0, Lcom/estrongs/android/pop/spfs/SPFileSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfs:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfs_cfg_path:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/spfs/SPFileSystem;->private_cfg_path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->setConfigDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public static getLastErrorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getLastErrorString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getNetFileInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object p0, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getOAuthLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getOAuthLoginUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOAuthVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getOAuthVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getPhotoExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPhotoInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->getPhotoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getRegisterPrepareInfo(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getRegisterPrepareInfo([Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRequestTokenUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getRequestTokenUrl()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getThumbnail(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUserLoginName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->getUserLoginName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->isDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static listFiles(Landroid/content/Context;Ljava/lang/String;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    const-string v1, "MalFormed URL"

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)V

    throw v0

    :cond_1
    invoke-static {p0, v8}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-object v7

    :cond_3
    :try_start_0
    new-instance v5, Lcom/estrongs/android/pop/spfs/SPFileSystem$CacheRefreshCallback;

    invoke-direct {v5}, Lcom/estrongs/android/pop/spfs/SPFileSystem$CacheRefreshCallback;-><init>()V

    invoke-virtual {v5, p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem$CacheRefreshCallback;->setPath(Ljava/lang/String;)V

    move v4, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Lcom/estrongs/android/util/TypedMap;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v5, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    invoke-static {v8, v1, v2, v5}, Lcom/estrongs/android/util/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    new-instance v5, Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-direct {v5, v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;-><init>(Lcom/estrongs/android/pop/spfs/SPFileInfo;)V

    invoke-interface {p3, v5}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->thumbnail_url:Ljava/lang/String;

    invoke-static {v6}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "thumbnail_url"

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->thumbnail_url:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :cond_6
    move-object v0, v3

    :goto_2
    move-object v7, v0

    goto :goto_0

    :cond_7
    move-object v0, v7

    goto :goto_2
.end method

.method public static loadFileSystem(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SPFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t load fs for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    const-string v1, "Not installed"

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_INSTALLED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static mkDirs(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->createFile(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static refreshUI(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    const/16 v0, 0x64

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->register(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static removePhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->removePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static saveUsernameAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/spfs/ISPFileSystem;->saveUserAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/estrongs/android/pop/spfs/SPFileSystem;->netfs_cfg_path:Ljava/lang/String;

    sput-object p1, Lcom/estrongs/android/pop/spfs/SPFileSystem;->private_cfg_path:Ljava/lang/String;

    return-void
.end method

.method public static setPerms(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->setPerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileSystem(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/ISPFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRealPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;->setTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
