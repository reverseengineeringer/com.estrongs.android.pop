.class Lcom/estrongs/a/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    # getter for: Lcom/estrongs/a/a;->task_result:Lcom/estrongs/a/p;
    invoke-static {v0}, Lcom/estrongs/a/a;->access$000(Lcom/estrongs/a/a;)Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->executeHelper()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    const/4 v1, 0x0

    # setter for: Lcom/estrongs/a/a;->async_thread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/estrongs/a/a;->access$202(Lcom/estrongs/a/a;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    # getter for: Lcom/estrongs/a/a;->postListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/a/a;->access$100(Lcom/estrongs/a/a;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    # getter for: Lcom/estrongs/a/a;->postListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/a/a;->access$100(Lcom/estrongs/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/estrongs/a/a/o;->a(Lcom/estrongs/a/a;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/a/b;->a:Lcom/estrongs/a/a;

    # getter for: Lcom/estrongs/a/a;->postListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/a/a;->access$100(Lcom/estrongs/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
