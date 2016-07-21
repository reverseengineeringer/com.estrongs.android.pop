.class Lcom/estrongs/android/pop/app/analysis/a/r;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/r;->a:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/r;->a:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->f(Lcom/estrongs/android/pop/app/analysis/a/o;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/r;->a:Lcom/estrongs/android/pop/app/analysis/a/o;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/o;Landroid/support/v7/widget/LinearLayoutManager;)Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/r;->a:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0, p3}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/o;I)V

    :cond_0
    return-void
.end method
