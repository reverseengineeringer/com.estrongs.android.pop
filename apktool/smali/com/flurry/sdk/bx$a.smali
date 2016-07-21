.class final Lcom/flurry/sdk/bx$a;
.super Lcom/google/android/gms/ads/a;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bx;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/bx$a;->a:Lcom/flurry/sdk/bx;

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/bx;Lcom/flurry/sdk/bx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/bx$a;-><init>(Lcom/flurry/sdk/bx;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/bx$a;->a:Lcom/flurry/sdk/bx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bx;->onAdClosed(Ljava/util/Map;)V

    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdClosed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/bx$a;->a:Lcom/flurry/sdk/bx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bx;->onRenderFailed(Ljava/util/Map;)V

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/bx;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMS AdView onAdFailedToLoad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/bx$a;->a:Lcom/flurry/sdk/bx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bx;->onAdClicked(Ljava/util/Map;)V

    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLeftApplication."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/bx$a;->a:Lcom/flurry/sdk/bx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bx;->onAdShown(Ljava/util/Map;)V

    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 3

    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdOpened."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
