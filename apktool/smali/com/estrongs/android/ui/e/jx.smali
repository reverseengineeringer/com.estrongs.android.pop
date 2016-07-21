.class Lcom/estrongs/android/ui/e/jx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ju;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ju;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jx;->a:Lcom/estrongs/android/ui/e/ju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jx;->a:Lcom/estrongs/android/ui/e/ju;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/ju;->a(Lcom/estrongs/android/ui/e/ju;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jx;->a:Lcom/estrongs/android/ui/e/ju;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ju;->b(Lcom/estrongs/android/ui/e/ju;)Lcom/estrongs/android/ui/e/hz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jx;->a:Lcom/estrongs/android/ui/e/ju;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ju;->b(Lcom/estrongs/android/ui/e/ju;)Lcom/estrongs/android/ui/e/hz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/hz;->a(Landroid/view/animation/Animation;)V

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
