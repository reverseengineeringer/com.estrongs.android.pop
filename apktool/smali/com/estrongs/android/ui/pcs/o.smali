.class public Lcom/estrongs/android/ui/pcs/o;
.super Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field private d:Lcom/baidu/sapi2/SapiWebView;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/estrongs/android/pop/ad;

.field private i:Lcom/estrongs/android/ui/pcs/r;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

.field private m:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/o;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/v;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/o;->f:Z

    new-instance v0, Lcom/estrongs/android/ui/pcs/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/p;-><init>(Lcom/estrongs/android/ui/pcs/o;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->l:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/o;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->h:Lcom/estrongs/android/pop/ad;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->i:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {p1}, Lcom/estrongs/android/pop/FexApplication;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/o;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/o;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->h:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ag()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->b:Lcom/estrongs/android/ui/pcs/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->b:Lcom/estrongs/android/ui/pcs/n;

    invoke-interface {v0, v1, p1, p2}, Lcom/estrongs/android/ui/pcs/n;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Normal_Login"

    const-string v2, "Normal_Login"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/o;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    const-string v2, "Market"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/estrongs/android/pop/z;->N:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->b:Lcom/estrongs/android/ui/pcs/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->b:Lcom/estrongs/android/ui/pcs/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/n;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/o;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/o;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->h:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/o;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->h:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/o;)Lcom/estrongs/android/ui/pcs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->m:Lcom/estrongs/android/ui/pcs/d;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/o;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/o;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/o;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/pcs/v;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->m:Lcom/estrongs/android/ui/pcs/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->m:Lcom/estrongs/android/ui/pcs/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->m:Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/o;->b:Lcom/estrongs/android/ui/pcs/n;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/n;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->m:Lcom/estrongs/android/ui/pcs/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->show()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/o;)Lcom/estrongs/android/ui/pcs/r;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->i:Lcom/estrongs/android/ui/pcs/r;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/pcs/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/o;->f()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/o;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/o;->show()V

    return-void
.end method

.method protected b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030091

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0300aa

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a022b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/pcs/o;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a02a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiWebView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->d:Lcom/baidu/sapi2/SapiWebView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/o;->d:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->d:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/q;-><init>(Lcom/estrongs/android/ui/pcs/o;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnFinishCallback(Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->d:Lcom/baidu/sapi2/SapiWebView;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/o;->l:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setAuthorizationListener(Lcom/baidu/sapi2/shell/listener/AuthorizationListener;)V

    const v0, 0x7f0b023d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/o;->setTitle(I)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/o;->k:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/o;->j:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/v;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/o;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->d:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->loadRegist()V

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/v;->show()V

    return-void
.end method
