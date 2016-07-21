.class Lcom/facebook/ads/AdChoicesView$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ads/AdChoicesView$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdChoicesView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdChoicesView$3$1;->a:Lcom/facebook/ads/AdChoicesView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/AdChoicesView$3$1;->a:Lcom/facebook/ads/AdChoicesView$3;

    iget-object v0, v0, Lcom/facebook/ads/AdChoicesView$3;->c:Lcom/facebook/ads/AdChoicesView;

    invoke-static {v0}, Lcom/facebook/ads/AdChoicesView;->a(Lcom/facebook/ads/AdChoicesView;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AdChoicesView$3$1;->a:Lcom/facebook/ads/AdChoicesView$3;

    iget-object v0, v0, Lcom/facebook/ads/AdChoicesView$3;->c:Lcom/facebook/ads/AdChoicesView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/AdChoicesView;->a(Lcom/facebook/ads/AdChoicesView;Z)Z

    new-instance v0, Lcom/facebook/ads/AdChoicesView$3$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AdChoicesView$3$1$1;-><init>(Lcom/facebook/ads/AdChoicesView$3$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView$3$1;->a:Lcom/facebook/ads/AdChoicesView$3;

    iget-object v1, v1, Lcom/facebook/ads/AdChoicesView$3;->c:Lcom/facebook/ads/AdChoicesView;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdChoicesView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
