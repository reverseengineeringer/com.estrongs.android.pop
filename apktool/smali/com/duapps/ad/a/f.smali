.class public Lcom/duapps/ad/a/f;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/duapps/ad/entity/a/c;


# instance fields
.field private a:Lcom/duapps/ad/a/e;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/duapps/ad/d;

.field private e:Lcom/duapps/ad/a/g;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/a/f;->b:Landroid/content/Context;

    iput p2, p0, Lcom/duapps/ad/a/f;->c:I

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/a/f;->b:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/a/f;->c:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/a/e;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duapps/ad/a/f;->b(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/duapps/ad/a/e;)V
    .locals 2

    iput-object p1, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/a/f;->f:J

    return-void
.end method

.method public a(Lcom/duapps/ad/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    return-void
.end method

.method public a(Lcom/duapps/ad/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/a/f;->d:Lcom/duapps/ad/d;

    return-void
.end method

.method public b()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/a/f;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/a/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/a/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/a/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/a/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/a/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j()F
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/a/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->h()F

    move-result v0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, "admob"

    return-object v0
.end method

.method public o()I
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/a/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/a/f;->a:Lcom/duapps/ad/a/e;

    invoke-virtual {v0}, Lcom/duapps/ad/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, -0xa

    goto :goto_0
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    invoke-interface {v0}, Lcom/duapps/ad/a/g;->d()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    invoke-interface {v0, p1}, Lcom/duapps/ad/a/g;->a(I)V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    invoke-interface {v0}, Lcom/duapps/ad/a/g;->c()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    invoke-interface {v0}, Lcom/duapps/ad/a/g;->b()V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->d:Lcom/duapps/ad/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/f;->d:Lcom/duapps/ad/d;

    invoke-interface {v0}, Lcom/duapps/ad/d;->a()V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/a/f;->e:Lcom/duapps/ad/a/g;

    invoke-interface {v0}, Lcom/duapps/ad/a/g;->a()V

    :cond_1
    return-void
.end method
