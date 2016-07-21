.class Landroid/support/design/widget/ap;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/as;

.field final synthetic c:Landroid/support/design/widget/an;


# direct methods
.method constructor <init>(Landroid/support/design/widget/an;ZLandroid/support/design/widget/as;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ap;->c:Landroid/support/design/widget/an;

    iput-boolean p2, p0, Landroid/support/design/widget/ap;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/ap;->b:Landroid/support/design/widget/as;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ap;->b:Landroid/support/design/widget/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ap;->b:Landroid/support/design/widget/as;

    invoke-interface {v0}, Landroid/support/design/widget/as;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ap;->c:Landroid/support/design/widget/an;

    iget-object v0, v0, Landroid/support/design/widget/an;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/ap;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    return-void
.end method
