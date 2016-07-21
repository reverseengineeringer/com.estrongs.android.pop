.class public Lcom/baidu/scenery/SceneryLibrary;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "scenery"

.field private static sAppContext:Landroid/content/Context;

.field private static sBdct:Ljava/lang/String;

.field private static sDataPipeID:Ljava/lang/String;

.field private static sDebug:Z

.field private static sSid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/SceneryLibrary;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/scenery/SceneryLibrary;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getBdct()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/scenery/SceneryLibrary;->sBdct:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/scenery/SceneryLibrary;->sBdct:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a"

    goto :goto_0
.end method

.method public static getDataPipeID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/scenery/SceneryLibrary;->sDataPipeID:Ljava/lang/String;

    return-object v0
.end method

.method public static getSid()I
    .locals 1

    sget v0, Lcom/baidu/scenery/SceneryLibrary;->sSid:I

    return v0
.end method

.method public static init(Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->checkParameters()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/scenery/SceneryLibrary;->sAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->bdct:Ljava/lang/String;

    sput-object v0, Lcom/baidu/scenery/SceneryLibrary;->sBdct:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->dataPipeID:Ljava/lang/String;

    sput-object v0, Lcom/baidu/scenery/SceneryLibrary;->sDataPipeID:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->debug:Z

    sput-boolean v0, Lcom/baidu/scenery/SceneryLibrary;->sDebug:Z

    iget v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->sid:I

    sput v0, Lcom/baidu/scenery/SceneryLibrary;->sSid:I

    sget-boolean v0, Lcom/baidu/scenery/SceneryLibrary;->sDebug:Z

    invoke-static {v0}, Lcom/baidu/scenery/utils/LogHelper;->setLogEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->mobuleEnv:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobula/reportsdk/MobulaCore;->setEnvironment(Ljava/lang/String;)V

    sget-boolean v0, Lcom/baidu/scenery/SceneryLibrary;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SceneryLibrary:init,sDataPipeID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/scenery/SceneryLibrary;->sDataPipeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";sDebug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/scenery/SceneryLibrary;->sDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";sSid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/baidu/scenery/SceneryLibrary;->sSid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->onInitialize()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/scenery/SceneryLibrary;->sDebug:Z

    return v0
.end method

.method public static isSceneryRunOut(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isSceneryRunOut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static refreshConfigs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/scenery/SceneryLibrary;->sAppContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->loadConfigs(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
