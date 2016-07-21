.class Lcom/facebook/ads/internal/server/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b;

.field final synthetic b:Lcom/facebook/ads/internal/server/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/server/a$4;->b:Lcom/facebook/ads/internal/server/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/server/a$4;->a:Lcom/facebook/ads/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$4;->b:Lcom/facebook/ads/internal/server/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/server/a;->f(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/server/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$4;->a:Lcom/facebook/ads/internal/b;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/server/a$a;->a(Lcom/facebook/ads/internal/b;)V

    return-void
.end method
