.class Lcom/estrongs/android/ui/navigation/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->a(Lcom/estrongs/android/ui/navigation/n;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->b(Lcom/estrongs/android/ui/navigation/n;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->c(Lcom/estrongs/android/ui/navigation/n;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->d(Lcom/estrongs/android/ui/navigation/n;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->c(Lcom/estrongs/android/ui/navigation/n;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800005

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;F)V
    .locals 4

    const-wide v2, 0x3fc999999999999aL    # 0.2

    float-to-double v0, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    float-to-double v0, p2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->d(Lcom/estrongs/android/ui/navigation/n;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->c(Lcom/estrongs/android/ui/navigation/n;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800005

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->e(Lcom/estrongs/android/ui/navigation/n;)Lcom/estrongs/android/ui/navigation/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->e(Lcom/estrongs/android/ui/navigation/n;)Lcom/estrongs/android/ui/navigation/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/navigation/r;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/navigation/n;->a(Lcom/estrongs/android/ui/navigation/n;Lcom/estrongs/android/ui/navigation/r;)Lcom/estrongs/android/ui/navigation/r;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->a(Lcom/estrongs/android/ui/navigation/n;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->c(Lcom/estrongs/android/ui/navigation/n;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->f(Lcom/estrongs/android/ui/navigation/n;)Lcom/estrongs/android/ui/navigation/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/n;->f(Lcom/estrongs/android/ui/navigation/n;)Lcom/estrongs/android/ui/navigation/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/navigation/r;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/o;->a:Lcom/estrongs/android/ui/navigation/n;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/navigation/n;->b(Lcom/estrongs/android/ui/navigation/n;Lcom/estrongs/android/ui/navigation/r;)Lcom/estrongs/android/ui/navigation/r;

    goto :goto_0
.end method
