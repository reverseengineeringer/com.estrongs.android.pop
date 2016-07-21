.class public Lcom/flurry/sdk/jw;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/flurry/sdk/jw;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jw;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/flurry/sdk/jw;->e()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jw;
    .locals 2

    const-class v1, Lcom/flurry/sdk/jw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v1, Lcom/flurry/sdk/jw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;->f()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jw;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jw;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/jw$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jw$1;-><init>(Lcom/flurry/sdk/jw;)V

    iput-object v1, p0, Lcom/flurry/sdk/jw;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/flurry/sdk/jw;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jw;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/flurry/sdk/jw;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/jw;->c:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/jw;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
