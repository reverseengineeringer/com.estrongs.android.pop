.class public Lcom/dianxinos/lockscreen/ad/LockPresentReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget v0, Lcom/dianxinos/lockscreen/c/f;->a:I

    if-gtz v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LockPresentReceiver"

    const-string v1, "sid is below 0"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LockPresentReceiver"

    const-string v1, "present on receive , need call back !"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->b()V

    goto :goto_0
.end method
