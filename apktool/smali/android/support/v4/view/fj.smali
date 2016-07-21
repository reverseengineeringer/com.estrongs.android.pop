.class final Landroid/support/v4/view/fj;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/v4/view/fo;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/fo;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/fj;->a:Landroid/support/v4/view/fo;

    iput-object p2, p0, Landroid/support/v4/view/fj;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/fj;->a:Landroid/support/v4/view/fo;

    iget-object v1, p0, Landroid/support/v4/view/fj;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/fo;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/fj;->a:Landroid/support/v4/view/fo;

    iget-object v1, p0, Landroid/support/v4/view/fj;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/fo;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/fj;->a:Landroid/support/v4/view/fo;

    iget-object v1, p0, Landroid/support/v4/view/fj;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/fo;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
