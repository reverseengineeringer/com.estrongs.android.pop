.class public Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_SYNC_SCENERY_CONFIG:Ljava/lang/String; = "com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG"

.field private static final DEBUG:Z

.field private static final JSON_CHARGE_CHARGE_TIME:Ljava/lang/String; = "charge_time"

.field private static final JSON_CHARGE_SECTION:Ljava/lang/String; = "ChargingScene"

.field private static final JSON_DISKUSAGE_NEW_FILES_MB:Ljava/lang/String; = "new_files_mb"

.field private static final JSON_DISKUSAGE_NEW_FILES_TIME_INTERVAL:Ljava/lang/String; = "new_files_time_interval"

.field private static final JSON_DISKUSAGE_SECTION:Ljava/lang/String; = "DiskUsageScene"

.field private static final JSON_GENERAL_SECTION:Ljava/lang/String; = "GeneralConfig"

.field private static final JSON_GENERAL_TIME_INTERVAL:Ljava/lang/String; = "general_time_interval"

.field private static final JSON_GENERAL_TOTAL_SHOW_NUM:Ljava/lang/String; = "general_total_show_num"

.field private static final JSON_NEW_USER_PRO_TIME:Ljava/lang/String; = "new_user_pro_time"

.field private static final JSON_PRIORITY:Ljava/lang/String; = "priority"

.field private static final JSON_SCENERY_RECOMMEND_PKG:Ljava/lang/String; = "recommend_pkg"

.field private static final JSON_SCENERY_SWITCH:Ljava/lang/String; = "switch"

.field private static final JSON_SCENERY_SWITCH_FOR_ANDROID51:Ljava/lang/String; = "switch_for_android51"

.field private static final JSON_SCENERY_TIME_INTERVAL:Ljava/lang/String; = "time_interval"

.field private static final JSON_SCENERY_TIME_INTERVAL_SIGN:Ljava/lang/String; = "time_interval_sign"

.field private static final JSON_SCENERY_TOTAL_SHOW_NUM:Ljava/lang/String; = "total_show_num"

.field private static final JSON_TAKEPHOTO_CHECK_FACE:Ljava/lang/String; = "check_face"

.field private static final JSON_TAKEPHOTO_SECTION:Ljava/lang/String; = "TakePhotoScene"

.field private static final JSON_TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field private static final JSON_UNINSTALL_SECTION:Ljava/lang/String; = "UninstallResidueScene"

.field private static final TAG:Ljava/lang/String; = "scenery"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->loadSceneryConfig(Ljava/lang/String;)V

    return-void
.end method

.method private static buildAbstractSceneryExecutor(Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "switch"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mSwitch:Z

    const-string v0, "recommend_pkg"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    const-string v0, "total_show_num"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTotalShowNum:I

    const-string v0, "time_interval"

    const-wide/16 v2, 0xb40

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTimeInterval:J

    const-string v0, "time_interval_sign"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->mTimeIntervalSign:Z

    return-void
.end method

.method private static buildChargingScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;
    .locals 6

    new-instance v0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;-><init>()V

    const-string v1, "ChargingScene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildAbstractSceneryExecutor(Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;Lorg/json/JSONObject;)V

    const-string v2, "switch_for_android51"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mSwitch4Android51:Z

    const-string v2, "charge_time"

    const-wide/16 v4, 0x3c

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mChargeTime:J

    :cond_0
    return-object v0
.end method

.method private static buildDiskUsageScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;
    .locals 6

    new-instance v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;-><init>()V

    const-string v1, "DiskUsageScene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildAbstractSceneryExecutor(Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;Lorg/json/JSONObject;)V

    const-string v2, "switch_for_android51"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mSwitch4Android51:Z

    const-string v2, "new_files_time_interval"

    const-wide/16 v4, 0x10e0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesTimeInterval:J

    const-string v2, "new_files_mb"

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;->mNewFilesMB:I

    :cond_0
    return-object v0
.end method

.method private static buildGeneralRules(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/GeneralRules;
    .locals 8

    const-wide/32 v6, 0xea60

    new-instance v0, Lcom/baidu/scenery/dispatcher/GeneralRules;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;-><init>()V

    const-string v1, "GeneralConfig"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "priority"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "time_stamp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "priority"

    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getDefPriority()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->priority:I

    const-string v2, "time_stamp"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->timeStamp:J

    :cond_0
    const-string v2, "new_user_pro_time"

    const-wide/16 v4, 0x2d0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->newUserProTime:J

    const-string v2, "general_total_show_num"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->showTimes:I

    const-string v2, "general_time_interval"

    const-wide/16 v4, 0xb40

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->showGap:J

    :cond_1
    return-object v0
.end method

.method private static buildTakePhotoScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;
    .locals 4

    new-instance v0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;-><init>()V

    const-string v1, "TakePhotoScene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildAbstractSceneryExecutor(Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;Lorg/json/JSONObject;)V

    const-string v2, "switch_for_android51"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mSwitch4Android51:Z

    const-string v2, "check_face"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;->mCheckFace:Z

    :cond_0
    return-object v0
.end method

.method private static buildUninstallResidueScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;
    .locals 2

    new-instance v0, Lcom/baidu/scenery/dispatcher/UninstallSceneryExecutor;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/UninstallSceneryExecutor;-><init>()V

    const-string v1, "UninstallResidueScene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildAbstractSceneryExecutor(Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;Lorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method

.method private static fromDefault()Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;
    .locals 4

    new-instance v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;-><init>()V

    new-instance v1, Lcom/baidu/scenery/dispatcher/GeneralRules;

    invoke-direct {v1}, Lcom/baidu/scenery/dispatcher/GeneralRules;-><init>()V

    iput-object v1, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->generalRules:Lcom/baidu/scenery/dispatcher/GeneralRules;

    iget-object v1, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v2, "scenery_charge"

    new-instance v3, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;

    invoke-direct {v3}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v2, "scenery_uninstall"

    new-instance v3, Lcom/baidu/scenery/dispatcher/UninstallSceneryExecutor;

    invoke-direct {v3}, Lcom/baidu/scenery/dispatcher/UninstallSceneryExecutor;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v2, "scenery_disk_usage"

    new-instance v3, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;

    invoke-direct {v3}, Lcom/baidu/scenery/dispatcher/DiskUsageSceneryExecutor;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v2, "scenery_take_photo"

    new-instance v3, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;

    invoke-direct {v3}, Lcom/baidu/scenery/dispatcher/TakePhotoSceneryExecutor;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static fromJson(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;
    .locals 5

    :try_start_0
    new-instance v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildGeneralRules(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/GeneralRules;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->generalRules:Lcom/baidu/scenery/dispatcher/GeneralRules;

    iget-object v2, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v3, "scenery_charge"

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildChargingScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v3, "scenery_uninstall"

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildUninstallResidueScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v3, "scenery_disk_usage"

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildDiskUsageScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    const-string v3, "scenery_take_photo"

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->buildTakePhotoScene(Lorg/json/JSONObject;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromJson: JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadConfigs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    const-string v1, "start loadConfigs"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;

    invoke-direct {v0, p1, p0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/dianxinos/library/dxbase/o;->c()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static loadConfigsAndListen()V
    .locals 4

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;

    invoke-direct {v1, v0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$3;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSceneryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->loadSceneryConfig(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    const-string v2, "register config receiver error!"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadSceneryConfig(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "scenery"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSceneryConfig: body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->fromJson(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_4

    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->fromDefault()Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;

    move-result-object v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "scenery"

    const-string v2, "loadSceneryConfig: fromDefault"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->onCloudUpdate(Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;)V

    return-void

    :cond_3
    move-object v0, p0

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "scenery"

    const-string v2, "loadSceneryConfig: fromJson"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
