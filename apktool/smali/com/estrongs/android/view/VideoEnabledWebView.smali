.class public Lcom/estrongs/android/view/VideoEnabledWebView;
.super Lcom/estrongs/android/pop/esclasses/ESWebView;


# instance fields
.field private a:Lcom/estrongs/android/view/fy;

.field private b:Z

.field private c:Lcom/estrongs/android/view/ge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESWebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->c:Lcom/estrongs/android/view/ge;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->c:Lcom/estrongs/android/view/ge;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->c:Lcom/estrongs/android/view/ge;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/VideoEnabledWebView;)Lcom/estrongs/android/view/fy;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->a:Lcom/estrongs/android/view/fy;

    return-object v0
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/view/gd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/gd;-><init>(Lcom/estrongs/android/view/VideoEnabledWebView;)V

    const-string v1, "_VideoEnabledWebView"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/view/VideoEnabledWebView$JSVideoDetailHelper;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/VideoEnabledWebView$JSVideoDetailHelper;-><init>(Lcom/estrongs/android/view/VideoEnabledWebView;)V

    const-string v1, "JSVideoFullScreenHelper"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/VideoEnabledWebView;->a()V

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/VideoEnabledWebView;->a()V

    invoke-super/range {p0 .. p5}, Lcom/estrongs/android/pop/esclasses/ESWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/VideoEnabledWebView;->a()V

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->c:Lcom/estrongs/android/view/ge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->c:Lcom/estrongs/android/view/ge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/estrongs/android/view/ge;->a(IIII)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/esclasses/ESWebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setOnWebViewScrollListener(Lcom/estrongs/android/view/ge;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->c:Lcom/estrongs/android/view/ge;

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    instance-of v0, p1, Lcom/estrongs/android/view/fy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/view/fy;

    iput-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView;->a:Lcom/estrongs/android/view/fy;

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
