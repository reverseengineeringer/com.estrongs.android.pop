.class public final Lcom/flurry/sdk/cf;
.super Lcom/flurry/android/AdNetworkView;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/millennialmedia/android/MMAdView;

.field private e:Lcom/millennialmedia/android/RequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;)V

    const-string v0, "com.flurry.millennial.MYAPID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cf;->b:Ljava/lang/String;

    const-string v0, "com.flurry.millennial.MYAPIDRECTANGLE"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cf;->setFocusable(Z)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAdListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/cf;->e:Lcom/millennialmedia/android/RequestListener;

    return-object v0
.end method

.method getAdView()Lcom/millennialmedia/android/MMAdView;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method

.method public initLayout()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    sget-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    const-string v1, "Millennial initLayout"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v2}, Lcom/flurry/sdk/cg;->a(Landroid/graphics/Point;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    sget-object v2, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find Millennial AdSize that matches size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    const-string v1, "Could not load Millennial Ad"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/flurry/sdk/cg;->a(I)Landroid/graphics/Point;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v2, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find Millennial AdSize that matches size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    const-string v1, "Could not load Millennial Ad"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Determined Millennial AdSize as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v0, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cf;->setId(I)V

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    iget-object v4, p0, Lcom/flurry/sdk/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    invoke-virtual {p0, v7}, Lcom/flurry/sdk/cf;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/flurry/sdk/cf;->setVerticalScrollBarEnabled(Z)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cf;->setGravity(I)V

    new-instance v0, Lcom/flurry/sdk/cf$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/cf$a;-><init>(Lcom/flurry/sdk/cf;Lcom/flurry/sdk/cf$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/cf;->e:Lcom/millennialmedia/android/RequestListener;

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, p0, Lcom/flurry/sdk/cf;->e:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cf;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    goto/16 :goto_0
.end method

.method public onActivityDestroy()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    const-string v2, "Millennial onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/cf;->d:Lcom/millennialmedia/android/MMAdView;

    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onActivityDestroy()V

    return-void
.end method
