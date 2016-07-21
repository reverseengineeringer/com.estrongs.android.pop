.class Lcom/estrongs/android/pop/app/ky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v1, v5, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iput v3, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->c(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->v:I

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iput-boolean v2, v0, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    const v2, 0x7f0e05ec

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    const v2, 0x7f0e01c7

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/pop/app/kz;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/kz;-><init>(Lcom/estrongs/android/pop/app/ky;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/kz;->start()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iput v5, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->c(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ky;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;)Z

    goto/16 :goto_0
.end method
