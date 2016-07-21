.class final Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dataPipeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$dataPipeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    # getter for: Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    const-string v1, "try load data when start"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.sample"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$ctx:Landroid/content/Context;

    const-string v1, "scenery_json.txt"

    invoke-static {v0, v1}, Lcom/baidu/scenery/TestGetJson;->getJsonBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$dataPipeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryConfig(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # getter for: Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    const-string v1, "after send refresh broadcast"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
