.class public Lcom/flurry/sdk/is;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/hs;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/is;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null Json object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/hs;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Deserialize not supported for request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/hs;)V
    .locals 9

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/flurry/sdk/is$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/is$1;-><init>(Lcom/flurry/sdk/is;Ljava/io/OutputStream;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "project_key"

    iget-object v4, p2, Lcom/flurry/sdk/hs;->a:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bundle_id"

    iget-object v4, p2, Lcom/flurry/sdk/hs;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_version"

    iget-object v4, p2, Lcom/flurry/sdk/hs;->c:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_version"

    iget v4, p2, Lcom/flurry/sdk/hs;->d:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "platform"

    iget v4, p2, Lcom/flurry/sdk/hs;->e:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "platform_version"

    iget-object v4, p2, Lcom/flurry/sdk/hs;->f:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "limit_ad_tracking"

    iget-boolean v4, p2, Lcom/flurry/sdk/hs;->g:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    iget-object v0, v0, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/hp;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "model"

    iget-object v6, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    iget-object v6, v6, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/hp;

    iget-object v6, v6, Lcom/flurry/sdk/hp;->a:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "brand"

    iget-object v6, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    iget-object v6, v6, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/hp;

    iget-object v6, v6, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "id"

    iget-object v6, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    iget-object v6, v6, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/hp;

    iget-object v6, v6, Lcom/flurry/sdk/hp;->c:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "device"

    iget-object v6, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    iget-object v6, v6, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/hp;

    iget-object v6, v6, Lcom/flurry/sdk/hp;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "product"

    iget-object v6, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    iget-object v6, v6, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/hp;

    iget-object v6, v6, Lcom/flurry/sdk/hp;->e:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "version_release"

    iget-object v6, p2, Lcom/flurry/sdk/hs;->h:Lcom/flurry/sdk/hv;

    iget-object v6, v6, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/hp;

    iget-object v6, v6, Lcom/flurry/sdk/hp;->f:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.flurry.proton.generated.avro.v2.AndroidTags"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    if-eqz v0, :cond_2

    const-string v4, "device_tags"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p2, Lcom/flurry/sdk/hs;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hu;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "type"

    iget v8, v0, Lcom/flurry/sdk/hu;->a:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "id"

    iget-object v0, v0, Lcom/flurry/sdk/hu;->b:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v0}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid Json"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw v0

    :cond_2
    :try_start_2
    const-string v0, "device_tags"

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const-string v0, "device_ids"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p2, Lcom/flurry/sdk/hs;->j:Lcom/flurry/sdk/hz;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/flurry/sdk/hs;->j:Lcom/flurry/sdk/hz;

    iget-object v0, v0, Lcom/flurry/sdk/hz;->a:Lcom/flurry/sdk/hy;

    if-eqz v0, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "latitude"

    iget-object v5, p2, Lcom/flurry/sdk/hs;->j:Lcom/flurry/sdk/hz;

    iget-object v5, v5, Lcom/flurry/sdk/hz;->a:Lcom/flurry/sdk/hy;

    iget-wide v6, v5, Lcom/flurry/sdk/hy;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "longitude"

    iget-object v5, p2, Lcom/flurry/sdk/hs;->j:Lcom/flurry/sdk/hz;

    iget-object v5, v5, Lcom/flurry/sdk/hz;->a:Lcom/flurry/sdk/hy;

    iget-wide v6, v5, Lcom/flurry/sdk/hy;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "accuracy"

    iget-object v5, p2, Lcom/flurry/sdk/hs;->j:Lcom/flurry/sdk/hz;

    iget-object v5, v5, Lcom/flurry/sdk/hz;->a:Lcom/flurry/sdk/hy;

    iget v5, v5, Lcom/flurry/sdk/hy;->c:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "com.flurry.proton.generated.avro.v2.Geolocation"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    if-eqz v0, :cond_4

    const-string v1, "geo"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/flurry/sdk/hs;->k:Lcom/flurry/sdk/ic;

    if-eqz v1, :cond_5

    const-string v1, "string"

    iget-object v4, p2, Lcom/flurry/sdk/hs;->k:Lcom/flurry/sdk/ic;

    iget-object v4, v4, Lcom/flurry/sdk/ic;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lcom/flurry/sdk/is;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_user_id"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proton Request String: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v0, "geo"

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_5
    const-string v0, "publisher_user_id"

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :cond_6
    move-object v0, v1

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/hs;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/is;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/hs;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/is;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/hs;

    move-result-object v0

    return-object v0
.end method
