.class public final Lcom/baidu/scenery/dispatcher/SceneryDispatcher;
.super Landroid/os/Handler;


# static fields
.field private static final DEBUG:Z

.field private static INSTANCE:Lcom/baidu/scenery/dispatcher/SceneryDispatcher; = null

.field private static final MSG_ON_CLOUD_UPDATE:I = 0x2

.field private static final MSG_ON_INITIALIZE:I = 0x1

.field private static final MSG_ON_SCENERY_CHARGE:I = 0x5

.field private static final MSG_ON_SCENERY_DISK_CHECK:I = 0x4

.field private static final MSG_ON_SCENERY_TAKEN_PHOTO:I = 0x3

.field private static final MSG_ON_SCENERY_UNINSTALL:I = 0x6

.field private static final SCENERYS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "scenery"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    const-string v1, "scenery_take_photo"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    const-string v1, "scenery_disk_usage"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    const-string v1, "scenery_charge"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    const-string v1, "scenery_uninstall"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;
    .locals 3

    const-class v1, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->INSTANCE:Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    invoke-static {}, Lcom/dianxinos/library/dxbase/o;->c()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->INSTANCE:Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    :cond_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->INSTANCE:Lcom/baidu/scenery/dispatcher/SceneryDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleInitialize()V
    .locals 6

    const-wide/16 v4, 0x0

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInitialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/scenery/utils/DevicesUtils;->getDeviceDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler;->loadConfigsAndListen()V

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getSceneryInstallTime(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/RuleUtils;->getProductMatrixInstallTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryInstallTime(Landroid/content/Context;J)V

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveScenerySelfInstallTime(Landroid/content/Context;J)V

    :cond_2
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver;

    invoke-direct {v2}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver;->onBatteryInfoChanged(Landroid/content/Intent;)V

    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver;

    invoke-direct {v2}, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/baidu/scenery/dispatcher/TakenPhotoReceiver;

    invoke-direct {v2}, Lcom/baidu/scenery/dispatcher/TakenPhotoReceiver;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/scenery/dispatcher/ScreenOnReceiver;

    invoke-direct {v2}, Lcom/baidu/scenery/dispatcher/ScreenOnReceiver;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/baidu/scenery/dispatcher/SceneryDispatcher$1;

    invoke-direct {v1, p0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher$1;-><init>(Lcom/baidu/scenery/dispatcher/SceneryDispatcher;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->initAppInfo(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/RuleUtils;->getMultiConfigList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->syncMultiConfig(Landroid/content/Context;Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleOnCloudUpdate(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;

    invoke-direct {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->updateConfig(Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;)V

    goto :goto_0
.end method

.method private handleOnScenery(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->handleOnScenery(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleOnScenery(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/scenery/dispatcher/ExecutorManager;->getInstance()Lcom/baidu/scenery/dispatcher/ExecutorManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/scenery/dispatcher/ExecutorManager;->getExecutor(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/SceneryExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/baidu/scenery/dispatcher/SceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "without scenery executor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1, p2}, Lcom/baidu/scenery/dispatcher/SceneryExecutor;->checkConfigRules(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": check scene config rules failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getRules()Lcom/baidu/scenery/dispatcher/GeneralRules;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->doCheck(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": check general rules failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/baidu/scenery/dispatcher/SceneryExecutor;->isHigherPriority()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": has higher priority"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v1, p2}, Lcom/baidu/scenery/dispatcher/SceneryExecutor;->handleScenery(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": handle scenery abort"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getRules()Lcom/baidu/scenery/dispatcher/GeneralRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->updateShowCount()V

    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getRules()Lcom/baidu/scenery/dispatcher/GeneralRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->updateShowTime()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getRules()Lcom/baidu/scenery/dispatcher/GeneralRules;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->checkShowGap(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": check general show gap failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v1, p2}, Lcom/baidu/scenery/dispatcher/SceneryExecutor;->handleScenery(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": handle scenery abort"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getRules()Lcom/baidu/scenery/dispatcher/GeneralRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->updateShowCount()V

    invoke-static {}, Lcom/baidu/scenery/dispatcher/GeneralRules;->getRules()Lcom/baidu/scenery/dispatcher/GeneralRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->updateShowTime()V

    goto/16 :goto_0
.end method

.method private updateConfig(Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;)V
    .locals 5

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->generalRules:Lcom/baidu/scenery/dispatcher/GeneralRules;

    iget v0, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->priority:I

    invoke-static {v3, v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryPriority(Landroid/content/Context;I)V

    iget-object v0, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->generalRules:Lcom/baidu/scenery/dispatcher/GeneralRules;

    iget-wide v0, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->timeStamp:J

    invoke-static {v3, v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryConfigTimeStamp(Landroid/content/Context;J)V

    iget-object v0, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->generalRules:Lcom/baidu/scenery/dispatcher/GeneralRules;

    iget v0, v0, Lcom/baidu/scenery/dispatcher/GeneralRules;->showTimes:I

    invoke-static {v3, v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSceneryConfigCount(Landroid/content/Context;I)V

    iget-object v0, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/scenery/dispatcher/SceneryExecutor;

    invoke-interface {v2}, Lcom/baidu/scenery/dispatcher/SceneryExecutor;->getShowNum()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSameSceneryConfigCount(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/SceneryExecutor;

    invoke-interface {v0}, Lcom/baidu/scenery/dispatcher/SceneryExecutor;->getSwitch()Z

    move-result v0

    invoke-static {v3, v1, v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveSameSceneryConfigSwitch(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->generalRules:Lcom/baidu/scenery/dispatcher/GeneralRules;

    invoke-static {v0}, Lcom/baidu/scenery/dispatcher/GeneralRules;->replaceGeneralRules(Lcom/baidu/scenery/dispatcher/GeneralRules;)V

    invoke-static {}, Lcom/baidu/scenery/dispatcher/ExecutorManager;->getInstance()Lcom/baidu/scenery/dispatcher/ExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/ExecutorManager;->clearExecutors()V

    invoke-static {}, Lcom/baidu/scenery/dispatcher/ExecutorManager;->getInstance()Lcom/baidu/scenery/dispatcher/ExecutorManager;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;->sceneryExecutors:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/baidu/scenery/dispatcher/ExecutorManager;->replaceExecutors(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->handleInitialize()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->handleOnCloudUpdate(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->handleOnScenery(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCloudUpdate(Lcom/baidu/scenery/dispatcher/SceneryConfigHandler$SceneryConfig;)V
    .locals 2

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    const-string v1, "on DataPipe update"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onInitialize()V
    .locals 2

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    const-string v1, "onInitialize"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSceneryOccur(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on scenery occur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p2, :cond_2

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onSceneryOccurDelay(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 3

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scenery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on scenery occur delay! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->SCENERYS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p2, :cond_3

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0, v0, p3, p4}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
