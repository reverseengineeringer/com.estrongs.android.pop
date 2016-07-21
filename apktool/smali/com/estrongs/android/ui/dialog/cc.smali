.class Lcom/estrongs/android/ui/dialog/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/ca;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ca;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/cc;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/cc;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    const/4 v12, 0x3

    const v1, 0x7f0801f4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cc;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const v0, 0x7f0804d6

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    aget-object v2, v3, v9

    :cond_1
    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sina.weibo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/ca;->b(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/ca;->c(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v4}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f080064

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "3.0.5"

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v6}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v9

    aput-object v4, v7, v10

    aput-object v3, v7, v11

    invoke-virtual {v6, v0, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v1

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v2, v4, v9

    aput-object v3, v4, v10

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cc;->b:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cc;->b:Landroid/content/Intent;

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cc;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v2, v4, v9

    const-string v6, ""

    aput-object v6, v4, v10

    iget-object v6, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v6}, Lcom/estrongs/android/ui/dialog/ca;->e(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v1

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cc;->c:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ca;->e(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cc;->b:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_3

    :cond_5
    move-object v0, v4

    goto :goto_0
.end method
