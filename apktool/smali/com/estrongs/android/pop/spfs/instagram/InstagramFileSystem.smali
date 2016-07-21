.class public Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/spfs/ISPFileSystem;
.implements Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "Instagram.cfg"

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

.field private static final HTTP_AUTH_FAIL:I = 0x191

.field private static final KEY_API_KEY:Ljava/lang/String; = "api_key"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

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

.field public static final PARAMETER_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final PARAMETER_SETS:Ljava/lang/String; = "sets"

.field public static final PARAMETER_TAGS:Ljava/lang/String; = "tags"

.field public static final PARAMETER_TITLE:Ljava/lang/String; = "title"

.field public static final PARAM_OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field public static final PRIVACY_IS_FAMILY:Ljava/lang/String; = "is_family"

.field public static final PRIVACY_IS_FRIEND:Ljava/lang/String; = "is_friend"

.field public static final PRIVACY_IS_PUBLIC:Ljava/lang/String; = "is_public"

.field public static final PRIVACY_LEVEL_NO_FILTER:I = 0x0

.field private static final client_id:Ljava/lang/String; = "66f9c1cb708b4b9b9c96ac329260f536"

.field private static final client_secret:Ljava/lang/String; = "d5b41a6c97344e3d8835e9d9a8fb17f6"


# instance fields
.field private final STAT_NET_TYPE_INSTAGRAM:I

.field private final TAG:Ljava/lang/String;

.field private access_tokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;",
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

.field private apiUri:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;

.field formatter:Ljava/text/SimpleDateFormat;

.field private lastErrorString:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private oAuthTokenUri:Ljava/lang/String;

.field private private_storePath:Ljava/lang/String;

.field private storePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->MIN_EXTRAS:Ljava/util/Set;

    sget-object v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->MIN_EXTRAS:Ljava/util/Set;

    const-string v1, "original_format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->MIN_EXTRAS:Ljava/util/Set;

    const-string v1, "owner_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$1;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$1;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->DATE_FORMATS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Instagram"

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->TAG:Ljava/lang/String;

    const/16 v0, 0x33

    iput v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->STAT_NET_TYPE_INSTAGRAM:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens_type:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->storePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->private_storePath:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->formatter:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->lastErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->locale:Ljava/lang/String;

    const-string v0, "http://www.estrongs.com"

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->callbackUrl:Ljava/lang/String;

    const-string v0, "https://api.instagram.com/oauth/access_token"

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->oAuthTokenUri:Ljava/lang/String;

    const-string v0, "https://api.instagram.com/v1"

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->apiUri:Ljava/lang/String;

    return-void
.end method

.method private getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getServerId(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->getPathId(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->getFile(II)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

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

.method private getFileCacheEntry(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;-><init>()V

    iget v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    if-ne v1, v3, :cond_a

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->size:I

    :goto_0
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "standard_resolution"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "low_resolution"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "thumbnail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    :cond_4
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "thumbnail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "low_resolution"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "standard_resolution"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    :cond_9
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "caption"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->name:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz p3, :cond_e

    :try_start_2
    iget v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    if-ne v1, v3, :cond_c

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    :goto_3
    const-string v1, "created_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getDatePosted(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->mtime:I

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->ownerId:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->ownerUsername:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_a
    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->size:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->name:Ljava/lang/String;

    goto :goto_1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_c
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    goto :goto_3

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_e
    iput-object p2, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
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
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

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

.method private getServerId(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Instagram"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->getServerId(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->addServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->getServerId(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->loadTokens()Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;

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

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method private getTokenType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens_type:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens_type:Ljava/util/HashMap;

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
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->private_storePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Instagram.cfg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "#####"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    new-instance v7, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x2

    aget-object v5, v5, v10

    invoke-direct {v7, p0, v8, v9, v5}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;-><init>(Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object v2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
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
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/AlbumException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "removePhoto"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private removeToken(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

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

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->private_storePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Instagram.cfg"

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

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

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

    check-cast v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#####"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#####"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;->token:Ljava/lang/String;

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


# virtual methods
.method public addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Instagram"

    const-string v2, "can\'t get cache entry for add comment"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v1, "Instagram"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v3, 0x4

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "text"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v4, 0x2

    const-string v5, "access_token"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const-string v2, "/media/%s/comments"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->apiUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->setParameters(Lorg/apache/http/client/methods/HttpPost;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->parseAsJSON(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "meta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "meta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "error_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Instagram"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddComment failed, error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "meta"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error_message"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public addNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)Lcom/gmail/yuyang226/flickr/a/a;
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "addNote"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/AlbumException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "addPhoto"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@Instagram"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->addServer(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public convertToCacheEntry(Lcom/estrongs/android/pop/spfs/SPFileInfo;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;
    .locals 6

    new-instance v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    invoke-direct {v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    iget-wide v2, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->mtime:I

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    iget-wide v2, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->size:I

    iget-object v0, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "/"

    iput-object v0, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convertToFileInfo(Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
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

    iget-object v3, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->mtime:I

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

    iget v3, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    if-ne v3, v0, :cond_1

    :goto_1
    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    iget v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->size:I

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    iput v1, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->folder_type:I

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->publicFlag:Z

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->publicFlag:Z

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->friendFlag:Z

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->friendFlag:Z

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->familyFlag:Z

    iput-boolean v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->familyFlag:Z

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->notes:Ljava/util/List;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->notes:Ljava/util/List;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->description:Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->ownerId:Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerId:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->ownerUsername:Ljava/lang/String;

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

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->moveCopyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/AlbumException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "createAlbum"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public delServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->loadTokens()Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@Instagram"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->delServer(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->saveTokens()Z

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
    .locals 5

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Instagram"

    const-string v1, "can\'t get cache entry for delete comment"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Instagram"

    const-string v1, "delete, can\'t get the token"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    const-string v2, "/media/%s/comments/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->apiUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "access_token="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->parseAsJSON(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Instagram"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lsit failed, error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "meta"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "error_message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

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
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "deleteFile"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public deleteNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "deleteNote"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getPhotoInfo"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public editNote(Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "editNote"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessTokenParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessTokenUrl()Ljava/net/URL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbums(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    new-instance v0, Lcom/estrongs/android/pop/spfs/AlbumException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getAlbums"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllAlbums(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    new-instance v0, Lcom/estrongs/android/pop/spfs/AlbumException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getAllAlbums"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBuddyIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Instagram"

    const-string v2, "getBuddyIcon, can\'t get the token"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "/users/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->apiUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "access_token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->parseAsJSON(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Instagram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lsit failed, error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "meta"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "error_message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "profile_picture"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "Instagram"

    const-string v2, "can\'t get cache entry for get comments"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "Instagram"

    const-string v2, "delete, can\'t get the token"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v4, "/media/%s/comments"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url_id:Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->apiUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "access_token="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->parseAsJSON(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "meta"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "meta"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "Instagram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lsit failed, error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "meta"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "error_message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v1, "Instagram"

    const-string v2, "list no data"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_1
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

    const-string v5, "from"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->a(Ljava/lang/String;)V

    const-string v5, "from"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "username"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->b(Ljava/lang/String;)V

    const-string v5, "from"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "profile_picture"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->f(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    const-string v6, "created_time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getDatePosted(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/gmail/yuyang226/flickr/a/a/a;->a(Ljava/util/Date;)V

    const-string v5, "text"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/instagram/EmojiUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v1}, Lcom/gmail/yuyang226/flickr/a/a/a;->e(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->convertToFileInfo(Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v1

    iget-wide v4, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :try_start_1
    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

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
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    const-string v1, "Instagram"

    const-string v2, "can\'t get cache entry for InputStream"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

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

    const/16 v3, 0xce

    if-eq v2, v3, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_4

    const-string v2, "Instagram"

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

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

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
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getFileOutputStream"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLastErrorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->lastErrorString:Ljava/lang/String;

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

    new-instance v1, Lcom/estrongs/android/util/n;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/n;-><init>(Ljava/security/KeyStore;)V

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

    const/4 v3, 0x1

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "client_id"

    aput-object v2, v0, v1

    const-string v1, "66f9c1cb708b4b9b9c96ac329260f536"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "code"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "redirect_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://www.estrongs.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "likes comments"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.instagram.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/oauth/authorize"

    invoke-static {v2, v0, v3}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->buildGetUrl(Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public getPhotoExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "Instagram"

    const-string v1, "can\'t get cache entry for get photo extension"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

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
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getPhotoInfo"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getRegisterPrepareInfo([Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestTokenUrl()Ljava/net/URL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->url:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    const-string v1, "Instagram"

    const-string v2, "can\'t get cache entry for InputStream"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->thumbnail_url:Ljava/lang/String;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v1, "Instagram"

    const-string v2, "can\'t get token download"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
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

    const-string v2, "Instagram"

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

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public getUserLoginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0xa

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "client_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "66f9c1cb708b4b9b9c96ac329260f536"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "client_secret"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "d5b41a6c97344e3d8835e9d9a8fb17f6"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "code"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object p1, v0, v2

    const/4 v2, 0x6

    const-string v3, "redirect_uri"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "http://www.estrongs.com"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "grant_type"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "authorization_code"

    aput-object v3, v0, v2

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->oAuthTokenUri:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->setParameters(Lorg/apache/http/client/methods/HttpPost;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->parseAsJSON(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "error_type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Instagram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get token failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "error_message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "access_token"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Instagram"

    const-string v2, "get null token"

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "user"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "username"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {p0, v3, v2, v0, v4}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->saveUserAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public isDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

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

    invoke-virtual/range {v0 .. v7}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/Map;

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
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getServerId(Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->listFilesInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;

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

    check-cast v1, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->convertToFileInfo(Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/NetFsException;->printStackTrace()V

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
            "Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->listFilesInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public listFilesInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;
    .locals 13
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
            "Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getServerId(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getCacheEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v4

    :try_start_0
    const-string v2, "per_page"

    const-wide/16 v6, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6, v7}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v6

    const-string v2, "page"

    const-wide/16 v8, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v8, v9}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v7

    const-string v2, "max_id"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getTokenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v2, "Instagram"

    const-string v3, "can\'t get the token"

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    const-string v10, "mine"

    const-string v11, "content_type"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_4

    const-string v10, "mine"

    invoke-static/range {p3 .. p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->apiUri:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "/users/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;->id:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "/media/recent?"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "count="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v8, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&access_token="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_2
    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&max_id="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v6, "hot"

    const-string v8, "content_type"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-lt v6, v8, :cond_2

    const-string v6, "hot"

    invoke-static/range {p3 .. p3}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->apiUri:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/media/popular?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "access_token="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->parseAsJSON(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "meta"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "meta"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "error_type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v3, "Instagram"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lsit failed, error code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "meta"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "error_message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v2, "Instagram"

    const-string v3, "list no data"

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_a

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v8, v0, v9}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getFileCacheEntry(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v9, v8, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    if-nez v4, :cond_d

    new-instance v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    invoke-direct {v2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;-><init>()V

    iput v5, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->serverId:I

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->path:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->isDir:I

    const-string v4, "/"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    iput v4, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->parentId:I

    :goto_4
    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->addFile(Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;)V

    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->getFile(ILjava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;

    move-result-object v2

    :goto_5
    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v4

    iget v6, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->id:I

    const/4 v2, 0x1

    if-le v7, v2, :cond_c

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->updateFiles(IILjava/util/HashMap;Z)V

    move-object v2, v3

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->getPathId(ILjava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;->parentId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Lcom/estrongs/android/pop/netfs/NetFsException;

    invoke-direct {v3, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    move-object v2, v4

    goto :goto_5
.end method

.method public mkDirs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

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

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->moveCopyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parseAsJSON(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "error"

    const-string v2, "Unknown Error"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public removePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/AlbumException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "removePhoto"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/AlbumException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "deleteFile"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public saveUserAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->loadTokens()Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->access_tokens:Ljava/util/HashMap;

    new-instance v2, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem$User;-><init>(Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->instance()Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@Instagram"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->addServer(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->saveTokens()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setConfigDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->storePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->private_storePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getPhotoInfo"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/spfs/PhotoInfoException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getPhotoInfo"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystem;->locale:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
