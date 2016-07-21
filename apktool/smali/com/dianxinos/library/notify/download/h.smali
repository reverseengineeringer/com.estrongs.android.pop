.class public Lcom/dianxinos/library/notify/download/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/library/notify/download/s;


# direct methods
.method private static declared-synchronized a()Lcom/dianxinos/library/notify/download/s;
    .locals 3

    const-class v1, Lcom/dianxinos/library/notify/download/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/download/h;->a:Lcom/dianxinos/library/notify/download/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/download/q;

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dianxinos/library/notify/download/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/library/notify/download/h;->a:Lcom/dianxinos/library/notify/download/s;

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/download/h;->a:Lcom/dianxinos/library/notify/download/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/dianxinos/library/notify/download/i;)Z
    .locals 3

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/download/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/a;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/download/DownloadInfo;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_1

    new-instance v0, Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-direct {v0, v1}, Lcom/dianxinos/library/notify/download/DownloadInfo;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/i;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/a;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/notify/download/h;->a()Lcom/dianxinos/library/notify/download/s;

    move-result-object v2

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mSystemFacade:Lcom/dianxinos/library/notify/download/s;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/i;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/i;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/i;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    const/16 v2, 0xc0

    iput v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    new-instance v2, Lcom/dianxinos/library/notify/download/DownloadRunnable;

    invoke-direct {v2, v1, v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;-><init>(Landroid/content/Context;Lcom/dianxinos/library/notify/download/DownloadInfo;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method
