.class final Lcom/dianxinos/library/dxbase/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/dxbase/h;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/dxbase/k;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    sput-object v0, Lcom/dianxinos/library/dxbase/k;->b:Landroid/net/NetworkInfo;

    :cond_1
    sget-object v1, Lcom/dianxinos/library/dxbase/k;->b:Landroid/net/NetworkInfo;

    sget-object v2, Lcom/dianxinos/library/dxbase/k;->c:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/dxbase/k;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/dxbase/n;

    if-eqz v0, :cond_2

    new-instance v4, Lcom/dianxinos/library/dxbase/m;

    invoke-direct {v4, p0, v0, v1}, Lcom/dianxinos/library/dxbase/m;-><init>(Lcom/dianxinos/library/dxbase/l;Lcom/dianxinos/library/dxbase/n;Landroid/net/NetworkInfo;)V

    invoke-static {v4}, Lcom/dianxinos/library/dxbase/o;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
