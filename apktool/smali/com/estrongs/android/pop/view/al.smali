.class Lcom/estrongs/android/pop/view/al;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/al;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/d/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->i()V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/al;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->f()V

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->g()V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->d()V

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/e/a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->e()V

    invoke-static {}, Lcom/estrongs/a/a;->isAllTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
