.class public Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;
.super Ljava/lang/Object;


# instance fields
.field public generalRules:Lcom/baidu/scenery/dispatcher/GeneralRules;

.field public sceneryExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/scenery/dispatcher/SceneryExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    return-void
.end method
