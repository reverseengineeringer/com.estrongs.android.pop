.class public Lcom/flurry/sdk/fd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/fd;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Lcom/flurry/sdk/fd;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/flurry/sdk/cn;)Lcom/flurry/android/AdCreative;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/flurry/sdk/cn;->b:I

    iget v2, p0, Lcom/flurry/sdk/cn;->a:I

    iget-object v3, p0, Lcom/flurry/sdk/cn;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/sdk/cn;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/sdk/cn;->e:Ljava/lang/String;

    new-instance v0, Lcom/flurry/android/AdCreative;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/AdCreative;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/co;)Lcom/flurry/android/AdCreative;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/flurry/sdk/fd;->a(Lcom/flurry/sdk/cn;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/cj;Lcom/flurry/sdk/b;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/cj;",
            "Lcom/flurry/sdk/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/flurry/sdk/cj;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cr;

    iget-object v1, v0, Lcom/flurry/sdk/cr;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/cr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/lt;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    :cond_2
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-static {v0}, Lcom/flurry/sdk/a;->c(Ljava/lang/String;)Lcom/flurry/sdk/az;

    move-result-object v0

    invoke-direct {v1, v0, v6, p1}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/az;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ay;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ay;

    new-instance v4, Lcom/flurry/sdk/de;

    invoke-direct {v4}, Lcom/flurry/sdk/de;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/flurry/sdk/de;->a:J

    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    iput-object v1, v4, Lcom/flurry/sdk/de;->b:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ax;

    invoke-virtual {v1}, Lcom/flurry/sdk/ax;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lcom/flurry/sdk/dd;

    invoke-direct {v7}, Lcom/flurry/sdk/dd;-><init>()V

    invoke-virtual {v1}, Lcom/flurry/sdk/ax;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/flurry/sdk/dd;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/sdk/ax;->c()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/flurry/sdk/dd;->c:J

    invoke-virtual {v1}, Lcom/flurry/sdk/ax;->d()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v8, v7, Lcom/flurry/sdk/dd;->b:Ljava/util/Map;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v5, v4, Lcom/flurry/sdk/de;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public static b()Lcom/flurry/sdk/dc;
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lr;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/sdk/dc;->a:Lcom/flurry/sdk/dc;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/flurry/sdk/dc;->b:Lcom/flurry/sdk/dc;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/dc;->c:Lcom/flurry/sdk/dc;

    goto :goto_0
.end method

.method public static c()Lcom/flurry/sdk/cx;
    .locals 7

    const/4 v6, 0x3

    new-instance v0, Lcom/flurry/sdk/cx;

    invoke-direct {v0}, Lcom/flurry/sdk/cx;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/jj;->a()Lcom/flurry/sdk/jj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/jj;->e()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v6}, Lcom/flurry/sdk/lt;->a(DI)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/flurry/sdk/cx;->a:F

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/lt;->a(DI)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/flurry/sdk/cx;->b:F

    :cond_0
    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ju;->c()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ck;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jf;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/flurry/sdk/ck;

    invoke-direct {v4}, Lcom/flurry/sdk/ck;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jn;

    iget v1, v1, Lcom/flurry/sdk/jn;->d:I

    iput v1, v4, Lcom/flurry/sdk/ck;->a:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jn;

    iget-boolean v1, v1, Lcom/flurry/sdk/jn;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v4, Lcom/flurry/sdk/ck;->b:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/flurry/sdk/lt;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/flurry/sdk/ck;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cu;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->b()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/be;

    new-instance v3, Lcom/flurry/sdk/cu;

    invoke-direct {v3}, Lcom/flurry/sdk/cu;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->b()Lcom/flurry/sdk/cw;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/cu;->a:Lcom/flurry/sdk/cw;

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/cu;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->e()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/cu;->d:J

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->d()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/cu;->c:J

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->k()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/cu;->e:J

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->f()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/cu;->f:J

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->j()I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/cu;->g:I

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->g()I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/cu;->h:I

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->h()I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/cu;->i:I

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->i()I

    move-result v0

    iput v0, v3, Lcom/flurry/sdk/cu;->j:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dh;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->n()Lcom/flurry/sdk/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bh;->b()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->n()Lcom/flurry/sdk/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bh;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bg;

    new-instance v3, Lcom/flurry/sdk/dh;

    invoke-direct {v3}, Lcom/flurry/sdk/dh;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/dh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/dh;->c:J

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
