.class public Lcom/baidu/resultcard/common/PhotoScanner;
.super Ljava/lang/Object;


# static fields
.field private static sInstance:Lcom/baidu/resultcard/common/PhotoScanner;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRemoveTimeStamp:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveTimeStamp:J

    iput-object p1, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/dianxinos/library/dxbase/o;->c()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private __initPhotoNum()V
    .locals 12

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v6

    const-string v3, "mime_type != ? AND (_data LIKE  ? OR _data LIKE  ? OR _data LIKE ?)"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "image/gif"

    aput-object v0, v4, v6

    const-string v0, "%/DCIM/CAMERA/%"

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "%/DCIM/___MEDIA%"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "%/DCIM/___ANDRO%"

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SDKCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoScanner cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDKCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoScanner cursor.count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoDbAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->query(Ljava/util/concurrent/ConcurrentHashMap;)J

    move-result-wide v2

    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v4, :cond_5

    const-string v4, "SDKCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhotoScanner path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isFaceImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_4

    const-wide/32 v6, 0x5265c00

    div-long v6, v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    sub-long/2addr v8, v6

    long-to-int v8, v8

    if-ltz v8, :cond_4

    const/16 v9, 0x14

    if-gt v8, v9, :cond_4

    iget-object v8, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoDbAdapter;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v0}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->insert(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_8
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/resultcard/common/PhotoScanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/resultcard/common/PhotoScanner;->__initPhotoNum()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/resultcard/common/PhotoScanner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoScanner;
    .locals 2

    sget-object v0, Lcom/baidu/resultcard/common/PhotoScanner;->sInstance:Lcom/baidu/resultcard/common/PhotoScanner;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/resultcard/common/PhotoScanner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/resultcard/common/PhotoScanner;->sInstance:Lcom/baidu/resultcard/common/PhotoScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/resultcard/common/PhotoScanner;

    invoke-direct {v0, p0}, Lcom/baidu/resultcard/common/PhotoScanner;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/resultcard/common/PhotoScanner;->sInstance:Lcom/baidu/resultcard/common/PhotoScanner;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/resultcard/common/PhotoScanner;->sInstance:Lcom/baidu/resultcard/common/PhotoScanner;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getPhotoNum(I)I
    .locals 14

    const-wide/32 v12, 0x5265c00

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v4, v2, v12

    const/4 v0, 0x0

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    int-to-long v10, p1

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    iget-object v8, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_1
    int-to-long v4, p1

    mul-long/2addr v4, v12

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveTimeStamp:J

    iget-object v2, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initPhotoNum()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/resultcard/common/PhotoScanner$1;

    invoke-direct {v1, p0}, Lcom/baidu/resultcard/common/PhotoScanner$1;-><init>(Lcom/baidu/resultcard/common/PhotoScanner;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updatePhotoNum(JLjava/lang/String;)V
    .locals 9

    const-wide/16 v6, 0x0

    const-wide/32 v0, 0x5265c00

    div-long v0, p1, v0

    iget-object v2, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/resultcard/common/PhotoScanner$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/resultcard/common/PhotoScanner$2;-><init>(Lcom/baidu/resultcard/common/PhotoScanner;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mImageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-wide v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveTimeStamp:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveTimeStamp:J

    iget-object v2, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/resultcard/common/PhotoScanner$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/resultcard/common/PhotoScanner$3;-><init>(Lcom/baidu/resultcard/common/PhotoScanner;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-wide v6, p0, Lcom/baidu/resultcard/common/PhotoScanner;->mRemoveTimeStamp:J

    :cond_3
    return-void
.end method
