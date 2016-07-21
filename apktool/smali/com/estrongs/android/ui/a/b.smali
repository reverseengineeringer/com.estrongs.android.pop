.class public final Lcom/estrongs/android/ui/a/b;
.super Landroid/support/v7/widget/LinearLayoutManager;


# instance fields
.field private a:Lcom/estrongs/android/ui/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/estrongs/android/ui/a/c;

    invoke-direct {v0, p1, p0}, Lcom/estrongs/android/ui/a/c;-><init>(Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Lcom/estrongs/android/ui/a/c;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Lcom/estrongs/android/ui/a/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/c;->a()F

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Lcom/estrongs/android/ui/a/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/c;->a(F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Lcom/estrongs/android/ui/a/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/c;->setTargetPosition(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Lcom/estrongs/android/ui/a/c;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/a/b;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Lcom/estrongs/android/ui/a/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/c;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
