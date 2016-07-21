.class public Lcom/estrongs/android/pop/app/RecommAcitivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/estrongs/android/ui/view/RecommendListView;

.field private c:Lcom/estrongs/android/ui/theme/at;

.field private d:Z

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/view/View;

.field private g:Lcom/estrongs/android/ui/view/ba;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    return-object v0
.end method

.method private d()Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/utils/n;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Lcom/estrongs/android/ui/view/ba;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ba;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Lcom/estrongs/android/ui/view/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Lcom/estrongs/android/ui/view/ba;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ba;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0805f9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->setTitle(I)V

    const v0, 0x7f030166

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->c:Lcom/estrongs/android/ui/theme/at;

    const v0, 0x7f0e05df

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0e05de

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/RecommendListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030167

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e05e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->h:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/estrongs/android/ui/view/ba;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ba;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Lcom/estrongs/android/ui/view/ba;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Lcom/estrongs/android/ui/view/ba;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/ba;->a()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->setListHeaderLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a([Lcom/estrongs/android/pop/view/utils/v;)V

    const v0, 0x7f0e05e0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->setListFooter(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->setRefreshProgressBar(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->c()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    new-instance v1, Lcom/estrongs/android/pop/app/kv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/kv;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->setRefreshProgressBar(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->e()V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
