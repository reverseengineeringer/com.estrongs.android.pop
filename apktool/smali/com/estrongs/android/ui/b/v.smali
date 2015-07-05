.class Lcom/estrongs/android/ui/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/b/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/u;->a(Lcom/estrongs/android/ui/b/u;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/f;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/ui/b/u;->c(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/ui/b/u;->h(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/f;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v3

    instance-of v1, v2, Lcom/estrongs/fs/b/ad;

    if-eqz v1, :cond_2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    :cond_2
    :goto_1
    const/4 v0, 0x4

    if-ne v3, v0, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->c(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/u;->d(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b02f7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "TaskGridViewWarpper"

    const-string v1, "Ignore error when open file in download manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v3, v1, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->resume()V

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    if-ne v3, v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/u;->b(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/ui/b/x;

    move-result-object v4

    iget-object v1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/ui/b/u;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-virtual {v4, v1}, Lcom/estrongs/android/ui/b/x;->a(Lcom/estrongs/fs/h;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v4}, Lcom/estrongs/android/ui/b/u;->b(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/ui/b/x;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/estrongs/a/a;->addPostListener(Lcom/estrongs/a/a/o;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->requsestPause()V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/u;->e(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
