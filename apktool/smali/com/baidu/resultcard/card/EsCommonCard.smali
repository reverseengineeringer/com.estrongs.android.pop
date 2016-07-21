.class public Lcom/baidu/resultcard/card/EsCommonCard;
.super Lcom/baidu/resultcard/card/AbstractCommonCard;


# static fields
.field private static final CYCLE_COUNT:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;-><init>()V

    return-void
.end method

.method private static getSdcardNewSize(Landroid/content/Context;)J
    .locals 14

    invoke-static {p0}, Lcom/baidu/resultcard/CardPreferences;->getEsCardRecordIndex(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, v1}, Lcom/baidu/resultcard/CardPreferences;->getEsCardRecordIndexTime(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-static {p0, v1}, Lcom/baidu/resultcard/CardPreferences;->getEsCardRecordIndexSize(Landroid/content/Context;I)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/baidu/resultcard/CardPreferences;->getEsCardDays(Landroid/content/Context;I)I

    move-result v6

    move v0, v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    const/16 v0, 0xa

    :cond_2
    if-ne v0, v1, :cond_4

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lcom/baidu/resultcard/CardPreferences;->getEsCardRecordIndexTime(Landroid/content/Context;I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    sub-long v8, v2, v8

    int-to-long v10, v6

    const-wide/32 v12, 0x5265c00

    mul-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    invoke-static {p0, v0}, Lcom/baidu/resultcard/CardPreferences;->getEsCardRecordIndexSize(Landroid/content/Context;I)J

    move-result-wide v0

    sub-long/2addr v0, v4

    goto :goto_0
.end method

.method private static scanSdcardToday(Landroid/content/Context;)V
    .locals 8

    invoke-static {p0}, Lcom/baidu/resultcard/CardPreferences;->getEsCardRecordIndex(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/baidu/resultcard/CardPreferences;->getEsCardRecordIndexTime(Landroid/content/Context;I)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    invoke-static {p0}, Lcom/baidu/scenery/utils/TrashUtils;->getAllSDInfoUsedSize(Landroid/content/Context;)J

    move-result-wide v2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0, v4, v5}, Lcom/baidu/resultcard/CardPreferences;->setEsCardRecordIndexTime(Landroid/content/Context;IJ)V

    invoke-static {p0, v0, v2, v3}, Lcom/baidu/resultcard/CardPreferences;->setEsCardRecordIndexSize(Landroid/content/Context;IJ)V

    invoke-static {p0, v0}, Lcom/baidu/resultcard/CardPreferences;->setEsCardRecordIndex(Landroid/content/Context;I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground(Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;)V
    .locals 6

    iget-object v0, p0, Lcom/baidu/resultcard/card/EsCommonCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/resultcard/card/EsCommonCard;->scanSdcardToday(Landroid/content/Context;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/resultcard/card/EsCommonCard;->mContext:Landroid/content/Context;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/baidu/resultcard/CardPreferences;->getEsCardSizeMB(Landroid/content/Context;I)I

    move-result v2

    iget-object v0, p0, Lcom/baidu/resultcard/card/EsCommonCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/resultcard/card/EsCommonCard;->getSdcardNewSize(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4

    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {p1, v2}, Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;->onBackgroundRefresh([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.estrongs.android.pop"

    return-object v0
.end method

.method protected getView()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 2

    new-instance v0, Lcom/baidu/resultcard/view/ESResultCardView;

    iget-object v1, p0, Lcom/baidu/resultcard/card/EsCommonCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/resultcard/view/ESResultCardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/view/ESResultCardView;->init()V

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
