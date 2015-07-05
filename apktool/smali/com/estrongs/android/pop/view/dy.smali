.class Lcom/estrongs/android/pop/view/dy;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/fs/d;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/dy;->a:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/dy;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/view/dy;->c:Z

    iput-object p5, p0, Lcom/estrongs/android/pop/view/dy;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const v5, 0x7f0b01b6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/view/dy;->a:Lcom/estrongs/fs/d;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/dy;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b01e9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/estrongs/android/pop/view/dz;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/dz;-><init>(Lcom/estrongs/android/pop/view/dy;)V

    new-instance v3, Lcom/estrongs/android/pop/m;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v3, v4}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/a/a;->execute(Z)V

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    if-nez v2, :cond_3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0227

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/view/dy;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/dy;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dy;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/local/j;->a()V

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dy;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "child_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/fs/h;)I
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b01b6

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dy;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/ea;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ea;-><init>(Lcom/estrongs/android/pop/view/dy;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
