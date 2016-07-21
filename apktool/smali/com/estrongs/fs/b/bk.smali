.class Lcom/estrongs/fs/b/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/bk;->a:Lcom/estrongs/fs/b/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/bk;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/bk;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Lcom/estrongs/a/a/h;->g:I

    iget-object v0, p0, Lcom/estrongs/fs/b/bk;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/estrongs/a/a/h;->f:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/bk;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
