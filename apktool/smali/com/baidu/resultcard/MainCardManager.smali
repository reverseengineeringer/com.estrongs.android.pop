.class public Lcom/baidu/resultcard/MainCardManager;
.super Ljava/lang/Object;


# static fields
.field private static final BATTERY:I = 0x2

.field public static final BATTERY_PKGNAME:Ljava/lang/String; = "com.dianxinos.dxbs"

.field private static final BOOSTER:I = 0x1

.field public static final BOOSTER_PKGNAME:Ljava/lang/String; = "com.dianxinos.optimizer.duplay"

.field private static final MAXMODULE:I = 0x3e8

.field private static final MAXSHOWNUM:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcCard(Landroid/content/Context;)I
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "com.dianxinos.optimizer.duplay"

    invoke-static {p0, v2}, Lcom/baidu/resultcard/MainCardManager;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "com.dianxinos.dxbs"

    invoke-static {p0, v3}, Lcom/baidu/resultcard/MainCardManager;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    sget-boolean v4, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "SDKCard"

    const-string v5, "----\u5f00\u59cb\u83b7\u53d6\u4e3b\u7ebf\u5e26\u91cf\u5361\u7247"

    invoke-static {v4, v5}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SDKCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "booster \u662f\u5426\u5b89\u88c5\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SDKCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery \u662f\u5426\u5b89\u88c5\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SDKCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8f6e\u64ad\u6807\u5fd7\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getTakeTurnFlag(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SDKCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6700\u8fd1\u4e09\u6b21\u5c55\u793a\uff081. booster, 2.battery\uff09\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getApkCode(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getTakeTurnFlag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager;->getNextShowType(Landroid/content/Context;)I

    move-result v0

    :cond_2
    :goto_0
    invoke-static {p0, v0}, Lcom/baidu/resultcard/MainCardManager;->updateShowCode(Landroid/content/Context;I)V

    sget-boolean v1, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "SDKCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u6b21\u5c55\u793a\uff081. booster, 2.battery\uff09\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {p0, v0}, Lcom/baidu/resultcard/MainCardManager;->getCount(Landroid/content/Context;I)I

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-static {p0, v1}, Lcom/baidu/resultcard/MainCardManager$Preference;->setTakeTurnFlag(Landroid/content/Context;Z)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, v1}, Lcom/baidu/resultcard/MainCardManager;->getCount(Landroid/content/Context;I)I

    move-result v2

    if-ge v2, v7, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-static {p0, v1}, Lcom/baidu/resultcard/MainCardManager$Preference;->setTakeTurnFlag(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private static getCount(Landroid/content/Context;I)I
    .locals 3

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getApkCode(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lez v1, :cond_0

    rem-int/lit8 v2, v1, 0xa

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getMainView(Landroid/content/Context;)Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 4

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager;->calcCard(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/baidu/resultcard/card/BoosterCommonCard;

    sget-object v1, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_MAIN:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-direct {v0, v1}, Lcom/baidu/resultcard/card/BoosterCommonCard;-><init>(Lcom/baidu/resultcard/CardLibrary$CardType;)V

    :goto_0
    invoke-virtual {v0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/resultcard/MainCardManager;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/baidu/resultcard/report/ResultCardReport;->reportMainCardShow(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->getCardView()Lcom/baidu/resultcard/view/BaseResultCardView;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/resultcard/card/BatteryCommonCard;

    sget-object v1, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_MAIN:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-direct {v0, v1}, Lcom/baidu/resultcard/card/BatteryCommonCard;-><init>(Lcom/baidu/resultcard/CardLibrary$CardType;)V

    goto :goto_0
.end method

.method private static getNextShowType(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getApkCode(Landroid/content/Context;)I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private static isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static updateShowCode(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/baidu/resultcard/MainCardManager$Preference;->getApkCode(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {p0, v0}, Lcom/baidu/resultcard/MainCardManager$Preference;->setApkCode(Landroid/content/Context;I)V

    return-void
.end method
