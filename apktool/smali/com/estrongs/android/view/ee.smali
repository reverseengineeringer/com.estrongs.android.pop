.class Lcom/estrongs/android/view/ee;
.super Lcom/estrongs/android/view/dt;


# instance fields
.field final synthetic c:Lcom/estrongs/android/view/WebViewWrapper;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/WebViewWrapper;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/estrongs/android/view/VideoEnabledWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/view/dt;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/estrongs/android/view/VideoEnabledWebView;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->c(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->c(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->a(Lcom/estrongs/android/view/WebViewWrapper;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->d(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->d(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p3}, Lcom/estrongs/android/view/WebViewWrapper;->b(Lcom/estrongs/android/view/WebViewWrapper;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    invoke-static {p1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "*/*"

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v2, v2, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0273

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x1001020

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->e(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->e(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/dt;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->b(Lcom/estrongs/android/view/WebViewWrapper;)V

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/estrongs/android/util/be;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    const v1, 0x7f0b0410

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/estrongs/android/view/WebViewWrapper;->a(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;Z)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/WebViewWrapper;->e(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "\u767e\u5ea6\u624b\u673a\u52a9\u624b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "\u5e94\u7528"

    goto :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p2}, Lcom/estrongs/android/view/ee;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    return v0
.end method
