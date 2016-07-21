.class Lcom/facebook/ads/internal/adapters/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->b(Lcom/facebook/ads/internal/adapters/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/e;->c(Lcom/facebook/ads/internal/adapters/e;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/e;->d(Lcom/facebook/ads/internal/adapters/e;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/util/g;->a(Landroid/content/Context;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->e(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e$a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->e(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e$a;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->h(Lcom/facebook/ads/internal/adapters/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/e;->f(Lcom/facebook/ads/internal/adapters/e;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/e;->g(Lcom/facebook/ads/internal/adapters/e;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
