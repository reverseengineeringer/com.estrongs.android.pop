.class public Lcom/baidu/resultcard/common/BatteryExtendTime;
.super Ljava/lang/Object;


# static fields
.field private static final TOTAL_EXTENDABLE_TIME:I = 0x40ec


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBatteryLevel(Landroid/content/Context;)F
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v3, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "SDKCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "============battery level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SDKCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "============battery scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    mul-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v1

    :cond_1
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    const v0, 0x3e19999a    # 0.15f

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x14

    if-gt v0, v1, :cond_3

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_3
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_4

    const v0, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_4
    const/16 v1, 0x28

    if-gt v0, v1, :cond_5

    const v0, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_5
    const/16 v1, 0x32

    if-gt v0, v1, :cond_6

    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_0

    :cond_6
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_7

    const v0, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_7
    const/16 v1, 0x46

    if-gt v0, v1, :cond_8

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_8
    const/16 v1, 0x50

    if-gt v0, v1, :cond_9

    const v0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_9
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_a

    const v0, 0x3f733333    # 0.95f

    goto :goto_0

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private static getBrightness(Landroid/content/Context;)F
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0xff

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    sget-boolean v1, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "SDKCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============Brightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_2

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_2
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_3

    const v0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_3
    const/16 v1, 0x50

    if-gt v0, v1, :cond_4

    const v0, 0x3f733333    # 0.95f

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getExtendTime(Landroid/content/Context;)D
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const/high16 v0, 0x42aa0000    # 85.0f

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Lcom/baidu/resultcard/common/BatteryExtendTime;->getBatteryLevel(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0}, Lcom/baidu/resultcard/common/BatteryExtendTime;->getBrightness(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    const-wide v2, 0x40d03b0000000000L    # 16620.0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    sget-boolean v2, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "SDKCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============ExtendableTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method
