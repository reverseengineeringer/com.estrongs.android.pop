.class public Lcom/duapps/ad/coin/CoinManager;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Lcom/duapps/ad/coin/CoinManager;


# instance fields
.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private e:Lcom/duapps/ad/coin/a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/duapps/ad/coin/CoinManager;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/DXStatService/stat/TokenManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->d:Ljava/lang/String;

    new-instance v0, Lcom/duapps/ad/coin/a;

    iget-object v1, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duapps/ad/coin/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->e:Lcom/duapps/ad/coin/a;

    invoke-direct {p0}, Lcom/duapps/ad/coin/CoinManager;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/coin/CoinManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duapps/ad/coin/CoinManager;
    .locals 2

    const-class v1, Lcom/duapps/ad/coin/CoinManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/coin/CoinManager;->b:Lcom/duapps/ad/coin/CoinManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duapps/ad/coin/CoinManager;

    invoke-direct {v0, p0}, Lcom/duapps/ad/coin/CoinManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/coin/CoinManager;->b:Lcom/duapps/ad/coin/CoinManager;

    :cond_0
    sget-object v0, Lcom/duapps/ad/coin/CoinManager;->b:Lcom/duapps/ad/coin/CoinManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RequestResult;)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.common.toolbox.ACTION_COIN_GAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RequestResult;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.common.toolbox.ACTION_COIN_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "result_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/duapps/ad/coin/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    sget-object v1, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Query:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-static {v0, v1, v3}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;Z)V

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    sget-object v1, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Query:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;Z)V

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    sget-object v1, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Increase:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-static {v0, v1, v3}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;Z)V

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    sget-object v1, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Increase:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;Z)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/coin/CoinManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->d:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/duapps/ad/base/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duapps/ad/coin/CoinManager;->e()V

    :cond_1
    :goto_0
    const-string v1, "CoinManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check login, new account=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/duapps/ad/base/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duapps/ad/coin/CoinManager;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/duapps/ad/coin/CoinManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/duapps/ad/coin/CoinManager;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/duapps/ad/base/an;->a()Lcom/duapps/ad/base/an;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/coin/b;

    invoke-direct {v1, p0}, Lcom/duapps/ad/coin/b;-><init>(Lcom/duapps/ad/coin/CoinManager;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/an;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;

    const/4 v0, 0x0

    invoke-direct {v6, p1, p2, v0}, Lcom/duapps/ad/coin/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/coin/b;)V

    invoke-virtual {p0}, Lcom/duapps/ad/coin/CoinManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x5

    iput v0, v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    sget-object v0, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Query:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/coin/CoinManager;->a(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v6

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tk"

    iget-object v2, p0, Lcom/duapps/ad/coin/CoinManager;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "http"

    sget-object v1, Lcom/duapps/ad/coin/a;->c:Ljava/lang/String;

    sget v2, Lcom/duapps/ad/coin/a;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/duapps/ad/coin/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/integral/get"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tk"

    iget-object v3, p0, Lcom/duapps/ad/coin/CoinManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ac"

    iget-object v3, p0, Lcom/duapps/ad/coin/CoinManager;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v2, "mid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/duapps/ad/coin/CoinManager;->e:Lcom/duapps/ad/coin/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/duapps/ad/coin/a;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Lcom/duapps/ad/coin/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a(Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;

    move-result-object v0

    iget v2, v0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/duapps/ad/coin/CoinManager;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/duapps/ad/coin/a;->b(Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CoinManager"

    const-string v2, "query coin error: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, -0x3

    iput v0, v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    sget-object v0, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Query:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/coin/CoinManager;->a(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v6

    goto/16 :goto_0

    :cond_3
    :try_start_5
    sget-object v2, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Query:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-virtual {p0, v2}, Lcom/duapps/ad/coin/CoinManager;->a(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static {v1}, Lcom/duapps/ad/coin/a;->b(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/base/r;->h(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;Z)V

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;Z)V

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p1, v2, v3}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;J)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;

    const/4 v0, 0x0

    invoke-direct {v6, p1, p2, v0}, Lcom/duapps/ad/coin/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/coin/b;)V

    iput-object p1, v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;->e:Ljava/lang/String;

    iput-object p2, v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    invoke-virtual {p0}, Lcom/duapps/ad/coin/CoinManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x4

    iput v0, v6, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    sget-object v0, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Increase:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/coin/CoinManager;->a(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tk"

    iget-object v2, p0, Lcom/duapps/ad/coin/CoinManager;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "http"

    sget-object v1, Lcom/duapps/ad/coin/a;->c:Ljava/lang/String;

    sget v2, Lcom/duapps/ad/coin/a;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/duapps/ad/coin/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/integral/increase"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ac"

    iget-object v3, p0, Lcom/duapps/ad/coin/CoinManager;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tk"

    iget-object v3, p0, Lcom/duapps/ad/coin/CoinManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/duapps/ad/coin/CoinManager;->e:Lcom/duapps/ad/coin/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/duapps/ad/coin/a;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Lcom/duapps/ad/coin/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a(Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    :try_start_3
    invoke-virtual {v0}, Lcom/duapps/ad/coin/CoinManager$RequestResult;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/duapps/ad/coin/CoinManager;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-static {v2}, Lcom/duapps/ad/coin/a;->b(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_5
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CoinManager"

    const-string v3, "gain coin error: "

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    sget-object v1, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Increase:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-virtual {p0, v1}, Lcom/duapps/ad/coin/CoinManager;->a(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_6
    sget-object v1, Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;->Increase:Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;

    invoke-virtual {p0, v1}, Lcom/duapps/ad/coin/CoinManager;->a(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_3
    :try_start_7
    invoke-static {v2}, Lcom/duapps/ad/coin/a;->b(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
