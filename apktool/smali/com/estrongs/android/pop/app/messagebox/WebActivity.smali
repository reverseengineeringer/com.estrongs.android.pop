.class public Lcom/estrongs/android/pop/app/messagebox/WebActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private d:Landroid/webkit/WebView;

.field private e:Z

.field private f:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ProgressBar;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->a:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/WebActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/WebActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/messagebox/WebActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->a:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->b:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-eqz p3, :cond_0

    if-eq p2, v3, :cond_3

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    if-nez v0, :cond_1

    if-ne p2, v3, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->g:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->f:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->f:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->f:Landroid/webkit/ValueCallback;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->c:J

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->finish()V

    :cond_0
    const-string v1, "back_home"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e:Z

    const v0, 0x7f030126

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/an;->a(Landroid/app/Activity;)V

    const v0, 0x7f0e04da

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0e000f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    const v0, 0x7f0e04fa

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->h:Landroid/widget/ProgressBar;

    const v0, 0x7f0e04d8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/ap;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/ap;-><init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e04d9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/aq;-><init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/y;-><init>(Landroid/app/Activity;)V

    const-string v2, "messagebox"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/as;

    invoke-direct {v1, p0, v5}, Lcom/estrongs/android/pop/app/messagebox/as;-><init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;Lcom/estrongs/android/pop/app/messagebox/ap;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/ar;

    invoke-direct {v1, p0, v5}, Lcom/estrongs/android/pop/app/messagebox/ar;-><init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;Lcom/estrongs/android/pop/app/messagebox/ap;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->i:Ljava/lang/String;

    const-string v1, "wenjuan.baidu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->i:Ljava/lang/String;

    const-string v1, "dosurvey.baidu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "http://www.baidu.com/jump.html"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "&_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/dianxinos/DXStatService/stat/TokenManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/dianxinos/DXStatService/stat/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Referer"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method
