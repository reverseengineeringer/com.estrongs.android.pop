.class Lcom/estrongs/android/pop/app/analysis/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/b/a/a;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/a;Lcom/estrongs/android/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/high16 v4, 0x10000000

    const/high16 v3, 0x4000000

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "junk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clean://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Analysis_junk"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appcatalog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appfolder://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Analysis_associate"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a(Landroid/app/Activity;Lcom/estrongs/android/b/a/a;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "similar_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "A_similar_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_similar_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a(Landroid/app/Activity;Lcom/estrongs/android/b/a/a;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->b:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/d;->a:Lcom/estrongs/android/b/a/a;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->a(Landroid/app/Activity;Lcom/estrongs/android/b/a/a;)V

    goto/16 :goto_1
.end method
