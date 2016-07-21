.class public Lcom/dianxinos/library/notify/download/DownloadInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NETWORK_BLOCKED:I = 0x7

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_NOT_ACCEPT_NETWORK:I = 0x8

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3

.field private static final serialVersionUID:J = 0x164cbe5e34866e8L


# instance fields
.field public mAllowedNetworkTypes:Ljava/lang/String;

.field public mCacheFileName:Ljava/lang/String;

.field public mCompleteFileName:Ljava/lang/String;

.field public mControl:I

.field public mCurrentBytes:J

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mErrorMsg:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFuzz:I

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLastModified:J

.field public mMimeType:Ljava/lang/String;

.field public mNumFailed:I

.field public mRcmId:Ljava/lang/String;

.field public mRetryAfter:I

.field public mStatus:I

.field public mSystemFacade:Lcom/dianxinos/library/notify/download/s;

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mHeaders:Ljava/util/List;

    sget-object v0, Lcom/dianxinos/library/notify/download/o;->a:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mFuzz:I

    return-void
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/download/DownloadInfo;->checkSizeAllowedForNetwork(I)I

    move-result v0

    return v0
.end method

.method private checkSizeAllowedForNetwork(I)I
    .locals 6

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mSystemFacade:Lcom/dianxinos/library/notify/download/s;

    invoke-interface {v1}, Lcom/dianxinos/library/notify/download/s;->b()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mSystemFacade:Lcom/dianxinos/library/notify/download/s;

    invoke-interface {v1}, Lcom/dianxinos/library/notify/download/s;->c()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dianxinos/library/notify/download/DownloadInfo;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/dianxinos/library/notify/download/DownloadInfo;

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/dianxinos/library/notify/download/DownloadInfo;-><init>(Landroid/content/Context;)V

    const-string v3, "uri"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v3, "useragent"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    const-string v3, "numfailed"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    const-string v3, "control"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mControl:I

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    const-string v3, "filename"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    const-string v3, "completefilename"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    const-string v3, "destination"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    const-string v3, "mimetype"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v3, "totalbytes"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    const-string v3, "lastmodified"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mLastModified:J

    const-string v3, "etag"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mETag:Ljava/lang/String;

    const-string v3, "errormsg"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mErrorMsg:Ljava/lang/String;

    const-string v3, "headers"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/dianxinos/library/notify/download/DownloadInfo;->addHeader(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private isConfigNetworkAllowed()Z
    .locals 8

    const/16 v7, 0x31

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eq v4, v7, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq v5, v7, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v3, v7, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    if-eq v2, v7, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isReadyToStart(J)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dianxinos/library/notify/download/o;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->a()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dianxinos/library/notify/dispatcher/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->b()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dianxinos/library/notify/dispatcher/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    :sswitch_0
    return v0

    :cond_2
    iget v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mControl:I

    if-ne v2, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->checkCanUseNetwork()I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/dianxinos/library/notify/download/DownloadInfo;->restartTime(J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_1
        0xc4 -> :sswitch_1
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_3
    .end sparse-switch
.end method

.method private isRoamingAllowed()Z
    .locals 2

    iget v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/dianxinos/library/notify/download/HttpHeader;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/download/HttpHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkCanUseNetwork()I
    .locals 2

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->a()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->isConfigNetworkAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mSystemFacade:Lcom/dianxinos/library/notify/download/s;

    invoke-interface {v1}, Lcom/dianxinos/library/notify/download/s;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->checkIsNetworkTypeAllowed(I)I

    move-result v0

    goto :goto_0
.end method

.method getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, "unknown error with network connectivity"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_0

    :pswitch_1
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_0

    :pswitch_2
    const-string v0, "no network connection available"

    goto :goto_0

    :pswitch_3
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_0

    :pswitch_4
    const-string v0, "download was requested to not use the current network type"

    goto :goto_0

    :pswitch_5
    const-string v0, "network is blocked for requesting application"

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowed network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mAllowedNetworkTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 2G: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3G: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public restartTime(J)J
    .locals 5

    iget v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    iget v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mLastModified:J

    iget v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mLastModified:J

    iget v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0
.end method

.method startDownload()Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/library/notify/download/DownloadInfo;->startIfReady(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/dianxinos/library/notify/download/DownloadRunnable;

    invoke-direct {v1, v0, p0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;-><init>(Landroid/content/Context;Lcom/dianxinos/library/notify/download/DownloadInfo;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mSystemFacade:Lcom/dianxinos/library/notify/download/s;

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Lcom/dianxinos/library/notify/download/s;->a(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startIfReady(J)Z
    .locals 5

    const/16 v3, 0xc0

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/library/notify/download/DownloadInfo;->isReadyToStart(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/dianxinos/library/notify/download/f;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "rcm-download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service spawning thread to handle download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    if-eq v0, v3, :cond_2

    iput v3, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    invoke-static {p0}, Lcom/dianxinos/library/notify/h/a;->a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 6

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uri"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "useragent"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "numfailed"

    iget v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mNumFailed:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "control"

    iget v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mControl:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "status"

    iget v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "filename"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "completefilename"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "destination"

    iget v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mDestination:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mimetype"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "totalbytes"

    iget-wide v4, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "lastmodified"

    iget-wide v4, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mLastModified:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "retryafter"

    iget v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRetryAfter:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "etag"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "errormsg"

    iget-object v1, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mHeaders:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mHeaders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v0, "headers"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
