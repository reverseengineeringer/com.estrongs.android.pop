.class Lcom/duapps/ad/stats/s;
.super Lcom/duapps/ad/base/al;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/duapps/ad/stats/r;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/r;J)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iput-wide p2, p0, Lcom/duapps/ad/stats/s;->a:J

    invoke-direct {p0}, Lcom/duapps/ad/base/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duapps/ad/base/ak;)V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v0, v0, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v0}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p2, Lcom/duapps/ad/base/ak;->c:J

    invoke-static {v0, v2, v3}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;J)V

    iget-object v0, p2, Lcom/duapps/ad/base/ak;->a:Lorg/json/JSONObject;

    const/16 v2, 0xc8

    if-ne v2, p1, :cond_5

    if-eqz v0, :cond_5

    :try_start_0
    const-string v2, "datas"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "list"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v3, v1

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    const-string v2, "sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "wt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "download"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v8, v8, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v8}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;II)V

    const-string v7, "facebook"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v8, v8, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v8}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;II)V

    const-string v7, "inmobi"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v8, v8, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v8}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/duapps/ad/base/r;->c(Landroid/content/Context;II)V

    const-string v7, "online"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v8, v8, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v8}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/duapps/ad/base/r;->e(Landroid/content/Context;II)V

    const-string v7, "admob"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v7, v7, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v7}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v2}, Lcom/duapps/ad/base/r;->d(Landroid/content/Context;II)V

    const-string v2, "priority"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    move v0, v1

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "#"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v2, v2, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v2}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v6}, Lcom/duapps/ad/entity/a/b;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v7, v7, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v7}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v7, v7, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v7}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/duapps/ad/k;->a(Landroid/content/Context;)Lcom/duapps/ad/k;

    move-result-object v7

    invoke-virtual {v7, v6, v2, v0}, Lcom/duapps/ad/k;->a(I[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v0, v0, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v0}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x65

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/stats/s;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;IJ)V

    :goto_3
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v0, v0, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v0}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "logPriority"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/r;->g(Landroid/content/Context;I)V

    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSrc logPriority :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logPriority"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v1, v1, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v1}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSrc Inmobi ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v0, v0, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v0}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/r;->c(Landroid/content/Context;)V

    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v0, v0, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v0}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/stats/s;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, p1, v2, v3}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;IJ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_5
    const/16 v0, 0x130

    if-ne v0, p1, :cond_4

    goto :goto_3
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/duapps/ad/base/ak;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/s;->a(ILcom/duapps/ad/base/ak;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v0, v0, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v0}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/r;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/s;->b:Lcom/duapps/ad/stats/r;

    iget-object v0, v0, Lcom/duapps/ad/stats/r;->a:Lcom/duapps/ad/stats/q;

    invoke-static {v0}, Lcom/duapps/ad/stats/q;->a(Lcom/duapps/ad/stats/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/stats/s;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, p1, v2, v3}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;IJ)V

    return-void
.end method
