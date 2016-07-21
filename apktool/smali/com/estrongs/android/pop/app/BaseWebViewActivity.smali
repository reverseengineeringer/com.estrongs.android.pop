.class public Lcom/estrongs/android/pop/app/BaseWebViewActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "url"

    sput-object v0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/BaseWebViewActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->i()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->h()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/v;-><init>(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->c:Landroid/view/View;

    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->e:Landroid/widget/ProgressBar;

    const v0, 0x7f0e00aa

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->d:Landroid/widget/TextView;

    return-void
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f08070a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v7/app/ActionBar;
    .locals 3

    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02043c

    const v2, 0x7f0800a0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/w;-><init>(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onStart()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    return-void
.end method
