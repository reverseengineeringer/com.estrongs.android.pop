.class public Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;
.super Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;


# instance fields
.field private f:Lcom/estrongs/android/ui/fastscroller/a/b/d;

.field private g:Lcom/estrongs/android/ui/fastscroller/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/fastscroller/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/cn;->v(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/cn;->v(Landroid/view/View;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/fastscroller/a/a;-><init>(FF)V

    new-instance v1, Lcom/estrongs/android/ui/fastscroller/a/b/c;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/fastscroller/a/b/c;-><init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->f:Lcom/estrongs/android/ui/fastscroller/a/b/d;

    new-instance v1, Lcom/estrongs/android/ui/fastscroller/a/a/a;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/fastscroller/a/a/a;-><init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->g:Lcom/estrongs/android/ui/fastscroller/a/a/a;

    return-void
.end method

.method public a(F)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->g:Lcom/estrongs/android/ui/fastscroller/a/a/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->d:Lcom/estrongs/android/ui/fastscroller/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->d:Lcom/estrongs/android/ui/fastscroller/d;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/fastscroller/d;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->g:Lcom/estrongs/android/ui/fastscroller/a/a/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/fastscroller/a/a/a;->a(F)F

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->e:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_3

    int-to-float v0, v1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/cn;->d(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public b(FF)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/fastscroller/a/a;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/fastscroller/a/a;-><init>(FF)V

    new-instance v1, Lcom/estrongs/android/ui/fastscroller/a/b/c;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/fastscroller/a/b/c;-><init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->f:Lcom/estrongs/android/ui/fastscroller/a/b/d;

    new-instance v1, Lcom/estrongs/android/ui/fastscroller/a/a/a;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/fastscroller/a/a/a;-><init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->g:Lcom/estrongs/android/ui/fastscroller/a/a/a;

    return-void
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f03019f

    return v0
.end method

.method protected getScrollProgressCalculator()Lcom/estrongs/android/ui/fastscroller/a/b/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->f:Lcom/estrongs/android/ui/fastscroller/a/b/d;

    return-object v0
.end method
