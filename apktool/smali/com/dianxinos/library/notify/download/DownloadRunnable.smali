.class public Lcom/dianxinos/library/notify/download/DownloadRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/dianxinos/library/notify/download/DownloadInfo;

.field private final c:Lcom/dianxinos/library/notify/download/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dianxinos/library/notify/download/DownloadInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-static {}, Lcom/dianxinos/library/notify/download/g;->a()Lcom/dianxinos/library/notify/download/g;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c:Lcom/dianxinos/library/notify/download/g;

    return-void
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5

    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->i(Lcom/dianxinos/library/notify/download/l;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "dianxin-notify"

    :cond_1
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/data/j;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dianxinos/library/notify/h/c;->b(Lcom/dianxinos/library/notify/data/j;)Z

    :cond_0
    return-void
.end method

.method private a(IZIZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput p1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput p3, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRetryAfter:I

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    :goto_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object p6, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mErrorMsg:Ljava/lang/String;

    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object p5, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/a;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z

    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mErrorMsg:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    goto :goto_2
.end method

.method private a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(IZIZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p8}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/j/c;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "different notifyId with same url, checkDownloadComplete,copy exsits file to this folder"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v1, 0xc8

    const-string v2, "complete file has already exist"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-object v3, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v3, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    new-instance v0, Lcom/dianxinos/library/notify/download/DownloadRunnable$RetryDownload;

    invoke-direct {v0, p0, v3}, Lcom/dianxinos/library/notify/download/DownloadRunnable$RetryDownload;-><init>(Lcom/dianxinos/library/notify/download/DownloadRunnable;Lcom/dianxinos/library/notify/download/j;)V

    throw v0
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->e(Lcom/dianxinos/library/notify/download/l;)V

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/dianxinos/library/notify/download/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v2, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/a;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Lcom/dianxinos/library/notify/download/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->g(Lcom/dianxinos/library/notify/download/l;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/dianxinos/library/notify/download/k;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/dianxinos/library/notify/download/k;-><init>(Lcom/dianxinos/library/notify/download/j;)V

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x8000

    :goto_1
    new-array v0, v0, [B

    invoke-direct {p0, p1, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;)V

    invoke-direct {p0, p1, p3}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/client/methods/HttpGet;)V

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iget-wide v4, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping initiating request for download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; already completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0x1000

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c()V

    invoke-direct {p0, p1, p2, p3}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/a;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;Lorg/apache/http/HttpResponse;)V

    sget-boolean v3, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "rcm-download"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received response for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v5, v5, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v3, "preload_bkg"

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "preload_file"

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dianxinos/library/notify/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_2
    invoke-direct {p0, p1, v1, v2}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;Lorg/apache/http/HttpResponse;)V

    invoke-direct {p0, p1, v2}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;[BLjava/io/InputStream;)V

    const-string v0, "preload_bkg"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/j/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "preload_file"

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/dianxinos/library/notify/g/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dianxinos/library/notify/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/dianxinos/library/notify/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;)V
    .locals 4

    iget-object v0, p2, Lcom/dianxinos/library/notify/download/k;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iget-object v2, p2, Lcom/dianxinos/library/notify/download/k;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->h(Lcom/dianxinos/library/notify/download/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v1, 0x1e9

    const-string v2, "mismatched content length!"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->i(Lcom/dianxinos/library/notify/download/l;)I

    move-result v1

    const-string v2, "closed socket before end of file"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;I)V
    .locals 4

    const/16 v0, 0x1a0

    if-ne p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http Range request failure: totalBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bytes recvd so far: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p3}, Lcom/dianxinos/library/notify/download/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p3

    :goto_0
    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContinuingDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/dianxinos/library/notify/download/l;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    const/16 v0, 0x12c

    if-lt p3, v0, :cond_2

    const/16 v0, 0x190

    if-ge p3, v0, :cond_2

    const/16 v0, 0x1ed

    goto :goto_0

    :cond_2
    iget-boolean v0, p1, Lcom/dianxinos/library/notify/download/l;->n:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_3

    const/16 v0, 0x1e9

    goto :goto_0

    :cond_3
    const/16 v0, 0x1ee

    goto :goto_0
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;Lorg/apache/http/HttpResponse;)V
    .locals 5

    iget-boolean v0, p1, Lcom/dianxinos/library/notify/download/l;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;Lorg/apache/http/HttpResponse;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/download/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;)V

    invoke-direct {p0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while opening destination file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;[BLjava/io/InputStream;)V
    .locals 4

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;[BLjava/io/InputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->g(Lcom/dianxinos/library/notify/download/l;)V

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/dianxinos/library/notify/download/l;->i:Z

    invoke-direct {p0, p1, p3, v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;[BI)V

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iput-wide v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCurrentBytes:J

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->g(Lcom/dianxinos/library/notify/download/l;)V

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->f(Lcom/dianxinos/library/notify/download/l;)V

    goto :goto_0
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/HttpResponse;I)V
    .locals 4

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got HTTP redirect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/dianxinos/library/notify/download/l;->g:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v1, 0x1f1

    const-string v2, "too many redirects"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Location"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-boolean v1, Lcom/dianxinos/library/notify/download/f;->b:Z

    if-eqz v1, :cond_3

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URI;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v1, p1, Lcom/dianxinos/library/notify/download/l;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/dianxinos/library/notify/download/l;->g:I

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->j:Ljava/lang/String;

    const/16 v1, 0x12d

    if-eq p3, v1, :cond_4

    const/16 v1, 0x12f

    if-ne p3, v1, :cond_5

    :cond_4
    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->h:Ljava/lang/String;

    :cond_5
    new-instance v0, Lcom/dianxinos/library/notify/download/DownloadRunnable$RetryDownload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable$RetryDownload;-><init>(Lcom/dianxinos/library/notify/download/DownloadRunnable;Lcom/dianxinos/library/notify/download/j;)V

    throw v0

    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t resolve redirect URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v1, 0x1ef

    const-string v2, "Couldn\'t resolve redirect URI"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/dianxinos/library/notify/download/l;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "If-Match"

    const-string v1, "\"state.mHeaderETag\""

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Range header: bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  totalBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private a(Lcom/dianxinos/library/notify/download/l;[BI)V
    .locals 4

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/library/notify/download/r;->a(ILjava/lang/String;J)V

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->e(Lcom/dianxinos/library/notify/download/l;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/library/notify/download/r;->b(ILjava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->e(Lcom/dianxinos/library/notify/download/l;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->e(Lcom/dianxinos/library/notify/download/l;)V

    :cond_4
    throw v0
.end method

.method private b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;[BLjava/io/InputStream;)I
    .locals 5

    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->h(Lcom/dianxinos/library/notify/download/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while reading response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v3, 0x1e9

    invoke-direct {v2, v3, v1, v0}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->i(Lcom/dianxinos/library/notify/download/l;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while reading response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/a;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 5

    :try_start_0
    invoke-virtual {p2, p3}, Lcom/dianxinos/library/notify/download/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->i(Lcom/dianxinos/library/notify/download/l;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b()V
    .locals 10

    const/4 v8, 0x0

    const/16 v1, 0x1eb

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v7, Lcom/dianxinos/library/notify/download/l;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-direct {v7, v0}, Lcom/dianxinos/library/notify/download/l;-><init>(Lcom/dianxinos/library/notify/download/DownloadInfo;)V

    :try_start_0
    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initiating download for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/dianxinos/library/notify/download/a;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/dianxinos/library/notify/download/a;
    :try_end_0
    .catch Lcom/dianxinos/library/notify/download/StopRequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    :try_start_1
    const-string v3, "rcm-download"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initiating request for download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v5, v5, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/dianxinos/library/notify/download/l;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/download/a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a:Landroid/content/Context;

    iget-object v5, v7, Lcom/dianxinos/library/notify/download/l;->j:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/dianxinos/library/notify/download/p;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, v7, Lcom/dianxinos/library/notify/download/l;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/dianxinos/library/notify/download/StopRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, v7, v2, v3}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/a;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_2
    .catch Lcom/dianxinos/library/notify/download/DownloadRunnable$RetryDownload; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catch Lcom/dianxinos/library/notify/download/StopRequestException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/dianxinos/library/notify/download/StopRequestException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborting request for download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rcm-download"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v4, :cond_1

    const-string v4, "rcm-download"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-boolean v4, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre download failure,msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/dianxinos/library/notify/download/StopRequestException;->mFinalStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_2
    iget v1, v0, Lcom/dianxinos/library/notify/download/StopRequestException;->mFinalStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/download/a;->a()V

    :cond_3
    invoke-direct {p0, v7, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;I)V

    iget-boolean v2, v7, Lcom/dianxinos/library/notify/download/l;->e:Z

    iget v3, v7, Lcom/dianxinos/library/notify/download/l;->f:I

    iget-boolean v4, v7, Lcom/dianxinos/library/notify/download/l;->i:Z

    iget-object v5, v7, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v6, v7, Lcom/dianxinos/library/notify/download/l;->h:Ljava/lang/String;

    iget-object v7, v7, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(ILjava/lang/String;)V

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    throw v0
    :try_end_5
    .catch Lcom/dianxinos/library/notify/download/StopRequestException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rcm-download"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/download/a;->a()V

    :cond_4
    invoke-direct {p0, v7, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;I)V

    iget-boolean v2, v7, Lcom/dianxinos/library/notify/download/l;->e:Z

    iget v3, v7, Lcom/dianxinos/library/notify/download/l;->f:I

    iget-boolean v4, v7, Lcom/dianxinos/library/notify/download/l;->i:Z

    iget-object v5, v7, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v6, v7, Lcom/dianxinos/library/notify/download/l;->h:Ljava/lang/String;

    iget-object v7, v7, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    :try_start_7
    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "rcm-download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download completed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v7}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c(Lcom/dianxinos/library/notify/download/l;)V

    invoke-direct {p0, v7}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->d(Lcom/dianxinos/library/notify/download/l;)Z
    :try_end_7
    .catch Lcom/dianxinos/library/notify/download/StopRequestException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v1, 0xc8

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/download/a;->a()V

    :cond_7
    invoke-direct {p0, v7, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;I)V

    iget-boolean v2, v7, Lcom/dianxinos/library/notify/download/l;->e:Z

    iget v3, v7, Lcom/dianxinos/library/notify/download/l;->f:I

    iget-boolean v4, v7, Lcom/dianxinos/library/notify/download/l;->i:Z

    iget-object v5, v7, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v6, v7, Lcom/dianxinos/library/notify/download/l;->h:Ljava/lang/String;

    iget-object v7, v7, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/download/a;->a()V

    :cond_8
    invoke-direct {p0, v7, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;I)V

    iget-boolean v2, v7, Lcom/dianxinos/library/notify/download/l;->e:Z

    iget v3, v7, Lcom/dianxinos/library/notify/download/l;->f:I

    iget-boolean v4, v7, Lcom/dianxinos/library/notify/download/l;->i:Z

    iget-object v5, v7, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v6, v7, Lcom/dianxinos/library/notify/download/l;->h:Ljava/lang/String;

    iget-object v7, v7, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(ILjava/lang/String;)V

    throw v9

    :catch_2
    move-exception v4

    :try_start_8
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_8
    .catch Lcom/dianxinos/library/notify/download/StopRequestException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v9, v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v8

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object v2, v8

    goto/16 :goto_1
.end method

.method private b(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/dianxinos/library/notify/a;->a()Lcom/dianxinos/library/notify/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-wide v2, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    iput-wide v2, v0, Lcom/dianxinos/library/notify/a;->e:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-wide v2, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCurrentBytes:J

    iput-wide v2, v0, Lcom/dianxinos/library/notify/a;->f:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mControl:I

    iput v1, v0, Lcom/dianxinos/library/notify/a;->g:I

    iput p1, v0, Lcom/dianxinos/library/notify/a;->h:I

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c:Lcom/dianxinos/library/notify/download/g;

    invoke-virtual {v1, v0}, Lcom/dianxinos/library/notify/download/g;->a(Lcom/dianxinos/library/notify/a;)V

    return-void
.end method

.method private b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;)V
    .locals 2

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mETag:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/a;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z

    return-void
.end method

.method private b(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;Lorg/apache/http/HttpResponse;)V
    .locals 4

    const-string v0, "Content-Disposition"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dianxinos/library/notify/download/k;->b:Ljava/lang/String;

    :cond_0
    const-string v0, "Content-Location"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dianxinos/library/notify/download/k;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Content-Type"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    :cond_2
    const-string v0, "ETag"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->m:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x0

    const-string v1, "Transfer-Encoding"

    invoke-interface {p3, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_7

    const-string v1, "Content-Length"

    invoke-interface {p3, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/dianxinos/library/notify/download/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, p2, Lcom/dianxinos/library/notify/download/k;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    iput-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    :cond_5
    :goto_0
    sget-boolean v1, Lcom/dianxinos/library/notify/download/f;->b:Z

    if-eqz v1, :cond_6

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/dianxinos/library/notify/download/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/dianxinos/library/notify/download/k;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/dianxinos/library/notify/download/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ETag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dianxinos/library/notify/download/l;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer-Encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    sget-boolean v1, Lcom/dianxinos/library/notify/download/f;->b:Z

    if-eqz v1, :cond_5

    const-string v1, "rcm-download"

    const-string v2, "ignoring content-length because of xfer-encoding"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private b(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/HttpResponse;)V
    .locals 6

    const v5, 0x15180

    const/16 v4, 0x1e

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "rcm-download"

    const-string v1, "got HTTP response code 503"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dianxinos/library/notify/download/l;->e:Z

    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-boolean v1, Lcom/dianxinos/library/notify/download/f;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry-After :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    iget v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v1, 0xc2

    const-string v2, "got 503 Service Unavailable, will retry later"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :try_start_1
    iget v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    if-ge v0, v4, :cond_5

    const/16 v0, 0x1e

    iput v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    :cond_4
    :goto_1
    iget v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    sget-object v1, Lcom/dianxinos/library/notify/download/o;->a:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    iget v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    iget v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I

    if-le v0, v5, :cond_4

    const v0, 0x15180

    iput v0, p1, Lcom/dianxinos/library/notify/download/l;->f:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v2, "rcm-download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "IOException while closing synced file: "

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_5
    const-string v2, "rcm-download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sync failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "IOException while closing synced file: "

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_7
    const-string v2, "rcm-download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException trying to sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "IOException while closing synced file: "

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_9
    const-string v2, "rcm-download"

    const-string v3, "exception while syncing file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "IOException while closing synced file: "

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_1

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_9

    :cond_1
    :goto_7
    throw v0

    :catch_8
    move-exception v1

    const-string v2, "rcm-download"

    const-string v3, "IOException while closing synced file: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_9
    move-exception v1

    const-string v2, "rcm-download"

    const-string v3, "exception while closing file: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_a
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "exception while closing file: "

    :goto_8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "exception while closing file: "

    goto :goto_8

    :catch_c
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "exception while closing file: "

    goto :goto_8

    :catch_d
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "exception while closing file: "

    goto :goto_8

    :catch_e
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "IOException while closing synced file: "

    goto/16 :goto_2

    :catch_f
    move-exception v0

    const-string v1, "rcm-download"

    const-string v2, "exception while closing file: "

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_10
    move-exception v0

    goto :goto_5

    :catch_11
    move-exception v0

    goto/16 :goto_4

    :catch_12
    move-exception v0

    goto/16 :goto_3

    :catch_13
    move-exception v0

    goto/16 :goto_1
.end method

.method private b(Lcom/dianxinos/library/notify/download/l;)Z
    .locals 5

    const/16 v4, 0xc8

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iput-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-wide v2, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCurrentBytes:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-wide v2, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput v4, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping initializing request for download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alreay save to complete folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dianxinos/library/notify/download/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v1, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    iput-object v1, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iput-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-wide v2, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCurrentBytes:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-wide v2, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput v4, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-static {v1}, Lcom/dianxinos/library/notify/h/a;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping initializing request for download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already save to complete folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    const/16 v0, 0xc4

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/dianxinos/library/notify/download/DownloadInfo;->checkCanUseNetwork()I

    move-result v2

    const/4 v1, 0x1

    if-eq v2, v1, :cond_3

    const/16 v1, 0xc3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-virtual {v3, v2}, Lcom/dianxinos/library/notify/download/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v0, 0x7

    if-ne v2, v0, :cond_2

    const/16 v0, 0x1f2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne v2, v0, :cond_4

    const/16 v0, 0xbf

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/dianxinos/library/notify/download/l;)V
    .locals 1

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x1ec

    const/4 v6, 0x1

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have run thread before for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and state.mFilename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/dianxinos/library/notify/download/r;->a()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/download/o;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const-string v1, "found invalid internal destination filename"

    invoke-direct {v0, v7, v1}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming download for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and state.mFilename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v8, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v8, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BUT starting from scratch again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->e(Lcom/dianxinos/library/notify/download/l;)V

    :cond_4
    return-void

    :cond_5
    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resuming download for id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", and starting with file of length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v2

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iput-wide v2, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCurrentBytes:J

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-wide v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-wide v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dianxinos/library/notify/download/k;->a:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->m:Ljava/lang/String;

    iput-boolean v6, p1, Lcom/dianxinos/library/notify/download/l;->n:Z

    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state.mCurrentBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and setting mContinuingDownload to true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dianxinos/library/notify/download/StopRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while opening destination for resuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v0}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;Lorg/apache/http/HttpResponse;)V
    .locals 4

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v0, 0x1f7

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/HttpResponse;)V

    :cond_0
    const/16 v0, 0x12d

    if-eq v1, v0, :cond_1

    const/16 v0, 0x12e

    if-eq v1, v0, :cond_1

    const/16 v0, 0x12f

    if-eq v1, v0, :cond_1

    const/16 v0, 0x133

    if-ne v1, v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lorg/apache/http/HttpResponse;I)V

    :cond_2
    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recevd_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContinuingDownload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/dianxinos/library/notify/download/l;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p1, Lcom/dianxinos/library/notify/download/l;->n:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xce

    :goto_0
    if-eq v1, v0, :cond_4

    invoke-direct {p0, p1, p2, v1}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/k;I)V

    :cond_4
    return-void

    :cond_5
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method private d(Lcom/dianxinos/library/notify/download/l;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dianxinos/library/notify/download/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-static {v1}, Lcom/dianxinos/library/notify/h/a;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z

    goto :goto_0

    :cond_5
    iput-object v6, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v6, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7
    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v4, v4, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dianxinos/library/notify/download/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v3}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-static {v1}, Lcom/dianxinos/library/notify/h/a;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z

    goto/16 :goto_0

    :cond_8
    iput-object v6, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iput-object v6, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    move v0, v1

    goto :goto_2
.end method

.method private e(Lcom/dianxinos/library/notify/download/l;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/dianxinos/library/notify/download/l;->c:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "rcm-download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private f(Lcom/dianxinos/library/notify/download/l;)V
    .locals 4

    const/16 v3, 0x1ea

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    if-ne v0, v3, :cond_1

    new-instance v0, Lcom/dianxinos/library/notify/download/StopRequestException;

    const/16 v2, 0x1ea

    const-string v3, "download canceled"

    invoke-direct {v0, v2, v3}, Lcom/dianxinos/library/notify/download/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private g(Lcom/dianxinos/library/notify/download/l;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iget-wide v4, p1, Lcom/dianxinos/library/notify/download/l;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->p:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iget-wide v4, p1, Lcom/dianxinos/library/notify/download/l;->k:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/notify/a;->a()Lcom/dianxinos/library/notify/a;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iput-object v3, v2, Lcom/dianxinos/library/notify/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v3, v2, Lcom/dianxinos/library/notify/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/dianxinos/library/notify/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/dianxinos/library/notify/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-wide v4, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    iput-wide v4, v2, Lcom/dianxinos/library/notify/a;->e:J

    iget-wide v4, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iput-wide v4, v2, Lcom/dianxinos/library/notify/a;->f:J

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mControl:I

    iput v3, v2, Lcom/dianxinos/library/notify/a;->g:I

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    iput v3, v2, Lcom/dianxinos/library/notify/a;->h:I

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->c:Lcom/dianxinos/library/notify/download/g;

    invoke-virtual {v3, v2}, Lcom/dianxinos/library/notify/download/g;->a(Lcom/dianxinos/library/notify/a;)V

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->l:J

    iput-wide v2, p1, Lcom/dianxinos/library/notify/download/l;->o:J

    iput-wide v0, p1, Lcom/dianxinos/library/notify/download/l;->p:J

    :cond_2
    return-void
.end method

.method private h(Lcom/dianxinos/library/notify/download/l;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private i(Lcom/dianxinos/library/notify/download/l;)I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xc3

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xc4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1f2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget v0, v0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iput-boolean v2, p1, Lcom/dianxinos/library/notify/download/l;->e:Z

    const/16 v0, 0xc2

    goto :goto_0

    :cond_1
    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max retries for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1ef

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.WAKE_LOCK"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "rcm-download"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download info extras is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_2
    const-string v0, "preload_bkg"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "preload_file"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->a()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dianxinos/library/notify/download/o;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/a;->b(Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dequeue preload success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->a()Lcom/dianxinos/library/notify/dispatcher/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download info extras is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_7
    const-string v1, "preload_bkg"

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "preload_file"

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->a()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dianxinos/library/notify/download/o;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dianxinos/library/notify/dispatcher/a;->b(Ljava/lang/String;)Z

    move-result v1

    sget-boolean v2, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeue preload success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_9
    :goto_2
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->a()Lcom/dianxinos/library/notify/dispatcher/b;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)V

    throw v0

    :cond_a
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->b()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v3, v3, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dianxinos/library/notify/download/o;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dianxinos/library/notify/dispatcher/a;->b(Ljava/lang/String;)Z

    move-result v1

    sget-boolean v2, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeue download success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->b()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v1, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadRunnable;->b:Lcom/dianxinos/library/notify/download/DownloadInfo;

    iget-object v2, v2, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dianxinos/library/notify/download/o;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/a;->b(Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dequeue download success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
