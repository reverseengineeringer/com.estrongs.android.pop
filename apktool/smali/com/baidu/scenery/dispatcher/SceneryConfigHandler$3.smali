.class final Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v0

    new-instance v1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3$1;

    invoke-direct {v1, p0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3$1;-><init>(Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;)V

    invoke-virtual {v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
