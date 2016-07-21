.class Lcom/facebook/ads/internal/server/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/dto/e;

.field final synthetic c:Lcom/facebook/ads/internal/server/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/server/a;Landroid/content/Context;Lcom/facebook/ads/internal/dto/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/server/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/dto/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/dto/f;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/dto/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/dto/e;->e()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/internal/server/a;->a:Ljava/util/Map;

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    new-instance v1, Lcom/facebook/ads/internal/http/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/server/a$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/dto/e;

    iget-object v3, v3, Lcom/facebook/ads/internal/dto/e;->e:Lcom/facebook/ads/internal/e;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/http/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/e;)V

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/http/a;)Lcom/facebook/ads/internal/http/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/server/a;->c(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/http/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/http/d;

    iget-object v3, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    iget-object v3, v3, Lcom/facebook/ads/internal/server/a;->a:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/http/d;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    invoke-static {v3}, Lcom/facebook/ads/internal/server/a;->b(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/http/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/http/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/http/d;Lcom/facebook/ads/internal/http/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$1;->c:Lcom/facebook/ads/internal/server/a;

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/AdErrorType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/AdErrorType;->getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/b;)V

    goto :goto_0
.end method
