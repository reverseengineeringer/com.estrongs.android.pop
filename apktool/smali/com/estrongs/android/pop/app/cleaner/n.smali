.class Lcom/estrongs/android/pop/app/cleaner/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/estrongs/android/pop/app/cleaner/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/i;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/n;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/n;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cleaner/n;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/n;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Lcom/estrongs/android/pop/app/cleaner/i;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/n;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/i;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/n;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/n;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/i;->c(Lcom/estrongs/android/pop/app/cleaner/i;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/n;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/n;->c:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/i;->c(Lcom/estrongs/android/pop/app/cleaner/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
