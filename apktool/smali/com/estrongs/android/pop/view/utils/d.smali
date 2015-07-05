.class Lcom/estrongs/android/pop/view/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Lcom/estrongs/android/pop/view/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/utils/c;ZLcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/utils/d;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/view/utils/d;->b:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/utils/c;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/d;->a:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    :goto_0
    new-instance v4, Lcom/estrongs/fs/b/r;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/c;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/d;->b:Lcom/estrongs/fs/h;

    new-instance v2, Lcom/estrongs/fs/impl/local/f;

    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v7, v7, Lcom/estrongs/android/pop/view/utils/c;->f:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v0, v1, v2, v6}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v8, v0, Lcom/estrongs/a/a/m;->p:Z

    iget-object v0, v4, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v8, v0, Lcom/estrongs/a/a/m;->k:Z

    new-instance v0, Lcom/estrongs/android/pop/view/utils/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v2, v1, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    const v3, 0x7f0b0072

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/view/utils/e;-><init>(Lcom/estrongs/android/pop/view/utils/d;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/estrongs/fs/b/r;->c(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    const v2, 0x7f0b021d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    const v3, 0x7f0b021e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ix;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/ix;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ix;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v8}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    const-class v0, Lcom/estrongs/a/a/h;

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/b/r;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    iput v9, v0, Lcom/estrongs/a/a/d;->g:I

    iput-boolean v9, v0, Lcom/estrongs/a/a/d;->e:Z

    iput-boolean v9, v0, Lcom/estrongs/a/a/d;->f:Z

    invoke-virtual {v4}, Lcom/estrongs/fs/b/r;->execute()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
