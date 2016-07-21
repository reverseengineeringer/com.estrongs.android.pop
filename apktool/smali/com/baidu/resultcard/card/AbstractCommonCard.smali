.class public abstract Lcom/baidu/resultcard/card/AbstractCommonCard;
.super Ljava/lang/Object;


# instance fields
.field protected mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_COMMON:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-direct {p0, v0}, Lcom/baidu/resultcard/card/AbstractCommonCard;-><init>(Lcom/baidu/resultcard/CardLibrary$CardType;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/resultcard/CardLibrary$CardType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/baidu/resultcard/CardLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/resultcard/card/AbstractCommonCard;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/resultcard/card/AbstractCommonCard;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    return-void
.end method

.method private loadData(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/resultcard/view/BaseResultCardView;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/baidu/resultcard/card/AbstractCommonCard$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/resultcard/card/AbstractCommonCard$1;-><init>(Lcom/baidu/resultcard/card/AbstractCommonCard;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/card/AbstractCommonCard$1;->start()V

    return-void
.end method


# virtual methods
.method protected doInBackground(Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;)V
    .locals 0

    return-void
.end method

.method protected getCardType()Lcom/baidu/resultcard/CardLibrary$CardType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/resultcard/card/AbstractCommonCard;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    return-object v0
.end method

.method public getCardView()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->getView()Lcom/baidu/resultcard/view/BaseResultCardView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->isNeedLoadData()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/baidu/resultcard/card/AbstractCommonCard;->loadData(Ljava/lang/ref/WeakReference;)V

    :cond_1
    iget-object v1, p0, Lcom/baidu/resultcard/card/AbstractCommonCard;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-virtual {v0, v1}, Lcom/baidu/resultcard/view/BaseResultCardView;->setCardType(Lcom/baidu/resultcard/CardLibrary$CardType;)V

    goto :goto_0
.end method

.method public abstract getPkgName()Ljava/lang/String;
.end method

.method protected abstract getView()Lcom/baidu/resultcard/view/BaseResultCardView;
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;->getPkgName()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "SDKCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5224\u65ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u662f\u5426\u5c55\u793a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v1, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "SDKCard"

    const-string v2, "\u4e0e\u4e3b\u7ebf\u5361\u7247\u51b2\u7a81\uff0c\u4e0d\u5c55\u793a"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/baidu/resultcard/card/AbstractCommonCard;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v1, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "SDKCard"

    const-string v2, "\u5df2\u7ecf\u5b89\u88c5\uff0c\u4e0d\u5c55\u793a"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/baidu/resultcard/card/AbstractCommonCard;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/baidu/resultcard/CardPreferences;->getCardAppUnInstallTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf731400

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    sget-boolean v1, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "SDKCard"

    const-string v2, "72\u5c0f\u65f6\u5185\u5b89\u88c5\u53c8\u5378\u8f7d\uff0c\u4e0d\u5c55\u793a"

    invoke-static {v1, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "SDKCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5c55\u793a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isNeedLoadData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected varargs updateViewUI(Lcom/baidu/resultcard/view/BaseResultCardView;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
