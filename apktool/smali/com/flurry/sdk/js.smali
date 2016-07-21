.class public Lcom/flurry/sdk/js;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/flurry/sdk/js;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/HandlerThread;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/flurry/sdk/ki;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/js;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/js;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/js;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/js;->d:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/js;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/flurry/sdk/js;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/flurry/sdk/js;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/js;->e:Landroid/os/Handler;

    iput-object p2, p0, Lcom/flurry/sdk/js;->g:Ljava/lang/String;

    new-instance v0, Lcom/flurry/sdk/ki;

    invoke-direct {v0}, Lcom/flurry/sdk/ki;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/js;->h:Lcom/flurry/sdk/ki;

    return-void
.end method

.method public static a()Lcom/flurry/sdk/js;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/js;->h:Lcom/flurry/sdk/ki;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ki;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/flurry/sdk/js;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Only one API key per application is supported!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "API key must be specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/flurry/sdk/js;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/js;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/js;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v1, Lcom/flurry/sdk/js;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    invoke-direct {v0}, Lcom/flurry/sdk/js;->h()V

    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/js;->i()V

    iget-object v0, p0, Lcom/flurry/sdk/js;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/js;->h:Lcom/flurry/sdk/ki;

    invoke-virtual {v0}, Lcom/flurry/sdk/ki;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/kj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/kj;",
            ">;)",
            "Lcom/flurry/sdk/kj;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/js;->h:Lcom/flurry/sdk/ki;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ki;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kj;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/js;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/js;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/js;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/js;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/js;->c:Landroid/content/Context;

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/js;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/js;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/js;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/js;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public g()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/js;->e:Landroid/os/Handler;

    return-object v0
.end method
