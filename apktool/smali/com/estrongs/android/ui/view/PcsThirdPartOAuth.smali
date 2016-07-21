.class public Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# static fields
.field private static b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;


# instance fields
.field a:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/webkit/WebView;

.field private k:Lcom/estrongs/android/ui/view/bv;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ScrollView;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->f:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/webkit/WebView;

    new-instance v0, Lcom/estrongs/android/ui/view/bv;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/bv;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Lcom/estrongs/android/ui/view/bp;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->k:Lcom/estrongs/android/ui/view/bv;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->l:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->m:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->n:Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->q:Z

    new-instance v0, Lcom/estrongs/android/ui/view/bs;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bs;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->t:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v5, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    array-length v2, v0

    if-ne v2, v5, :cond_2

    aget-object v0, v0, v6

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v0, v3, v6

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b()Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->q:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->r:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->t:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->requestWindowFeature(I)Z

    const v0, 0x7f03014c

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->setContentView(I)V

    const v0, 0x7f0e0540

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/webkit/WebView;

    new-instance v3, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth$MyHandler;

    iget-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->t:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth$MyHandler;-><init>(Landroid/os/Handler;)V

    const-string v4, "handler"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->k:Lcom/estrongs/android/ui/view/bv;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const v0, 0x7f0e0542

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->m:Landroid/widget/TextView;

    const v0, 0x7f0e0541

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f0e053f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->n:Landroid/widget/ScrollView;

    const v0, 0x7f0e0580

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->r:Landroid/widget/Button;

    new-instance v4, Lcom/estrongs/android/ui/view/bp;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/view/bp;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->s:Landroid/widget/ImageView;

    new-instance v4, Lcom/estrongs/android/ui/view/bq;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/view/bq;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v4, "nettype"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d:Ljava/lang/String;

    const-string v4, "ostype"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    const-string v4, "login"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "sinaweibo"

    iput-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    :cond_1
    const-string v4, "editServer"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g:Z

    const-string v4, "originalPath"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Ljava/lang/String;

    const-string v4, "displayName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    const-string v5, "qq"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->b()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "TW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "HK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->q:Z

    new-instance v0, Lcom/estrongs/android/ui/view/br;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/br;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/br;->start()V

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sput-object p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onDestroy()V

    return-void
.end method
