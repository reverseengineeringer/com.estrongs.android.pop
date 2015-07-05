.class Lcom/estrongs/android/ui/e/iz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/iw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/iz;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iz;->a:Lcom/estrongs/android/ui/e/iw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/iw;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iz;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/iw;->b(Lcom/estrongs/android/ui/e/iw;)Lcom/estrongs/android/ui/e/ic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iz;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/iw;->b(Lcom/estrongs/android/ui/e/iw;)Lcom/estrongs/android/ui/e/ic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/ic;->a(Landroid/view/animation/Animation;)V

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
