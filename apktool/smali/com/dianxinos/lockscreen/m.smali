.class Lcom/dianxinos/lockscreen/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/lockscreen/ad/extra/e;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/j;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V
    .locals 6

    invoke-static {}, Lcom/dianxinos/lockscreen/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockScreen_"

    const-string v1, "FloatAd Success!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/j;->a(Lcom/dianxinos/lockscreen/j;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0, p1}, Lcom/dianxinos/lockscreen/j;->a(Lcom/dianxinos/lockscreen/j;Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->f(Lcom/dianxinos/lockscreen/j;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->g(Lcom/dianxinos/lockscreen/j;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->b(Lcom/dianxinos/lockscreen/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/j;->g(Lcom/dianxinos/lockscreen/j;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;J)V

    :cond_1
    return-void
.end method

.method public a(Lcom/duapps/ad/b;)V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/j;->a(Lcom/dianxinos/lockscreen/j;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    if-nez p1, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-static {}, Lcom/dianxinos/lockscreen/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockScreen_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatAd Fail! ErrorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/j;->h(Lcom/dianxinos/lockscreen/j;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dianxinos/lockscreen/m;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/j;->b(Lcom/dianxinos/lockscreen/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/duapps/ad/b;->a()I

    move-result v0

    goto :goto_0
.end method
