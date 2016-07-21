.class public Lcom/estrongs/android/c/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "574566857eae993bd290825f"

    new-instance v1, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;

    invoke-direct {v1, p0, v0}, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v3, v1, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->debug:Z

    const-string v2, "prod"

    iput-object v2, v1, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->mobuleEnv:Ljava/lang/String;

    const/16 v2, 0x2bac

    iput v2, v1, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->sid:I

    invoke-static {v1}, Lcom/baidu/scenery/SceneryLibrary;->init(Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;)Z

    invoke-static {p0, v0}, Lcom/baidu/scenery/SceneryLibrary;->refreshConfigs(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/baidu/scenery/utils/LogHelper;->setLogEnabled(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "scenery_uninstall"

    invoke-static {p0, v0}, Lcom/baidu/scenery/SceneryLibrary;->isSceneryRunOut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
