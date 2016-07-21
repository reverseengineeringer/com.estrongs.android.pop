.class Lcom/estrongs/android/ui/recycler/u;
.super Lcom/estrongs/android/ui/recycler/z;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/ex;

.field final synthetic e:Lcom/estrongs/android/ui/recycler/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/n;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ex;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/u;->e:Lcom/estrongs/android/ui/recycler/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/recycler/u;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/estrongs/android/ui/recycler/u;->b:I

    iput p4, p0, Lcom/estrongs/android/ui/recycler/u;->c:I

    iput-object p5, p0, Lcom/estrongs/android/ui/recycler/u;->d:Landroid/support/v4/view/ex;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/recycler/z;-><init>(Lcom/estrongs/android/ui/recycler/o;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/recycler/u;->b:I

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Landroid/support/v4/view/cn;->a(Landroid/view/View;F)V

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/recycler/u;->c:I

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/u;->d:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/u;->e:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/u;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/n;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/u;->e:Lcom/estrongs/android/ui/recycler/n;

    iget-object v0, v0, Lcom/estrongs/android/ui/recycler/n;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/u;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/u;->e:Lcom/estrongs/android/ui/recycler/n;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/recycler/n;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/u;->e:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/u;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/n;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
