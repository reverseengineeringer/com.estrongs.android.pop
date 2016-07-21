.class Lcom/dianxinos/lockscreen/c/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/c/a;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/c/b;->a:Lcom/dianxinos/lockscreen/c/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/dianxinos/lockscreen/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BatteryInfoTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/b;->a:Lcom/dianxinos/lockscreen/c/a;

    invoke-static {v0, p2}, Lcom/dianxinos/lockscreen/c/a;->a(Lcom/dianxinos/lockscreen/c/a;Landroid/content/Intent;)V

    return-void
.end method
