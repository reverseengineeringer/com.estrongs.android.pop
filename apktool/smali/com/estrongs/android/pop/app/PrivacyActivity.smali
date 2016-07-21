.class public Lcom/estrongs/android/pop/app/PrivacyActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PrivacyActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PrivacyActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PrivacyActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08059f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PrivacyActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PrivacyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f030160

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PrivacyActivity;->setContentView(I)V

    const v0, 0x7f0e05cf

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PrivacyActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PrivacyActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PrivacyActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PrivacyActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/ku;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ku;-><init>(Lcom/estrongs/android/pop/app/PrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "http://www.estrongs.com/privacyStatement/en/index.htm"

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "http://www.estrongs.com/privacyStatement/cn/index.htm"

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PrivacyActivity;->a(Ljava/lang/String;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://www.estrongs.com/privacyStatement/ru/index.htm"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PrivacyActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
