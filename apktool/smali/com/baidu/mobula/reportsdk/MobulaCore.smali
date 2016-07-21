.class public final Lcom/baidu/mobula/reportsdk/MobulaCore;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final KEY_MDU:Ljava/lang/String; = "mdu"

.field public static final KEY_PROTOCAL:Ljava/lang/String; = "rv"

.field public static final KEY_SECURITY:Ljava/lang/String; = "s"

.field public static final KEY_SEQ:Ljava/lang/String; = "seq"

.field public static final KEY_STYPE:Ljava/lang/String; = "stype"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final LEVEL_1:I = 0x1

.field public static final LEVEL_2:I = 0x2

.field public static final LEVEL_3:I = 0x3

.field public static final LEVEL_4:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "MobulaReport"

.field public static final MDU_TOOLBOX:Ljava/lang/String; = "adsdk"

.field static final MSG_REPORT:I = 0x3

.field static final MSG_SCHEDULE:I = 0x4

.field private static final ORTS_URL_PROD:Ljava/lang/String; = "http://rts.mobula.sdk.duapps.com/orts/rp?"

.field private static final ORTS_URL_TEST:Ljava/lang/String; = "http://sandbox.duapps.com:8124/orts/rp?"

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRIORITY_REAL_TIME:I = 0x0

.field private static final REPORT_DELAYED:J = 0x1388L

.field private static final ROLLBACK_INTERVAL:J = 0x240c8400L

.field private static final RPB_URL_PROD:Ljava/lang/String; = "http://rts.mobula.sdk.duapps.com/orts/rpb?"

.field private static final RPB_URL_TEST:Ljava/lang/String; = "http://sandbox.duapps.com:8124/orts/rpb?"

.field private static final SCHEDULE_INTERVAL:J = 0x36ee80L

.field static final SCHEDULE_TIMES:I = 0x3

.field private static final SRC_PRIO_URL_PROD:Ljava/lang/String; = "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?"

.field private static final SRC_PRIO_URL_TEST:Ljava/lang/String; = "http://sandbox.duapps.com:8124/adunion/slot/getSrcPrio?"

.field public static final STATS_PROTOCAL:Ljava/lang/String; = "1.0"

.field private static final ST_200:I = 0xc8

.field private static final ST_304:I = 0x130

.field public static final VALUE_STYPE_BEHAVIOR:Ljava/lang/String; = "behavior"

.field public static final VALUE_STYPE_DAILIANG:Ljava/lang/String; = "dailiang"

.field public static final VALUE_STYPE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final VALUE_STYPE_NATIVE:Ljava/lang/String; = "native"

.field public static final VALUE_STYPE_OFFERWALL:Ljava/lang/String; = "offerwall"

.field public static final VALUE_STYPE_ONLINE:Ljava/lang/String; = "online"

.field private static sInstance:Lcom/baidu/mobula/reportsdk/MobulaCore;

.field private static sRPBUrl:Ljava/lang/String;

.field private static sSrcUrl:Ljava/lang/String;

.field private static sStatsUrl:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field scheduleTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sSrcUrl:Ljava/lang/String;

    const-string v0, "http://rts.mobula.sdk.duapps.com/orts/rp?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sStatsUrl:Ljava/lang/String;

    const-string v0, "http://rts.mobula.sdk.duapps.com/orts/rpb?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sRPBUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->scheduleTime:I

    iput-object p1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stts"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static dumpResult(Lorg/apache/http/HttpResponse;)V
    .locals 7

    const/16 v3, 0x400

    const/4 v6, -0x1

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    new-array v3, v3, [C

    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v0}, Lcom/baidu/mobula/reportsdk/MobulaUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobulaReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "responseHeader"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/mobula/reportsdk/MobulaCore;
    .locals 1

    invoke-static {p0}, Lcom/baidu/mobula/reportsdk/MobulaCore;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sInstance:Lcom/baidu/mobula/reportsdk/MobulaCore;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/baidu/mobula/reportsdk/MobulaCore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sInstance:Lcom/baidu/mobula/reportsdk/MobulaCore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobula/reportsdk/MobulaCore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/mobula/reportsdk/MobulaCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sInstance:Lcom/baidu/mobula/reportsdk/MobulaCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pushToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/baidu/mobula/reportsdk/HttpParamsHelper;->commonParams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mdu"

    const-string v6, "adsdk"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "rv"

    const-string v6, "1.0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ts"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "seq"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "stype"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobula/reportsdk/MobulaUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "s"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    const-string v1, "behavior"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/baidu/mobula/reportsdk/MobulaCore;->sRPBUrl:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, p3, v3}, Lcom/baidu/mobula/reportsdk/MobulaRequestHelper;->executePostRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v3, "MobulaReport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "status code = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/baidu/mobula/reportsdk/LogHelper;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/baidu/mobula/reportsdk/MobulaCore;->dumpResult(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {v2}, Lcom/baidu/mobula/reportsdk/MobulaRequestHelper;->consumEntity(Lorg/apache/http/HttpResponse;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    :try_start_2
    new-instance v1, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/baidu/mobula/reportsdk/MobulaCore;->sStatsUrl:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "MobulaReport"

    const-string v4, "post failed."

    invoke-static {v3, v4, v1}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/baidu/mobula/reportsdk/MobulaRequestHelper;->consumEntity(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/baidu/mobula/reportsdk/MobulaRequestHelper;->consumEntity(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/baidu/mobula/reportsdk/MobulaRequestHelper;->consumEntity(Lorg/apache/http/HttpResponse;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private report(Landroid/os/Message;)V
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v13, Lorg/json/JSONStringer;

    invoke-direct {v13}, Lorg/json/JSONStringer;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v4, 0x240c8400

    sub-long v16, v2, v4

    const-string v5, "ts > ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ts"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "content"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "ls"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "stype"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_id"

    aput-object v3, v4, v2

    const-string v2, "ts DESC"

    const-string v2, " LIMIT 100 OFFSET 0"

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v3, v7}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getUriByType(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "ts DESC LIMIT 100 OFFSET 0"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v13}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v13}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v3, v5

    move v2, v12

    :goto_2
    if-eqz v6, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mobula/reportsdk/MobulaConfig;->getLastModified(Landroid/content/Context;)J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobula/reportsdk/MobulaCore;->pushToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ts <= ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    const/4 v8, 0x4

    invoke-static {v5, v8}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getUriByType(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ts IN ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getUriByType(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v3, "MobulaReport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "del srecord success :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/baidu/mobula/reportsdk/MobulaConfig;->setLastModified(Landroid/content/Context;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/baidu/mobula/reportsdk/LogHelper;->isLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MobulaReport"

    const-string v4, "mDatabase reportEvent() del exception: "

    invoke-static {v3, v4, v2}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    :try_start_5
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_6

    move-object v5, v2

    :cond_6
    if-nez v4, :cond_7

    move-object v4, v7

    :cond_7
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v10, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v6, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    :goto_3
    const/4 v7, 0x1

    :try_start_6
    const-string v8, "MobulaReport"

    const-string v9, "mDatabase reportEvent() exception: "

    invoke-static {v8, v9, v2}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v5

    move v2, v7

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    move-object v3, v8

    :goto_4
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    :catch_2
    move-exception v2

    invoke-static {}, Lcom/baidu/mobula/reportsdk/LogHelper;->isLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MobulaReport"

    const-string v4, "mDatabase reportEvent() del exception: "

    invoke-static {v3, v4, v2}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_3

    :cond_9
    move-object v3, v5

    move v2, v7

    goto/16 :goto_2
.end method

.method public static setEnvironment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "prod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://rts.mobula.sdk.duapps.com/orts/rp?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sStatsUrl:Ljava/lang/String;

    const-string v0, "http://rts.mobula.sdk.duapps.com/orts/rpb?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sRPBUrl:Ljava/lang/String;

    const-string v0, "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sSrcUrl:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mobula/reportsdk/LogHelper;->setLogEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string v0, "http://sandbox.duapps.com:8124/orts/rp?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sStatsUrl:Ljava/lang/String;

    const-string v0, "http://sandbox.duapps.com:8124/orts/rpb?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sRPBUrl:Ljava/lang/String;

    const-string v0, "http://sandbox.duapps.com:8124/adunion/slot/getSrcPrio?"

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCore;->sSrcUrl:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mobula/reportsdk/LogHelper;->setLogEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/baidu/mobula/reportsdk/MobulaCore;->report(Landroid/os/Message;)V

    iget v2, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->scheduleTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->scheduleTime:I

    iget v2, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->scheduleTime:I

    if-le v3, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->scheduleTime:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->getInstance(Landroid/content/Context;)Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobula/reportsdk/MobulaLicenseManager;->getLicense()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/baidu/mobula/reportsdk/LogHelper;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MobulaReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Discard ls="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";rp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/baidu/mobula/reportsdk/LogHelper;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MobulaReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rept = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "content"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "ls"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stype"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getUriByType(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCore;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobulaReport"

    const-string v2, "mDatabase reportEvent() exception: "

    invoke-static {v1, v2, v0}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
