.class public Lcom/dianxinos/dxservice/stat/AlarmReceiver;
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

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.AlarmReceiver"

    const-string v1, "Alarm trigger, and next alarm will trigger in 30mins!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/aa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dianxinos/dxservice/core/c;->a(I)Z

    :cond_1
    return-void
.end method
