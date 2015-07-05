.class public Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;
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

.field public tags:Ljava/lang/String;

.field public thumbnail_url:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->id:I

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->serverId:I

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->parentId:I

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->path:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->isDir:I

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->hash:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->mtime:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->size:I

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->checktime:I

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->dir_type:I

    iput v1, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->present:I

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->url_id:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    return-void
.end method
