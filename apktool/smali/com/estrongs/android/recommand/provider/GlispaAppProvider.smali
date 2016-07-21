.class Lcom/estrongs/android/recommand/provider/GlispaAppProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/recommand/n;


# static fields
.field private static final AD_SPACE_ID:Ljava/lang/String; = "4586dd5c-4a79-4078-9436-a3d8dee8ac28"

.field private static final GLISPA_DATA_FILENAME:Ljava/lang/String;

.field private static final GLISPA_PATH:Ljava/lang/String;

.field private static final REQUEST_URL:Ljava/lang/String; = "http://rt.api.glispa.com/native/v1/ad"

.field private static final Tag:Ljava/lang/String;


# instance fields
.field private mCacheSize:I

.field private mFilledTimestamp:J

.field private mListener:Lcom/estrongs/android/util/af;

.field private mParam:Lcom/estrongs/android/recommand/o;

.field private mRequestData:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->Tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/glispa/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->GLISPA_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->GLISPA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->GLISPA_DATA_FILENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/recommand/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;

    invoke-direct {v0, p0}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;-><init>(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;)V

    iput-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mListener:Lcom/estrongs/android/util/af;

    iput-object p1, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mParam:Lcom/estrongs/android/recommand/o;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mStatusCode:I

    return p1
.end method

.method static synthetic access$202(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mFilledTimestamp:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->parseResponse()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private buildRequestData(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "os"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osv"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_1

    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "instapps"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    const-string v3, "4586dd5c-4a79-4078-9436-a3d8dee8ac28"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "icon_72"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "fields"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "count"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ad"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fill(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/recommand/p;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xbb9

    iput v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mStatusCode:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Content-Type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/json"

    aput-object v2, v0, v1

    new-instance v1, Lcom/estrongs/android/util/aa;

    const-string v2, "http://rt.api.glispa.com/native/v1/ad"

    invoke-direct {v1, v2}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    iput-object p1, v1, Lcom/estrongs/android/util/aa;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/estrongs/android/util/aa;->i()V

    iget-object v2, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mRequestData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/util/aa;->a([B)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a([Ljava/lang/Object;)V

    sget-object v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->GLISPA_DATA_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mListener:Lcom/estrongs/android/util/af;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v1, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/aa;->c()V

    return-void
.end method

.method private parseCallbacksSection(Lorg/json/JSONObject;Lcom/estrongs/android/recommand/m;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "callbacks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v0, "impression"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4}, Lcom/estrongs/android/recommand/m;->a([Ljava/lang/String;)V

    :cond_1
    const-string v0, "click"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v2}, Lcom/estrongs/android/recommand/m;->b([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private parseDataSection(Lorg/json/JSONObject;Lcom/estrongs/android/recommand/m;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/estrongs/android/recommand/m;->b:Ljava/lang/String;

    const-string v1, "icon_72"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/estrongs/android/recommand/m;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private parseResponse()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/recommand/m;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->readResponse()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ads"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/estrongs/android/recommand/m;

    invoke-direct {v4}, Lcom/estrongs/android/recommand/m;-><init>()V

    const-string v5, "appid"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/recommand/m;->a:Ljava/lang/String;

    const-string v5, "curl"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/recommand/m;->a(Ljava/lang/String;)V

    const-string v5, "pcurl"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/recommand/m;->b(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->parseCallbacksSection(Lorg/json/JSONObject;Lcom/estrongs/android/recommand/m;)V

    invoke-direct {p0, v3, v4}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->parseDataSection(Lorg/json/JSONObject;Lcom/estrongs/android/recommand/m;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private readResponse()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->GLISPA_DATA_FILENAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v1, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->Tag:Ljava/lang/String;

    const-string v2, "no find app downloaded file"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v4

    :try_start_1
    new-array v3, v1, [B

    const/4 v1, 0x0

    :cond_2
    long-to-int v6, v4

    sub-int/2addr v6, v1

    invoke-virtual {v2, v3, v1, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    add-int/2addr v1, v6

    int-to-long v6, v1

    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getParam()Lcom/estrongs/android/recommand/o;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mParam:Lcom/estrongs/android/recommand/o;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mStatusCode:I

    return v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mParam:Lcom/estrongs/android/recommand/o;

    iget v0, v0, Lcom/estrongs/android/recommand/o;->d:I

    iput v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mCacheSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mFilledTimestamp:J

    iget v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mCacheSize:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->buildRequestData(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mRequestData:Ljava/lang/String;

    return-void
.end method

.method public isExpired()Z
    .locals 8

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mFilledTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mFilledTimestamp:J

    iget-object v1, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mParam:Lcom/estrongs/android/recommand/o;

    iget v1, v1, Lcom/estrongs/android/recommand/o;->h:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/recommand/p;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->fill(Ljava/util/List;)V

    monitor-enter v1

    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->Tag:Ljava/lang/String;

    const-string v2, "network error!"

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public load([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/recommand/p;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mCacheSize:I

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->buildRequestData(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mRequestData:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->load()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
