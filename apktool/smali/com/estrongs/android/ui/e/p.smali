.class Lcom/estrongs/android/ui/e/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/diskusage/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->f(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/df;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->f(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/df;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v1, Lcom/estrongs/android/ui/dialog/df;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/df;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/df;)Lcom/estrongs/android/ui/dialog/df;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->f(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/df;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/q;-><init>(Lcom/estrongs/android/ui/e/p;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/df;->a(Lcom/estrongs/android/ui/dialog/dh;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->f(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/df;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->g(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gv;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->g(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gv;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v1, Lcom/estrongs/android/ui/dialog/gv;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/gv;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/gv;)Lcom/estrongs/android/ui/dialog/gv;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->g(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/s;-><init>(Lcom/estrongs/android/ui/e/p;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/gv;->a(Lcom/estrongs/android/ui/dialog/ha;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->g(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gv;->show()V

    goto :goto_0
.end method
