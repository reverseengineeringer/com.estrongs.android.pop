.class public Lcom/dianxinos/library/dxbase/k;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/net/ConnectivityManager;

.field static b:Landroid/net/NetworkInfo;

.field static c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/dianxinos/library/dxbase/n;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static d:Lcom/dianxinos/library/dxbase/h;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/library/dxbase/k;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/library/dxbase/k;->b:Landroid/net/NetworkInfo;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/dianxinos/library/dxbase/k;->c:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/dianxinos/library/dxbase/l;

    invoke-direct {v0}, Lcom/dianxinos/library/dxbase/l;-><init>()V

    sput-object v0, Lcom/dianxinos/library/dxbase/k;->d:Lcom/dianxinos/library/dxbase/h;

    return-void
.end method

.method public static declared-synchronized a()Landroid/net/NetworkInfo;
    .locals 2

    const-class v0, Lcom/dianxinos/library/dxbase/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dianxinos/library/dxbase/k;->b:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/dianxinos/library/dxbase/k;

    monitor-enter v1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/dianxinos/library/dxbase/k;->a:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/dianxinos/library/dxbase/k;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/dxbase/k;->b:Landroid/net/NetworkInfo;

    sget-boolean v0, Lcom/dianxinos/library/dxbase/k;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/dxbase/k;->b:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    const-string v0, "Warning: could not get network info from ConnectivityManager, app might crash"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->c(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/dianxinos/library/dxbase/k;->d:Lcom/dianxinos/library/dxbase/h;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v2}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Lcom/dianxinos/library/dxbase/h;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Z
    .locals 2

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->a()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->a()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->a()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->a()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->a()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 2

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->a()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
