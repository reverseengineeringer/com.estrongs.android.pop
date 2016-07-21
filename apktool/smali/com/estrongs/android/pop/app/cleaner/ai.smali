.class Lcom/estrongs/android/pop/app/cleaner/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/fo;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ex;

.field final synthetic b:Lcom/estrongs/android/pop/app/cleaner/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/ag;Landroid/support/v4/view/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/ai;->b:Lcom/estrongs/android/pop/app/cleaner/ag;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/ai;->a:Landroid/support/v4/view/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->a(Landroid/view/View;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ai;->a:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ai;->b:Lcom/estrongs/android/pop/app/cleaner/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/ag;->c:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->c(Lcom/estrongs/android/pop/app/cleaner/ab;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ai;->b:Lcom/estrongs/android/pop/app/cleaner/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cleaner/ag;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ai;->b:Lcom/estrongs/android/pop/app/cleaner/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/ag;->c:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->c(Lcom/estrongs/android/pop/app/cleaner/ab;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ai;->b:Lcom/estrongs/android/pop/app/cleaner/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/ag;->c:Lcom/estrongs/android/pop/app/cleaner/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/ab;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method
