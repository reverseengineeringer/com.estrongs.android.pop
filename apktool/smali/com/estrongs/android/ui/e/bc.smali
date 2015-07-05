.class Lcom/estrongs/android/ui/e/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bc;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bc;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/android/view/WebViewWrapper;

    new-instance v1, Lcom/estrongs/android/ui/dialog/fc;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bc;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->at()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/estrongs/android/ui/dialog/fc;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/fc;->a()V

    :cond_0
    return v4
.end method
