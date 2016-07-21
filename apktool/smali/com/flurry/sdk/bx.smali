.class public final Lcom/flurry/sdk/bx;
.super Lcom/flurry/android/AdNetworkView;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/google/android/gms/ads/AdView;

.field private f:Lcom/google/android/gms/ads/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/bx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;)V

    const-string v0, "com.flurry.gms.ads.MY_AD_UNIT_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bx;->b:Ljava/lang/String;

    const-string v0, "com.flurry.gms.ads.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bx;->c:Ljava/lang/String;

    const-string v0, "com.flurry.gms.ads.test"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bx;->d:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bx;->setFocusable(Z)V

    return-void
.end method

.method private a(II)Lcom/google/android/gms/ads/g;
    .locals 3

    const/16 v0, 0x2d8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-lt p2, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/g;->d:Lcom/google/android/gms/ads/g;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x1d4

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3c

    if-lt p2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/ads/g;->b:Lcom/google/android/gms/ads/g;

    goto :goto_0

    :cond_1
    const/16 v0, 0x140

    if-lt p1, v0, :cond_2

    const/16 v0, 0x32

    if-lt p2, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/ads/g;

    goto :goto_0

    :cond_2
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_3

    const/16 v0, 0xfa

    if-lt p2, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/ads/g;->e:Lcom/google/android/gms/ads/g;

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v2, "Could not find GMS AdSize that matches size"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;II)Lcom/google/android/gms/ads/g;
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lr;->i()I

    move-result v0

    invoke-static {}, Lcom/flurry/sdk/lr;->h()I

    move-result v1

    if-lez p2, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    move p2, v1

    :cond_1
    if-lez p3, :cond_2

    if-le p3, v0, :cond_3

    :cond_2
    move p3, v0

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/bx;->a(II)Lcom/google/android/gms/ads/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAdListener()Lcom/google/android/gms/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/bx;->f:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method getAdView()Lcom/google/android/gms/ads/AdView;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public initLayout()V
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v2, "GMS AdView initLayout."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/bx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/bx;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/flurry/sdk/bx;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/flurry/sdk/bx;->a(Landroid/content/Context;II)Lcom/google/android/gms/ads/g;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x6

    sget-object v3, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find GMS AdSize that matches {width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", height "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Determined GMS AdSize as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that best matches {width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", height = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v4, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/bx$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flurry/sdk/bx$a;-><init>(Lcom/flurry/sdk/bx;Lcom/flurry/sdk/bx$1;)V

    iput-object v1, p0, Lcom/flurry/sdk/bx;->f:Lcom/google/android/gms/ads/a;

    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/g;)V

    iget-object v1, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/bx;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/bx;->f:Lcom/google/android/gms/ads/a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/bx;->setGravity(I)V

    iget-object v1, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/g;->b(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/g;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/bx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/google/android/gms/ads/f;

    invoke-direct {v0}, Lcom/google/android/gms/ads/f;-><init>()V

    iget-boolean v1, p0, Lcom/flurry/sdk/bx;->d:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v2, "GMS AdView set to Test Mode."

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/ads/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/flurry/sdk/bx;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/bx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/f;

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/d;)V

    goto/16 :goto_0
.end method

.method public onActivityDestroy()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v2, "GMS AdView onDestroy."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bx;->e:Lcom/google/android/gms/ads/AdView;

    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onActivityDestroy()V

    return-void
.end method
