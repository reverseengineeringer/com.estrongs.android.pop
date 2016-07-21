.class Lcom/facebook/ads/internal/view/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d;

.field final synthetic b:Lcom/facebook/ads/internal/view/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d;Lcom/facebook/ads/internal/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d$4;->b:Lcom/facebook/ads/internal/view/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d$4;->a:Lcom/facebook/ads/internal/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$4;->a:Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d;->getVideoURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$4;->b:Lcom/facebook/ads/internal/view/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/d;->e(Lcom/facebook/ads/internal/view/d;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
