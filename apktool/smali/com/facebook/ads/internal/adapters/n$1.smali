.class Lcom/facebook/ads/internal/adapters/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/facebook/ads/internal/adapters/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/n;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n$1;->c:Lcom/facebook/ads/internal/adapters/n;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/n$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/n$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/facebook/ads/internal/util/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/n$1;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/n$1;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/util/o;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/n$1;->c:Lcom/facebook/ads/internal/adapters/n;

    invoke-static {v3}, Lcom/facebook/ads/internal/adapters/n;->a(Lcom/facebook/ads/internal/adapters/n;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
