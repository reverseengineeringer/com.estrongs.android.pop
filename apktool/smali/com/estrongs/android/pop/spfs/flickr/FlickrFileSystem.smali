.class public Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/spfs/ISPFileSystem;
.implements Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "Flickr.cfg"

.field private static final CONFIG_SPLIT:Ljava/lang/String; = "#####"

.field private static final DATE_FORMATS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_API_HOST:Ljava/lang/String; = "api.flickr.com"

.field public static final DEFAULT_HOST:Ljava/lang/String; = "www.flickr.com"

.field private static final HTTP_AUTH_FAIL:I = 0x191

.field private static final KEY_API_KEY:Ljava/lang/String; = "api_key"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field public static final METHOD_ADD_COMMENT:Ljava/lang/String; = "flickr.photos.comments.addComment"

.field public static final METHOD_ADD_COMMENT_To_PHOTOSET:Ljava/lang/String; = "flickr.photosets.comments.addComment"

.field public static final METHOD_ADD_NOTE:Ljava/lang/String; = "flickr.photos.notes.add"

.field public static final METHOD_ADD_PHOTO_TO_PHOTOSET:Ljava/lang/String; = "flickr.photosets.addPhoto"

.field public static final METHOD_CREATE_PHOTOSET:Ljava/lang/String; = "flickr.photosets.create"

.field public static final METHOD_DELETE:Ljava/lang/String; = "flickr.photos.delete"

.field public static final METHOD_DELETE_COMMENT:Ljava/lang/String; = "flickr.photos.comments.deleteComment"

.field public static final METHOD_DELETE_COMMENT_OF_PHOTOSET:Ljava/lang/String; = "flickr.photosets.comments.deleteComment"

.field public static final METHOD_DELETE_NOTE:Ljava/lang/String; = "flickr.photos.notes.delete"

.field public static final METHOD_DELETE_PHOTOSET:Ljava/lang/String; = "flickr.photosets.delete"

.field public static final METHOD_EDIT_COMMENT:Ljava/lang/String; = "flickr.photos.comments.editComment"

.field public static final METHOD_EDIT_META_OF_PHOTOSET:Ljava/lang/String; = "flickr.photosets.editMeta"

.field public static final METHOD_EDIT_NOTE:Ljava/lang/String; = "flickr.photos.notes.edit"

.field public static final METHOD_FIND_BY_EMAIL:Ljava/lang/String; = "flickr.people.findByEmail"

.field public static final METHOD_FIND_BY_USERNAME:Ljava/lang/String; = "flickr.people.findByUsername"

.field public static final METHOD_GET_ALL_CONTEXTS:Ljava/lang/String; = "flickr.photos.getAllContexts"

.field public static final METHOD_GET_COMMENTS_OF_PHOTOSET:Ljava/lang/String; = "flickr.photosets.comments.getList"

.field public static final METHOD_GET_COMMENT_LIST:Ljava/lang/String; = "flickr.photos.comments.getList"

.field public static final METHOD_GET_INFO:Ljava/lang/String; = "flickr.people.getInfo"

.field public static final METHOD_GET_INTERESTING_LIST:Ljava/lang/String; = "flickr.interestingness.getList"

.field public static final METHOD_GET_ONLINE_LIST:Ljava/lang/String; = "flickr.people.getOnlineList"

.field public static final METHOD_GET_PHOTOS:Ljava/lang/String; = "flickr.people.getPhotos"

.field public static final METHOD_GET_PHOTOSET_LIST:Ljava/lang/String; = "flickr.photosets.getList"

.field public static final METHOD_GET_PHOTOSET_PHOTO_LIST:Ljava/lang/String; = "flickr.photosets.getPhotos"

.field public static final METHOD_GET_PHOTO_INFO:Ljava/lang/String; = "flickr.photos.getInfo"

.field public static final METHOD_GET_PUBLIC_GROUPS:Ljava/lang/String; = "flickr.people.getPublicGroups"

.field public static final METHOD_GET_PUBLIC_PHOTOS:Ljava/lang/String; = "flickr.people.getPublicPhotos"

.field public static final METHOD_GET_RECENT:Ljava/lang/String; = "flickr.photos.comments.getRecentForContacts"

.field public static final METHOD_GET_UPLOAD_STATUS:Ljava/lang/String; = "flickr.people.getUploadStatus"

.field public static final METHOD_REMOVE_PHOTO_FROM_PHOTOSET:Ljava/lang/String; = "flickr.photosets.removePhoto"

.field public static final METHOD_SET_META:Ljava/lang/String; = "flickr.photos.setMeta"

.field public static final METHOD_SET_PERMS:Ljava/lang/String; = "flickr.photos.setPerms"

.field public static final METHOD_SET_TAGS:Ljava/lang/String; = "flickr.photos.setTags"

.field public static final MIN_EXTRAS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORIGINAL_FORMAT:Ljava/lang/String; = "original_format"

.field public static final OWNER_NAME:Ljava/lang/String; = "owner_name"

.field public static final PARAMETER_MAX_COMMENT_DATE:Ljava/lang/String; = "maxCommentDate"

.field public static final PARAMETER_MIN_COMMENT_DATE:Ljava/lang/String; = "minCommentDate"

.field public static final PARAM_OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field public static final PRIVACY_LEVEL_NO_FILTER:I = 0x0

.field public static final UPLOAD_PATH:Ljava/lang/String; = "/services/upload/"

.field public static final URL_ACCESS_TOKEN:Ljava/lang/String; = "http://www.flickr.com/services/oauth/access_token"

.field private static final URL_REQUEST_TOKEN:Ljava/lang/String; = "http://www.flickr.com/services/oauth/request_token"

.field public static final URL_UPLOAD:Ljava/lang/String; = "http://api.flickr.com/services/upload/"

.field private static final apiKey:Ljava/lang/String; = "09cfe7214aec69fbda2b044b64305055"

.field private static final sharedSecret:Ljava/lang/String; = "be578355f122df0a"


# instance fields
.field private final STAT_NET_TYPE_FLICKR:I

.field private final TAG:Ljava/lang/String;

.field private access_tokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;",
            ">;"
        }
    .end annotation
.end field

.field private access_tokens_type:Ljava/util/HashMap;
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

.field private callbackUrl:Ljava/lang/String;

.field formatter:Ljava/text/SimpleDateFormat;

.field private lastErrorString:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private private_storePath:Ljava/lang/String;

.field private storePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->MIN_EXTRAS:Ljava/util/Set;

    sget-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->MIN_EXTRAS:Ljava/util/Set;

    const-string v1, "original_format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->MIN_EXTRAS:Ljava/util/Set;

    const-string v1, "owner_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$1;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$1;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->DATE_FORMATS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Flickr"

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->TAG:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->STAT_NET_TYPE_FLICKR:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens_type:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->storePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->private_storePath:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->formatter:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->lastErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->locale:Ljava/lang/String;

    const-string v0, "http://www.estrongs.com"

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->callbackUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->upload(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addOAuthParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Lcom/gmail/yuyang226/flickr/oauth/a;->a(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->signPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private addOAuthToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "oauth_token"

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->token:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photosets.addPhoto"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "photoset_id"

    invoke-direct {v1, v2, p2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "photo_id"

    invoke-direct {v1, v2, p3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private dateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->DATE_FORMATS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getServerId(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getPathId(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getFile(II)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    goto :goto_0
.end method

.method private getChildValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFileCacheEntry(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;
    .locals 12

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    iget v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v0, v5, :cond_11

    const/4 v0, 0x0

    iput v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    :goto_0
    const-string v0, "url_l"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v0, "url_m"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v0, "url_q"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "url_sq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    :cond_6
    const-string v0, "url_q"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    const-string v0, "url_m"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    const-string v0, "url_l"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const-string v0, "url_sq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    :cond_d
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v4, "_content"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    if-eqz p3, :cond_16

    iget v4, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v4, v5, :cond_14

    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    :goto_3
    const-string v0, "1"

    const-string v4, "ispublic"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->publicFlag:Z

    const-string v0, "1"

    const-string v4, "isfriend"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->friendFlag:Z

    const-string v0, "1"

    const-string v4, "isfamily"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->familyFlag:Z

    const-string v0, "description"

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getChildValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v4, "<[^>]*>"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\[http://[^]]*\\]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->description:Ljava/lang/String;

    const-string v0, "dateupload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getDatePosted(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    const-string v0, "dates"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v4, "posted"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getDatePosted(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    :cond_f
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "owner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_17

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "nsid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerId:Ljava/lang/String;

    const-string v4, "username"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerUsername:Ljava/lang/String;

    :cond_10
    :goto_4
    const-string v0, "notes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_18

    const-string v5, "note"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v0, v3

    :goto_5
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_18

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/gmail/yuyang226/flickr/a/a;

    invoke-direct {v7}, Lcom/gmail/yuyang226/flickr/a/a;-><init>()V

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gmail/yuyang226/flickr/a/a;->a(Ljava/lang/String;)V

    const-string v8, "author"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gmail/yuyang226/flickr/a/a;->b(Ljava/lang/String;)V

    const-string v8, "authorname"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gmail/yuyang226/flickr/a/a;->c(Ljava/lang/String;)V

    const-string v8, "x"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "y"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "w"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "h"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/gmail/yuyang226/flickr/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/gmail/yuyang226/flickr/a/a;->d(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, -0x1

    iput v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    :goto_6
    return-object v0

    :cond_12
    :try_start_1
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_14
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    goto/16 :goto_3

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_16
    iput-object p2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    goto/16 :goto_3

    :cond_17
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerId:Ljava/lang/String;

    const-string v0, "ownername"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerUsername:Ljava/lang/String;

    goto/16 :goto_4

    :cond_18
    iput-object v4, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->notes:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/json/JSONObject;

    if-eqz v5, :cond_19

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "tag"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1a

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/gmail/yuyang226/flickr/b/a;

    invoke-direct {v6}, Lcom/gmail/yuyang226/flickr/b/a;-><init>()V

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gmail/yuyang226/flickr/b/a;->a(Ljava/lang/String;)V

    const-string v7, "author"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gmail/yuyang226/flickr/b/a;->b(Ljava/lang/String;)V

    const-string v7, "raw"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gmail/yuyang226/flickr/b/a;->c(Ljava/lang/String;)V

    const-string v7, "_content"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/gmail/yuyang226/flickr/b/a;->d(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_19
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v3

    :goto_9
    array-length v3, v5

    if-ge v0, v3, :cond_1a

    new-instance v3, Lcom/gmail/yuyang226/flickr/b/a;

    invoke-direct {v3}, Lcom/gmail/yuyang226/flickr/b/a;-><init>()V

    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Lcom/gmail/yuyang226/flickr/b/a;->d(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    iput-object v4, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->tags:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_a
    move-object v0, v1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->tags:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a
.end method

.method private getFolderId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/me/skydrive"

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Flickr"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->tokenSecret:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photos.getInfo"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photo_id"

    invoke-direct {v2, v3, p3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "secret"

    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v0, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http://farm%1$s.static.flickr.com/%2$s/%3$s_%4$s.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "farm"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "server"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "secret"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getPhotosByAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;III)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;III)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photosets.getPhotos"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "photoset_id"

    invoke-direct {v1, v2, p2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez p5, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "per_page"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez p6, :cond_1

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "page"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez p4, :cond_2

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "privacy_filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "extras"

    const-string v3, ","

    invoke-static {p3, v3}, Lcom/gmail/yuyang226/flickr/d/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getPhotosByMe(Ljava/lang/String;Ljava/util/Set;II)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.people.getPhotos"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "user_id"

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->id:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez p3, :cond_0

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "per_page"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez p4, :cond_1

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "page"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "extras"

    const-string v4, ","

    invoke-static {p2, v4}, Lcom/gmail/yuyang226/flickr/d/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_token"

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->token:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "be578355f122df0a"

    invoke-direct {p0, v2, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Flickr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_3
    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhotosByPublic(Ljava/lang/String;Ljava/util/Set;II)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.interestingness.getList"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "api_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "date"

    invoke-direct {v1, v2, p1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "extras"

    const-string v3, ","

    invoke-static {p2, v3}, Lcom/gmail/yuyang226/flickr/d/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez p3, :cond_2

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "per_page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-lez p4, :cond_3

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "page"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://www.flickr.com/services/rest"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->get(Ljava/net/URL;Ljava/util/List;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getPhotosets(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->id:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photosets.getList"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "user_id"

    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getServerId(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Flickr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getServerId(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->addServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getServerId(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->loadTokens()Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method private getTokenType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens_type:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens_type:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Bearer"

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadTokens()Z
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->private_storePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Flickr.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "#####"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-object v11, v1, v0

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;-><init>(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    :goto_1
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object v8, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-exit v1

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private post(Ljava/util/List;)Lcom/gmail/yuyang226/flickr/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;)",
            "Lcom/gmail/yuyang226/flickr/c;"
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    const-string v1, "http://www.flickr.com:80/services/rest"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/spfs/OAuthUtil;->sendPost(Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gmail/yuyang226/flickr/b;

    invoke-direct {v1, v0}, Lcom/gmail/yuyang226/flickr/b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gmail/yuyang226/flickr/c;"
        }
    .end annotation

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "nojsoncallback"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "http://www.flickr.com/services/rest"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->post(Ljava/util/List;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    return-object v0
.end method

.method private removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private removePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photosets.removePhoto"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "photoset_id"

    invoke-direct {v1, v2, p2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "photo_id"

    invoke-direct {v1, v2, p3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private removeToken(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveTokens()Z
    .locals 6

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->private_storePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Flickr.cfg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#####"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#####"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->token:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#####"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return v0

    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    :try_start_4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p5, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->tokenSecret:Ljava/lang/String;

    invoke-static {p1, p2, p4, p3, v0}, Lcom/gmail/yuyang226/flickr/oauth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_signature"

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private signPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private upload(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gmail/yuyang226/flickr/c;"
        }
    .end annotation

    const-string v0, "http://api.flickr.com/services/upload/"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    const-string v1, "http://api.flickr.com:80/services/upload/"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->sendUpload(Ljava/net/URL;Ljava/util/List;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    return-object v0
.end method

.method private writeParam(Lcom/gmail/yuyang226/flickr/a;Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/gmail/yuyang226/flickr/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/gmail/yuyang226/flickr/c/a;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/gmail/yuyang226/flickr/c/a;

    invoke-virtual {p1}, Lcom/gmail/yuyang226/flickr/a;->b()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Content-Disposition: form-data; name=\"%s\"; filename=\"%s\";\r\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/c/a;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Content-Type: image/%s\r\n\r\n"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/c/a;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    instance-of v0, v1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    const/16 v1, 0x200

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p2, v1, v6, v2}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    instance-of v0, v1, [B

    if-eqz v0, :cond_1

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write([B)V

    :cond_1
    :goto_1
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gmail/yuyang226/flickr/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_1
.end method


# virtual methods
.method public addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for add comment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "Flickr"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v2, v5, :cond_2

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photosets.comments.addComment"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v2, v5, :cond_3

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photoset_id"

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "comment_text"

    invoke-direct {v1, v2, p4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photos.comments.addComment"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photo_id"

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public addNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)Lcom/gmail/yuyang226/flickr/a/a;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for add note"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p4, v0

    :goto_0
    return-object p4

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "Flickr"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p4, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photos.notes.add"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photo_id"

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Lcom/gmail/yuyang226/flickr/a/a;->b()Lcom/gmail/yuyang226/flickr/a/b;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_x"

    iget v4, v1, Lcom/gmail/yuyang226/flickr/a/b;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_y"

    iget v4, v1, Lcom/gmail/yuyang226/flickr/a/b;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_w"

    iget v4, v1, Lcom/gmail/yuyang226/flickr/a/b;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_h"

    iget v1, v1, Lcom/gmail/yuyang226/flickr/a/b;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p4}, Lcom/gmail/yuyang226/flickr/a/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_text"

    invoke-direct {v2, v3, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_1
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "note"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/gmail/yuyang226/flickr/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Flickr"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@Flickr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->addServer(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public convertToCacheEntry(Lcom/estrongs/android/pop/spfs/SPFileInfo;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;
    .locals 6

    new-instance v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    iget-wide v2, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    iget-wide v2, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    iget-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "/"

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convertToFileInfo(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;

    invoke-direct {v2}, Lcom/estrongs/android/pop/spfs/SPFileInfo;-><init>()V

    iget-object v3, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    iget-wide v4, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->readable:Z

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->writable:Z

    iget-object v3, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->hidden:Z

    iget v3, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v3, v0, :cond_1

    :goto_1
    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    iget v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->size:I

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    iput v1, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->folder_type:I

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->publicFlag:Z

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->publicFlag:Z

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->friendFlag:Z

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->friendFlag:Z

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->familyFlag:Z

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->familyFlag:Z

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->notes:Ljava/util/List;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->notes:Ljava/util/List;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->tags:Ljava/util/List;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->tags:Ljava/util/List;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->description:Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerId:Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerId:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerUsername:Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerUsername:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->moveCopyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photosets.create"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "title"

    invoke-direct {v1, v2, p2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "description"

    invoke-direct {v1, v2, p3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "primary_photo_id"

    invoke-direct {v1, v2, p4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "photoset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/Album;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/estrongs/android/pop/spfs/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public delServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->loadTokens()Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@Flickr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->delServer(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->saveTokens()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public deleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Flickr"

    const-string v1, "can\'t get cache entry for delete comment"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Flickr"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/gmail/yuyang226/flickr/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photosets.comments.deleteComment"

    invoke-direct {v0, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v0, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "comment_id"

    invoke-direct {v0, v2, p4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/gmail/yuyang226/flickr/oauth/OAuthException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_4

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_2
    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photos.comments.deleteComment"

    invoke-direct {v0, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/gmail/yuyang226/flickr/oauth/OAuthException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for delete"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "Flickr"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v3, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v3, v1, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "method"

    const-string v6, "flickr.photosets.delete"

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "oauth_consumer_key"

    const-string v6, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "photoset_id"

    iget-object v6, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v4, "be578355f122df0a"

    invoke-direct {p0, v4, v3, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v3}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "method"

    const-string v6, "flickr.photos.delete"

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "oauth_consumer_key"

    const-string v6, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "photo_id"

    iget-object v6, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v4, "be578355f122df0a"

    invoke-direct {p0, v4, v3, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v3}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v3

    iget v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    invoke-virtual {v3, v2, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->deleteFile(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public deleteNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photos.notes.delete"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "note_id"

    invoke-direct {v1, v2, p3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/gmail/yuyang226/flickr/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photos.comments.editComment"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "comment_id"

    invoke-direct {v1, v2, p3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "comment_text"

    invoke-direct {v1, v2, p4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/gmail/yuyang226/flickr/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public editNote(Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "method"

    const-string v3, "flickr.photos.notes.edit"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "note_id"

    invoke-virtual {p3}, Lcom/gmail/yuyang226/flickr/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/gmail/yuyang226/flickr/a/a;->b()Lcom/gmail/yuyang226/flickr/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_x"

    iget v4, v1, Lcom/gmail/yuyang226/flickr/a/b;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_y"

    iget v4, v1, Lcom/gmail/yuyang226/flickr/a/b;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_w"

    iget v4, v1, Lcom/gmail/yuyang226/flickr/a/b;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_h"

    iget v1, v1, Lcom/gmail/yuyang226/flickr/a/b;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3}, Lcom/gmail/yuyang226/flickr/a/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "note_text"

    invoke-direct {v2, v3, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/gmail/yuyang226/flickr/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method public exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/net/URL;Ljava/util/List;)Lcom/gmail/yuyang226/flickr/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;)",
            "Lcom/gmail/yuyang226/flickr/c;"
        }
    .end annotation

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "nojsoncallback"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lcom/estrongs/android/pop/spfs/OAuthUtil;->getLine(Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gmail/yuyang226/flickr/b;

    invoke-direct {v1, v0}, Lcom/gmail/yuyang226/flickr/b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getAccessTokenParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v0, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_token"

    invoke-direct {v0, v2, p1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_verifier"

    invoke-direct {v0, v2, p3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/gmail/yuyang226/flickr/oauth/a;->a(Ljava/util/List;)V

    :try_start_0
    const-string v0, "POST"

    const-string v2, "http://www.flickr.com/services/oauth/access_token"

    const-string v3, "be578355f122df0a"

    invoke-static {v0, v2, v1, v3, p2}, Lcom/gmail/yuyang226/flickr/oauth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_signature"

    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/FlickrException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccessTokenUrl()Ljava/net/URL;
    .locals 3

    :try_start_0
    const-string v0, "www.flickr.com"

    const/16 v1, 0x50

    const-string v2, "/services/oauth/access_token"

    invoke-static {v0, v1, v2}, Lcom/gmail/yuyang226/flickr/d/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbums(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for get albums"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v1, "Flickr"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/gmail/yuyang226/flickr/a;

    const-string v4, "method"

    const-string v5, "flickr.photos.getAllContexts"

    invoke-direct {v3, v4, v5}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/gmail/yuyang226/flickr/a;

    const-string v4, "photo_id"

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v1, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v2, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "set"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/estrongs/android/pop/spfs/Album;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v4, v3, v6, v7}, Lcom/estrongs/android/pop/spfs/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getAllAlbums(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x1f4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPhotosets(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "photosets"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "photoset"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/spfs/Album;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-direct {p0, v3, v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getChildValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "description"

    invoke-direct {p0, v3, v7}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getChildValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/estrongs/android/pop/spfs/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method public getBuddyIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/buddyicons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    const-string v0, "minCommentDate"

    invoke-virtual {p4, v0}, Lcom/estrongs/android/util/TypedMap;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "maxCommentDate"

    invoke-virtual {p4, v1}, Lcom/estrongs/android/util/TypedMap;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "Flickr"

    const-string v1, "can\'t get cache entry for get comments"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Flickr"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "method"

    const-string v4, "flickr.photosets.comments.getList"

    invoke-direct {v0, v1, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "api_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v0, v1, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "photoset_id"

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/net/URL;

    const-string v1, "http://www.flickr.com:80/services/rest"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->get(Ljava/net/URL;Ljava/util/List;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "method"

    const-string v6, "flickr.photos.comments.getList"

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "oauth_consumer_key"

    const-string v6, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v4, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "photo_id"

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v4, "min_comment_date"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct {v2, v4, v6, v7}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "max_comment_date"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {v0, v2, v4, v5}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v3, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_7

    new-instance v4, Lcom/gmail/yuyang226/flickr/a/a/a;

    invoke-direct {v4}, Lcom/gmail/yuyang226/flickr/a/a/a;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->c(Ljava/lang/String;)V

    const-string v5, "author"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->a(Ljava/lang/String;)V

    const-string v5, "authorname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->b(Ljava/lang/String;)V

    const-string v5, "permalink"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->d(Ljava/lang/String;)V

    const-string v5, "datecreate"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v5, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->a(Ljava/util/Date;)V

    const-string v5, "_content"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v5, "<[^>]*>"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\\[http://[^]]*\\]"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v4, v1}, Lcom/gmail/yuyang226/flickr/a/a/a;->e(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getDatePosted(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->convertToFileInfo(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v1

    iget-wide v4, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :try_start_1
    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/ESURLUtil;->getLength(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v3, Lcom/estrongs/android/pop/netfs/NetFsException;

    invoke-direct {v3, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v3, Lcom/estrongs/android/pop/netfs/NetFsException;

    invoke-direct {v3, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public getFileInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for InputStream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-eqz v1, :cond_3

    const-string v1, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xce

    if-eq v2, v3, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_5

    const-string v2, "Flickr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInputStream ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getFileLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    goto :goto_0
.end method

.method public getFileOutputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    .locals 12

    const/4 v10, 0x0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "oauth_consumer_key"

    const-string v6, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "title"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v2, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "title"

    invoke-direct {v5, v6, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "description"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "description"

    invoke-direct {v5, v6, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "tags"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "tags"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "tags"

    const-string v6, "tags"

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "is_public"

    const-string v2, "is_public"

    const/4 v7, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v7}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "1"

    :goto_1
    invoke-direct {v5, v6, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "is_family"

    const-string v2, "is_family"

    const/4 v7, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v7}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "1"

    :goto_2
    invoke-direct {v5, v6, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "is_friend"

    const-string v2, "is_friend"

    const/4 v7, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v7}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "1"

    :goto_3
    invoke-direct {v5, v6, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v5, "async"

    const-string v6, "0"

    invoke-direct {v2, v5, v6}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-direct {v6}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;-><init>()V

    new-instance v9, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;

    move-wide/from16 v0, p4

    invoke-direct {v9, v0, v1}, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v9, v6}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->connect(Lcom/estrongs/android/pop/netfs/utils/FastPipedOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v2, Lcom/gmail/yuyang226/flickr/c/a;

    invoke-direct {v2, v3, v9}, Lcom/gmail/yuyang226/flickr/c/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v7, p6

    move-object v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;-><init>(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/util/List;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;Lcom/estrongs/android/util/TypedMap;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;)V

    invoke-virtual {v6, v2, v9}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setTask(Ljava/lang/Thread;Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_4
    return-object v6

    :cond_5
    move-object v2, v3

    goto/16 :goto_0

    :cond_6
    const-string v2, "0"

    goto :goto_1

    :cond_7
    const-string v2, "0"

    goto :goto_2

    :cond_8
    const-string v2, "0"

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v2, "Flickr"

    const-string v3, "Can\'t create pipe stream"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v10

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v6, v10

    goto :goto_4
.end method

.method public getLastErrorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->lastErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$MySSLSocketFactory;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$MySSLSocketFactory;-><init>(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    const/16 v0, 0x7530

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v0, 0x7530

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public getOAuthLoginUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "oauth_token"

    invoke-direct {v1, v2, p1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "perms"

    const-string v3, "delete"

    invoke-direct {v1, v2, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x50

    const-string v2, "/services/oauth/authorize"

    :try_start_0
    const-string v3, "www.flickr.com"

    invoke-static {v3, v1, v2, v0}, Lcom/gmail/yuyang226/flickr/d/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOAuthVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0a"

    return-object v0
.end method

.method public getPhotoExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "Flickr"

    const-string v1, "can\'t get cache entry for get photo extension"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPhotoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for get photo info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "Flickr"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->tokenSecret:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/gmail/yuyang226/flickr/a;

    const-string v4, "method"

    const-string v5, "flickr.photos.getInfo"

    invoke-direct {v3, v4, v5}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/gmail/yuyang226/flickr/a;

    const-string v4, "photo_id"

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    new-instance v1, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "secret"

    invoke-direct {v1, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v1, "oauth_consumer_key"

    const-string v3, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v0, v1, v3}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v2, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getFileCacheEntry(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->convertToFileInfo(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getRegisterPrepareInfo([Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestTokenUrl()Ljava/net/URL;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_callback"

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->callbackUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/gmail/yuyang226/flickr/oauth/a;->a(Ljava/util/List;)V

    :try_start_0
    const-string v2, "GET"

    const-string v3, "http://www.flickr.com/services/oauth/request_token"

    const-string v4, "be578355f122df0a"

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/gmail/yuyang226/flickr/oauth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gmail/yuyang226/flickr/a;

    const-string v4, "oauth_signature"

    invoke-direct {v3, v4, v2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "www.flickr.com"

    const/16 v3, 0x50

    const-string v4, "/services/oauth/request_token"

    invoke-static {v2, v3, v4, v1}, Lcom/gmail/yuyang226/flickr/d/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Ljava/net/URL;
    :try_end_0
    .catch Lcom/gmail/yuyang226/flickr/FlickrException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/gmail/yuyang226/flickr/FlickrException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for InputStream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v1, "Flickr"

    const-string v2, "can\'t get token download"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_4

    const-string v2, "Flickr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInputStream ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getUserLoginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, v2, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Lcom/estrongs/android/util/TypedMap;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/estrongs/android/pop/netfs/INetRefreshCallback;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/SPFileInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/estrongs/android/pop/netfs/INetRefreshCallback;",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/SPFileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getServerId(Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->listFilesInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->convertToFileInfo(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public listFilesInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->listFilesInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public listFilesInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getServerId(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v7

    :try_start_0
    const-string v0, "per_page"

    const-wide/16 v2, 0xa

    invoke-virtual {p5, v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v5

    const-string v0, "page"

    const-wide/16 v2, 0x1

    invoke-virtual {p5, v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v0, "url_sq"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "url_q"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "url_m"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "url_l"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "views"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "description"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "date_upload"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "owner_name"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "mine"

    const-string v4, "content_type"

    invoke-virtual {p5, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1

    const-string v2, "mine"

    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, v3, v5, v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPhotosByMe(Ljava/lang/String;Ljava/util/Set;II)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "photos"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez v2, :cond_6

    :goto_1
    return-object v0

    :cond_1
    const-string v2, "hot"

    const-string v4, "content_type"

    invoke-virtual {p5, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    const-string v2, "hot"

    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v0, "date"

    invoke-virtual {p5, v0}, Lcom/estrongs/android/util/TypedMap;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPhotosByPublic(Ljava/lang/String;Ljava/util/Set;II)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "photos"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v2, "album"

    const-string v4, "content_type"

    invoke-virtual {p5, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_f

    const-string v2, "album"

    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_4
    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1, v5, v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPhotosets(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "photosets"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    invoke-static {p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPhotosByAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;III)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "photoset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_9

    const-string v1, "photoset"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_b

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    const/4 v1, 0x1

    iput v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const-string v1, "id"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const-string v1, "primary"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url:Ljava/lang/String;

    const-string v1, "date_create"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getDatePosted(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->mtime:I

    const-string v1, "owner"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "owner"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerId:Ljava/lang/String;

    :cond_7
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;->id:Ljava/lang/String;

    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerId:Ljava/lang/String;

    iput-object p1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->ownerUsername:Ljava/lang/String;

    const-string v1, "title"

    invoke-direct {p0, v4, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getChildValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;

    const-string v1, "description"

    invoke-direct {p0, v4, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getChildValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->description:Ljava/lang/String;

    iget-object v1, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v5, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    const-string v1, "page"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "pages"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "perpage"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "total"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "photo"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_4
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, p3, v4}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getFileCacheEntry(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v4, v3, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    if-nez v7, :cond_e

    new-instance v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    invoke-direct {v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;-><init>()V

    iput v8, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->serverId:I

    iput-object p3, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->path:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    const-string v2, "/"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    iput v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I

    :goto_5
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->addFile(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)V

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v1

    invoke-virtual {v1, v8, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getFile(ILjava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v1

    :goto_6
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v2

    iget v3, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->id:I

    const/4 v1, 0x1

    if-le v6, v1, :cond_d

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {v2, v8, v3, v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->updateFiles(IILjava/util/HashMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/estrongs/android/pop/netfs/NetFsException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->getPathId(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->parentId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    :cond_e
    move-object v1, v7

    goto :goto_6

    :cond_f
    move-object v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method public mkDirs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public moveCopyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->moveCopyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "error"

    const-string v2, "Unknown Error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public removePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Flickr"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->removePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/AlbumException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "Flickr"

    const-string v2, "can\'t get cache entry for rename"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p4}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "method"

    const-string v7, "flickr.photos.setMeta"

    invoke-direct {v5, v6, v7}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "oauth_consumer_key"

    const-string v7, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v5, v6, v7}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "photo_id"

    iget-object v7, v3, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/gmail/yuyang226/flickr/a;

    const-string v6, "title"

    invoke-direct {v5, v6, v1}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "be578355f122df0a"

    invoke-direct {p0, v1, v4, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Flickr"

    const-string v2, "rename failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v1

    iput-object v2, v3, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->udpateFile(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveUserAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->loadTokens()Z

    :cond_0
    iget-object v6, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access_tokens:Ljava/util/HashMap;

    new-instance v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$User;-><init>(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@Flickr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->addServer(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->saveTokens()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected sendUpload(Ljava/net/URL;Ljava/util/List;)Lcom/gmail/yuyang226/flickr/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;)",
            "Lcom/gmail/yuyang226/flickr/c;"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v4, 0xc8

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "---------------------------7d273f7a0d3"

    const-string v2, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/form-data; boundary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Host"

    const-string v5, "api.flickr.com"

    invoke-virtual {v0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/yuyang226/flickr/a;

    invoke-direct {p0, v1, v2, v3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->writeParam(Lcom/gmail/yuyang226/flickr/a;Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/gmail/yuyang226/flickr/d/b;->a(Ljava/io/OutputStream;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    const-string v1, "--\r\n\r\n"

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    :goto_2
    if-eq v1, v4, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/spfs/OAuthUtil;->readFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection Failed. Response Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", Response Message: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", Error: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/gmail/yuyang226/flickr/c/b;

    invoke-direct {v1}, Lcom/gmail/yuyang226/flickr/c/b;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    :try_start_7
    invoke-virtual {v1, v3}, Lcom/gmail/yuyang226/flickr/c/b;->a(Lorg/w3c/dom/Document;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v2}, Lcom/gmail/yuyang226/flickr/d/b;->a(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v1

    :catch_1
    move-exception v1

    :try_start_8
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The server has error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_4
    move v1, v4

    goto/16 :goto_2
.end method

.method public setConfigDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->storePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->private_storePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Flickr"

    const-string v1, "can\'t get cache entry for set meta"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Flickr"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v2, v5, :cond_4

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photosets.editMeta"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->isDir:I

    if-ne v2, v5, :cond_5

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photoset_id"

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "title"

    invoke-direct {v0, v2, p4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_3

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "description"

    invoke-direct {v0, v2, p5}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photos.setMeta"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photo_id"

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setPerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 5

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Flickr"

    const-string v1, "can\'t get cache entry for set permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Flickr"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photos.setPerms"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photo_id"

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "is_public"

    const-string v0, "is_public"

    invoke-virtual {p4, v0}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "is_friend"

    const-string v0, "is_friend"

    invoke-virtual {p4, v0}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_2
    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "is_family"

    const-string v0, "is_family"

    invoke-virtual {p4, v0}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_3
    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "0"

    goto :goto_1

    :cond_4
    const-string v0, "0"

    goto :goto_2

    :cond_5
    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->locale:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Flickr"

    const-string v1, "can\'t get cache entry for set tags"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Flickr"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "method"

    const-string v4, "flickr.photos.setTags"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "oauth_consumer_key"

    const-string v4, "09cfe7214aec69fbda2b044b64305055"

    invoke-direct {v2, v3, v4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/gmail/yuyang226/flickr/a;

    const-string v3, "photo_id"

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gmail/yuyang226/flickr/a;

    const-string v2, "tags"

    invoke-direct {v0, v2, p4}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addOAuthToken(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "be578355f122df0a"

    invoke-direct {p0, v0, v1, p1}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->postJSON(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/gmail/yuyang226/flickr/FlickrException;

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/gmail/yuyang226/flickr/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/gmail/yuyang226/flickr/FlickrException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
