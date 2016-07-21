.class Lcom/estrongs/android/ui/navigation/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/ab;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->f(Lcom/estrongs/android/ui/navigation/m;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->e(Lcom/estrongs/android/ui/navigation/m;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800005

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->g(Lcom/estrongs/android/ui/navigation/m;)Lcom/estrongs/android/ui/navigation/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->g(Lcom/estrongs/android/ui/navigation/m;)Lcom/estrongs/android/ui/navigation/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/navigation/q;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/navigation/m;->a(Lcom/estrongs/android/ui/navigation/m;Lcom/estrongs/android/ui/navigation/q;)Lcom/estrongs/android/ui/navigation/q;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->c(Lcom/estrongs/android/ui/navigation/m;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->e(Lcom/estrongs/android/ui/navigation/m;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->h(Lcom/estrongs/android/ui/navigation/m;)Lcom/estrongs/android/ui/navigation/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->h(Lcom/estrongs/android/ui/navigation/m;)Lcom/estrongs/android/ui/navigation/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/navigation/q;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/navigation/m;->b(Lcom/estrongs/android/ui/navigation/m;Lcom/estrongs/android/ui/navigation/q;)Lcom/estrongs/android/ui/navigation/q;

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->c(Lcom/estrongs/android/ui/navigation/m;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->d(Lcom/estrongs/android/ui/navigation/m;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->d(Lcom/estrongs/android/ui/navigation/m;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "function"

    const-string v2, "clipboard_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->e(Lcom/estrongs/android/ui/navigation/m;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->f(Lcom/estrongs/android/ui/navigation/m;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->e(Lcom/estrongs/android/ui/navigation/m;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800005

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->d(Lcom/estrongs/android/ui/navigation/m;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "function"

    const-string v2, "fastaccess_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 4

    const-wide v2, 0x3fc999999999999aL    # 0.2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->a(Lcom/estrongs/android/ui/navigation/m;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/m;->b(Lcom/estrongs/android/ui/navigation/m;)V

    float-to-double v0, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    float-to-double v0, p2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
