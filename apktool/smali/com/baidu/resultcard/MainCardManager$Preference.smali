.class public Lcom/baidu/resultcard/MainCardManager$Preference;
.super Ljava/lang/Object;


# static fields
.field private static final SP_MAINLINECARD_PREFS_FILE:Ljava/lang/String; = "mainline_resultcard"

.field private static final SP_MAINLINE_APKCODE:Ljava/lang/String; = "sp_mainline_apkcode"

.field private static final SP_MAINLINE_TAKETURNFLAG:Ljava/lang/String; = "sp_mainline_taketurnflag"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkCode(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_mainline_apkcode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "mainline_resultcard"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getTakeTurnFlag(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_mainline_taketurnflag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setApkCode(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_mainline_apkcode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTakeTurnFlag(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_mainline_taketurnflag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
