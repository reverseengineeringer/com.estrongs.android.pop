.class public Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/analysis/b/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/b/a/a;)V
    .locals 9

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->p()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "duplicate"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "redundancy"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "similar_image"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    :try_start_1
    const-string v7, "duplicate"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Analysis_duplicate"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "analysis_result_page_type"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "analysis_result_card_key"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_card_path"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_card_title"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_card_packagename"

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1027

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto/16 :goto_1

    :cond_4
    :try_start_2
    const-string v7, "redundancy"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "Analysis_redundancy"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_3

    :cond_5
    const-string v7, "sensitive_permission"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    :try_start_3
    const-string v7, "Analysis_sensitive"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    move v1, v2

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_3

    :cond_7
    const-string v7, "catalog"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v2, 0x4

    if-eqz v1, :cond_8

    :try_start_4
    const-string v7, "Analysis_all"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_8
    move v1, v2

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_3

    :cond_9
    const-string v7, "apprelationfile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "allfile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const/4 v1, 0x6

    goto/16 :goto_3

    :cond_b
    instance-of v7, p1, Lcom/estrongs/android/b/a/a/a;

    if-eqz v7, :cond_f

    const/4 v2, 0x3

    const-string v7, "appcatalog"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v2, 0x5

    :cond_c
    if-eqz v1, :cond_d

    :try_start_5
    const-string v7, "cache"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "Analysis_cache"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_d
    :goto_4
    move v1, v2

    goto/16 :goto_3

    :cond_e
    const-string v7, "internal_storage"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "Analysis_memory"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto/16 :goto_3

    :cond_f
    instance-of v7, p1, Lcom/estrongs/android/b/a/a/b;

    if-eqz v7, :cond_12

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    :try_start_6
    const-string v7, "largefile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "Analysis_large"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_10
    :goto_5
    move v1, v2

    goto/16 :goto_3

    :cond_11
    const-string v7, "newcreate"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "Analysis_recently"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto/16 :goto_3

    :cond_12
    const-string v1, "junk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "clean://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/aj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aj;->a()Landroid/support/v4/app/az;

    move-result-object v0

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/az;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/az;->b()I

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v7/app/ActionBar;
    .locals 3

    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/analysis/b/h;->b(Ljava/util/List;)V

    :cond_0
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

.method public d()Lcom/estrongs/android/pop/app/analysis/b/h;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/aj;

    move-result-object v0

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/h;

    return-object v0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->d()Lcom/estrongs/android/pop/app/analysis/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/h;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analysis_result_page_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/v;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/b/v;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    :goto_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/ad;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/b/ad;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/q;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/b/q;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/o;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/b/o;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/ac;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/b/ac;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/k;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/b/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a:Lcom/estrongs/android/pop/app/analysis/b/h;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onStart()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    return-void
.end method
