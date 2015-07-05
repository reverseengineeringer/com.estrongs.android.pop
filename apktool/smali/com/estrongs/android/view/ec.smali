.class Lcom/estrongs/android/view/ec;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/WebViewWrapper;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/WebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->d(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, v2}, Lcom/estrongs/android/view/WebViewWrapper;->a(Lcom/estrongs/android/view/WebViewWrapper;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, v5}, Lcom/estrongs/android/view/WebViewWrapper;->b(Lcom/estrongs/android/view/WebViewWrapper;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->H:Lcom/estrongs/android/view/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->H:Lcom/estrongs/android/view/cb;

    iget-object v1, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-interface {v0, v1, v5}, Lcom/estrongs/android/view/cb;->a(Lcom/estrongs/android/view/aw;Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, v4, v2}, Lcom/estrongs/android/view/WebViewWrapper;->a(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->e(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h()V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    const/4 v3, 0x2

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/util/be;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->a(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->T:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/view/ed;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/ed;-><init>(Lcom/estrongs/android/view/ec;Ljava/lang/Integer;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->b(Lcom/estrongs/android/view/WebViewWrapper;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->d(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->a(Lcom/estrongs/android/view/WebViewWrapper;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->b(Lcom/estrongs/android/view/WebViewWrapper;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->H:Lcom/estrongs/android/view/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->H:Lcom/estrongs/android/view/cb;

    invoke-interface {v0}, Lcom/estrongs/android/view/cb;->a()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->a(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->b(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->c(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/view/WebViewWrapper;->av()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    const-string v4, "&"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v2, v2, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v2, v2, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v2}, Lcom/estrongs/android/view/VideoEnabledWebView;->stopLoading()V

    iget-object v2, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v2, v2, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v2, v0}, Lcom/estrongs/android/view/WebViewWrapper;->d(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/view/WebViewWrapper;->av()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->d(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
