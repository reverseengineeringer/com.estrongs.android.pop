.class public final Lcom/dianxinos/dxservice/a/h;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/dianxinos/dxservice/a/h;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/dxservice/a/h;->e:Lcom/dianxinos/dxservice/a/h;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dianxinos/dxservice/a/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/dxservice/a/h;->d:Ljava/lang/Object;

    new-instance v0, Lcom/dianxinos/dxservice/a/i;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/a/i;-><init>(Lcom/dianxinos/dxservice/a/h;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/a/h;->f:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dianxinos/dxservice/a/h;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/dxservice/a/h;
    .locals 2

    const-class v1, Lcom/dianxinos/dxservice/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/a/h;->e:Lcom/dianxinos/dxservice/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/dxservice/a/h;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/a/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/dxservice/a/h;->e:Lcom/dianxinos/dxservice/a/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/dianxinos/dxservice/a/h;->e:Lcom/dianxinos/dxservice/a/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/a/h;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/a/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.TokenUtils"

    const-string v1, "Enter reportToken()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v0, "token"

    iget-object v1, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/a/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/g;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "stat.TokenUtils"

    const-string v3, "Can not report the token."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v1, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "pu"

    invoke-direct {v6, v7, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "ci"

    invoke-direct {v1, v6, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "hw"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->b()[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dianxinos/dxservice/a/f;

    iget-object v4, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    const-string v5, "DXCoreServiceToken"

    const-string v6, "stat.TokenUtils"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/dianxinos/dxservice/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/a/f;->a(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/dianxinos/dxservice/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/dianxinos/dxservice/a/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/dxservice/a/h;->e()V

    return-void
.end method

.method private d()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    const-string v1, "utils"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "st"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    const-string v1, "rt"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x48190800

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iput-boolean v4, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/DXStatService/stat/TokenManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/a/h;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "stat.TokenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/dxservice/a/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->a:Landroid/content/Context;

    const-string v1, "utils"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "st"

    iget-boolean v2, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "rt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/dianxinos/dxservice/a/h;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/dianxinos/dxservice/a/h;->c:Z

    invoke-direct {p0}, Lcom/dianxinos/dxservice/a/h;->e()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
