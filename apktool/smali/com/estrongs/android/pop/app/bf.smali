.class Lcom/estrongs/android/pop/app/bf;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/be;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/be;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/be;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/be;->a(Lcom/estrongs/android/pop/app/be;)V

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->k()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/be;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/be;->a(Lcom/estrongs/android/pop/app/be;)V

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->k()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/be;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/be;->b(Lcom/estrongs/android/pop/app/be;)V

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ftp/a;->a(Landroid/content/Context;)I

    goto :goto_0
.end method
