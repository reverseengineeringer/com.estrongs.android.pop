.class Landroid/support/design/widget/ao;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/as;

.field final synthetic c:Landroid/support/design/widget/an;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/an;ZLandroid/support/design/widget/as;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ao;->c:Landroid/support/design/widget/an;

    iput-boolean p2, p0, Landroid/support/design/widget/ao;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/ao;->b:Landroid/support/design/widget/as;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ao;->c:Landroid/support/design/widget/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/an;->a(Landroid/support/design/widget/an;Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ao;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ao;->c:Landroid/support/design/widget/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/an;->a(Landroid/support/design/widget/an;Z)Z

    iget-boolean v0, p0, Landroid/support/design/widget/ao;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ao;->c:Landroid/support/design/widget/an;

    iget-object v0, v0, Landroid/support/design/widget/an;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/support/design/widget/ao;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/ao;->b:Landroid/support/design/widget/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ao;->b:Landroid/support/design/widget/as;

    invoke-interface {v0}, Landroid/support/design/widget/as;->b()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/ao;->c:Landroid/support/design/widget/an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/an;->a(Landroid/support/design/widget/an;Z)Z

    iput-boolean v2, p0, Landroid/support/design/widget/ao;->d:Z

    iget-object v0, p0, Landroid/support/design/widget/ao;->c:Landroid/support/design/widget/an;

    iget-object v0, v0, Landroid/support/design/widget/an;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v1, p0, Landroid/support/design/widget/ao;->a:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    return-void
.end method
