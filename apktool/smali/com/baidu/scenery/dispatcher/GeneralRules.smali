.class Lcom/baidu/scenery/dispatcher/GeneralRules;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z

.field public static final DEF_NEW_USER_PRO_TIME_MIN:J = 0x2d0L

.field public static final DEF_SHOW_GAP_MIN:J = 0xb40L

.field public static final DEF_SHOW_TIMES:I = 0xa

.field public static final DEF_TIME_STAMP:J = -0x1L

.field public static final PRIORITY_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "scenery"

.field private static sChecker:Lcom/baidu/scenery/dispatcher/GeneralRules;


# instance fields
.field newUserProTime:J

.field priority:I

.field showGap:J

.field showTimes:I

.field timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getDefPriority()I

    move-result v0

    iput v0, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->priority:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->timeStamp:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->showTimes:I

    const-wide/32 v0, 0xa4cb800

    iput-wide v0, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->showGap:J

    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->newUserProTime:J

    return-void
.end method

.method private checkNewUserProtect(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSceneryInstallTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    sub-long v0, v2, v0

    iget-wide v2, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->newUserProTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPriority(Landroid/content/Context;)Z
    .locals 2

    iget v0, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->priority:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    const-string v1, "self priority invalid"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->getMultiConfigList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/scenery/dispatcher/RuleUtils;->syncMultiConfig(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->isTopPriority(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkShowTimes(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSceneryShowTimes(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->showTimes:I

    int-to-long v2, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefPriority()I
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/scenery/SceneryConstants;->PKG_PRIORITY_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getRules()Lcom/baidu/scenery/dispatcher/GeneralRules;
    .locals 2

    const-class v1, Lcom/baidu/scenery/dispatcher/GeneralRules;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->sChecker:Lcom/baidu/scenery/dispatcher/GeneralRules;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/scenery/dispatcher/GeneralRules;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;-><init>()V

    sput-object v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->sChecker:Lcom/baidu/scenery/dispatcher/GeneralRules;

    :cond_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->sChecker:Lcom/baidu/scenery/dispatcher/GeneralRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isTopPriority(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/scenery/dispatcher/MultiConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/MultiConfig;

    iget v3, v0, Lcom/baidu/scenery/dispatcher/MultiConfig;->priority:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcom/baidu/scenery/dispatcher/MultiConfig;->priority:I

    iget v4, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->priority:I

    if-ge v3, v4, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v3, v0, Lcom/baidu/scenery/dispatcher/MultiConfig;->priority:I

    iget v4, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->priority:I

    if-ne v3, v4, :cond_0

    iget-wide v4, v0, Lcom/baidu/scenery/dispatcher/MultiConfig;->timeStamp:J

    iget-wide v6, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->timeStamp:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized replaceGeneralRules(Lcom/baidu/scenery/dispatcher/GeneralRules;)V
    .locals 2

    const-class v0, Lcom/baidu/scenery/dispatcher/GeneralRules;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->sChecker:Lcom/baidu/scenery/dispatcher/GeneralRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkShowGap(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSceneryShowTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long v0, v2, v0

    iget-wide v2, p0, Lcom/baidu/scenery/dispatcher/GeneralRules;->showGap:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCheck(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/GeneralRules;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    const-string v2, "general rules: network unavailable"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/GeneralRules;->checkShowTimes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/GeneralRules;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    const-string v2, "general rules: show scenery too much"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/GeneralRules;->checkNewUserProtect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/GeneralRules;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    const-string v2, "general rules: in new user protect time"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/GeneralRules;->checkPriority(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/GeneralRules;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    const-string v2, "general rules: check priority failed"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateShowCount()V
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSceneryShowTimes(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryShowTimes(Landroid/content/Context;I)V

    return-void
.end method

.method public updateShowTime()V
    .locals 4

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryShowTime(Landroid/content/Context;J)V

    return-void
.end method
