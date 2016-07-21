.class Lcom/estrongs/android/pop/app/b/t;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->d(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->m(Lcom/estrongs/android/pop/app/b/k;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->m(Lcom/estrongs/android/pop/app/b/k;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/k;->m(Lcom/estrongs/android/pop/app/b/k;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/android/ui/c/a;

    if-eqz v2, :cond_0

    sget v2, Lcom/estrongs/android/ui/c/a;->a:I

    sub-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/k;->g(Lcom/estrongs/android/pop/app/b/k;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/k;->b(Lcom/estrongs/android/pop/app/b/k;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/k;->n(Lcom/estrongs/android/pop/app/b/k;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/t;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->o(Lcom/estrongs/android/pop/app/b/k;)V

    :cond_1
    return-void
.end method
