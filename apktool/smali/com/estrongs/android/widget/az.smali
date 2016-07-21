.class Lcom/estrongs/android/widget/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ax;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/ax;->a(Lcom/estrongs/android/widget/ax;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/ax;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ax;->g()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/ax;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/ax;->a(Lcom/estrongs/android/widget/ax;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/ax;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/ax;->a(Lcom/estrongs/android/widget/ax;Z)Z

    return-void
.end method
