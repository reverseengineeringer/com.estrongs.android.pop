.class public Lcom/duapps/ad/offerwall/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/ads/NativeAdsManager;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/duapps/ad/offerwall/a/a;

.field private f:J

.field private g:I

.field private h:I

.field private i:Lcom/facebook/ads/NativeAdsManager$Listener;

.field private j:Lcom/facebook/ads/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/duapps/ad/offerwall/a/a;)V
    .locals 4

    const/16 v3, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->d:Ljava/util/List;

    new-instance v0, Lcom/duapps/ad/offerwall/a/h;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/a/h;-><init>(Lcom/duapps/ad/offerwall/a/g;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->i:Lcom/facebook/ads/NativeAdsManager$Listener;

    new-instance v0, Lcom/duapps/ad/offerwall/a/i;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/a/i;-><init>(Lcom/duapps/ad/offerwall/a/g;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->j:Lcom/facebook/ads/AdListener;

    iput-object p3, p0, Lcom/duapps/ad/offerwall/a/g;->e:Lcom/duapps/ad/offerwall/a/a;

    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/g;->a:Landroid/content/Context;

    iput p2, p0, Lcom/duapps/ad/offerwall/a/g;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/ag;->a(Landroid/content/Context;)Lcom/duapps/ad/base/ag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duapps/ad/base/ag;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/NativeAdsManager;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/g;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/ads/NativeAdsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/duapps/ad/offerwall/a/g;->b:Lcom/facebook/ads/NativeAdsManager;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->b:Lcom/facebook/ads/NativeAdsManager;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/g;->i:Lcom/facebook/ads/NativeAdsManager$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdsManager;->setListener(Lcom/facebook/ads/NativeAdsManager$Listener;)V

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/g;)Lcom/facebook/ads/NativeAdsManager;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->b:Lcom/facebook/ads/NativeAdsManager;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a/g;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/a/g;)Lcom/facebook/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->j:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/a/g;)Lcom/duapps/ad/offerwall/a/a;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->e:Lcom/duapps/ad/offerwall/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/a/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/offerwall/a/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/duapps/ad/offerwall/a/g;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/duapps/ad/offerwall/a/g;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/offerwall/a/g;->g:I

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a/g;->c:Z

    return v0
.end method

.method public b()V
    .locals 3

    const-string v0, "FacebookAdsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duapps/ad/offerwall/a/g;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/duapps/ad/offerwall/a/g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/offerwall/a/g;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a/g;->c:Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdsManager;->loadAds()V

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/g;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdsManager;->getUniqueNativeAdCount()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdsManager;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/g;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/g;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 2

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/g;->d:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->e:Lcom/duapps/ad/offerwall/a/a;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
