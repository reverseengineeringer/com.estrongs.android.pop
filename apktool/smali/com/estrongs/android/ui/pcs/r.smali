.class public Lcom/estrongs/android/ui/pcs/r;
.super Lcom/estrongs/android/ui/pcs/y;


# instance fields
.field private d:Lcom/baidu/sapi2/SapiWebView;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/estrongs/android/pop/ad;

.field private i:Lcom/estrongs/android/ui/pcs/u;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

.field private m:Lcom/estrongs/android/ui/pcs/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/r;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/r;->f:Z

    new-instance v0, Lcom/estrongs/android/ui/pcs/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/s;-><init>(Lcom/estrongs/android/ui/pcs/r;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->l:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->h:Lcom/estrongs/android/pop/ad;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->i:Lcom/estrongs/android/ui/pcs/u;

    invoke-static {p1}, Lcom/estrongs/android/pop/FexApplication;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/r;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/r;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->h:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ah()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->b:Lcom/estrongs/android/ui/pcs/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->b:Lcom/estrongs/android/ui/pcs/q;

    invoke-interface {v0, v1, p1, p2}, Lcom/estrongs/android/ui/pcs/q;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/estrongs/android/pop/z;->N:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->b:Lcom/estrongs/android/ui/pcs/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->b:Lcom/estrongs/android/ui/pcs/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/q;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/r;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->h:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/r;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->h:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/ui/pcs/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->m:Lcom/estrongs/android/ui/pcs/f;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/r;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/ui/pcs/f;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/pcs/y;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->m:Lcom/estrongs/android/ui/pcs/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->m:Lcom/estrongs/android/ui/pcs/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/f;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->m:Lcom/estrongs/android/ui/pcs/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/r;->b:Lcom/estrongs/android/ui/pcs/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/f;->a(Lcom/estrongs/android/ui/pcs/q;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->m:Lcom/estrongs/android/ui/pcs/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/f;->show()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/ui/pcs/u;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->i:Lcom/estrongs/android/ui/pcs/u;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/pcs/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/r;->f()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/r;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/r;->show()V

    return-void
.end method

.method protected b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030106

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f03014b

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e00d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/pcs/r;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0e0494

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiWebView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->d:Lcom/baidu/sapi2/SapiWebView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/r;->d:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/an;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->d:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/t;-><init>(Lcom/estrongs/android/ui/pcs/r;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnFinishCallback(Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->d:Lcom/baidu/sapi2/SapiWebView;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/r;->l:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setAuthorizationListener(Lcom/baidu/sapi2/shell/listener/AuthorizationListener;)V

    const v0, 0x7f08060b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/r;->setTitle(I)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/r;->k:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/r;->j:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/y;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/r;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/r;->d:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->loadRegist()V

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/y;->show()V

    return-void
.end method
