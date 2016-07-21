.class Lcom/dianxinos/lockscreen/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/c;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/c;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/e;->a:Lcom/dianxinos/lockscreen/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "ChargingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen state is changed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/e;->a:Lcom/dianxinos/lockscreen/c;

    invoke-static {v0, p2}, Lcom/dianxinos/lockscreen/c;->a(Lcom/dianxinos/lockscreen/c;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
