.class public Lcom/facebook/ads/internal/view/b;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final a:Lcom/facebook/ads/NativeAdViewAttributes;

.field private final b:Lcom/facebook/ads/NativeAd;

.field private final c:I

.field private final d:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)V
    .locals 8

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdViewAttributes;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/b;->setBackgroundColor(I)V

    iput-object p4, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/NativeAdViewAttributes;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/b;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/b;->c:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/facebook/ads/internal/view/b;->c:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/facebook/ads/internal/view/m;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x438c0000    # 280.0f

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->setMinWidth(I)V

    const v0, 0x43bb8000    # 375.0f

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->setMaxWidth(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/b;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/facebook/ads/internal/view/b$1;->a:[I

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdView$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/facebook/ads/internal/view/b;->a(Landroid/view/ViewGroup;Lcom/facebook/ads/NativeAdView$Type;)V

    new-instance v2, Lcom/facebook/ads/AdChoicesView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V

    invoke-virtual {v2}, Lcom/facebook/ads/AdChoicesView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/m;->addView(Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/b;->b(Landroid/view/ViewGroup;)V

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/b;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 6

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdViewAttributes;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getAutoplay()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaView;->setAutoplay(Z)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/facebook/ads/NativeAdView$Type;)V
    .locals 6

    new-instance v0, Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->b:Lcom/facebook/ads/NativeAd;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p0, p2}, Lcom/facebook/ads/internal/view/b;->a(Lcom/facebook/ads/NativeAdView$Type;)Z

    move-result v4

    invoke-direct {p0, p2}, Lcom/facebook/ads/internal/view/b;->b(Lcom/facebook/ads/NativeAdView$Type;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;ZI)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, p2}, Lcom/facebook/ads/internal/view/b;->b(Lcom/facebook/ads/NativeAdView$Type;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/b;->b:Lcom/facebook/ads/NativeAd;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/b;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/b;->getCallToActionView()Landroid/widget/TextView;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/NativeAdView$Type;)Z
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_300:Lcom/facebook/ads/NativeAdView$Type;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeAdView$Type;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/ads/NativeAdView$Type;)I
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/view/b$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdView$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    add-int/lit16 v0, v0, -0xb4

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    add-int/lit16 v0, v0, -0xb4

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 5

    new-instance v0, Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b;->b:Lcom/facebook/ads/NativeAd;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/component/d;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42dc0000    # 110.0f

    iget-object v4, p0, Lcom/facebook/ads/internal/view/b;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
