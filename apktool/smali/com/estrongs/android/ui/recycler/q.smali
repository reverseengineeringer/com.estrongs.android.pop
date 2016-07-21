.class Lcom/estrongs/android/ui/recycler/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/estrongs/android/ui/recycler/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/n;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/q;->b:Lcom/estrongs/android/ui/recycler/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/recycler/q;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, -0x1

    move v1, v2

    move v3, v4

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    if-le v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/estrongs/android/ui/recycler/r;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/ui/recycler/r;-><init>(Lcom/estrongs/android/ui/recycler/q;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v5, p0, Lcom/estrongs/android/ui/recycler/q;->b:Lcom/estrongs/android/ui/recycler/n;

    invoke-static {v5}, Lcom/estrongs/android/ui/recycler/n;->c(Lcom/estrongs/android/ui/recycler/n;)I

    move-result v5

    mul-int/2addr v0, v5

    int-to-long v6, v0

    invoke-static {v1, v4, v6, v7}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/q;->b:Lcom/estrongs/android/ui/recycler/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/recycler/n;->d(Lcom/estrongs/android/ui/recycler/n;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
