.class public final Lcom/flurry/sdk/gy;
.super Lcom/flurry/sdk/gt;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private final d:I

.field private e:Z

.field private f:Landroid/webkit/WebView;

.field private g:Landroid/webkit/WebViewClient;

.field private h:Landroid/webkit/WebChromeClient;

.field private i:Z

.field private j:Lcom/flurry/sdk/gh;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/LinearLayout;

.field private p:Z

.field private q:Lcom/flurry/sdk/gt$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/flurry/sdk/gt;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gy;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/gy;->c:J

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gy;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gy;->e:Z

    new-instance v0, Lcom/flurry/sdk/gy$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gy$4;-><init>(Lcom/flurry/sdk/gy;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->q:Lcom/flurry/sdk/gt$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->requestFocus()Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flurry/sdk/gy;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    new-instance v0, Lcom/flurry/sdk/gy$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/gy$b;-><init>(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/gy$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->g:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/flurry/sdk/gy$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/gy$a;-><init>(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/gy$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->h:Landroid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :goto_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gy;->b:Z

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "/tmp/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->h:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_1
    if-eqz p5, :cond_3

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gy;->setYCookieInWebView(Landroid/webkit/CookieManager;)V

    :goto_2
    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/flurry/sdk/gy;->n:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->n:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->n:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/flurry/sdk/gy;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gy;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->k:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/flurry/sdk/hc;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->k:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->k:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/gy$1;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gy$1;-><init>(Lcom/flurry/sdk/gy;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/flurry/sdk/hc;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/gy$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gy$2;-><init>(Lcom/flurry/sdk/gy;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/flurry/sdk/hc;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/gy$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gy$3;-><init>(Lcom/flurry/sdk/gy;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v4}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v3, p0, Lcom/flurry/sdk/gy;->d:I

    iget v4, p0, Lcom/flurry/sdk/gy;->d:I

    iget v5, p0, Lcom/flurry/sdk/gy;->d:I

    iget v6, p0, Lcom/flurry/sdk/gy;->d:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/flurry/sdk/gy;->k:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x23

    invoke-static {v4}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v4

    const/16 v5, 0x23

    invoke-static {v5}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v4, p0, Lcom/flurry/sdk/gy;->d:I

    iget v5, p0, Lcom/flurry/sdk/gy;->d:I

    iget v6, p0, Lcom/flurry/sdk/gy;->d:I

    iget v7, p0, Lcom/flurry/sdk/gy;->d:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x23

    invoke-static {v4}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v4

    const/16 v5, 0x23

    invoke-static {v5}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/flurry/sdk/gy;->l:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/flurry/sdk/gy;->d:I

    iget v4, p0, Lcom/flurry/sdk/gy;->d:I

    iget v5, p0, Lcom/flurry/sdk/gy;->d:I

    iget v6, p0, Lcom/flurry/sdk/gy;->d:I

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->showProgressDialog()V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->g()V

    iget-object v2, p0, Lcom/flurry/sdk/gy;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->o:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gy;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/flurry/sdk/gy;->o:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getZoomButtonsController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->f()V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/gy;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/gh;)Lcom/flurry/sdk/gh;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy kk:mm:ss z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expires="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-direct {p0, v5}, Lcom/flurry/sdk/gy;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gy;->p:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/gy;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/gy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gy;->e:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "port"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/gy;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->e()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/gy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gy;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/flurry/sdk/gy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/gy;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gy;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private e()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/gy;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->g()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/gy;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/gy;->c:J

    return-wide v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 0

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->onViewClose()V

    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/gy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->e:Z

    return v0
.end method

.method private i()V
    .locals 0

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->onViewBack()V

    return-void
.end method

.method static synthetic i(Lcom/flurry/sdk/gy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->b:Z

    return v0
.end method

.method static synthetic j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/gh;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    return-object v0
.end method

.method private setYCookieInWebView(Landroid/webkit/CookieManager;)V
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/gy$c;)V
    .locals 1

    sget-object v0, Lcom/flurry/sdk/gy$c;->c:Lcom/flurry/sdk/gy$c;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/gy$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/gy$c;->a:Lcom/flurry/sdk/gy$c;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/gy$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->h()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->i()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/flurry/sdk/ma;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/flurry/sdk/ma;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/gj;->b:Lcom/flurry/sdk/gj;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gy;->q:Lcom/flurry/sdk/gt$a;

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/gi;->a(Landroid/content/Context;Lcom/flurry/sdk/gj;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)Lcom/flurry/sdk/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->initLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->addView(Landroid/view/View;)V

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gj;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gy;->q:Lcom/flurry/sdk/gt$a;

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/gi;->a(Landroid/content/Context;Lcom/flurry/sdk/gj;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)Lcom/flurry/sdk/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/flurry/sdk/ma;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->h()V

    :cond_4
    sget-object v0, Lcom/flurry/sdk/bb;->S:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    move v0, v6

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/flurry/sdk/ma;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/fi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->h()V

    :cond_7
    sget-object v0, Lcom/flurry/sdk/bb;->S:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    move v0, v6

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/fi;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :cond_9
    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->h()V

    :cond_a
    sget-object v0, Lcom/flurry/sdk/bb;->S:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    :cond_b
    move v0, v6

    goto/16 :goto_1
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gy;->h:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->c()V

    :cond_0
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public initLayout()V
    .locals 1

    invoke-super {p0}, Lcom/flurry/sdk/gt;->initLayout()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->setOrientation(I)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0}, Lcom/flurry/sdk/gt;->onActivityDestroy()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->c()V

    return-void
.end method

.method public onActivityPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0}, Lcom/flurry/sdk/gt;->onActivityPause()V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0}, Lcom/flurry/sdk/gt;->onActivityResume()V

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onBackKey()Z
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->b()V

    :goto_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/flurry/sdk/gy$c;->b:Lcom/flurry/sdk/gy$c;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy$c;)V

    goto :goto_0
.end method

.method protected onViewLoadTimeout()V
    .locals 6

    sget-object v0, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    return-void
.end method
