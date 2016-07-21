.class final Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/notify/e;


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dataPipeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;->val$dataPipeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataArrive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    # getter for: Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", body "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;->val$dataPipeId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryConfig(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # getter for: Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after send refresh broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
