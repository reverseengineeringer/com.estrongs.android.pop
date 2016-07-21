.class Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->d:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->d:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->a()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "appsflyer-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "true"

    const-string v4, "sentSuccessfully"

    const-string v8, ""

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v4, "eventName"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v8, "appsFlyerCount"

    if-nez v1, :cond_4

    move v4, v6

    :goto_0
    invoke-static {v0, v8, v4}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v9, "counter"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v9, "iaecounter"

    const-string v10, "appsFlyerInAppEventCount"

    if-eqz v1, :cond_5

    move v1, v6

    :goto_1
    invoke-static {v0, v10, v1}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v8, "timepassedsincelastlaunch"

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->b:Z

    if-eqz v0, :cond_1

    if-ne v4, v6, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->a()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->d()V

    :cond_1
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v2, "isFirstCall"

    if-nez v0, :cond_6

    move v0, v6

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v1, "appsflyerKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v4, v7

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_1

    :cond_6
    move v0, v7

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/appsflyer/HashUtils;

    invoke-direct {v0}, Lcom/appsflyer/HashUtils;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/appsflyer/HashUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    const-string v4, "af_v"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->d:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    iget-boolean v8, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->b:Z

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->b()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v8

    if-eqz v8, :cond_8

    :goto_5
    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->c:Ljava/lang/String;

    const-string v3, "&isCachedRequest=true&timeincache="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->a()Lcom/appsflyer/cache/CacheManager;

    move-result-object v2

    new-instance v3, Lcom/appsflyer/cache/RequestCacheData;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->c:Ljava/lang/String;

    const-string v4, "3.2"

    invoke-direct {v3, v0, v1, v4}, Lcom/appsflyer/cache/RequestCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/appsflyer/cache/CacheManager;->a(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V

    goto :goto_4

    :cond_8
    move v6, v7

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :cond_9
    move v0, v7

    goto/16 :goto_2
.end method
