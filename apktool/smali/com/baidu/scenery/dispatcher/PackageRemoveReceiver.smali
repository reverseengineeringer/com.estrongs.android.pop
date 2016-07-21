.class Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/baidu/scenery/dispatcher/SceneryPreferences;->getClickTimeStamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    invoke-static {p0, v0}, Lcom/baidu/scenery/utils/ReportHelper;->reportInstall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v1

    new-instance v2, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$2;

    invoke-direct {v2, p0, v0}, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v1

    new-instance v2, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver;->onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver;->onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
