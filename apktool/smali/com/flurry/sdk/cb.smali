.class public final Lcom/flurry/sdk/cb;
.super Lcom/flurry/android/AdNetworkView;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/inmobi/monetization/IMBanner;

.field private d:Lcom/inmobi/monetization/IMBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;)V

    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flurry/sdk/cb;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cb;->setFocusable(Z)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAdListener()Lcom/inmobi/monetization/IMBannerListener;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/cb;->d:Lcom/inmobi/monetization/IMBannerListener;

    return-object v0
.end method

.method getAdView()Lcom/inmobi/monetization/IMBanner;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    return-object v0
.end method

.method public initLayout()V
    .locals 8

    const/4 v7, -0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x3

    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v1, "InMobi initLayout"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/cb;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/flurry/sdk/cb;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/flurry/sdk/lr;->i()I

    move-result v0

    invoke-static {}, Lcom/flurry/sdk/lr;->h()I

    move-result v2

    if-lez v3, :cond_0

    if-le v3, v2, :cond_3

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    if-le v1, v0, :cond_4

    :cond_1
    :goto_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4}, Lcom/flurry/sdk/cc;->a(Landroid/graphics/Point;)I

    move-result v2

    if-eq v7, v2, :cond_5

    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {p0}, Lcom/flurry/sdk/cb;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    const/16 v1, 0x140

    const/16 v0, 0x32

    invoke-static {v2}, Lcom/flurry/sdk/cc;->a(I)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    :cond_2
    sget-object v2, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Determined InMobi AdSize as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/lr;->d()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v2, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/IMBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/flurry/sdk/cb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/cb$a;-><init>(Lcom/flurry/sdk/cb;Lcom/flurry/sdk/cb$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/cb;->d:Lcom/inmobi/monetization/IMBannerListener;

    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    iget-object v1, p0, Lcom/flurry/sdk/cb;->d:Lcom/inmobi/monetization/IMBannerListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cb;->setGravity(I)V

    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cb;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0, v7}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    :goto_2
    return-void

    :cond_3
    move v2, v3

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find InMobi AdSize that matches size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v1, "Could not load InMobi Ad"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onActivityDestroy()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    const-string v2, "InMobi onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/inmobi/monetization/IMBanner;

    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onActivityDestroy()V

    return-void
.end method
