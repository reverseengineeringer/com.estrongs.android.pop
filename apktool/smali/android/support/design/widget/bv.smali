.class Landroid/support/design/widget/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bu;


# direct methods
.method constructor <init>(Landroid/support/design/widget/bu;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bu;

    invoke-static {v0}, Landroid/support/design/widget/bu;->a(Landroid/support/design/widget/bu;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/bu;->a(Landroid/support/design/widget/bu;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

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
