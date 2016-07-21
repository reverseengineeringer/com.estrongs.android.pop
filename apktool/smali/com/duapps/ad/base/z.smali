.class Lcom/duapps/ad/base/z;
.super Lcom/duapps/ad/base/al;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/duapps/ad/base/y;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/y;J)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iput-wide p2, p0, Lcom/duapps/ad/base/z;->a:J

    invoke-direct {p0}, Lcom/duapps/ad/base/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duapps/ad/base/ak;)V
    .locals 8

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p2, Lcom/duapps/ad/base/ak;->a:Lorg/json/JSONObject;

    const-string v1, "datas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOnlineWall sType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v3, v3, Lcom/duapps/ad/base/y;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", response ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v1, v1, Lcom/duapps/ad/base/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/t;->b(Ljava/lang/String;)Lcom/duapps/ad/base/ad;

    move-result-object v0

    iget-object v1, p2, Lcom/duapps/ad/base/ak;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/base/ad;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/ad;->c:J

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v1, v1, Lcom/duapps/ad/base/y;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/duapps/ad/base/ad;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v1, v1, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/ad;)V

    new-instance v1, Lcom/duapps/ad/entity/AdModel;

    iget-object v2, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v2, v2, Lcom/duapps/ad/base/y;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget v3, v3, Lcom/duapps/ad/base/y;->d:I

    iget-object v4, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v4, v4, Lcom/duapps/ad/base/y;->e:Ljava/lang/String;

    iget-wide v6, v0, Lcom/duapps/ad/base/ad;->c:J

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/entity/AdModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;)Lcom/duapps/ad/base/m;

    move-result-object v0

    iget-object v2, v1, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/m;->a(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->i:Lcom/duapps/ad/base/am;

    invoke-interface {v0, p1, v1}, Lcom/duapps/ad/base/am;->a(ILjava/lang/Object;)V

    iget-wide v0, p2, Lcom/duapps/ad/base/ak;->c:J

    iget-object v2, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v2, v2, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    invoke-static {v2}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget v3, v3, Lcom/duapps/ad/base/y;->d:I

    invoke-static {v2, v3, v0, v1}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;IJ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget v1, v1, Lcom/duapps/ad/base/y;->d:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/z;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/b;->c(Landroid/content/Context;IIJ)V

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v2, v2, Lcom/duapps/ad/base/y;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 304 called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v1, v1, Lcom/duapps/ad/base/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/t;->b(Ljava/lang/String;)Lcom/duapps/ad/base/ad;

    move-result-object v0

    iget-object v1, v0, Lcom/duapps/ad/base/ad;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->i:Lcom/duapps/ad/base/am;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/duapps/ad/b;->b:Lcom/duapps/ad/b;

    invoke-virtual {v2}, Lcom/duapps/ad/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/am;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOnlineWall sType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v3, v3, Lcom/duapps/ad/base/y;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",parse JsonException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->i:Lcom/duapps/ad/base/am;

    const/16 v1, 0x7d0

    sget-object v2, Lcom/duapps/ad/b;->d:Lcom/duapps/ad/b;

    invoke-virtual {v2}, Lcom/duapps/ad/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/am;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget v1, v1, Lcom/duapps/ad/base/y;->d:I

    const/16 v2, -0x65

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/duapps/ad/base/z;->a:J

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v2, v4, v5}, Lcom/duapps/ad/stats/b;->c(Landroid/content/Context;IIJ)V

    goto/16 :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/ad;->c:J

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v1, v1, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/ad;)V

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/duapps/ad/base/ad;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOnlineWall sType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v3, v3, Lcom/duapps/ad/base/y;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from cache, response ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/duapps/ad/entity/AdModel;

    iget-object v2, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v2, v2, Lcom/duapps/ad/base/y;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget v3, v3, Lcom/duapps/ad/base/y;->d:I

    iget-object v4, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v4, v4, Lcom/duapps/ad/base/y;->e:Ljava/lang/String;

    iget-wide v6, v0, Lcom/duapps/ad/base/ad;->c:J

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/entity/AdModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->i:Lcom/duapps/ad/base/am;

    const/16 v2, 0xc8

    invoke-interface {v0, v2, v1}, Lcom/duapps/ad/base/am;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/duapps/ad/base/ak;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/z;->a(ILcom/duapps/ad/base/ak;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOnlineWall sType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v2, v2, Lcom/duapps/ad/base/y;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parse failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->i:Lcom/duapps/ad/base/am;

    const/16 v1, 0x7d1

    sget-object v2, Lcom/duapps/ad/b;->e:Lcom/duapps/ad/b;

    invoke-virtual {v2}, Lcom/duapps/ad/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/am;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget-object v0, v0, Lcom/duapps/ad/base/y;->j:Lcom/duapps/ad/base/t;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Lcom/duapps/ad/base/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/z;->b:Lcom/duapps/ad/base/y;

    iget v1, v1, Lcom/duapps/ad/base/y;->d:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/z;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/b;->c(Landroid/content/Context;IIJ)V

    return-void
.end method
