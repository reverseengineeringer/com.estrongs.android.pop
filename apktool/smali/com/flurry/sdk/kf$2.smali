.class Lcom/flurry/sdk/kf$2;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kf;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kf$2;->a:Lcom/flurry/sdk/kf;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iget-object v0, p0, Lcom/flurry/sdk/kf$2;->a:Lcom/flurry/sdk/kf;

    invoke-static {v0, p1}, Lcom/flurry/sdk/kf;->a(Lcom/flurry/sdk/kf;Ljava/lang/Runnable;)Lcom/flurry/sdk/lz;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/kf$2;->a:Lcom/flurry/sdk/kf;

    invoke-static {v1}, Lcom/flurry/sdk/kf;->a(Lcom/flurry/sdk/kf;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/kf$2;->a:Lcom/flurry/sdk/kf;

    invoke-static {v2}, Lcom/flurry/sdk/kf;->a(Lcom/flurry/sdk/kf;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/flurry/sdk/kf$2;->a:Lcom/flurry/sdk/kf;

    invoke-static {v1, v0}, Lcom/flurry/sdk/kf;->a(Lcom/flurry/sdk/kf;Lcom/flurry/sdk/lz;)V

    new-instance v1, Lcom/flurry/sdk/kf$2$1;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/kf$2$1;-><init>(Lcom/flurry/sdk/kf$2;Lcom/flurry/sdk/lz;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/kf$2$1;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
