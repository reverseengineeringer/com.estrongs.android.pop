.class Lcom/estrongs/android/ui/fastscroller/c;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/fastscroller/c;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/c;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/c;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lcom/estrongs/android/ui/fastscroller/a/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/estrongs/android/ui/fastscroller/a/b/a;->a(Landroid/support/v7/widget/RecyclerView;)F

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/c;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-static {v1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/c;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(F)V

    :cond_1
    return-void
.end method
