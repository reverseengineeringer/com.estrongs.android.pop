.class public Lcom/dianxinos/library/notify/c/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dianxinos/library/notify/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dianxinos/library/notify/c/c;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/c/c;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/dianxinos/library/notify/c/b;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/c/b;-><init>()V

    invoke-interface {v0}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dianxinos/library/notify/c/g;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/c/c;)Z

    new-instance v0, Lcom/dianxinos/library/notify/c/d;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/c/d;-><init>()V

    invoke-interface {v0}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dianxinos/library/notify/c/g;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/c/c;)Z

    new-instance v0, Lcom/dianxinos/library/notify/c/h;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/c/h;-><init>()V

    invoke-interface {v0}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dianxinos/library/notify/c/g;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/c/c;)Z

    new-instance v0, Lcom/dianxinos/library/notify/c/f;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/c/f;-><init>()V

    invoke-interface {v0}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dianxinos/library/notify/c/g;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/c/c;)Z

    new-instance v0, Lcom/dianxinos/library/notify/c/a;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/c/a;-><init>()V

    invoke-interface {v0}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dianxinos/library/notify/c/g;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/c/c;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/dianxinos/library/notify/c/c;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/dianxinos/library/notify/c/g;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/dianxinos/library/notify/c/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
