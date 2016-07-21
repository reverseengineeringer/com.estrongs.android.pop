.class Landroid/support/design/widget/ai;
.super Landroid/support/design/widget/b;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/as;

.field final synthetic c:Landroid/support/design/widget/ah;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ah;ZLandroid/support/design/widget/as;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ai;->c:Landroid/support/design/widget/ah;

    iput-boolean p2, p0, Landroid/support/design/widget/ai;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/ai;->b:Landroid/support/design/widget/as;

    invoke-direct {p0}, Landroid/support/design/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ai;->c:Landroid/support/design/widget/ah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/ah;->a(Landroid/support/design/widget/ah;Z)Z

    iget-object v0, p0, Landroid/support/design/widget/ai;->c:Landroid/support/design/widget/ah;

    iget-object v0, v0, Landroid/support/design/widget/ah;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/support/design/widget/ai;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/ai;->b:Landroid/support/design/widget/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ai;->b:Landroid/support/design/widget/as;

    invoke-interface {v0}, Landroid/support/design/widget/as;->b()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ai;->c:Landroid/support/design/widget/ah;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/ah;->a(Landroid/support/design/widget/ah;Z)Z

    return-void
.end method
