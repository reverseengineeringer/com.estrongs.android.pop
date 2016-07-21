.class public final Lcom/dianxinos/dxservice/stat/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/dianxinos/dxservice/stat/b;

.field private static d:Z

.field private static e:I

.field private static f:Z


# instance fields
.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;

.field private i:Landroid/content/IntentFilter;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dianxinos/dxservice/stat/f;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/stat/f;-><init>(Lcom/dianxinos/dxservice/stat/e;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/dianxinos/dxservice/stat/g;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/stat/g;-><init>(Lcom/dianxinos/dxservice/stat/e;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->h:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/dianxinos/dxservice/stat/e;->i:Landroid/content/IntentFilter;

    iput-object v1, p0, Lcom/dianxinos/dxservice/stat/e;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    new-instance v0, Lcom/dianxinos/dxservice/stat/b;

    sget-object v1, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    const-string v2, "z"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/dxservice/stat/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    invoke-static {p1}, Lcom/dianxinos/dxservice/a/h;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/a/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/stat/e;->a:Ljava/lang/String;

    sput v3, Lcom/dianxinos/dxservice/stat/e;->e:I

    sput-boolean v3, Lcom/dianxinos/dxservice/stat/e;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/stat/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/dianxinos/dxservice/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/dxservice/stat/j;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/a;->a(Lcom/dianxinos/dxservice/stat/j;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/stat/e;->a(Lcom/dianxinos/dxservice/stat/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.AppInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success to putToDB with token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dianxinos/dxservice/stat/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Lcom/dianxinos/dxservice/a/a;->b(Lcom/dianxinos/dxservice/stat/j;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/stat/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/e;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/stat/e;Lcom/dianxinos/dxservice/stat/j;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/e;->a(Lcom/dianxinos/dxservice/stat/j;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/dianxinos/dxservice/stat/j;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/e;->b(Lcom/dianxinos/dxservice/stat/j;)Lcom/dianxinos/dxservice/stat/r;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/stat/b;->a(Lcom/dianxinos/dxservice/stat/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.AppInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success to putToDB with token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dianxinos/dxservice/stat/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.AppInfoService"

    const-string v2, "Failed to push DbAppInfo into Datebase!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/dianxinos/dxservice/stat/e;->f:Z

    return p0
.end method

.method private b(Lcom/dianxinos/dxservice/stat/j;)Lcom/dianxinos/dxservice/stat/r;
    .locals 7

    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/dianxinos/dxservice/stat/e;->e:I

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    sget v6, Lcom/dianxinos/dxservice/stat/e;->e:I

    invoke-virtual {v4, v6}, Lcom/dianxinos/dxservice/stat/b;->a(I)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}"

    sget v3, Lcom/dianxinos/dxservice/stat/e;->e:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/dianxinos/dxservice/stat/e;->e:I

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    new-instance v0, Lcom/dianxinos/dxservice/stat/r;

    sget-object v3, Lcom/dianxinos/dxservice/stat/e;->a:Ljava/lang/String;

    sget v4, Lcom/dianxinos/dxservice/stat/e;->e:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/dxservice/stat/r;-><init>(Lcom/dianxinos/dxservice/stat/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/dianxinos/dxservice/stat/e;->f:Z

    return v0
.end method

.method static synthetic e()Lcom/dianxinos/dxservice/stat/b;
    .locals 1

    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->i:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->i:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->i:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->i:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->i:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->j:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dianxinos/dxservice/stat/h;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/stat/h;-><init>(Lcom/dianxinos/dxservice/stat/e;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->j:Landroid/content/BroadcastReceiver;

    :cond_1
    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/e;->j:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/e;->i:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/e;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    const-string v3, "rt"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "al"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    invoke-virtual {v3}, Lcom/dianxinos/dxservice/stat/b;->a()I

    move-result v3

    const/16 v4, 0x5000

    if-le v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/32 v4, 0x48190800

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    sget-object v2, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/e;->j()V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private i()Z
    .locals 9

    const/4 v0, 0x0

    sget-object v1, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/dxservice/a/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.AppInfoService"

    const-string v2, "Network is unavailable!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v1, "appInfo"

    sget-object v2, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/dianxinos/dxservice/a/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/dianxinos/dxservice/stat/b;->b(I)Lcom/dianxinos/dxservice/stat/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/dxservice/stat/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "token"

    sget-object v7, Lcom/dianxinos/dxservice/stat/e;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/dianxinos/dxservice/stat/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "pu"

    invoke-direct {v7, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ci"

    invoke-direct {v5, v7, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "ap"

    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->b()[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/dianxinos/dxservice/a/f;

    sget-object v5, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    const-string v6, "DXStatisticAppInfo"

    const-string v7, "stat.AppInfoService"

    invoke-direct {v3, v5, v1, v6, v7}, Lcom/dianxinos/dxservice/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/dianxinos/dxservice/a/f;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v3, :cond_2

    const-string v3, "stat.AppInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success to reportAppInfo with maxRowId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/c;->b()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/c;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/dianxinos/dxservice/stat/b;->a(J)V

    sget-object v2, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    const-string v3, "rt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "al"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.AppInfoService"

    const-string v3, "Can not report AppInfo!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private j()V
    .locals 3

    new-instance v0, Lcom/dianxinos/dxservice/stat/j;

    sget-object v1, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    const-string v2, "beat"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/dxservice/stat/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/stat/e;->a(Lcom/dianxinos/dxservice/stat/j;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.AppInfoService"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->d(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/dianxinos/dxservice/stat/e;->d:Z

    sget-boolean v0, Lcom/dianxinos/dxservice/stat/e;->d:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "stat.AppInfoService"

    const-string v1, "Not the app to report!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->c:Lcom/dianxinos/dxservice/stat/b;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/e;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/stat/e;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "stat.AppInfoService"

    const-string v1, "Shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/e;->g()V

    sget-object v0, Lcom/dianxinos/dxservice/stat/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/e;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
