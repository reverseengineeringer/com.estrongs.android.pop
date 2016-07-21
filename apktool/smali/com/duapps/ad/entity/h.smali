.class public Lcom/duapps/ad/entity/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/entity/a/c;
.implements Lcom/facebook/ads/AdListener;


# static fields
.field private static final g:Lcom/duapps/ad/entity/c;


# instance fields
.field private a:Lcom/facebook/ads/NativeAd;

.field private b:Lcom/duapps/ad/entity/c;

.field private volatile c:Z

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Lcom/duapps/ad/d;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/duapps/ad/entity/i;

    invoke-direct {v0}, Lcom/duapps/ad/entity/i;-><init>()V

    sput-object v0, Lcom/duapps/ad/entity/h;->g:Lcom/duapps/ad/entity/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/duapps/ad/entity/h;->g:Lcom/duapps/ad/entity/c;

    iput-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/entity/h;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duapps/ad/entity/h;->h:J

    iput-object p1, p0, Lcom/duapps/ad/entity/h;->d:Landroid/content/Context;

    iput p3, p0, Lcom/duapps/ad/entity/h;->e:I

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->d:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/h;->e:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->d(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/duapps/ad/entity/h;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/entity/h;->f:Lcom/duapps/ad/d;

    return-void
.end method

.method public a(Lcom/duapps/ad/entity/c;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/duapps/ad/entity/h;->g:Lcom/duapps/ad/entity/c;

    iput-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/entity/h;->h:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x325aa0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

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

.method public b()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    invoke-interface {v0, p0, v1}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/h;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/duapps/ad/entity/h;->c:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/duapps/ad/entity/h;->c:Z

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    return-void
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/duapps/ad/entity/h;->g:Lcom/duapps/ad/entity/c;

    iput-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    const-class v0, Lcom/duapps/ad/entity/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()F
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x2

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

    const-string v0, "facebook"

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    invoke-interface {v0, p0}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/h;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/h;->f:Lcom/duapps/ad/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->f:Lcom/duapps/ad/d;

    invoke-interface {v0}, Lcom/duapps/ad/d;->a()V

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/entity/h;->d:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/h;->e:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/h;->h:J

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/h;Z)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/entity/h;->b:Lcom/duapps/ad/entity/c;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/entity/c;->a(ILjava/lang/String;)V

    return-void
.end method
