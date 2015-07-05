.class Lcom/baidu/mobstat/af;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Lcom/baidu/mobstat/af;


# instance fields
.field private b:Landroid/content/Context;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/af;

    invoke-direct {v0}, Lcom/baidu/mobstat/af;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/af;->a:Lcom/baidu/mobstat/af;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/mobstat/af;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/af;->d:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/af;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/af;->a:Lcom/baidu/mobstat/af;

    return-object v0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/af;->c:Z

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/af;->d:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/af;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/af;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/af;->e()V

    invoke-virtual {p0}, Lcom/baidu/mobstat/af;->start()V

    const-string v0, "**************load caceh**start********"

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/af;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/af;->d:Z

    return v0
.end method

.method public d()V
    .locals 4

    invoke-virtual {p0}, Lcom/baidu/mobstat/af;->c()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/af;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/util/e;->b([Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/af;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/ag;->a()Lcom/baidu/mobstat/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/af;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/af;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->loadWifiData(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/af;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->loadStatData(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/af;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->loadLastSession(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/mobstat/af;->f()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/af;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ag;->a()Lcom/baidu/mobstat/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/af;->b:Landroid/content/Context;

    const-string v2, "loadcache"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "**************load caceh**end********"

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "sdkstat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
