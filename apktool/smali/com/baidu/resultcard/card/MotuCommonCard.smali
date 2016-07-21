.class public Lcom/baidu/resultcard/card/MotuCommonCard;
.super Lcom/baidu/resultcard/card/AbstractCommonCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground(Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;)V
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/resultcard/card/MotuCommonCard;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/baidu/resultcard/CardPreferences;->getMotuCardDays(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/baidu/resultcard/card/MotuCommonCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/resultcard/common/PhotoScanner;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoScanner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/resultcard/common/PhotoScanner;->getPhotoNum(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;->onBackgroundRefresh([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "cn.jingling.motu.photowonder"

    return-object v0
.end method

.method protected getView()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 2

    new-instance v0, Lcom/baidu/resultcard/view/MotuResultCardView;

    iget-object v1, p0, Lcom/baidu/resultcard/card/MotuCommonCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/resultcard/view/MotuResultCardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->init()V

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
