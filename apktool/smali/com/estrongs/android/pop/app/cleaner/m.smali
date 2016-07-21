.class Lcom/estrongs/android/pop/app/cleaner/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/fo;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ex;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic c:Lcom/estrongs/android/pop/app/cleaner/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/i;Landroid/support/v4/view/ex;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/m;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/m;->a:Landroid/support/v4/view/ex;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cleaner/m;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->f(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/m;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Lcom/estrongs/android/pop/app/cleaner/i;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/m;->a:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/m;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/i;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/m;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/m;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/m;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Lcom/estrongs/android/pop/app/cleaner/i;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/m;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/i;->c(Lcom/estrongs/android/pop/app/cleaner/i;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/m;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/i;->c(Lcom/estrongs/android/pop/app/cleaner/i;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method
