.class final Lcom/flurry/sdk/cb$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cb;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cb;Lcom/flurry/sdk/cb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/cb$a;-><init>(Lcom/flurry/sdk/cb;)V

    return-void
.end method


# virtual methods
.method public onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onAdClicked(Ljava/util/Map;)V

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onBannerInteraction"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onRenderFailed(Ljava/util/Map;)V

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InMobi imAdView ad request failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onAdShown(Ljava/util/Map;)V

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView ad request completed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onAdClosed(Ljava/util/Map;)V

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView dismiss ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onLeaveApplication"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onAdClicked(Ljava/util/Map;)V

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView ad shown."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
