.class public Lcom/duapps/ad/stats/p;
.super Lcom/duapps/ad/stats/a;


# instance fields
.field public d:Lcom/duapps/ad/entity/AdData;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/duapps/ad/base/p;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/duapps/ad/entity/AdData;)V
    .locals 3

    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    iget v1, p1, Lcom/duapps/ad/entity/AdData;->x:I

    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->y:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/duapps/ad/stats/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/duapps/ad/stats/p;->d:Lcom/duapps/ad/entity/AdData;

    iget-wide v0, p1, Lcom/duapps/ad/entity/AdData;->a:J

    iput-wide v0, p0, Lcom/duapps/ad/stats/p;->g:J

    iget v0, p1, Lcom/duapps/ad/entity/AdData;->l:I

    iput v0, p0, Lcom/duapps/ad/stats/p;->f:I

    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/p;->e:Ljava/lang/String;

    iget v0, p1, Lcom/duapps/ad/entity/AdData;->m:I

    iput v0, p0, Lcom/duapps/ad/stats/p;->h:I

    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/p;->i:Ljava/lang/String;

    iget v0, p1, Lcom/duapps/ad/entity/AdData;->z:I

    iput v0, p0, Lcom/duapps/ad/stats/p;->j:I

    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/p;->l:Ljava/lang/String;

    iget v0, p1, Lcom/duapps/ad/entity/AdData;->G:I

    iput v0, p0, Lcom/duapps/ad/stats/p;->m:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/p;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "download"

    const-string v3, "channel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/duapps/ad/entity/AdData;->a(Lorg/json/JSONObject;)Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    new-instance v0, Lcom/duapps/ad/stats/p;

    invoke-direct {v0, v1}, Lcom/duapps/ad/stats/p;-><init>(Lcom/duapps/ad/entity/AdData;)V

    goto :goto_0

    :cond_2
    const-string v2, "inmobi"

    const-string v3, "channel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/duapps/ad/inmobi/IMData;->b(Lorg/json/JSONObject;)Lcom/duapps/ad/inmobi/IMData;

    move-result-object v1

    new-instance v0, Lcom/duapps/ad/stats/p;

    invoke-direct {v0, v1}, Lcom/duapps/ad/stats/p;-><init>(Lcom/duapps/ad/entity/AdData;)V

    goto :goto_0
.end method

.method public static a(Lcom/duapps/ad/stats/p;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/duapps/ad/stats/p;->d:Lcom/duapps/ad/entity/AdData;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/stats/p;->d:Lcom/duapps/ad/entity/AdData;

    instance-of v1, v1, Lcom/duapps/ad/inmobi/IMData;

    if-eqz v1, :cond_1

    const-string v1, "data"

    iget-object v2, p0, Lcom/duapps/ad/stats/p;->d:Lcom/duapps/ad/entity/AdData;

    invoke-static {v2}, Lcom/duapps/ad/entity/AdData;->a(Lcom/duapps/ad/entity/AdData;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, "data"

    iget-object v2, p0, Lcom/duapps/ad/stats/p;->d:Lcom/duapps/ad/entity/AdData;

    invoke-static {v2}, Lcom/duapps/ad/inmobi/IMData;->a(Lcom/duapps/ad/entity/AdData;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/duapps/ad/base/p;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/p;->k:Lcom/duapps/ad/base/p;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/stats/p;->n:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/stats/p;->f:I

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/stats/p;->o:Z

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/duapps/ad/stats/p;->g:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/stats/p;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/stats/p;->j:I

    return v0
.end method

.method public f()Lcom/duapps/ad/base/p;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/p;->k:Lcom/duapps/ad/base/p;

    return-object v0
.end method

.method public g()Lcom/duapps/ad/entity/AdData;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/p;->d:Lcom/duapps/ad/entity/AdData;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/duapps/ad/stats/p;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/duapps/ad/stats/p;->h:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/p;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/stats/p;->b:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/p;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/stats/p;->m:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/stats/p;->n:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/stats/p;->o:Z

    return v0
.end method

.method public q()Z
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/stats/p;->d:Lcom/duapps/ad/entity/AdData;

    iget-wide v0, v0, Lcom/duapps/ad/entity/AdData;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
