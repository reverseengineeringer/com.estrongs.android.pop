.class public Lcom/flurry/sdk/jl;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static c:Lcom/flurry/sdk/jl;


# instance fields
.field a:Z

.field b:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    invoke-direct {p0, v1}, Lcom/flurry/sdk/jl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->b:Z

    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/jl;->e()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jl;
    .locals 2

    const-class v1, Lcom/flurry/sdk/jl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/jl;

    invoke-direct {v0}, Lcom/flurry/sdk/jl;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/flurry/sdk/jl;->d:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/jl;->g()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v1, Lcom/flurry/sdk/jl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    invoke-direct {v0}, Lcom/flurry/sdk/jl;->f()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/jl;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/jl;->b:Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Landroid/net/ConnectivityManager;
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->b:Z

    return v0
.end method

.method public d()Lcom/flurry/sdk/jl$a;
    .locals 2

    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/jl$a;->a:Lcom/flurry/sdk/jl$a;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/jl;->g()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/flurry/sdk/jl$a;->a:Lcom/flurry/sdk/jl$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/jl$a;->b:Lcom/flurry/sdk/jl$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/jl$a;->c:Lcom/flurry/sdk/jl$a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/jl$a;->d:Lcom/flurry/sdk/jl$a;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/jl$a;->a:Lcom/flurry/sdk/jl$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/flurry/sdk/jl$a;->a:Lcom/flurry/sdk/jl$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/flurry/sdk/jl;->a(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/flurry/sdk/jl;->b:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->b:Z

    new-instance v1, Lcom/flurry/sdk/jk;

    invoke-direct {v1}, Lcom/flurry/sdk/jk;-><init>()V

    iput-boolean v0, v1, Lcom/flurry/sdk/jk;->a:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/jl;->d()Lcom/flurry/sdk/jl$a;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/sdk/jk;->b:Lcom/flurry/sdk/jl$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/jk;->b()V

    :cond_0
    return-void
.end method
