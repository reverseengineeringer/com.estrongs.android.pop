.class Lcom/facebook/ads/NativeAdsManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/util/l;


# instance fields
.field final synthetic a:[Lcom/facebook/ads/NativeAd;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:[I

.field final synthetic e:Lcom/facebook/ads/NativeAdsManager$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAdsManager$1;[Lcom/facebook/ads/NativeAd;ILjava/util/List;[I)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->a:[Lcom/facebook/ads/NativeAd;

    iput p3, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:I

    iput-object p4, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->d:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->a:[Lcom/facebook/ads/NativeAd;

    iget v3, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:I

    new-instance v4, Lcom/facebook/ads/NativeAd;

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->a(Lcom/facebook/ads/NativeAdsManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->c:Ljava/util/List;

    iget v6, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/p;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/p;Lcom/facebook/ads/internal/dto/d;)V

    aput-object v4, v2, v3

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->d:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->d:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/NativeAdsManager;->a(Lcom/facebook/ads/NativeAdsManager;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->b(Lcom/facebook/ads/NativeAdsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAdsManager;->a(Lcom/facebook/ads/NativeAdsManager;I)I

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->a:[Lcom/facebook/ads/NativeAd;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v4, v4, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v4}, Lcom/facebook/ads/NativeAdsManager;->b(Lcom/facebook/ads/NativeAdsManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->e:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdsLoaded()V

    :cond_2
    return-void
.end method
