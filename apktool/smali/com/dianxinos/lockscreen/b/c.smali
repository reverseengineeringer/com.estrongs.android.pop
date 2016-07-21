.class public Lcom/dianxinos/lockscreen/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/lockscreen/b/c;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/dianxinos/lockscreen/b/b;

.field private d:Landroid/os/Handler;

.field private volatile e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/b/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/b/c;
    .locals 2

    sget-object v0, Lcom/dianxinos/lockscreen/b/c;->a:Lcom/dianxinos/lockscreen/b/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/dianxinos/lockscreen/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/b/c;->a:Lcom/dianxinos/lockscreen/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/b/c;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/lockscreen/b/c;->a:Lcom/dianxinos/lockscreen/b/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/b/c;->a:Lcom/dianxinos/lockscreen/b/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/b/c;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/b/c;)Lcom/dianxinos/lockscreen/b/b;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/c;->c:Lcom/dianxinos/lockscreen/b/b;

    return-object v0
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/b/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/c;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/b/c;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "LockScreenPullScheduler"

    const-string v1, "already start"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/b/c;->e:Z

    const-string v0, "LockScreenPullScheduler"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v4

    new-instance v0, Lcom/dianxinos/lockscreen/b/b;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/b/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dianxinos/lockscreen/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/b/c;->c:Lcom/dianxinos/lockscreen/b/b;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LockScreenPullScheduler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/b/c;->d:Landroid/os/Handler;

    invoke-virtual {v4}, Lcom/dianxinos/lockscreen/a;->e()J

    move-result-wide v0

    const-wide/32 v6, 0x1499700

    add-long/2addr v0, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/dianxinos/lockscreen/b/c;->d:Landroid/os/Handler;

    new-instance v3, Lcom/dianxinos/lockscreen/b/d;

    invoke-direct {v3, p0, v4}, Lcom/dianxinos/lockscreen/b/d;-><init>(Lcom/dianxinos/lockscreen/b/c;Lcom/dianxinos/lockscreen/a;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method
