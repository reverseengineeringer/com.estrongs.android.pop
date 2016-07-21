.class Lcom/estrongs/android/ui/recycler/s;
.super Lcom/estrongs/android/ui/recycler/z;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/support/v4/view/ex;

.field final synthetic c:Lcom/estrongs/android/ui/recycler/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/n;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ex;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/s;->c:Lcom/estrongs/android/ui/recycler/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/recycler/s;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/estrongs/android/ui/recycler/s;->b:Landroid/support/v4/view/ex;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/recycler/z;-><init>(Lcom/estrongs/android/ui/recycler/o;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/s;->b:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/s;->c:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/s;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/n;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/s;->c:Lcom/estrongs/android/ui/recycler/n;

    iget-object v0, v0, Lcom/estrongs/android/ui/recycler/n;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/s;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/s;->c:Lcom/estrongs/android/ui/recycler/n;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/recycler/n;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/s;->c:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/s;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/n;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
