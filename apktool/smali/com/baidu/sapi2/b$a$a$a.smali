.class public Lcom/baidu/sapi2/b$a$a$a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/b$a$a$a;
    .locals 4

    new-instance v0, Lcom/baidu/sapi2/b$a$a$a;

    invoke-direct {v0}, Lcom/baidu/sapi2/b$a$a$a;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/b$a$a$a;->a:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    const-string v1, "hash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/b$a$a$a;->c:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "download_url"

    iget-object v2, p0, Lcom/baidu/sapi2/b$a$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    iget-wide v2, p0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "hash"

    iget-object v2, p0, Lcom/baidu/sapi2/b$a$a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
