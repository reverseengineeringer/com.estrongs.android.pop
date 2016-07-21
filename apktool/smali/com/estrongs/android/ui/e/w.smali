.class Lcom/estrongs/android/ui/e/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->i(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->i(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hc;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/hc;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/hc;)Lcom/estrongs/android/ui/dialog/hc;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->i(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/hc;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/x;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/hc;->a(Lcom/estrongs/android/ui/dialog/hb;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->i(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/hc;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/y;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/hc;->a(Lcom/estrongs/android/ui/dialog/ha;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->i(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->show()V

    goto :goto_0
.end method
