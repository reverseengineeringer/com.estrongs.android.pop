.class Lcom/estrongs/android/pop/view/bo;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bo;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/bo;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->l()V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/bo;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->f()V

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->g()V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->d()V

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->e()V

    invoke-static {}, Lcom/estrongs/a/a;->isAllTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
