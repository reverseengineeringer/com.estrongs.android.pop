.class Lcom/estrongs/android/ui/e/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bi;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bi;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/android/view/WebViewWrapper;

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->ao()Z

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->al()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/bi;->a:Lcom/estrongs/android/ui/e/w;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "zoom_in"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->am()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bi;->a:Lcom/estrongs/android/ui/e/w;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "zoom_out"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v5

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/e/bi;->a:Lcom/estrongs/android/ui/e/w;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "zoom_in"

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Lcom/estrongs/android/ui/e/w;->a(Z[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/bi;->a:Lcom/estrongs/android/ui/e/w;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "zoom_out"

    aput-object v2, v1, v5

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/ui/e/w;->a(Z[Ljava/lang/String;)V

    goto :goto_1
.end method
