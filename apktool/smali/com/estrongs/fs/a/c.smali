.class public Lcom/estrongs/fs/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/a/b;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    invoke-static {v0}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    invoke-static {v0}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/b;)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    invoke-static {v0}, Lcom/estrongs/fs/a/b;->c(Lcom/estrongs/fs/a/b;)Lcom/estrongs/fs/a/d;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    invoke-static {v0}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/b;)I

    move-result v0

    const/16 v3, 0x1388

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    invoke-static {v0}, Lcom/estrongs/fs/a/b;->d(Lcom/estrongs/fs/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    invoke-static {v0}, Lcom/estrongs/fs/a/b;->d(Lcom/estrongs/fs/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/a/c;->a:Lcom/estrongs/fs/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method
