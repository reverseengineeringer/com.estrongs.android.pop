.class Lcom/estrongs/android/pop/app/cleaner/h;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/cleaner/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/cleaner/i;->a(II)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->e(Lcom/estrongs/android/pop/app/cleaner/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    if-le p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Lcom/estrongs/android/pop/app/cleaner/c;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/h;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    const-string v1, "Clean_rp_scroll_pv"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Lcom/estrongs/android/pop/app/cleaner/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
