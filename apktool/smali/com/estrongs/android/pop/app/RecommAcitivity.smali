.class public Lcom/estrongs/android/pop/app/RecommAcitivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/estrongs/android/ui/view/RecommendListView;

.field private c:Lcom/estrongs/android/ui/theme/al;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->e:Z

    return-void
.end method

.method private a()Z
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


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->requestWindowFeature(I)Z

    const v0, 0x7f0300c1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.estrongs.intent.extra.TITLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x7f0a036e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->d:Landroid/view/View;

    const v0, 0x7f0a036f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/app/kg;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/kg;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0371

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0372

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/RecommendListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a([Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->c()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    new-instance v2, Lcom/estrongs/android/pop/app/kh;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/kh;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;I)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/RecommendListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const v1, 0x7f0b050d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->f()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
