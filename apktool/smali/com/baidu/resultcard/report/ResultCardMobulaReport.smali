.class public Lcom/baidu/resultcard/report/ResultCardMobulaReport;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_ISINSTALL:Ljava/lang/String; = "isInstall"

.field public static final KEY_KEY:Ljava/lang/String; = "key"

.field public static final KEY_PKG:Ljava/lang/String; = "adpkg"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final KEY_VALUE_SHOW:Ljava/lang/String; = "show"

.field public static final KEY_VALUE_TCTC:Ljava/lang/String; = "tctc"

.field public static final KEY_VALUE_THI:Ljava/lang/String; = "thi"

.field public static final LOG_KEY:Ljava/lang/String; = "SDKCard"

.field private static final MOBULA_REPORT_ENABLED:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-static {p0}, Lcom/baidu/mobula/reportsdk/MobulaCore;->getInstance(Landroid/content/Context;)Lcom/baidu/mobula/reportsdk/MobulaCore;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "adpkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    const-string v2, "dailiang"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p4}, Lcom/baidu/mobula/reportsdk/MobulaCore;->reportEvent(Ljava/lang/String;Ljava/lang/String;I)V

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SDKCard"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
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

.method private static report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 4

    invoke-static {p0}, Lcom/baidu/mobula/reportsdk/MobulaCore;->getInstance(Landroid/content/Context;)Lcom/baidu/mobula/reportsdk/MobulaCore;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "adpkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "isInstall"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    const-string v2, "dailiang"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p5}, Lcom/baidu/mobula/reportsdk/MobulaCore;->reportEvent(Ljava/lang/String;Ljava/lang/String;I)V

    sget-boolean v0, Lcom/baidu/resultcard/CardLibrary;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SDKCard"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
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

.method public static reportCommonClick(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "tctc"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static reportCommonShow(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "show"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static reportInstall(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "thi"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static reportMainClick(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    const-string v1, "tctc"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method

.method public static reportMainShow(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    const-string v1, "show"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method
