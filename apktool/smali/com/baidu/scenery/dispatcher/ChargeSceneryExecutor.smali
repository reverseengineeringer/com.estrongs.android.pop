.class Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;
.super Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;


# static fields
.field private static final BATTERY_PLUGGED_ANY:I

.field private static final DEBUG:Z

.field public static final DEF_CHARGE_TIME_MIN:J = 0x3cL

.field public static final DEF_NOT_SUPPORT_CHECK_DESKTOP_FUN_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "scenery"


# instance fields
.field mChargeTime:J

.field mSwitch4Android51:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/lit8 v0, v0, 0x3

    sput v0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->BATTERY_PLUGGED_ANY:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;-><init>()V

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mChargeTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mSwitch4Android51:Z

    const-string v0, "com.dianxinos.dxbs"

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    return-void
.end method

.method private checkChargeTime(Landroid/os/Bundle;)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "battery_info_plug_type"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->BATTERY_PLUGGED_ANY:I

    and-int/2addr v3, v2

    if-nez v3, :cond_1

    invoke-static {v1, v4, v5}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveChargeHundredTime(Landroid/content/Context;J)V

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": plug type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "battery_info_percent_key"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    invoke-static {v1, v4, v5}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveChargeHundredTime(Landroid/content/Context;J)V

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": current battery percent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getChargeHundredTime(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->saveChargeHundredTime(Landroid/content/Context;J)V

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": charge hundred record time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-wide v4, p0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mChargeTime:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "scenery_extra_name"

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "scenery_extra_recommend_package"

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getRecommendPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "scenery_charge_extra_minutes"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "scenery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": childHandleScenery:Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-boolean v1, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": schedule charge scenery too frequently"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkConfigRules(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/baidu/scenery/dispatcher/AbstractSceneryExecutor;->checkConfigRules(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/baidu/scenery/utils/DevicesUtils;->isGalaxyNoteEdge()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mSwitch4Android51:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": switch for android5.1 off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isHomeFirst(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": home is not at the top of screen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected childHandleScenery(Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->checkChargeTime(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "scenery_charge"

    return-object v0
.end method

.method protected getRecommendPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/ChargeSceneryExecutor;->mCloudRecommendPkg:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.dianxinos.dxbs"

    goto :goto_0
.end method
