.class Landroid/support/design/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/bv;


# instance fields
.field final synthetic a:Landroid/support/design/internal/ScrimInsetsFrameLayout;


# direct methods
.method constructor <init>(Landroid/support/design/internal/ScrimInsetsFrameLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/fr;)Landroid/support/v4/view/fr;
    .locals 5

    iget-object v0, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->a(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->a(Landroid/support/design/internal/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->a(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->a()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->b()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->c()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->d()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    iget-object v1, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->a(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->a(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    iget-object v0, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->a(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->b(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/support/design/internal/p;->a:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v0}, Landroid/support/v4/view/cn;->d(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->f()Landroid/support/v4/view/fr;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
