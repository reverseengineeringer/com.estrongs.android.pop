.class Lcom/duapps/ad/offerwall/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/NativeAdsManager$Listener;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a/g;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/facebook/ads/AdError;)V
    .locals 6

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/g;->e(Lcom/duapps/ad/offerwall/a/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v4}, Lcom/duapps/ad/offerwall/a/g;->f(Lcom/duapps/ad/offerwall/a/g;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v4}, Lcom/duapps/ad/offerwall/a/g;->g(Lcom/duapps/ad/offerwall/a/g;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;IJI)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/g;->a(Lcom/duapps/ad/offerwall/a/g;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/g;->d(Lcom/duapps/ad/offerwall/a/g;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/g;->d(Lcom/duapps/ad/offerwall/a/g;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/a/a;->a(I)V

    :cond_0
    return-void
.end method

.method public onAdsLoaded()V
    .locals 7

    const/16 v0, 0xa

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a/g;->a(Lcom/duapps/ad/offerwall/a/g;)Lcom/facebook/ads/NativeAdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdsManager;->getUniqueNativeAdCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a/g;->b(Lcom/duapps/ad/offerwall/a/g;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a/g;->a(Lcom/duapps/ad/offerwall/a/g;)Lcom/facebook/ads/NativeAdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdsManager;->nextNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object v2

    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v4}, Lcom/duapps/ad/offerwall/a/g;->c(Lcom/duapps/ad/offerwall/a/g;)Lcom/facebook/ads/AdListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v4}, Lcom/duapps/ad/offerwall/a/g;->b(Lcom/duapps/ad/offerwall/a/g;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "FacebookAdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Facebook ads poll data..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/g;->a(Lcom/duapps/ad/offerwall/a/g;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/g;->d(Lcom/duapps/ad/offerwall/a/g;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "FacebookAdsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook data size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a/g;->b(Lcom/duapps/ad/offerwall/a/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/g;->d(Lcom/duapps/ad/offerwall/a/g;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/a/a;->b(I)V

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/g;->e(Lcom/duapps/ad/offerwall/a/g;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v4}, Lcom/duapps/ad/offerwall/a/g;->f(Lcom/duapps/ad/offerwall/a/g;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/h;->a:Lcom/duapps/ad/offerwall/a/g;

    invoke-static {v4}, Lcom/duapps/ad/offerwall/a/g;->g(Lcom/duapps/ad/offerwall/a/g;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;IJI)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
