.class Lcom/estrongs/android/ui/b/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/f;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/b/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/v;Lcom/estrongs/android/ui/b/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    iput p3, p0, Lcom/estrongs/android/ui/b/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/u;->N()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    instance-of v0, v1, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_0

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne v2, v0, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "target"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->k(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/u;->l(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080486

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "title"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->resume()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->j(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/ui/b/ab;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    iget v4, p0, Lcom/estrongs/android/ui/b/z;->b:I

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/b/u;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/b/ab;->a(Lcom/estrongs/fs/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v3, v3, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v3}, Lcom/estrongs/android/ui/b/u;->j(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/ui/b/ab;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/a/a;->addPostListener(Lcom/estrongs/a/a/o;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    iget-object v3, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/z;->a:Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->requsestPause()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/ui/b/z;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/u;->m(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "TaskGridViewWarpper"

    const-string v1, "Ignore error when open file in download manager"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
