.class Landroid/support/design/widget/dg;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/design/widget/da;

.field final synthetic b:Landroid/support/design/widget/de;


# direct methods
.method constructor <init>(Landroid/support/design/widget/de;Landroid/support/design/widget/da;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/dg;->b:Landroid/support/design/widget/de;

    iput-object p2, p0, Landroid/support/design/widget/dg;->a:Landroid/support/design/widget/da;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/dg;->a:Landroid/support/design/widget/da;

    invoke-interface {v0}, Landroid/support/design/widget/da;->c()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/dg;->a:Landroid/support/design/widget/da;

    invoke-interface {v0}, Landroid/support/design/widget/da;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/dg;->a:Landroid/support/design/widget/da;

    invoke-interface {v0}, Landroid/support/design/widget/da;->a()V

    return-void
.end method
