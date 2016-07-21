.class public Lcom/facebook/ads/NativeAdScrollView;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final DEFAULT_INSET:I = 0x14

.field public static final DEFAULT_MAX_ADS:I = 0x5


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/NativeAdsManager;

.field private final c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

.field private final d:Lcom/facebook/ads/NativeAdView$Type;

.field private final e:I

.field private final f:Lcom/facebook/ads/NativeAdScrollView$a;

.field private final g:Lcom/facebook/ads/NativeAdScrollView$b;

.field private final h:Lcom/facebook/ads/NativeAdViewAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;I)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdsManager;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeAdsManager not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide one of AdLayoutProperties or a CustomAdView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/NativeAdScrollView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdScrollView;->b:Lcom/facebook/ads/NativeAdsManager;

    iput-object p5, p0, Lcom/facebook/ads/NativeAdScrollView;->h:Lcom/facebook/ads/NativeAdViewAttributes;

    iput-object p3, p0, Lcom/facebook/ads/NativeAdScrollView;->c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    iput-object p4, p0, Lcom/facebook/ads/NativeAdScrollView;->d:Lcom/facebook/ads/NativeAdView$Type;

    iput p6, p0, Lcom/facebook/ads/NativeAdScrollView;->e:I

    new-instance v0, Lcom/facebook/ads/NativeAdScrollView$a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/NativeAdScrollView$a;-><init>(Lcom/facebook/ads/NativeAdScrollView;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$a;

    new-instance v0, Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/NativeAdScrollView$b;-><init>(Lcom/facebook/ads/NativeAdScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdScrollView$b;

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdScrollView$b;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdScrollView$b;->setAdapter(Landroid/support/v4/view/bw;)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAdScrollView;->setInset(I)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$a;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdScrollView$a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAdScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;)V
    .locals 7

    const/4 v3, 0x0

    new-instance v5, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {v5}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdScrollView;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/NativeAdScrollView;->e:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdsManager;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->b:Lcom/facebook/ads/NativeAdsManager;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->d:Lcom/facebook/ads/NativeAdView$Type;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/NativeAdScrollView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->h:Lcom/facebook/ads/NativeAdViewAttributes;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    return-object v0
.end method


# virtual methods
.method public setInset(I)V
    .locals 4

    const/4 v3, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {v2, v1, v3, v1, v3}, Lcom/facebook/ads/NativeAdScrollView$b;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdScrollView$b;

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdScrollView$b;->setPageMargin(I)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/NativeAdScrollView$b;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method
