.class public Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;
.super Ljava/lang/Object;


# static fields
.field private static manager:Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;


# instance fields
.field private mAppLisense:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAppLicense()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "app_license"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;
    .locals 3

    const-class v1, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->manager:Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->manager:Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;

    :cond_0
    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->manager:Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getLicense()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->mAppLisense:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->getAppLicense()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->mAppLisense:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->mAppLisense:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "license should not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->mAppLisense:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method
