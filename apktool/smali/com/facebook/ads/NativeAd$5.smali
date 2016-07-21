.class Lcom/facebook/ads/NativeAd$5;
.super Lcom/facebook/ads/internal/adapters/c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd$5;->b:Lcom/facebook/ads/NativeAd;

    iput-object p2, p0, Lcom/facebook/ads/NativeAd$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$5;->a:Ljava/lang/String;

    return-object v0
.end method
