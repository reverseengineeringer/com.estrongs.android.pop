.class public Lcom/flurry/sdk/bw;
.super Lcom/flurry/sdk/bi;

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private f:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/bw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bw;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/bi;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    const-string v0, "com.flurry.fan.MY_APP_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bw;->c:Ljava/lang/String;

    const-string v0, "com.flurry.fan.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bw;->d:Ljava/lang/String;

    const-string v0, "com.flurry.fan.test"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bw;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/flurry/sdk/bw;->c()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/bw;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/bw;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    iget-object v2, p0, Lcom/flurry/sdk/bw;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    iget-object v0, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    iget-object v0, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bw;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onAdClicked."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bw;->b(Ljava/util/Map;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bw;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bw;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onError."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bw;->d(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bw;->f:Lcom/facebook/ads/InterstitialAd;

    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bw;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onInterstitialDismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bw;->c(Ljava/util/Map;)V

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bw;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onInterstitialDisplayed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bw;->a(Ljava/util/Map;)V

    return-void
.end method
