.class Lcom/estrongs/android/ui/view/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/RecommendListView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/RecommendListView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v0, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput v2, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->b(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/utils/v;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->v:I

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/RecommAcitivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/RecommAcitivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0202

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iput v5, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->b(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v2, v0, v3}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bv;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;)Z

    goto/16 :goto_0
.end method
