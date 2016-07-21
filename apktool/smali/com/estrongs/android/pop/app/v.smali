.class Lcom/estrongs/android/pop/app/v;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/v;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/v;->b:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/v;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/v;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/v;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/v;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/v;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->a(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/v;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/v;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->c(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
