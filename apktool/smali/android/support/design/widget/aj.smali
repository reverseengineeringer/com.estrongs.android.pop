.class Landroid/support/design/widget/aj;
.super Landroid/support/design/widget/b;


# instance fields
.field final synthetic a:Landroid/support/design/widget/as;

.field final synthetic b:Landroid/support/design/widget/ah;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ah;Landroid/support/design/widget/as;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/aj;->b:Landroid/support/design/widget/ah;

    iput-object p2, p0, Landroid/support/design/widget/aj;->a:Landroid/support/design/widget/as;

    invoke-direct {p0}, Landroid/support/design/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/aj;->a:Landroid/support/design/widget/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/aj;->a:Landroid/support/design/widget/as;

    invoke-interface {v0}, Landroid/support/design/widget/as;->a()V

    :cond_0
    return-void
.end method
