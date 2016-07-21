.class public Lcom/dianxinos/library/notify/dispatcher/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dianxinos/library/notify/dispatcher/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/dispatcher/s;

    monitor-exit v2

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/s;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/dianxinos/library/notify/dispatcher/s;->c:I

    if-ne p1, v2, :cond_3

    iget-object v0, v0, Lcom/dianxinos/library/notify/dispatcher/s;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/s;-><init>(Lcom/dianxinos/library/notify/dispatcher/r;)V

    iput-object p0, v0, Lcom/dianxinos/library/notify/dispatcher/s;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/dianxinos/library/notify/dispatcher/s;->b:Ljava/lang/String;

    iput p2, v0, Lcom/dianxinos/library/notify/dispatcher/s;->c:I

    sget-object v1, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/dispatcher/s;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/s;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/dianxinos/library/notify/dispatcher/s;->c:I

    if-ne v0, p1, :cond_1

    sget-object v0, Lcom/dianxinos/library/notify/dispatcher/q;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
