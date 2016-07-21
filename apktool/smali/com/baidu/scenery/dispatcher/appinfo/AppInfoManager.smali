.class public Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "scenery"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildTrashAppInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;
    .locals 4

    new-instance v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    invoke-direct {v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->setPkgName(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->setAppName(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->setInstallTime(J)V

    return-object v0
.end method

.method public static getDbAppName(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->getAppInfo(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    move-result-object v1

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v2, "scenery"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDbAppInfo AppInfo = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "null"

    goto :goto_1
.end method

.method private static getInstallAppInfo(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1, p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->buildTrashAppInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    move-result-object v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstallAppInfo AppInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getInstallAppInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2200

    invoke-static {v2, v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->getInstalledPackages(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-static {v0, v2}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->buildTrashAppInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static getInstalledPackages(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static getLanguageDisplayName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedStoreAppInfo: currentLang = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    const/16 v0, 0x240

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x2240

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initAppInfo(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->isNeedStoreAppInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->getInstallAppInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->removeAllAppInfo()V

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->insertAppInfoList(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->setIsInitAppInfo(Landroid/content/Context;Z)V

    invoke-static {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->setAppInfoLang(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAppInfo: init success lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isNeedStoreAppInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getIsInitAppInfo(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p1}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->setAppInfoLang(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "scenery"

    const-string v2, "isNeedStoreAppInfo: is first run,ret = true"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getAppInfoLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "appInfoLang = %s;currentLang=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scenery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedStoreAppInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",ret = true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "scenery"

    const-string v2, "isNeedStoreAppInfo: ret= false"

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static onPackageInstalled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->getInstallAppInfo(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->insertAppInfo(Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;)V

    goto :goto_0
.end method

.method public static onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->removeAppInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
