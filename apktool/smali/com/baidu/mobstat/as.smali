.class public Lcom/baidu/mobstat/as;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/k;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/mobstat/k;
    .locals 5

    const-class v2, Lcom/baidu/mobstat/as;

    monitor-enter v2

    :try_start_0
    const-string v0, "getBPStretegyController begin"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/mobstat/as;->a:Lcom/baidu/mobstat/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v0, "com.baidu.bottom.remote.BPStretegyController2"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/av;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    new-instance v0, Lcom/baidu/mobstat/au;

    invoke-direct {v0, v3}, Lcom/baidu/mobstat/au;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "Get BPStretegyController load remote class v2"

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v0, :cond_0

    :try_start_3
    new-instance v0, Lcom/baidu/mobstat/at;

    invoke-direct {v0}, Lcom/baidu/mobstat/at;-><init>()V

    const-string v1, "Get BPStretegyController load local class"

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    :cond_0
    sput-object v0, Lcom/baidu/mobstat/as;->a:Lcom/baidu/mobstat/k;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/av;->a(Landroid/content/Context;Lcom/baidu/mobstat/k;)V

    const-string v1, "getBPStretegyController end"

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/as;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/baidu/mobstat/as;->a:Lcom/baidu/mobstat/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
