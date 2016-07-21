.class Lcom/estrongs/android/widget/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    iput-object p2, p0, Lcom/estrongs/android/widget/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/16 v7, 0x12

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    iget-object v1, p0, Lcom/estrongs/android/widget/k;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/widget/f;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->c()Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    iget-object v0, v0, Lcom/estrongs/android/widget/f;->b:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v4}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/view/fv;->ag()Lcom/estrongs/fs/d;

    move-result-object v4

    invoke-static {v1, v0, v3, v4}, Lcom/estrongs/fs/util/j;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/fs/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f08049d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    if-lt v0, v7, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/widget/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/l;-><init>(Lcom/estrongs/android/widget/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    instance-of v3, v0, Lcom/estrongs/fs/FileExistException;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v4}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f08049d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v2}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v6}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    if-lt v0, v7, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/widget/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/l;-><init>(Lcom/estrongs/android/widget/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v4}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f08049d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v3}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v6}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v1}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/widget/l;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/l;-><init>(Lcom/estrongs/android/widget/k;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
