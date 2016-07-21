.class Lcom/dianxinos/library/notify/network/o;
.super Lcom/dianxinos/library/notify/network/n;


# static fields
.field private static final a:Z


# instance fields
.field private b:Lcom/dianxinos/library/notify/network/l;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/dianxinos/library/notify/network/d;

.field private g:Ljava/io/File;

.field private h:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/dianxinos/library/notify/network/RequestBase;",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/library/notify/network/o;->a:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    const-wide/16 v4, 0x3c

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/n;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->b:Lcom/dianxinos/library/notify/network/l;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->c:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->d:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->e:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->g:Ljava/io/File;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->h:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/dianxinos/library/notify/network/p;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/network/p;-><init>(Lcom/dianxinos/library/notify/network/o;)V

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->i:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Lcom/dianxinos/library/notify/network/c;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/c;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->b:Lcom/dianxinos/library/notify/network/l;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const-string v0, "network-priority-pool"

    invoke-direct {p0, v0, v3}, Lcom/dianxinos/library/notify/network/o;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    iget-object v9, p0, Lcom/dianxinos/library/notify/network/o;->i:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/o;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const-string v0, "network-get-pool"

    invoke-direct {p0, v0, v2}, Lcom/dianxinos/library/notify/network/o;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    iget-object v9, p0, Lcom/dianxinos/library/notify/network/o;->i:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/o;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const-string v0, "network-post-pool"

    invoke-direct {p0, v0, v2}, Lcom/dianxinos/library/notify/network/o;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    iget-object v9, p0, Lcom/dianxinos/library/notify/network/o;->i:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/o;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/network/o;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/library/notify/network/o;Lcom/dianxinos/library/notify/network/d;)Lcom/dianxinos/library/notify/network/d;
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    return-object p1
.end method

.method static synthetic a(Lcom/dianxinos/library/notify/network/o;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->g:Ljava/io/File;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/dianxinos/library/notify/network/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/dianxinos/library/notify/network/r;-><init>(Lcom/dianxinos/library/notify/network/o;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/library/notify/network/o;)Lcom/dianxinos/library/notify/network/l;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->b:Lcom/dianxinos/library/notify/network/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/d;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x1e

    if-ge v1, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/dianxinos/library/notify/network/o;->g:Ljava/io/File;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->g:Ljava/io/File;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v0, Lcom/dianxinos/library/notify/network/o;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait for cache service: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/dianxinos/library/notify/network/RequestBase;)V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/o;->h:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/network/RequestBase;->b:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->h:Ljava/util/WeakHashMap;

    iget-object v2, p1, Lcom/dianxinos/library/notify/network/RequestBase;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public declared-synchronized a(Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJIII)V
    .locals 15

    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    if-ltz p8, :cond_0

    if-gez p8, :cond_1

    :cond_0
    const-string v2, "bad parameters"

    invoke-static {v2}, Lcom/dianxinos/library/dxbase/j;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    and-int/lit8 v2, p7, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v14, v2

    :goto_1
    :try_start_1
    new-instance v2, Lcom/dianxinos/library/notify/network/t;

    iget-object v13, p0, Lcom/dianxinos/library/notify/network/o;->b:Lcom/dianxinos/library/notify/network/l;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v2 .. v13}, Lcom/dianxinos/library/notify/network/t;-><init>(Lcom/dianxinos/library/notify/network/n;Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJIIILcom/dianxinos/library/notify/network/l;)V

    and-int/lit8 v3, p7, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/dianxinos/library/dxbase/o;->a()V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/dianxinos/library/notify/network/k;->a(Ljava/util/concurrent/Future;)V

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/network/RequestBase;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    const/4 v2, 0x0

    move v14, v2

    goto :goto_1

    :cond_3
    if-eqz p7, :cond_4

    const/16 v3, 0x40

    move/from16 v0, p7

    if-ne v0, v3, :cond_6

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-gtz v3, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-gez v3, :cond_6

    :try_start_2
    iget-object v4, p0, Lcom/dianxinos/library/notify/network/o;->h:Ljava/util/WeakHashMap;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/dianxinos/library/notify/network/o;->h:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_5

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/dianxinos/library/notify/network/RequestBase;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Lcom/dianxinos/library/notify/network/k;)V

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Future;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/dianxinos/library/notify/network/k;->a(Ljava/util/concurrent/Future;)V

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    if-eqz v14, :cond_7

    :try_start_6
    iget-object v3, p0, Lcom/dianxinos/library/notify/network/o;->b:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v3}, Lcom/dianxinos/library/notify/network/l;->i()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/o;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/dianxinos/library/notify/network/u;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/dianxinos/library/notify/network/u;-><init>(Ljava/lang/Runnable;Z)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submitting high priority GET task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcom/dianxinos/library/notify/network/o;->h:Ljava/util/WeakHashMap;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v5, p0, Lcom/dianxinos/library/notify/network/o;->h:Ljava/util/WeakHashMap;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/dianxinos/library/notify/network/k;->a(Ljava/util/concurrent/Future;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/dianxinos/library/notify/network/o;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/dianxinos/library/notify/network/u;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/dianxinos/library/notify/network/u;-><init>(Ljava/lang/Runnable;Z)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/network/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->g:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/network/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->f:Lcom/dianxinos/library/notify/network/d;

    :cond_0
    new-instance v0, Lcom/dianxinos/library/notify/network/q;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/network/q;-><init>(Lcom/dianxinos/library/notify/network/o;)V

    invoke-static {v0}, Lcom/dianxinos/library/notify/network/v;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    const-string v0, "network"

    invoke-static {v0}, Lcom/dianxinos/library/notify/f/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/o;->g:Ljava/io/File;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
