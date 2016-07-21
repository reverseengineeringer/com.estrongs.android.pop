.class public Lcom/estrongs/android/pop/app/HelpActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;

.field private final d:[Ljava/lang/String;

.field private final e:[I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const-string v0, "text/html"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->a:Ljava/lang/String;

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->b:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "index.html"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->d:[Ljava/lang/String;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->e:[I

    iput v2, p0, Lcom/estrongs/android/pop/app/HelpActivity;->f:I

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080345

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HelpActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HelpActivity;->setContentView(I)V

    const v0, 0x7f0e040c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/cv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cv;-><init>(Lcom/estrongs/android/pop/app/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "http://www.estrongs.com/eshelp/en/ES_File_Explorer_User_Manual3.0.htm"

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://www.estrongs.com/eshelp/cn/ES_File_Explorer_User_Manual3.0.htm"

    :cond_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/HelpActivity;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/HelpActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
