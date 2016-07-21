.class Lcom/flurry/android/ads/FlurryAdBanner$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/ads/FlurryAdBanner;


# direct methods
.method constructor <init>(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdBanner$1;->a:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/d;)V
    .locals 3

    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdBanner$1;->a:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-static {v1}, Lcom/flurry/android/ads/FlurryAdBanner;->a(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/sdk/r;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner$1;->a:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-static {v0}, Lcom/flurry/android/ads/FlurryAdBanner;->b(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/android/ads/FlurryAdBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/ads/FlurryAdBanner$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/flurry/android/ads/FlurryAdBanner$1$1;-><init>(Lcom/flurry/android/ads/FlurryAdBanner$1;Lcom/flurry/sdk/d;Lcom/flurry/android/ads/FlurryAdBannerListener;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/d;

    invoke-virtual {p0, p1}, Lcom/flurry/android/ads/FlurryAdBanner$1;->a(Lcom/flurry/sdk/d;)V

    return-void
.end method
