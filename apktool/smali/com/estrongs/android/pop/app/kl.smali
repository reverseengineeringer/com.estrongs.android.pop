.class Lcom/estrongs/android/pop/app/kl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->c(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v1, v4, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->v:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    const v2, 0x7f0b0202

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iput v4, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kl;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;)Z

    goto/16 :goto_0
.end method
