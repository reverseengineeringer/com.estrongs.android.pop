.class Landroid/support/design/widget/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bx;

.field private final b:Landroid/view/View;

.field private final c:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/bx;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ca;->a:Landroid/support/design/widget/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/ca;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroid/support/design/widget/ca;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ca;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->b(Landroid/support/design/widget/bx;)Landroid/support/v4/widget/cz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/ca;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->b(Landroid/support/design/widget/bx;)Landroid/support/v4/widget/cz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/cz;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/ca;->b:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/ca;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ca;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->a(Landroid/support/design/widget/bx;)Landroid/support/design/widget/bz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ca;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->a(Landroid/support/design/widget/bx;)Landroid/support/design/widget/bz;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/ca;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/design/widget/bz;->a(Landroid/view/View;)V

    goto :goto_0
.end method
