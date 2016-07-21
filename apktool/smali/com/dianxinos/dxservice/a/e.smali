.class public Lcom/dianxinos/dxservice/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lcom/dianxinos/dxservice/a/e;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dianxinos/dxservice/a/e;

    invoke-direct {v0}, Lcom/dianxinos/dxservice/a/e;-><init>()V

    sput-object v0, Lcom/dianxinos/dxservice/a/e;->c:Lcom/dianxinos/dxservice/a/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Handler01"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/a/e;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/dianxinos/dxservice/a/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/a/e;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/dianxinos/dxservice/a/e;->c:Lcom/dianxinos/dxservice/a/e;

    iget-object v0, v0, Lcom/dianxinos/dxservice/a/e;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 2

    const-class v1, Lcom/dianxinos/dxservice/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/a/e;->c:Lcom/dianxinos/dxservice/a/e;

    iget-object v0, v0, Lcom/dianxinos/dxservice/a/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;J)Z
    .locals 3

    const-class v1, Lcom/dianxinos/dxservice/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/a/e;->c:Lcom/dianxinos/dxservice/a/e;

    iget-object v0, v0, Lcom/dianxinos/dxservice/a/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/Runnable;)V
    .locals 2

    const-class v1, Lcom/dianxinos/dxservice/a/e;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/a/e;->c:Lcom/dianxinos/dxservice/a/e;

    iget-object v0, v0, Lcom/dianxinos/dxservice/a/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
