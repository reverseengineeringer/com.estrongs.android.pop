.class public Lcom/estrongs/android/pop/utils/cv;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ThreadPoolExecutor;

.field c:Lcom/estrongs/android/pop/utils/ct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/utils/ct",
            "<",
            "Lcom/estrongs/android/pop/utils/dc;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Runnable;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/pop/utils/cz;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Lcom/estrongs/android/pop/utils/ct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/utils/ct",
            "<",
            "Lcom/estrongs/android/pop/utils/db;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/estrongs/android/pop/utils/da;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/android/pop/utils/cv;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lcom/estrongs/android/pop/utils/cv;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    iput v1, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    iput v1, p0, Lcom/estrongs/android/pop/utils/cv;->h:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/utils/cv;->i:Z

    new-instance v0, Lcom/estrongs/android/pop/utils/ct;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/utils/ct;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->j:Lcom/estrongs/android/pop/utils/ct;

    new-instance v0, Lcom/estrongs/android/pop/utils/ct;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/utils/ct;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->c:Lcom/estrongs/android/pop/utils/ct;

    new-instance v0, Lcom/estrongs/android/pop/utils/cw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/utils/cw;-><init>(Lcom/estrongs/android/pop/utils/cv;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->k:Lcom/estrongs/android/pop/utils/da;

    new-instance v0, Lcom/estrongs/android/pop/utils/cx;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/utils/cx;-><init>(Lcom/estrongs/android/pop/utils/cv;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/utils/cv;->a(III)V

    return-void
.end method

.method private a()Lcom/estrongs/android/pop/utils/cz;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/utils/cz;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->a()Lcom/estrongs/android/pop/utils/cz;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/cv;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/cv;Lcom/estrongs/android/pop/utils/db;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/cv;->a(Lcom/estrongs/android/pop/utils/db;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/estrongs/android/pop/utils/db;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->j:Lcom/estrongs/android/pop/utils/ct;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/utils/ct;->a(Ljava/lang/Object;)V

    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    iget v1, p0, Lcom/estrongs/android/pop/utils/cv;->f:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Lcom/estrongs/android/pop/utils/cz;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->a()Lcom/estrongs/android/pop/utils/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/estrongs/android/pop/utils/cv;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/estrongs/android/pop/utils/cv;->h:I

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/utils/cv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/cv;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/utils/cv;)Lcom/estrongs/android/pop/utils/cz;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->b()Lcom/estrongs/android/pop/utils/cz;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/utils/cv;)Lcom/estrongs/android/pop/utils/da;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->k:Lcom/estrongs/android/pop/utils/da;

    return-object v0
.end method

.method private d()Lcom/estrongs/android/pop/utils/db;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->j:Lcom/estrongs/android/pop/utils/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/utils/ct;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/db;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/utils/db;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/utils/db;-><init>(Lcom/estrongs/android/pop/utils/cv;)V

    :cond_0
    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/utils/cv;)Lcom/estrongs/android/pop/utils/dc;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->f()Lcom/estrongs/android/pop/utils/dc;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    iget v1, p0, Lcom/estrongs/android/pop/utils/cv;->f:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/utils/cv;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->d()Lcom/estrongs/android/pop/utils/db;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/cv;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/utils/cv;->a(Lcom/estrongs/android/pop/utils/db;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private f()Lcom/estrongs/android/pop/utils/dc;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->c:Lcom/estrongs/android/pop/utils/ct;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->c:Lcom/estrongs/android/pop/utils/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/utils/ct;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/utils/dc;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/utils/dc;-><init>(Lcom/estrongs/android/pop/utils/cv;Lcom/estrongs/android/pop/utils/cw;)V

    goto :goto_0
.end method


# virtual methods
.method a(III)V
    .locals 9

    iput p2, p0, Lcom/estrongs/android/pop/utils/cv;->f:I

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/estrongs/android/pop/utils/cv;->f:I

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/estrongs/android/pop/utils/cv;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/estrongs/android/pop/utils/cy;

    invoke-direct {v8, p3}, Lcom/estrongs/android/pop/utils/cy;-><init>(I)V

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/utils/cv;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/utils/cz;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/estrongs/android/pop/utils/cv;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/utils/cv;->h:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cv;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
