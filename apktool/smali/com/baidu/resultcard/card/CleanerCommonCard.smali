.class public Lcom/baidu/resultcard/card/CleanerCommonCard;
.super Lcom/baidu/resultcard/card/AbstractCommonCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground(Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;->onBackgroundRefresh([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/resultcard/card/CleanerCommonCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/scenery/utils/ProcessUtils;->getBackgroudProcessPids(Landroid/content/Context;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v0, v3

    if-nez v0, :cond_2

    :cond_1
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;->onBackgroundRefresh([Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/resultcard/card/CleanerCommonCard;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-wide/16 v4, 0x0

    move v1, v2

    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_5

    new-array v6, v8, [I

    aget v7, v3, v1

    aput v7, v6, v2

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    if-eq v7, v8, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {p1, v6}, Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;->onBackgroundRefresh([Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;->onBackgroundRefresh([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.duapps.cleaner"

    return-object v0
.end method

.method protected getView()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 2

    new-instance v0, Lcom/baidu/resultcard/view/CleanerResultCardView;

    iget-object v1, p0, Lcom/baidu/resultcard/card/CleanerCommonCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/resultcard/view/CleanerResultCardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/view/CleanerResultCardView;->init()V

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
