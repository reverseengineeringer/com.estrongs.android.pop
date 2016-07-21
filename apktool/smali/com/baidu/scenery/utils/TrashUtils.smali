.class public Lcom/baidu/scenery/utils/TrashUtils;
.super Ljava/lang/Object;


# static fields
.field private static final SD_200:J = 0xc800000L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllSDInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v14, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/scenery/utils/StorageList;

    invoke-direct {v0, p0}, Lcom/baidu/scenery/utils/StorageList;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/scenery/utils/StorageList;->getMountedPhoneVolumePaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/scenery/utils/StorageList;->getMountedSdCardVolumePaths()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;

    invoke-direct {v4}, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;-><init>()V

    iput v2, v4, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->type:I

    iput-object v0, v4, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->path:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v4, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;

    invoke-direct {v4}, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;-><init>()V

    add-int v0, v1, v14

    iput v0, v4, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->type:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->path:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;

    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    iget-object v1, v0, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->path:Ljava/lang/String;

    invoke-direct {v8, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v1, v4, :cond_2

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getAvailableBytes"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getTotalBytes"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v8

    :goto_3
    const-wide/32 v12, 0xc800000

    cmp-long v1, v8, v12

    if-gez v1, :cond_3

    :try_start_2
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v8}, Lcom/baidu/scenery/utils/TrashUtils;->getTotalAndAvailableSize(Landroid/os/StatFs;)[J

    move-result-object v1

    aget-wide v8, v1, v2

    aget-wide v4, v1, v14

    goto :goto_3

    :cond_2
    invoke-static {v8}, Lcom/baidu/scenery/utils/TrashUtils;->getTotalAndAvailableSize(Landroid/os/StatFs;)[J

    move-result-object v1

    aget-wide v8, v1, v2

    aget-wide v4, v1, v14

    goto :goto_3

    :cond_3
    sub-long v4, v8, v4

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    move-wide v4, v6

    :cond_4
    :try_start_3
    iput-wide v8, v0, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->totalsize:J

    iput-wide v4, v0, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->useSize:J

    const-wide/16 v12, 0x64

    mul-long/2addr v4, v12

    div-long/2addr v4, v8

    long-to-int v1, v4

    iput v1, v0, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->progress:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_5
    invoke-interface {v10, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v10
.end method

.method public static getAllSDInfoUsedSize(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/baidu/scenery/utils/TrashUtils;->getAllSDInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;

    iget-wide v0, v0, Lcom/baidu/scenery/utils/TrashUtils$SdInfoItem;->useSize:J

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static getTotalAndAvailableSize(Landroid/os/StatFs;)[J
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    const/4 v1, 0x0

    mul-long/2addr v4, v2

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    mul-long/2addr v2, v6

    aput-wide v2, v0, v1

    return-object v0
.end method
