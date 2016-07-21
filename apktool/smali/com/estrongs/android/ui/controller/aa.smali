.class Lcom/estrongs/android/ui/controller/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/bd;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    new-instance v4, Lcom/estrongs/android/ui/controller/ab;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/controller/ab;-><init>(Lcom/estrongs/android/ui/controller/aa;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/controller/h;->a(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v3, v3, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v3}, Lcom/estrongs/android/ui/controller/h;->i(Lcom/estrongs/android/ui/controller/h;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4, v1}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/c/e;

    const/4 v4, 0x4

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v4, v0}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    invoke-interface {v3, v1, v2}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->i(Lcom/estrongs/android/ui/controller/h;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->i(Lcom/estrongs/android/ui/controller/h;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Z)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->h(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->ah()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aa()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    new-instance v1, Lcom/estrongs/android/ui/controller/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/ac;-><init>(Lcom/estrongs/android/ui/controller/aa;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/h;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
