.class public Lcom/facebook/ads/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/server/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/ads/internal/server/a;

.field private final d:Lcom/facebook/ads/internal/e;

.field private final e:Lcom/facebook/ads/internal/c;

.field private final f:Lcom/facebook/ads/AdSize;

.field private final g:I

.field private final h:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/lang/Runnable;

.field private l:Lcom/facebook/ads/internal/i$a;

.field private m:Lcom/facebook/ads/internal/dto/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/e;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/c;ILjava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/e;",
            "Lcom/facebook/ads/AdSize;",
            "Lcom/facebook/ads/internal/c;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/i;->d:Lcom/facebook/ads/internal/e;

    iput-object p4, p0, Lcom/facebook/ads/internal/i;->f:Lcom/facebook/ads/AdSize;

    iput-object p5, p0, Lcom/facebook/ads/internal/i;->e:Lcom/facebook/ads/internal/c;

    iput p6, p0, Lcom/facebook/ads/internal/i;->g:I

    iput-object p7, p0, Lcom/facebook/ads/internal/i;->h:Ljava/util/EnumSet;

    new-instance v0, Lcom/facebook/ads/internal/server/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/server/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i;->c:Lcom/facebook/ads/internal/server/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->c:Lcom/facebook/ads/internal/server/a;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/i;->i:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i;->j:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/i$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i$1;-><init>(Lcom/facebook/ads/internal/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/adapters/p;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/facebook/ads/internal/i;->m:Lcom/facebook/ads/internal/dto/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/dto/c;->c()Lcom/facebook/ads/internal/dto/a;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/dto/c;->b()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/facebook/ads/internal/dto/a;->b:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/internal/server/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/server/AdPlacementType;

    invoke-static {v0, v4}, Lcom/facebook/ads/internal/adapters/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/server/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/server/AdPlacementType;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/internal/server/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/server/AdPlacementType;

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "data"

    iget-object v1, v1, Lcom/facebook/ads/internal/dto/a;->c:Lorg/json/JSONObject;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "definition"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/dto/c;->a()Lcom/facebook/ads/internal/dto/d;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/internal/adapters/p;

    iget-object v1, p0, Lcom/facebook/ads/internal/i;->a:Landroid/content/Context;

    new-instance v5, Lcom/facebook/ads/internal/i$2;

    invoke-direct {v5, p0, v3}, Lcom/facebook/ads/internal/i$2;-><init>(Lcom/facebook/ads/internal/i;Ljava/util/List;)V

    invoke-virtual {v0, v1, v5, v4}, Lcom/facebook/ads/internal/adapters/p;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/q;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/internal/dto/c;->c()Lcom/facebook/ads/internal/dto/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public a()V
    .locals 8

    new-instance v0, Lcom/facebook/ads/internal/dto/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/internal/i;->f:Lcom/facebook/ads/AdSize;

    iget-object v4, p0, Lcom/facebook/ads/internal/i;->d:Lcom/facebook/ads/internal/e;

    iget-object v5, p0, Lcom/facebook/ads/internal/i;->e:Lcom/facebook/ads/internal/c;

    iget v6, p0, Lcom/facebook/ads/internal/i;->g:I

    iget-object v7, p0, Lcom/facebook/ads/internal/i;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/dto/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/e;Lcom/facebook/ads/internal/c;IZ)V

    iget-object v1, p0, Lcom/facebook/ads/internal/i;->c:Lcom/facebook/ads/internal/server/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/server/a;->a(Landroid/content/Context;Lcom/facebook/ads/internal/dto/e;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/b;)V
    .locals 4

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/i;->k:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i;->l:Lcom/facebook/ads/internal/i$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->l:Lcom/facebook/ads/internal/i$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i$a;->a(Lcom/facebook/ads/internal/b;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i;->l:Lcom/facebook/ads/internal/i$a;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/server/d;)V
    .locals 6

    invoke-virtual {p1}, Lcom/facebook/ads/internal/server/d;->b()Lcom/facebook/ads/internal/dto/c;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no placement in response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/i;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/dto/c;->a()Lcom/facebook/ads/internal/dto/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/dto/d;->b()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    const-wide/32 v0, 0x1b7740

    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/internal/i;->j:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/ads/internal/i;->k:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iput-object v2, p0, Lcom/facebook/ads/internal/i;->m:Lcom/facebook/ads/internal/dto/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/i;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i;->l:Lcom/facebook/ads/internal/i$a;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->l:Lcom/facebook/ads/internal/i$a;

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/AdErrorType;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/AdErrorType;->getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/i$a;->a(Lcom/facebook/ads/internal/b;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/internal/i;->l:Lcom/facebook/ads/internal/i$a;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/i$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/i;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->c:Lcom/facebook/ads/internal/server/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/server/a;->a()V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/i;->i:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/i;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
