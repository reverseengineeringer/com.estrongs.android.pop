.class public Lcom/flurry/sdk/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/z$b;",
            "Lcom/flurry/sdk/z$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/flurry/sdk/z$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/flurry/sdk/z$b;-><init>(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)V

    iget-object v0, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/z$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/z$a;

    invoke-direct {v0}, Lcom/flurry/sdk/z$a;-><init>()V

    new-instance v2, Lcom/flurry/sdk/dr;

    invoke-direct {v2, p1}, Lcom/flurry/sdk/dr;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/flurry/sdk/z$a;->a(Lcom/flurry/sdk/z$a;Lcom/flurry/sdk/dr;)Lcom/flurry/sdk/dr;

    new-instance v2, Lcom/flurry/sdk/y;

    invoke-direct {v2, p1}, Lcom/flurry/sdk/y;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/flurry/sdk/z$a;->a(Lcom/flurry/sdk/z$a;Lcom/flurry/sdk/y;)Lcom/flurry/sdk/y;

    iget-object v2, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/z$a;

    invoke-static {v0}, Lcom/flurry/sdk/z$a;->a(Lcom/flurry/sdk/z$a;)Lcom/flurry/sdk/dr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/dr;->a()V

    invoke-static {v0}, Lcom/flurry/sdk/z$a;->b(Lcom/flurry/sdk/z$a;)Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
