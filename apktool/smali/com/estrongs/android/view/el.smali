.class Lcom/estrongs/android/view/el;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/WebViewWrapper;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/WebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/el;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/el;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->g(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/el;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/el;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->g(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/el;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
