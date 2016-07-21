.class Lcom/estrongs/android/pop/app/cleaner/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/fo;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/support/v4/view/ex;

.field final synthetic c:Lcom/estrongs/android/pop/app/cleaner/p;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/p;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/q;->c:Lcom/estrongs/android/pop/app/cleaner/p;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/q;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cleaner/q;->b:Landroid/support/v4/view/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->a(Landroid/view/View;F)V

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/q;->b:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/q;->c:Lcom/estrongs/android/pop/app/cleaner/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/q;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/p;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/q;->c:Lcom/estrongs/android/pop/app/cleaner/p;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/p;->a(Lcom/estrongs/android/pop/app/cleaner/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/q;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/q;->c:Lcom/estrongs/android/pop/app/cleaner/p;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/p;->b(Lcom/estrongs/android/pop/app/cleaner/p;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/q;->c:Lcom/estrongs/android/pop/app/cleaner/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/q;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/p;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
