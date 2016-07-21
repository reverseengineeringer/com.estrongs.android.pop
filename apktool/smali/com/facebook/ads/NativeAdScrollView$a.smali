.class Lcom/facebook/ads/NativeAdScrollView$a;
.super Landroid/support/v4/view/bw;


# instance fields
.field final synthetic a:Lcom/facebook/ads/NativeAdScrollView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAdScrollView;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-direct {p0}, Landroid/support/v4/view/bw;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->a(Lcom/facebook/ads/NativeAdScrollView;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v1}, Lcom/facebook/ads/NativeAdScrollView;->b(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdsManager;->getUniqueNativeAdCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v2}, Lcom/facebook/ads/NativeAdScrollView;->b(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdsManager;->nextNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/ads/NativeAd;->a(Z)V

    iget-object v3, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdScrollView$a;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    :cond_0
    :goto_0
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->f(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;->destroyView(Lcom/facebook/ads/NativeAd;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->d(Lcom/facebook/ads/NativeAdScrollView;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v2}, Lcom/facebook/ads/NativeAdScrollView;->c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v3}, Lcom/facebook/ads/NativeAdScrollView;->e(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/ads/NativeAdView;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->f(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;->createView(Lcom/facebook/ads/NativeAd;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
