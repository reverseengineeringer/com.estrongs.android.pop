.class public Lcom/flurry/sdk/bu;
.super Lcom/flurry/android/AdNetworkView;

# interfaces
.implements Lcom/facebook/ads/AdListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/facebook/ads/AdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/bu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;)V

    const-string v0, "com.flurry.fan.MY_APP_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bu;->b:Ljava/lang/String;

    const-string v0, "com.flurry.fan.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bu;->c:Ljava/lang/String;

    const-string v0, "com.flurry.fan.test"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bu;->d:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bu;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public initLayout()V
    .locals 4

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bu;->a:Ljava/lang/String;

    const-string v2, "FAN banner initLayout."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/bu;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/bu;->b:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v1, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    iget-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bu;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/bu;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bu;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bu;->a:Ljava/lang/String;

    const-string v2, "FAN banner onDestroy."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onActivityDestroy()V

    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bu;->a:Ljava/lang/String;

    const-string v2, "FAN banner onAdClicked."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bu;->onAdClicked(Ljava/util/Map;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bu;->onAdShown(Ljava/util/Map;)V

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bu;->a:Ljava/lang/String;

    const-string v2, "FAN banner onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bu;->onRenderFailed(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bu;->e:Lcom/facebook/ads/AdView;

    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/bu;->a:Ljava/lang/String;

    const-string v2, "FAN banner onError."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
