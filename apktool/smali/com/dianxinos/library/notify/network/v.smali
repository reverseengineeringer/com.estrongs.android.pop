.class public Lcom/dianxinos/library/notify/network/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/os/HandlerThread;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-object v2, Lcom/dianxinos/library/notify/network/v;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/dianxinos/library/notify/network/v;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sput-object v2, Lcom/dianxinos/library/notify/network/v;->c:Landroid/os/Handler;

    sput-object v2, Lcom/dianxinos/library/notify/network/v;->d:Landroid/os/HandlerThread;

    sput-object v2, Lcom/dianxinos/library/notify/network/v;->e:Landroid/os/Handler;

    new-instance v0, Lcom/dianxinos/library/notify/network/w;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/w;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/network/v;->f:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/network/v;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/dianxinos/library/notify/network/u;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/notify/network/u;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/network/v;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 10

    new-instance v8, Lcom/dianxinos/library/notify/network/x;

    invoke-direct {v8}, Lcom/dianxinos/library/notify/network/x;-><init>()V

    sget v0, Lcom/dianxinos/library/notify/network/a;->a:I

    mul-int/lit8 v3, v0, 0x4

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v9, Lcom/dianxinos/library/notify/network/v;->f:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/dianxinos/library/notify/network/v;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/network/v;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "internal"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/notify/network/v;->d:Landroid/os/HandlerThread;

    sget-object v0, Lcom/dianxinos/library/notify/network/v;->d:Landroid/os/HandlerThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/dianxinos/library/notify/network/v;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/dianxinos/library/notify/network/v;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dianxinos/library/notify/network/v;->e:Landroid/os/Handler;

    return-void
.end method
