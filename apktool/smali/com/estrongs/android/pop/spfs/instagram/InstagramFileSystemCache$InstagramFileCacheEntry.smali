.class public Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;
.super Ljava/lang/Object;


# instance fields
.field public checktime:I

.field public description:Ljava/lang/String;

.field public dir_type:I

.field public familyFlag:Z

.field public friendFlag:Z

.field public hash:Ljava/lang/String;

.field public id:I

.field public isDir:I

.field public mtime:I

.field public name:Ljava/lang/String;

.field public notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public ownerId:Ljava/lang/String;

.field public ownerUsername:Ljava/lang/String;

.field public parentId:I

.field public path:Ljava/lang/String;

.field public present:I

.field public publicFlag:Z

.field public serverId:I

.field public size:I

.field public thumbnail_url:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->id:I

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->serverId:I

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->parentId:I

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->hash:Ljava/lang/String;

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->mtime:I

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->size:I

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->checktime:I

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->dir_type:I

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->present:I

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    return-void
.end method
