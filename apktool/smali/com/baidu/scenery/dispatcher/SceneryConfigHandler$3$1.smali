.class Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;


# direct methods
.method constructor <init>(Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3$1;->this$0:Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;

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

    const-string v1, "before load scenery config"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3$1;->this$0:Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;

    iget-object v0, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSceneryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->loadSceneryConfig(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->access$100(Ljava/lang/String;)V

    return-void
.end method
