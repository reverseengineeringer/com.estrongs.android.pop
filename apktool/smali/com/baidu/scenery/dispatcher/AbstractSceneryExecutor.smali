.class abstract Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/scenery/dispatcher/SceneryExecutor;


# static fields
.field private static final DEBUG:Z

.field public static final DEF_INTERVAL_SIGN:Z = false

.field public static final DEF_SWITCH:Z = false

.field public static final DEF_TIME_INTERVAL_MIN:J = 0xb40L

.field public static final DEF_TOTAL_SHOW_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "scenery"


# instance fields
.field mCloudRecommendPkg:Ljava/lang/String;

.field mSwitch:Z

.field mTimeInterval:J

.field mTimeIntervalSign:Z

.field mTotalShowNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mSwitch:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTotalShowNum:I

    const-wide/32 v0, 0xa4cb800

    iput-wide v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTimeInterval:J

    iput-boolean v2, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTimeIntervalSign:Z

    return-void
.end method

.method private checkSameSceneShowCount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSameSceneryShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTotalShowNum:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSameSceneTimeInterval(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1, p2}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSameSceneryShowTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long v0, v2, v0

    iget-wide v2, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTimeInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkConfigRules(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mSwitch:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": switch off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->checkSameSceneShowCount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": show too much"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->checkSameSceneTimeInterval(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": show too frequently"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getRecommendPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": recommend package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getRecommendPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected abstract childHandleScenery(Landroid/os/Bundle;)Z
.end method

.method protected abstract getRecommendPkgName()Ljava/lang/String;
.end method

.method public getShowNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTotalShowNum:I

    return v0
.end method

.method public getSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mSwitch:Z

    return v0
.end method

.method public final handleScenery(Landroid/os/Bundle;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->childHandleScenery(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": handle scene ,show dialog success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSameSceneryShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSameSceneryShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSameSceneryShowTime(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public isHigherPriority()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTimeIntervalSign:Z

    return v0
.end method
