.class Lcom/duapps/ad/base/ab;
.super Lcom/duapps/ad/base/al;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/duapps/ad/base/aa;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/aa;J)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iput-wide p2, p0, Lcom/duapps/ad/base/ab;->a:J

    invoke-direct {p0}, Lcom/duapps/ad/base/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duapps/ad/base/ak;)V
    .locals 8

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p2, Lcom/duapps/ad/base/ak;->a:Lorg/json/JSONObject;

    const-string v1, "datas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInmobiNativeAds sType :native, response ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v1, Lcom/duapps/ad/inmobi/IMDataModel;

    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget-object v2, v0, Lcom/duapps/ad/base/aa;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget v3, v0, Lcom/duapps/ad/base/aa;->b:I

    const-string v4, "native"

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/inmobi/IMDataModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget-object v0, v0, Lcom/duapps/ad/base/aa;->e:Lcom/duapps/ad/base/am;

    invoke-interface {v0, p1, v1}, Lcom/duapps/ad/base/am;->a(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget-object v0, v0, Lcom/duapps/ad/base/aa;->f:Lcom/duapps/ad/base/t;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget v1, v1, Lcom/duapps/ad/base/aa;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/ab;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/b;->b(Landroid/content/Context;IIJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ToolboxCacheManager"

    const-string v2, "getInmobiNativeAds sType :native,parse JsonException :"

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget-object v0, v0, Lcom/duapps/ad/base/aa;->e:Lcom/duapps/ad/base/am;

    const/16 v1, 0x7d0

    sget-object v2, Lcom/duapps/ad/b;->d:Lcom/duapps/ad/b;

    invoke-virtual {v2}, Lcom/duapps/ad/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/am;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget-object v0, v0, Lcom/duapps/ad/base/aa;->f:Lcom/duapps/ad/base/t;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget v1, v1, Lcom/duapps/ad/base/aa;->b:I

    const/16 v2, -0x65

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/duapps/ad/base/ab;->a:J

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v2, v4, v5}, Lcom/duapps/ad/stats/b;->b(Landroid/content/Context;IIJ)V

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/duapps/ad/base/ak;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/ab;->a(ILcom/duapps/ad/base/ak;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInmobiNativeAds sType :native, parse failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget-object v0, v0, Lcom/duapps/ad/base/aa;->e:Lcom/duapps/ad/base/am;

    const/16 v1, 0x7d1

    sget-object v2, Lcom/duapps/ad/b;->e:Lcom/duapps/ad/b;

    invoke-virtual {v2}, Lcom/duapps/ad/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/am;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget-object v0, v0, Lcom/duapps/ad/base/aa;->f:Lcom/duapps/ad/base/t;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/ab;->b:Lcom/duapps/ad/base/aa;

    iget v1, v1, Lcom/duapps/ad/base/aa;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/ab;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/b;->b(Landroid/content/Context;IIJ)V

    return-void
.end method
