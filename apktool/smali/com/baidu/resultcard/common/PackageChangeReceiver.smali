.class public Lcom/baidu/resultcard/common/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/32 v8, 0x5265c00

    const-wide/16 v6, 0x0

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

    invoke-static {p0, v0}, Lcom/baidu/resultcard/common/PackageChangeReceiver;->updateMainCardFlag(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/baidu/resultcard/CommonCardManager;->onPackageInstall(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_MAIN:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_COMMON:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v6, v7}, Lcom/baidu/resultcard/CardPreferences;->getCardClickTime(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {p0, v2, v6, v7}, Lcom/baidu/resultcard/CardPreferences;->getCardClickTime(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-gez v1, :cond_0

    invoke-static {p0, v0}, Lcom/baidu/resultcard/report/ResultCardReport;->reportMainInstall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v1, v2, v8

    if-gez v1, :cond_0

    invoke-static {p0, v0}, Lcom/baidu/resultcard/report/ResultCardReport;->reportCommonInstall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

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

    invoke-static {p0, v0}, Lcom/baidu/resultcard/common/PackageChangeReceiver;->updateMainCardFlag(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/baidu/resultcard/CommonCardManager;->onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateMainCardFlag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.dianxinos.dxbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.dianxinos.optimizer.duplay"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "SDKCard"

    const-string v1, "\u5b89\u88c5/\u5378\u8f7d \u7701\u7535\uff08booster\uff09\uff0c\u66f4\u65b0\u8f6e\u8be2\u6807\u5fd7"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/resultcard/MainCardManager$Preference;->setTakeTurnFlag(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/baidu/resultcard/common/PackageChangeReceiver;->onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/resultcard/common/PackageChangeReceiver;->onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
