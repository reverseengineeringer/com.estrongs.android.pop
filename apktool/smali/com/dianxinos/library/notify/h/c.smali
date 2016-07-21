.class public Lcom/dianxinos/library/notify/h/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/library/notify/h/c;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dianxinos/library/notify/data/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dianxinos/library/notify/data/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/dianxinos/library/notify/data/j;

.field private f:Lcom/dianxinos/library/notify/data/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    new-instance v0, Lcom/dianxinos/library/notify/data/j;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/j;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/h/c;->e:Lcom/dianxinos/library/notify/data/j;

    new-instance v0, Lcom/dianxinos/library/notify/data/b;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/b;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/h/c;->f:Lcom/dianxinos/library/notify/data/b;

    return-void
.end method

.method public static declared-synchronized a()Lcom/dianxinos/library/notify/h/c;
    .locals 2

    const-class v1, Lcom/dianxinos/library/notify/h/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/h/c;->a:Lcom/dianxinos/library/notify/h/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/h/c;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/h/c;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/h/c;->a:Lcom/dianxinos/library/notify/h/c;

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/h/c;->a:Lcom/dianxinos/library/notify/h/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->b(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/b;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->g(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dianxinos/library/notify/data/b;)Lcom/dianxinos/library/notify/data/b;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/dianxinos/library/notify/data/b;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    iget-object v2, p1, Lcom/dianxinos/library/notify/data/b;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/b;

    :cond_0
    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/dianxinos/library/notify/data/b;->b:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/dianxinos/library/notify/data/j;)Lcom/dianxinos/library/notify/data/j;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    :cond_0
    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v3, p0, Lcom/dianxinos/library/notify/h/c;->e:Lcom/dianxinos/library/notify/data/j;

    if-ne v0, v3, :cond_0

    monitor-exit v1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

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

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/h/c;->e(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->e:Lcom/dianxinos/library/notify/data/j;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->e:Lcom/dianxinos/library/notify/data/j;

    if-eq v0, v1, :cond_3

    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/b;

    iget-object v3, p0, Lcom/dianxinos/library/notify/h/c;->f:Lcom/dianxinos/library/notify/data/b;

    if-ne v0, v3, :cond_0

    monitor-exit v1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/b;->d:Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/h/c;->f(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/b;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->f:Lcom/dianxinos/library/notify/data/b;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->f:Lcom/dianxinos/library/notify/data/b;

    if-eq v1, v0, :cond_2

    iget-object v0, v1, Lcom/dianxinos/library/notify/data/b;->d:Ljava/lang/String;

    :goto_3
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/library/notify/data/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-object v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    const-string v4, "open"

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "rcmapk"

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "uninstall"

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/dianxinos/library/notify/data/j;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    iget-object v2, p1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/dianxinos/library/notify/h/c;->e:Lcom/dianxinos/library/notify/data/j;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/library/notify/data/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-object v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    const-string v4, "pandoraapk"

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "pandorajar"

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/library/notify/data/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    const-string v4, "splash"

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/dianxinos/library/notify/h/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
