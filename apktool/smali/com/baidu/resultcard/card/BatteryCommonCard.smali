.class public Lcom/baidu/resultcard/card/BatteryCommonCard;
.super Lcom/baidu/resultcard/card/AbstractCommonCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/resultcard/CardLibrary$CardType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/resultcard/card/AbstractCommonCard;-><init>(Lcom/baidu/resultcard/CardLibrary$CardType;)V

    return-void
.end method


# virtual methods
.method protected doInBackground(Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;)V
    .locals 7

    const/4 v6, 0x3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/resultcard/card/BatteryCommonCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/scenery/utils/ProcessUtils;->getBackgroudProcessCount(Landroid/content/Context;)I

    move-result v0

    if-gt v0, v6, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    :cond_1
    invoke-static {}, Lcom/baidu/resultcard/CardLibrary;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/resultcard/common/BatteryExtendTime;->getExtendTime(Landroid/content/Context;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double v4, v2, v4

    double-to-int v1, v4

    mul-int/lit16 v4, v1, 0xe10

    int-to-double v4, v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-interface {p1, v3}, Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;->onBackgroundRefresh([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.dianxinos.dxbs"

    return-object v0
.end method

.method protected getView()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 2

    new-instance v0, Lcom/baidu/resultcard/view/BatteryResultCardView;

    iget-object v1, p0, Lcom/baidu/resultcard/card/BatteryCommonCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/resultcard/view/BatteryResultCardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/view/BatteryResultCardView;->init()V

    return-object v0
.end method

.method protected isNeedLoadData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected varargs updateViewUI(Lcom/baidu/resultcard/view/BaseResultCardView;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/baidu/resultcard/view/BaseResultCardView;->setContentParam([Ljava/lang/Object;)V

    return-void
.end method
