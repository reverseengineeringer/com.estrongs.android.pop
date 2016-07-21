.class Lcom/baidu/scenery/dispatcher/SceneryDispatcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/scenery/dispatcher/SceneryDispatcher;


# direct methods
.method constructor <init>(Lcom/baidu/scenery/dispatcher/SceneryDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher$1;->this$0:Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher$1;->this$0:Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    const-string v1, "scenery_disk_usage"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->onSceneryOccur(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher$1;->this$0:Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
