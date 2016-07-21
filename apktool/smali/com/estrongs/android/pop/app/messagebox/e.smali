.class public Lcom/estrongs/android/pop/app/messagebox/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/pop/app/messagebox/e;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/16 v3, 0xa

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x32

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/e;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DXThreadPool"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/e;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/e;->d:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/e;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/messagebox/e;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/e;->a:Lcom/estrongs/android/pop/app/messagebox/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/messagebox/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/e;->a:Lcom/estrongs/android/pop/app/messagebox/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/e;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/messagebox/e;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/e;->a:Lcom/estrongs/android/pop/app/messagebox/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/e;->a:Lcom/estrongs/android/pop/app/messagebox/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/e;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/e;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/e;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
