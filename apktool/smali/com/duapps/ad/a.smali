.class public Lcom/duapps/ad/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/duapps/ad/j;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Lcom/duapps/ad/d;

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/entity/a/a",
            "<",
            "Lcom/duapps/ad/entity/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Landroid/os/HandlerThread;

.field private volatile k:Z

.field private l:I

.field private final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/duapps/ad/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    iput-object p1, p0, Lcom/duapps/ad/a;->b:Landroid/content/Context;

    iput p2, p0, Lcom/duapps/ad/a;->c:I

    iput p3, p0, Lcom/duapps/ad/a;->l:I

    invoke-direct {p0, p3}, Lcom/duapps/ad/a;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 5

    iget-object v1, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/a;->b:Landroid/content/Context;

    iget v2, p0, Lcom/duapps/ad/a;->c:I

    iget v3, p0, Lcom/duapps/ad/a;->c:I

    invoke-static {v3}, Lcom/duapps/ad/entity/a/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/duapps/ad/a;->b:Landroid/content/Context;

    iget v2, p0, Lcom/duapps/ad/a;->c:I

    iget-object v3, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v2, p1, v3, v4}, Lcom/duapps/ad/base/d;->a(Landroid/content/Context;II[Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/duapps/ad/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/base/e;->a()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duapps/ad/base/e;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/duapps/ad/a;->i:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "adRequest"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/duapps/ad/a;->j:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/duapps/ad/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/duapps/ad/a;->d:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    iget-object v5, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v0, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ne v6, v1, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-le v4, v6, :cond_2

    add-int/lit8 v0, v4, -0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    add-int/lit8 v2, v4, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    iget-object v3, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duapps/ad/entity/a/a;

    iget-wide v8, v3, Lcom/duapps/ad/entity/a/a;->d:J

    iput-wide v8, v2, Lcom/duapps/ad/entity/a/a;->d:J

    sget-object v2, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", used --> channel :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/duapps/ad/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/duapps/ad/a;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/duapps/ad/a;->i:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/duapps/ad/entity/a/a;->d:J

    add-long/2addr v0, v2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/duapps/ad/a;->a(Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_1

    :cond_1
    monitor-exit v5

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 4

    iget-object v1, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    iget-object v3, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 13

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_7

    iget-boolean v0, p0, Lcom/duapps/ad/a;->k:Z

    if-nez v0, :cond_7

    iget-object v6, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/duapps/ad/a;->k:Z

    if-eqz v1, :cond_1

    sget-object v0, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    const-string v1, "Current action has been canceled~"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_2
    monitor-exit v6

    move v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iget-wide v10, p0, Lcom/duapps/ad/a;->i:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    sget-object v1, Lcom/duapps/ad/b;->f:Lcom/duapps/ad/b;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/b;)V

    move v0, v3

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duapps/ad/entity/a/a;

    sget-object v10, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "channel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",isError:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v1, Lcom/duapps/ad/entity/a/a;->b:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v10, v1, Lcom/duapps/ad/entity/a/a;->b:Z

    if-nez v10, :cond_5

    sget-object v10, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "validCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/a;->c()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",ttl-->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/a;->c()I

    move-result v10

    if-lez v10, :cond_4

    invoke-direct {p0, v0, v8, v9}, Lcom/duapps/ad/a;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/c;

    iget-object v1, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    new-instance v2, Lcom/duapps/ad/c;

    invoke-direct {v2, v0}, Lcom/duapps/ad/c;-><init>(Lcom/duapps/ad/entity/a/c;)V

    invoke-interface {v1, v2}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/c;)V

    sget-object v0, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    const-string v1, "onAdLoaded in load method"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :cond_4
    iget-boolean v8, v1, Lcom/duapps/ad/entity/a/a;->c:Z

    if-nez v8, :cond_0

    iget-boolean v8, v1, Lcom/duapps/ad/entity/a/a;->e:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/duapps/ad/a;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/a;->a()V

    sget-object v1, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " is refreshing..."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gt v1, v3, :cond_6

    iget-object v0, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    sget-object v1, Lcom/duapps/ad/b;->b:Lcom/duapps/ad/b;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/b;)V

    move v0, v3

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0, v0}, Lcom/duapps/ad/a;->a(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    sget-object v1, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " is error and removed"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_7
    return-void

    :cond_8
    move v0, v3

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_2
.end method

.method private f()V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/duapps/ad/entity/a/a;->b:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/duapps/ad/entity/a/a;->e:Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/entity/a/a;->a()V

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

    :cond_2
    return-void
.end method

.method public a(Lcom/duapps/ad/d;)V
    .locals 6

    iput-object p1, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    iget-object v2, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    invoke-virtual {v0, v5}, Lcom/duapps/ad/entity/a/a;->a(Lcom/duapps/ad/d;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 11

    const/16 v10, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duapps/ad/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    sget-object v1, Lcom/duapps/ad/b;->a:Lcom/duapps/ad/b;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/duapps/ad/a;->k:Z

    invoke-direct {p0}, Lcom/duapps/ad/a;->d()V

    iget-object v4, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    array-length v6, v5

    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v7, v5, v3

    iget-object v0, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/duapps/ad/entity/a/a;->c()I

    move-result v8

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    const-string v9, "facebook"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v8, :cond_3

    iget-boolean v7, v0, Lcom/duapps/ad/entity/a/a;->b:Z

    if-nez v7, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duapps/ad/entity/a/a;->e:Z

    iget-object v0, p0, Lcom/duapps/ad/a;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-lez v8, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/entity/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/c;

    iget-object v7, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/d;

    new-instance v2, Lcom/duapps/ad/c;

    invoke-direct {v2, v0}, Lcom/duapps/ad/c;-><init>(Lcom/duapps/ad/entity/a/c;)V

    invoke-interface {v1, v2}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/c;)V

    sget-object v0, Lcom/duapps/ad/a;->a:Ljava/lang/String;

    const-string v1, "onAdLoaded in load method"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/duapps/ad/a;->f()V

    iget-object v0, p0, Lcom/duapps/ad/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public a([Ljava/lang/String;)V
    .locals 8

    iget-object v7, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/a;->b:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/a;->c:I

    iget v2, p0, Lcom/duapps/ad/a;->l:I

    iget-wide v4, p0, Lcom/duapps/ad/a;->i:J

    iget-object v6, p0, Lcom/duapps/ad/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/duapps/ad/base/b;->a(Landroid/content/Context;II[Ljava/lang/String;JLjava/util/concurrent/ConcurrentHashMap;)Lcom/duapps/ad/base/c;

    move-result-object v0

    monitor-exit v7

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/a;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/base/c;->a()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/a;->g:[Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lcom/duapps/ad/base/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/a;->i:J

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duapps/ad/a;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/a;->k:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/duapps/ad/a;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/duapps/ad/a;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
