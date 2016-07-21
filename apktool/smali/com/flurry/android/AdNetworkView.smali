.class public abstract Lcom/flurry/android/AdNetworkView;
.super Lcom/flurry/sdk/gt;


# instance fields
.field private final a:Lcom/flurry/android/AdCreative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/AdCreative;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/flurry/sdk/gt;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iput-object p2, p0, Lcom/flurry/android/AdNetworkView;->a:Lcom/flurry/android/AdCreative;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/gt;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iput-object p3, p0, Lcom/flurry/android/AdNetworkView;->a:Lcom/flurry/android/AdCreative;

    return-void
.end method


# virtual methods
.method public getAdCreative()Lcom/flurry/android/AdCreative;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/AdNetworkView;->a:Lcom/flurry/android/AdCreative;

    return-object v0
.end method

.method public onAdClicked(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/bb;->h:Lcom/flurry/sdk/bb;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gt;->onEvent(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public onAdClosed(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gt;->onEvent(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public onAdFilled(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gt;->onEvent(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public onAdPrepared(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/bb;->O:Lcom/flurry/sdk/bb;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gt;->onEvent(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public onAdShown(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gt;->onEvent(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public onAdUnFilled(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gt;->onEvent(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public onRenderFailed(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gt;->onEvent(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method
