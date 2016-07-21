.class public Lcom/baidu/resultcard/report/ResultCardPastaReport;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_INSTALL:Ljava/lang/String; = "isInstall"

.field public static final KEY_NETSTAT:Ljava/lang/String; = "netstat"

.field public static final KEY_PKG:Ljava/lang/String; = "adpkg"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_VALUE_CLICK:Ljava/lang/String; = "duresultcard_sdk_click"

.field public static final KEY_VALUE_INSTALL:Ljava/lang/String; = "duresultcard_sdk_install"

.field public static final KEY_VALUE_SHOW:Ljava/lang/String; = "duresultcard_sdk_show"

.field private static final PASTA_REPORT_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "SDKCard"

.field private static sInstance:Lcom/baidu/resultcard/report/ResultCardPastaReport;


# instance fields
.field private mDXCore:Lcom/dianxinos/dxservice/core/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/dianxinos/dxservice/core/a;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->mDXCore:Lcom/dianxinos/dxservice/core/a;

    iget-object v0, p0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->mDXCore:Lcom/dianxinos/dxservice/core/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/dxservice/core/a;->a(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/report/ResultCardPastaReport;
    .locals 2

    sget-object v0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->sInstance:Lcom/baidu/resultcard/report/ResultCardPastaReport;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/resultcard/report/ResultCardPastaReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->sInstance:Lcom/baidu/resultcard/report/ResultCardPastaReport;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/resultcard/report/ResultCardPastaReport;

    invoke-direct {v0, p0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->sInstance:Lcom/baidu/resultcard/report/ResultCardPastaReport;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->sInstance:Lcom/baidu/resultcard/report/ResultCardPastaReport;

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
.method public reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->mDXCore:Lcom/dianxinos/dxservice/core/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SDKCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/resultcard/report/ResultCardPastaReport;->mDXCore:Lcom/dianxinos/dxservice/core/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SDKCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reportJson(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adpkg"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SDKCard"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reportJson(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adpkg"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "netstat"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SDKCard"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reportJson(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adpkg"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isInstall"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "netstat"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SDKCard"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
