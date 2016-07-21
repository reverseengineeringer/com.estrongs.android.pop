.class public Lcom/facebook/ads/NativeAdsManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/facebook/ads/internal/c;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/facebook/ads/NativeAdsManager$Listener;

.field private h:Lcom/facebook/ads/internal/i;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/c;->a:Lcom/facebook/ads/internal/c;

    sput-object v0, Lcom/facebook/ads/NativeAdsManager;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdsManager;->c:Ljava/lang/String;

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/NativeAdsManager;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/NativeAdsManager;->f:I

    iput-boolean v1, p0, Lcom/facebook/ads/NativeAdsManager;->j:Z

    iput-boolean v1, p0, Lcom/facebook/ads/NativeAdsManager;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdsManager;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdsManager;->f:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAdsManager;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/NativeAdsManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->g:Lcom/facebook/ads/NativeAdsManager$Listener;

    return-object v0
.end method


# virtual methods
.method public disableAutoRefresh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Z

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i;->c()V

    :cond_0
    return-void
.end method

.method public getUniqueNativeAdCount()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAdsManager;->j:Z

    return v0
.end method

.method public loadAds()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAdsManager;->loadAds(Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAds(Ljava/util/EnumSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/facebook/ads/internal/e;->j:Lcom/facebook/ads/internal/e;

    iget v6, p0, Lcom/facebook/ads/NativeAdsManager;->d:I

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i;->b()V

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/i;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdsManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager;->c:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/ads/NativeAdsManager;->a:Lcom/facebook/ads/internal/c;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/e;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/c;ILjava/util/EnumSet;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i;->c()V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    new-instance v1, Lcom/facebook/ads/NativeAdsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/NativeAdsManager$1;-><init>(Lcom/facebook/ads/NativeAdsManager;Ljava/util/EnumSet;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i;->a(Lcom/facebook/ads/internal/i$a;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/internal/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i;->a()V

    return-void
.end method

.method public nextNativeAd()Lcom/facebook/ads/NativeAd;
    .locals 3

    iget v1, p0, Lcom/facebook/ads/NativeAdsManager;->f:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/NativeAdsManager;->f:I

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, v1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/facebook/ads/NativeAd;

    invoke-direct {v1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Lcom/facebook/ads/NativeAd;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public setListener(Lcom/facebook/ads/NativeAdsManager$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager;->g:Lcom/facebook/ads/NativeAdsManager$Listener;

    return-void
.end method
