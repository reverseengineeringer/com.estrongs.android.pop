.class public Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# static fields
.field public static a:I

.field public static b:I

.field public static d:I

.field public static e:I

.field public static f:I

.field private static g:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/webkit/WebView;

.field private k:Lcom/estrongs/android/ui/view/ab;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->g:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d:I

    const/4 v0, 0x4

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->e:I

    const/4 v0, 0x5

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->i:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->j:Landroid/webkit/WebView;

    new-instance v0, Lcom/estrongs/android/ui/view/ab;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/ab;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Lcom/estrongs/android/ui/view/x;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->k:Lcom/estrongs/android/ui/view/ab;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->l:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->m:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->n:Landroid/view/View;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->q:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/view/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/y;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->r:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/view/z;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/z;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method private a(Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "verifier"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "1.0a"

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    const-string v4, "Flickr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getAccessTokenUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->p:Ljava/lang/String;

    invoke-static {v3, v0, v4, v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getAccessTokenParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/spfs/OAuthUtil;->sendPost(Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/OAuthUtil;->getDataAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Empty Response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    :try_start_1
    const-string v0, "oauth_token"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "username"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "user_nsid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    invoke-static {v4, v3, v2, v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->saveUsernameAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    const-string v1, "fake"

    const-string v3, "/"

    invoke-static {v0, v2, v1, v3}, Lcom/estrongs/android/util/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->i:Z

    if-eqz v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "path"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->setResult(ILandroid/content/Intent;)V

    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getUserLoginName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->g:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->o:Ljava/lang/String;

    return-object p1
.end method

.method private c()Z
    .locals 2

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->j:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->m:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->s:Landroid/os/Handler;

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->requestWindowFeature(I)Z

    const v0, 0x7f030138

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->setContentView(I)V

    const v0, 0x7f0e0540

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->k:Lcom/estrongs/android/ui/view/ab;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const v0, 0x7f0e0542

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->m:Landroid/widget/TextView;

    const v0, 0x7f0e0541

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f0e053f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "nettype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->h:Ljava/lang/String;

    const-string v2, "editServer"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->i:Z

    new-instance v0, Lcom/estrongs/android/ui/view/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/x;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/x;->start()V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sput-object p0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->g:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->g:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onDestroy()V

    return-void
.end method
