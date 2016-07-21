.class Lcom/dianxinos/dxservice/stat/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/content/Intent;

.field final synthetic b:Lcom/dianxinos/dxservice/stat/af;


# direct methods
.method public constructor <init>(Lcom/dianxinos/dxservice/stat/af;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ak;->b:Lcom/dianxinos/dxservice/stat/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dianxinos/dxservice/stat/ak;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.HwInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter in HandleWifiStateChange!\nAction received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ak;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ak;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ak;->b:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/af;->f(Lcom/dianxinos/dxservice/stat/af;)V

    :cond_1
    return-void
.end method
