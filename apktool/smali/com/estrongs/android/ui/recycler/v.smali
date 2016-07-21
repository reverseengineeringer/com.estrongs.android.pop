.class Lcom/estrongs/android/ui/recycler/v;
.super Lcom/estrongs/android/ui/recycler/z;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/recycler/x;

.field final synthetic b:Landroid/support/v4/view/ex;

.field final synthetic c:Lcom/estrongs/android/ui/recycler/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/n;Lcom/estrongs/android/ui/recycler/x;Landroid/support/v4/view/ex;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/v;->c:Lcom/estrongs/android/ui/recycler/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/recycler/v;->a:Lcom/estrongs/android/ui/recycler/x;

    iput-object p3, p0, Lcom/estrongs/android/ui/recycler/v;->b:Landroid/support/v4/view/ex;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/recycler/z;-><init>(Lcom/estrongs/android/ui/recycler/o;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/v;->b:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    invoke-static {p1, v2}, Landroid/support/v4/view/cn;->a(Landroid/view/View;F)V

    invoke-static {p1, v2}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/v;->c:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/v;->a:Lcom/estrongs/android/ui/recycler/x;

    iget-object v1, v1, Lcom/estrongs/android/ui/recycler/x;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/recycler/n;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/v;->c:Lcom/estrongs/android/ui/recycler/n;

    iget-object v0, v0, Lcom/estrongs/android/ui/recycler/n;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/v;->a:Lcom/estrongs/android/ui/recycler/x;

    iget-object v1, v1, Lcom/estrongs/android/ui/recycler/x;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/v;->c:Lcom/estrongs/android/ui/recycler/n;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/recycler/n;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/v;->c:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/v;->a:Lcom/estrongs/android/ui/recycler/x;

    iget-object v1, v1, Lcom/estrongs/android/ui/recycler/x;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/recycler/n;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
