.class public Lcom/baidu/resultcard/CommonCardManager;
.super Ljava/lang/Object;


# static fields
.field public static PKG_COMMON_CARD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/resultcard/card/AbstractCommonCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    const-string v1, "com.estrongs.android.pop"

    new-instance v2, Lcom/baidu/resultcard/card/EsCommonCard;

    invoke-direct {v2}, Lcom/baidu/resultcard/card/EsCommonCard;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    const-string v1, "cn.jingling.motu.photowonder"

    new-instance v2, Lcom/baidu/resultcard/card/MotuCommonCard;

    invoke-direct {v2}, Lcom/baidu/resultcard/card/MotuCommonCard;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    const-string v1, "com.duapps.antivirus"

    new-instance v2, Lcom/baidu/resultcard/card/AntivirusCommonCard;

    invoke-direct {v2}, Lcom/baidu/resultcard/card/AntivirusCommonCard;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    const-string v1, "com.duapps.cleaner"

    new-instance v2, Lcom/baidu/resultcard/card/CleanerCommonCard;

    invoke-direct {v2}, Lcom/baidu/resultcard/card/CleanerCommonCard;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    const-string v1, "com.dianxinos.optimizer.duplay"

    new-instance v2, Lcom/baidu/resultcard/card/BoosterCommonCard;

    invoke-direct {v2}, Lcom/baidu/resultcard/card/BoosterCommonCard;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    const-string v1, "com.dianxinos.dxbs"

    new-instance v2, Lcom/baidu/resultcard/card/BatteryCommonCard;

    invoke-direct {v2}, Lcom/baidu/resultcard/card/BatteryCommonCard;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonCardView(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget-object v0, Lcom/baidu/resultcard/CardDataPipe;->DEFAULT_COMMON_PKG_LIST:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/baidu/resultcard/CardPreferences;->getCloudCommonCardPkgs(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SDKCard"

    const-string v4, "----\u5f00\u59cb\u83b7\u53d6\u901a\u7528\u5e26\u91cf\u5361\u7247"

    invoke-static {v0, v4}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDKCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5019\u9009\u5361\u7247\u5217\u8868\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p0, v1}, Lcom/baidu/resultcard/CardPreferences;->getCommonCardIndex(Landroid/content/Context;I)I

    move-result v0

    if-lt v0, v1, :cond_2

    if-lt v0, v6, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    sget-boolean v1, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "SDKCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8f6e\u8be2\u8d77\u70b9\uff1a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v1, v0

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_7

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    if-lt v0, v6, :cond_8

    move v1, v2

    :goto_2
    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/resultcard/card/AbstractCommonCard;

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Lcom/baidu/resultcard/card/AbstractCommonCard;->isAvailable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p0, v1}, Lcom/baidu/resultcard/CardPreferences;->setCommonCardIndex(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/baidu/resultcard/report/ResultCardReport;->reportCommonShow(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->getCardView()Lcom/baidu/resultcard/view/BaseResultCardView;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move-object v0, v3

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_2
.end method

.method public static onPackageInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/baidu/resultcard/CardPreferences;->setCardAppInstallTime(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/resultcard/CommonCardManager;->PKG_COMMON_CARD_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/baidu/resultcard/CardPreferences;->getCardAppInstallTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    invoke-static {p0, p1, v2, v3}, Lcom/baidu/resultcard/CardPreferences;->setCardAppUnInstallTime(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method
