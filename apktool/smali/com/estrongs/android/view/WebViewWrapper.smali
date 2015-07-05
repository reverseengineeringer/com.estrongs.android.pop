.class public Lcom/estrongs/android/view/WebViewWrapper;
.super Lcom/estrongs/android/view/aw;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/estrongs/android/view/VideoEnabledWebView;

.field private ai:Landroid/widget/ProgressBar;

.field private aj:Z

.field private ak:Z

.field private al:Lcom/estrongs/android/view/dt;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "?fr=ch_es&pa=1&da=1&bb=1&lr=1&vd=1&td=1&ta=1&mgd=0&bi=1&sl=1&dsa=1&tn=1&noad=1"

    sput-object v0, Lcom/estrongs/android/view/WebViewWrapper;->b:Ljava/lang/String;

    const-string v0, "fr=ch_es"

    sput-object v0, Lcom/estrongs/android/view/WebViewWrapper;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/view/cb;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v4, 0x7f0a00ff

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p2}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    iput-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->aj:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->ak:Z

    iput-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->al:Lcom/estrongs/android/view/dt;

    iput-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->am:Ljava/lang/String;

    iput-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->an:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ao:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ap:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/view/WebViewWrapper;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ESViewStub;

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ESViewStub;->b(I)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/ESViewStub;->a(I)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ESViewStub;->a(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ESViewStub;->a()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0107

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ai:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0108

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/VideoEnabledWebView;

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v0, Lcom/estrongs/android/pop/esclasses/ESWebView;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/esclasses/ESWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/estrongs/android/view/WebViewWrapper;->ay()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/bd;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v1, Lcom/estrongs/android/view/ec;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ec;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/estrongs/android/view/ee;

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    const v2, 0x7f0a01a2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    const v3, 0x7f0a01a3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->ag:Landroid/view/LayoutInflater;

    const v4, 0x7f0300be

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/view/ee;-><init>(Lcom/estrongs/android/view/WebViewWrapper;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/estrongs/android/view/VideoEnabledWebView;)V

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->al:Lcom/estrongs/android/view/dt;

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->al:Lcom/estrongs/android/view/dt;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v1, Lcom/estrongs/android/view/ef;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ef;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v1, Lcom/estrongs/android/view/WebViewWrapper$BaiduMusicTitleHanlder;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/WebViewWrapper$BaiduMusicTitleHanlder;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    const-string v2, "bdmusic"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/VideoEnabledWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v1, Lcom/estrongs/android/view/WebViewWrapper$JSVideoDetailHelper;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/WebViewWrapper$JSVideoDetailHelper;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    const-string v2, "JSVideoDetailHelper"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/VideoEnabledWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v1, Lcom/estrongs/android/view/eg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/eg;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v1, Lcom/estrongs/android/view/ej;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ej;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->a(Lcom/estrongs/android/view/dz;)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->requestFocus()Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ao:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/WebViewWrapper;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/WebViewWrapper;->aq:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/WebViewWrapper;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_3

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/WebViewWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/WebViewWrapper;->aj:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vsun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "bad parameter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    const v2, 0x7f0b038f

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic av()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/WebViewWrapper;->b:Ljava/lang/String;

    return-object v0
.end method

.method private aw()V
    .locals 2

    const-string v0, "javascript:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_jsget_html5_video = document.getElementsByTagName(\'video\')[0];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if (_jsget_html5_video !== undefined) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JSVideoDetailHelper.setVideoSource(_jsget_html5_video.currentSrc);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JSVideoDetailHelper.setVideoSource(\'\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ax()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "m.baidu.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var MAX_TIMES = 3 * 60 * 1000;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var internalTime = 0;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var checkAndRemove;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var removeId = setTimeout(checkAndRemove=function() { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (internalTime > MAX_TIMES) {  clearTimeout(removeId);  console.log(\'ADS-RM: MAX_TIMES, clearTimeout: \' + removeId + \', No more checking!\'); return;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " page = document.getElementById(\'page\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (page !== undefined && page != null) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var c= page.childNodes;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for (i=0; i<c.length; i++) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if(c[i].nodeName == \'DIV\' && (c[i].id.indexOf(\'page\') == -1 && c[i].id.indexOf(\'foot\') == -1 && c[i].id.indexOf(\'index\') == -1 && c[i].id.indexOf(\'search\') == -1) ) {      page.removeChild(c[i]);     clearTimeout(removeId);     console.log(\'ADS-RM: ADS is Found, clearTimeout: \' + removeId + \', internalTime: \' + internalTime); \treturn; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (internalTime == 0) { internalTime = 300;  } else { internalTime = internalTime + internalTime / 2;  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removeId = setTimeout(checkAndRemove, internalTime);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " console.log(\'ADS-RM: setTimeout again: \' + removeId + \', after: \' + internalTime);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},internalTime);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "music.baidu.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "javascript:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var isTitelRemoved = false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var isAdsRemoved = false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var MAX_TIMES = 3 * 60 * 1000;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var internalTime = 0;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var checkAndRemove;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var removeId = setTimeout(checkAndRemove=function() { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " console.log(\'ADS-RM: BEGIN - removeId: \' + removeId + \',internalTime: \' + internalTime);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (internalTime > MAX_TIMES) {  clearTimeout(removeId);  console.log(\'ADS-RM: MAX_TIMES, clearTimeout: \' + removeId + \', No more checking!\'); return;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var header = document.getElementById(\'header\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (header !== undefined && header != null) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var headerBar = header.querySelector(\'.bar\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if (headerBar !== undefined && headerBar != null) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headerBar.parentNode.removeChild(headerBar); isTitelRemoved = true; console.log(\'ADS-RM: Title is Found\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var mainDiv = document.getElementById(\'main\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (mainDiv !== undefined && mainDiv != null) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " var adsDivs = mainDiv.querySelectorAll(\'.slot-da1,.top\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tif (adsDivs !== undefined && adsDivs != null && adsDivs.length > 0) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for (i = 0; i< adsDivs.length; i++) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adsDivs[i].parentNode.removeChild(adsDivs[i]); console.log(\'ADS-RM: Ads is Found by \' + adsDivs[i].className);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isAdsRemoved = true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (isTitelRemoved == true && isAdsRemoved == true) {\t\tclearTimeout(removeId); \tconsole.log(\'ADS-RM: END - Title and Ads are Found, clearTimeout and return: \' + removeId + \', internalTime: \' + internalTime); \treturn; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if (internalTime == 0) { internalTime = 300;  } else { internalTime = internalTime + internalTime / 2;  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removeId = setTimeout(checkAndRemove, internalTime);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " console.log(\'ADS-RM: setTimeout again: \' + removeId + \', after: \' + internalTime);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},internalTime);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private ay()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/view/el;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/el;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/WebViewWrapper;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/WebViewWrapper;->ar:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/WebViewWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/WebViewWrapper;->ax()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->t(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/WebViewWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/WebViewWrapper;->ak:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/ValueCallback;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->aq:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->p(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/ValueCallback;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ar:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->s(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ai:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->r(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/view/WebViewWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/WebViewWrapper;->aw()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->q(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/WebViewWrapper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "baidu.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "word="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5929\u6c14"

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "baidu"

    const-string v1, "apk"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "music.baidu.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/view/WebViewWrapper;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/WebViewWrapper;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->w:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0, p1}, Lcom/estrongs/fs/h;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->y:Lcom/estrongs/android/view/ca;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->y:Lcom/estrongs/android/view/ca;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://win-title/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/ca;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private s(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/view/ds;

    invoke-direct {v0, p1}, Lcom/estrongs/android/view/ds;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->w:Lcom/estrongs/fs/h;

    iput-object p1, p0, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private t(Ljava/lang/String;)Z
    .locals 12

    const v11, 0x7f0b01c6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v0, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    const-string v1, ""

    const-string v0, ""

    if-eqz v4, :cond_6

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    array-length v8, v7

    move v4, v2

    :goto_1
    if-ge v4, v8, :cond_6

    aget-object v9, v7, v4

    if-nez v9, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v10, "scheme="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scheme="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "://"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v10, "action="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "action="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v10, "category="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "category="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string v10, "package="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v1, "package="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://search?q="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    invoke-static {v0, v11, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_3

    :cond_9
    const-string v0, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "wtai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    const/4 v0, 0x0

    const-string v4, "tel"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_4
    invoke-static {p1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    move v0, v3

    goto/16 :goto_0

    :cond_b
    const-string v1, "wtai://wp/mc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "WTAI://WP/MC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    array-length v4, v1

    if-le v4, v3, :cond_e

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    invoke-static {v0, v11, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_5

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :cond_e
    move-object p1, v0

    goto :goto_4
.end method

.method private u(Ljava/lang/String;)I
    .locals 1

    const-string v0, "apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200b3

    :goto_0
    return v0

    :cond_0
    const-string v0, "document"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0200b6

    goto :goto_0

    :cond_1
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0200be

    goto :goto_0

    :cond_2
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0200ba

    goto :goto_0

    :cond_3
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0200c7

    goto :goto_0

    :cond_4
    const v0, 0x7f0200b2

    goto :goto_0
.end method


# virtual methods
.method public O()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/view/aw;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    new-instance v1, Lcom/estrongs/android/view/em;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/em;-><init>(Lcom/estrongs/android/view/WebViewWrapper;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/ds;

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/view/ds;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->w:Lcom/estrongs/fs/h;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/WebViewWrapper;->b(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/WebViewWrapper;->am:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/view/WebViewWrapper;->an:Ljava/lang/String;

    return-void
.end method

.method public a_()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->a_()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->stopLoading()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->clearHistory()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/VideoEnabledWebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->destroy()V

    iput-object v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->d:Landroid/webkit/WebView;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ao:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public ak()[Lcom/estrongs/android/util/bf;
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->am:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->an:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/aw;->ak()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->am:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/estrongs/android/util/bf;

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->an:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/WebViewWrapper;->u(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v0, Lcom/estrongs/android/util/bf;

    invoke-direct {v0}, Lcom/estrongs/android/util/bf;-><init>()V

    aput-object v0, v2, v1

    aget-object v0, v2, v1

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/estrongs/android/util/bf;->f:Z

    aget-object v5, v2, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->a:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    aget-object v0, v2, v1

    iput v4, v0, Lcom/estrongs/android/util/bf;->j:I

    aget-object v0, v2, v1

    iget-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->am:Ljava/lang/String;

    iput-object v5, v0, Lcom/estrongs/android/util/bf;->k:Ljava/lang/String;

    aget-object v0, v2, v1

    iget-object v5, p0, Lcom/estrongs/android/view/WebViewWrapper;->an:Ljava/lang/String;

    iput-object v5, v0, Lcom/estrongs/android/util/bf;->l:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/estrongs/android/view/aw;->ak()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    goto :goto_0
.end method

.method public al()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->canZoomIn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public am()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->canZoomOut()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public an()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public ao()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->zoomOut()Z

    move-result v0

    return v0
.end method

.method public ap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ak:Z

    return v0
.end method

.method public as()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->al:Lcom/estrongs/android/view/dt;

    invoke-virtual {v0}, Lcom/estrongs/android/view/dt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->al:Lcom/estrongs/android/view/dt;

    invoke-virtual {v0}, Lcom/estrongs/android/view/dt;->b()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public at()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public au()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->aq:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ar:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->aq:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->aq:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->aq:Landroid/webkit/ValueCallback;

    iput-object v1, p0, Lcom/estrongs/android/view/WebViewWrapper;->ar:Landroid/webkit/ValueCallback;

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->ar:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_1

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/view/WebViewWrapper;->ar:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    move-object v0, v2

    goto :goto_2
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ek;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ek;-><init>(Lcom/estrongs/android/view/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->al:Lcom/estrongs/android/view/dt;

    invoke-virtual {v0}, Lcom/estrongs/android/view/dt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->al:Lcom/estrongs/android/view/dt;

    invoke-virtual {v0}, Lcom/estrongs/android/view/dt;->b()Z

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->w:Lcom/estrongs/fs/h;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->stopLoading()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->goBack()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->w:Lcom/estrongs/fs/h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->l()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/WebViewWrapper;->r(Ljava/lang/String;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->aj:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public r()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->stopLoading()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->goForward()V

    iget-object v0, p0, Lcom/estrongs/android/view/WebViewWrapper;->w:Lcom/estrongs/fs/h;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
