.class final Lcom/baidu/android/common/util/DeviceId$IMEIInfo;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_TM_DEVICEID:Ljava/lang/String; = ""

.field private static final KEY_IMEI:Ljava/lang/String; = "bd_setting_i"


# instance fields
.field public final CAN_READ_AND_WRITE_SYSTEM_SETTINGS:Z

.field public final IMEI:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/common/util/DeviceId$IMEIInfo;->IMEI:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/baidu/android/common/util/DeviceId$IMEIInfo;->CAN_READ_AND_WRITE_SYSTEM_SETTINGS:Z

    return-void
.end method

.method private static getIMEI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/baidu/android/common/util/DeviceId$IMEIInfo;->imeiCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object p1

    :catch_0
    move-exception v0

    const-string v2, "DeviceId"

    const-string v3, "Read IMEI failed"

    invoke-static {v2, v3, v0}, Lcom/baidu/android/common/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method static getIMEIInfo(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId$IMEIInfo;
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "bd_setting_i"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/baidu/android/common/util/DeviceId$IMEIInfo;->getIMEI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bd_setting_i"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    :goto_1
    new-instance v4, Lcom/baidu/android/common/util/DeviceId$IMEIInfo;

    if-nez v1, :cond_0

    :goto_2
    invoke-direct {v4, v0, v3}, Lcom/baidu/android/common/util/DeviceId$IMEIInfo;-><init>(Ljava/lang/String;Z)V

    return-object v4

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    const-string v4, "DeviceId"

    const-string v5, "Settings.System.getString or putString failed"

    invoke-static {v4, v5, v1}, Lcom/baidu/android/common/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/baidu/android/common/util/DeviceId$IMEIInfo;->getIMEI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static imeiCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
