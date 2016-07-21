.class public Lcom/flurry/sdk/dt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/cl;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dh;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dh;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "adId"

    iget-object v5, v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lastEvent"

    iget-object v5, v0, Lcom/flurry/sdk/dh;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "renderedTime"

    iget-wide v6, v0, Lcom/flurry/sdk/dh;->c:J

    invoke-static {v3, v4, v6, v7}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Lcom/flurry/sdk/cp;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "viewWidth"

    iget v2, p1, Lcom/flurry/sdk/cp;->a:I

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "viewHeight"

    iget v2, p1, Lcom/flurry/sdk/cp;->b:I

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "screenHeight"

    iget v2, p1, Lcom/flurry/sdk/cp;->d:I

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "screenWidth"

    iget v2, p1, Lcom/flurry/sdk/cp;->c:I

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "density"

    iget v2, p1, Lcom/flurry/sdk/cp;->e:F

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    const-string v1, "screenOrientation"

    iget-object v2, p1, Lcom/flurry/sdk/cp;->f:Lcom/flurry/sdk/dc;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/cx;)Lorg/json/JSONObject;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "lat"

    iget v2, p1, Lcom/flurry/sdk/cx;->a:F

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    const-string v1, "lon"

    iget v2, p1, Lcom/flurry/sdk/cx;->b:F

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "lat"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    const-string v1, "lon"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/cy;)Lorg/json/JSONObject;
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/flurry/sdk/cy;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v1, "requestedStyles"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/flurry/sdk/cy;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p1, Lcom/flurry/sdk/cy;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    const-string v1, "requestedAssets"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/flurry/sdk/cy;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "requestedStyles"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "requestedAssets"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/di;)Lorg/json/JSONObject;
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "ageRange"

    iget v2, p1, Lcom/flurry/sdk/di;->a:I

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "gender"

    iget v2, p1, Lcom/flurry/sdk/di;->b:I

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p1, Lcom/flurry/sdk/di;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "personas"

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ageRange"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "gender"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "personas"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private b(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cu;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cu;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "capType"

    iget-object v5, v0, Lcom/flurry/sdk/cu;->a:Lcom/flurry/sdk/cw;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "id"

    iget-object v5, v0, Lcom/flurry/sdk/cu;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "serveTime"

    iget-wide v6, v0, Lcom/flurry/sdk/cu;->c:J

    invoke-static {v3, v4, v6, v7}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const-string v4, "expirationTime"

    iget-wide v6, v0, Lcom/flurry/sdk/cu;->d:J

    invoke-static {v3, v4, v6, v7}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const-string v4, "lastViewedTime"

    iget-wide v6, v0, Lcom/flurry/sdk/cu;->e:J

    invoke-static {v3, v4, v6, v7}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const-string v4, "streamCapDurationMillis"

    iget-wide v6, v0, Lcom/flurry/sdk/cu;->f:J

    invoke-static {v3, v4, v6, v7}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const-string v4, "views"

    iget v5, v0, Lcom/flurry/sdk/cu;->g:I

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v4, "capRemaining"

    iget v5, v0, Lcom/flurry/sdk/cu;->h:I

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v4, "totalCap"

    iget v5, v0, Lcom/flurry/sdk/cu;->i:I

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v4, "capDurationType"

    iget v0, v0, Lcom/flurry/sdk/cu;->j:I

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private c(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ck;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ck;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    iget v5, v0, Lcom/flurry/sdk/ck;->a:I

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v4, "id"

    iget-object v0, v0, Lcom/flurry/sdk/ck;->b:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/cl;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Deserialize not supported for request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/cl;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/flurry/sdk/dt$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/dt$1;-><init>(Lcom/flurry/sdk/dt;Ljava/io/OutputStream;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "requestTime"

    iget-wide v4, p2, Lcom/flurry/sdk/cl;->a:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "apiKey"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "agentVersion"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adViewType"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cq;

    invoke-virtual {v3}, Lcom/flurry/sdk/cq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adSpaceName"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sessionId"

    iget-wide v4, p2, Lcom/flurry/sdk/cl;->f:J

    invoke-static {v0, v2, v4, v5}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const-string v2, "adReportedIds"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->g:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->c(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "location"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->h:Lcom/flurry/sdk/cx;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->a(Lcom/flurry/sdk/cx;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "testDevice"

    iget-boolean v3, p2, Lcom/flurry/sdk/cl;->i:Z

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "bindings"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cl;->j:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "adViewContainer"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->k:Lcom/flurry/sdk/cp;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->a(Lcom/flurry/sdk/cp;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "locale"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->l:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timezone"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "osVersion"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->n:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "devicePlatform"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->o:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "keywords"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->p:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "canDoSKAppStore"

    iget-boolean v3, p2, Lcom/flurry/sdk/cl;->q:Z

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "networkStatus"

    iget v3, p2, Lcom/flurry/sdk/cl;->r:I

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "frequencyCapRequestInfoList"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "streamInfoList"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->t:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "adTrackingEnabled"

    iget-boolean v3, p2, Lcom/flurry/sdk/cl;->u:Z

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "preferredLanguage"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->v:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "bcat"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cl;->w:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "userAgent"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->x:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "targetingOverride"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->y:Lcom/flurry/sdk/di;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->a(Lcom/flurry/sdk/di;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "sendConfiguration"

    iget-boolean v3, p2, Lcom/flurry/sdk/cl;->z:Z

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "origins"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cl;->A:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "renderTime"

    iget-boolean v3, p2, Lcom/flurry/sdk/cl;->B:Z

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "clientSideRtbPayload"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p2, Lcom/flurry/sdk/cl;->C:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "nativeAdConfiguration"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->D:Lcom/flurry/sdk/cy;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/dt;->a(Lcom/flurry/sdk/cy;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "bCookie"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->E:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "appBundleId"

    iget-object v3, p2, Lcom/flurry/sdk/cl;->F:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lv;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad Request String: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid Json"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/cl;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dt;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/cl;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dt;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/cl;

    move-result-object v0

    return-object v0
.end method
