.class Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;
.super Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;


# static fields
.field private static final DEBUG:Z

.field public static final DEF_NEW_FILES_MB:I = 0x1f4

.field public static final DEF_NEW_FILES_TIME_INTERVAL_MIN:J = 0x10e0L

.field public static final DEF_NOT_SUPPORT_CHECK_DESKTOP_FUN_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "scenery"


# instance fields
.field mNewFilesMB:I

.field mNewFilesTimeInterval:J

.field mSwitch4Android51:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;-><init>()V

    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesTimeInterval:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesMB:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mSwitch4Android51:Z

    const-string v0, "com.estrongs.android.pop"

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    return-void
.end method

.method private checkDiskUsageRuler(Landroid/os/Bundle;)Z
    .locals 12

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getDiskUsageTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/baidu/scenery/utils/TrashUtils;->getAllSDInfoUsedSize(Landroid/content/Context;)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->saveDiskTimeAndSize(Landroid/content/Context;JJ)V

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": first time caculate disk size: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", record time "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    sub-long v6, v2, v4

    iget-wide v8, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesTimeInterval:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_5

    invoke-static {v1}, Lcom/baidu/scenery/utils/TrashUtils;->getAllSDInfoUsedSize(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getDiskUsageSize(Landroid/content/Context;)J

    move-result-wide v8

    sub-long v10, v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->saveDiskTimeAndSize(Landroid/content/Context;JJ)V

    iget v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesMB:I

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v2, v0

    cmp-long v0, v10, v2

    if-ltz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "scenery_extra_name"

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "scenery_extra_recommend_package"

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getRecommendPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "scenery_extra_disk_usage_day"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "scenery_extra_disk_usage_size"

    invoke-virtual {v0, v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": childHandleScenery:Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    sget-boolean v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": record size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", increment size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", need increment size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesMB:I

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-lez v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "sizemb"

    invoke-virtual {v0, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "timecost"

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "duscenery_sdk_jsonpk"

    invoke-static {v1, v2, v0}, Lcom/baidu/scenery/utils/ReportHelper;->reportEvent(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": create report content failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    sget-boolean v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": check disk usage too frequently, record time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", now: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", now -record time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", check gap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesTimeInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private saveDiskTimeAndSize(Landroid/content/Context;JJ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveDiskUsageTime(Landroid/content/Context;J)V

    invoke-static {p1, p4, p5}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveDiskUsageSize(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public checkConfigRules(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->checkConfigRules(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": screen power off "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v0, v3, :cond_3

    invoke-static {}, Lcom/baidu/scenery/utils/DevicesUtils;->isGalaxyNoteEdge()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mSwitch4Android51:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": switch for android5.1 off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isHomeFirst(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": home is not at the top of screen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected childHandleScenery(Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->checkDiskUsageRuler(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "scenery_disk_usage"

    return-object v0
.end method

.method protected getRecommendPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.estrongs.android.pop"

    goto :goto_0
.end method
