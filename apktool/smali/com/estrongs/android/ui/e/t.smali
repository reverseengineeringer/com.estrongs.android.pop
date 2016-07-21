.class Lcom/estrongs/android/ui/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->h(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->h(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gx;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v1, Lcom/estrongs/android/ui/dialog/gx;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/gx;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/gx;)Lcom/estrongs/android/ui/dialog/gx;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->h(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gx;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/u;-><init>(Lcom/estrongs/android/ui/e/t;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->a(Lcom/estrongs/android/ui/dialog/hb;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->h(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gx;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/v;-><init>(Lcom/estrongs/android/ui/e/t;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->a(Lcom/estrongs/android/ui/dialog/ha;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->h(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gx;->show()V

    goto :goto_0
.end method
