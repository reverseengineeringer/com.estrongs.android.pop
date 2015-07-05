.class Lcom/estrongs/android/ui/e/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ba;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ba;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    instance-of v0, v1, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/view/WebViewWrapper;

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v1, Lcom/estrongs/android/view/WebViewWrapper;

    invoke-virtual {v1}, Lcom/estrongs/android/view/WebViewWrapper;->f()Lcom/estrongs/fs/h;

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ba;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method
