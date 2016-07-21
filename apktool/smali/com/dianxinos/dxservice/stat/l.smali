.class Lcom/dianxinos/dxservice/stat/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/k;


# direct methods
.method constructor <init>(Lcom/dianxinos/dxservice/stat/k;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/l;->a:Lcom/dianxinos/dxservice/stat/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/l;->a:Lcom/dianxinos/dxservice/stat/k;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/k;->a(Lcom/dianxinos/dxservice/stat/k;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/l;->a:Lcom/dianxinos/dxservice/stat/k;

    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/k;->a(Lcom/dianxinos/dxservice/stat/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/a;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/stat/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/stat/a;->a()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.ConnectivityChangeListener"

    const-string v1, "Mobile data connection!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/aa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/c;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dianxinos/dxservice/core/c;->a(I)Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_3

    const-string v0, "stat.ConnectivityChangeListener"

    const-string v1, "Wifi data connection!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/aa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dianxinos/dxservice/core/c;->a(I)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/l;->a:Lcom/dianxinos/dxservice/stat/k;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/k;->a(Lcom/dianxinos/dxservice/stat/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/a;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/a;->b()V

    goto :goto_1
.end method
