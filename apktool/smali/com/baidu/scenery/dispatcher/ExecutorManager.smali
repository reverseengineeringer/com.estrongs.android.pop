.class Lcom/baidu/scenery/dispatcher/ExecutorManager;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/baidu/scenery/dispatcher/ExecutorManager;


# instance fields
.field private final mExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/scenery/dispatcher/SceneryExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->mExecutors:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/scenery/dispatcher/ExecutorManager;
    .locals 2

    const-class v1, Lcom/baidu/scenery/dispatcher/ExecutorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->INSTANCE:Lcom/baidu/scenery/dispatcher/ExecutorManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/scenery/dispatcher/ExecutorManager;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/ExecutorManager;-><init>()V

    sput-object v0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->INSTANCE:Lcom/baidu/scenery/dispatcher/ExecutorManager;

    :cond_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->INSTANCE:Lcom/baidu/scenery/dispatcher/ExecutorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearExecutors()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->mExecutors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExecutor(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->mExecutors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/SceneryExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replaceExecutors(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/scenery/dispatcher/SceneryExecutor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->mExecutors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/ExecutorManager;->mExecutors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
