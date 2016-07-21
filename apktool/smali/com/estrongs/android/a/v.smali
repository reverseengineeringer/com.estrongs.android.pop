.class public Lcom/estrongs/android/a/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/estrongs/android/a/am;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Lcom/estrongs/android/a/j;

.field private final l:Lcom/estrongs/android/a/al;

.field private final m:Ljava/util/concurrent/CyclicBarrier;

.field private n:Ljava/util/concurrent/CyclicBarrier;

.field private o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private final p:[Lcom/estrongs/android/a/a/e;

.field private final q:[Lcom/estrongs/android/a/a/k;

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/a/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/a/j;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/a/w;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/w;-><init>(Lcom/estrongs/android/a/v;)V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->r:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/estrongs/android/a/v;->k:Lcom/estrongs/android/a/j;

    new-instance v0, Lcom/estrongs/android/a/al;

    invoke-direct {v0}, Lcom/estrongs/android/a/al;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->l:Lcom/estrongs/android/a/al;

    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->m:Ljava/util/concurrent/CyclicBarrier;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/estrongs/android/a/a/e;

    iput-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/estrongs/android/a/a/k;

    iput-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    return-void
.end method

.method private a(Lcom/estrongs/android/a/ai;)Lcom/estrongs/android/a/b/q;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    array-length v3, v2

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/a/e;->c(Lcom/estrongs/android/a/ai;)Lcom/estrongs/android/a/b/q;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/v;->m:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/a/am;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/a/am;->d()[Lcom/estrongs/android/a/ak;

    move-result-object v4

    invoke-virtual {p1}, Lcom/estrongs/android/a/am;->e()[Lcom/estrongs/android/a/aj;

    move-result-object v5

    array-length v0, v4

    new-array v2, v0, [Lcom/estrongs/android/a/b/l;

    array-length v0, v5

    new-array v3, v0, [Lcom/estrongs/android/a/b/k;

    move v1, v8

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    aget-object v0, v4, v1

    invoke-direct {p0, v0}, Lcom/estrongs/android/a/v;->a(Lcom/estrongs/android/a/ai;)Lcom/estrongs/android/a/b/q;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/l;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_1

    aget-object v0, v5, v1

    invoke-direct {p0, v0}, Lcom/estrongs/android/a/v;->a(Lcom/estrongs/android/a/ai;)Lcom/estrongs/android/a/b/q;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/k;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/estrongs/android/a/a;

    invoke-virtual {p1}, Lcom/estrongs/android/a/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/a/am;->b()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/estrongs/android/a/am;->c()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/a/a;-><init>(Ljava/lang/String;[Lcom/estrongs/android/a/b/l;[Lcom/estrongs/android/a/b/k;JJ)V

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    array-length v2, v1

    :goto_2
    if-ge v8, v2, :cond_2

    aget-object v3, v1, v8

    invoke-virtual {v3, v0}, Lcom/estrongs/android/a/a/k;->a(Lcom/estrongs/android/a/a;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/a/v;Lcom/estrongs/android/a/am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/a/v;->a(Lcom/estrongs/android/a/am;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/a/v;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/a/v;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v2, v12

    if-nez v2, :cond_1

    new-instance v2, Lcom/estrongs/android/a/am;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/a/am;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    array-length v2, v12

    new-array v13, v2, [Ljava/io/File;

    array-length v2, v12

    new-array v14, v2, [Ljava/io/File;

    array-length v15, v12

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-ge v9, v15, :cond_5

    aget-object v3, v12, v9

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/a/v;->l:Lcom/estrongs/android/a/al;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/estrongs/android/a/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ignore: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v10, 0x1

    move v3, v11

    move v4, v5

    move v5, v8

    :goto_2
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v10, v2

    move v11, v3

    move v8, v5

    move v5, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v5, 0x1

    aput-object v3, v13, v5

    move v3, v11

    move v4, v2

    move v5, v8

    move v2, v10

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/a/v;->l:Lcom/estrongs/android/a/al;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/estrongs/android/a/al;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    move v3, v2

    move v4, v5

    move v2, v10

    move v5, v8

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v8, 0x1

    aput-object v3, v14, v8

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v6, v6, v16

    move v3, v11

    move v4, v5

    move v5, v2

    move v2, v10

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Lcom/estrongs/android/a/ak;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/a/v;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    aget-object v12, v13, v2

    invoke-interface {v9, v12}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    new-instance v9, Lcom/estrongs/android/a/ak;

    aget-object v12, v13, v2

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/estrongs/android/a/ak;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-array v5, v8, [Lcom/estrongs/android/a/aj;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_7

    new-instance v9, Lcom/estrongs/android/a/aj;

    aget-object v12, v14, v2

    invoke-direct {v9, v3, v12}, Lcom/estrongs/android/a/aj;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v9, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    new-instance v2, Lcom/estrongs/android/a/am;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/estrongs/android/a/am;-><init>(Ljava/lang/String;[Lcom/estrongs/android/a/ak;[Lcom/estrongs/android/a/aj;JJ)V

    invoke-virtual {v2, v11, v10}, Lcom/estrongs/android/a/am;->a(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/a/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/v;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/a/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/a/v;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/a/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/v;->h:Z

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/a/v;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/a/v;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/a/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/v;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private final d()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/a/v;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v2, "check the scanner finished!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/v;->f:Z

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/a/v;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/estrongs/android/a/am;

    invoke-direct {v3}, Lcom/estrongs/android/a/am;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v1, "prepare for scanning..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v4, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no exist path!: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/v;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/v;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v2, "start annalyze..."

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/a/v;->g:Z

    iput-boolean v0, p0, Lcom/estrongs/android/a/v;->h:Z

    new-instance v1, Lcom/estrongs/android/a/y;

    const-string v2, "Disk Analyzer"

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/a/y;-><init>(Lcom/estrongs/android/a/v;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/a/v;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v1, p0, Lcom/estrongs/android/a/v;->n:Ljava/util/concurrent/CyclicBarrier;

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/v;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/estrongs/android/a/x;

    invoke-direct {v3, p0}, Lcom/estrongs/android/a/x;-><init>(Lcom/estrongs/android/a/v;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v2, "buildDiskAnalysis!!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/a/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    new-instance v2, Lcom/estrongs/android/a/a/aa;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/aa;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    new-instance v2, Lcom/estrongs/android/a/a/r;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/r;-><init>()V

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    new-instance v2, Lcom/estrongs/android/a/a/ad;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/ad;-><init>()V

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    new-instance v2, Lcom/estrongs/android/a/a/p;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/p;-><init>()V

    aput-object v2, v1, v7

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    new-instance v2, Lcom/estrongs/android/a/a/d;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/d;-><init>()V

    aput-object v2, v1, v8

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v2, 0x5

    new-instance v3, Lcom/estrongs/android/a/a/h;

    iget-object v4, p0, Lcom/estrongs/android/a/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v4}, Lcom/estrongs/android/a/a/h;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v2, 0x6

    new-instance v3, Lcom/estrongs/android/a/a/a;

    invoke-direct {v3}, Lcom/estrongs/android/a/a/a;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v2, 0x7

    new-instance v3, Lcom/estrongs/android/a/a/j;

    invoke-direct {v3}, Lcom/estrongs/android/a/a/j;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    new-instance v2, Lcom/estrongs/android/a/a/ab;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/ab;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    new-instance v2, Lcom/estrongs/android/a/a/c;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/c;-><init>()V

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    new-instance v2, Lcom/estrongs/android/a/a/i;

    iget-object v3, p0, Lcom/estrongs/android/a/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v3}, Lcom/estrongs/android/a/a/i;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    aput-object v2, v1, v7

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    new-instance v2, Lcom/estrongs/android/a/a/s;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/s;-><init>()V

    aput-object v2, v1, v8

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v2, 0x5

    new-instance v3, Lcom/estrongs/android/a/a/v;

    invoke-direct {v3, v0}, Lcom/estrongs/android/a/a/v;-><init>(I)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    new-instance v2, Lcom/estrongs/android/a/a/u;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/u;-><init>()V

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/estrongs/android/a/a/e;->a()V

    invoke-virtual {v4, p1}, Lcom/estrongs/android/a/a/e;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-nez v3, :cond_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/estrongs/android/a/a/k;->c_()V

    invoke-virtual {v3, p1}, Lcom/estrongs/android/a/a/k;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/v;->n:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method private final f()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/estrongs/android/a/v;->h:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Tracer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/a/v;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Analyze Tracer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/estrongs/android/a/v;->h:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v2, "check the analyzer finished!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/estrongs/android/a/v;->g:Z

    if-nez v2, :cond_2

    monitor-exit v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/a/v;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/estrongs/android/a/v;->g()V

    iget-object v1, p0, Lcom/estrongs/android/a/v;->k:Lcom/estrongs/android/a/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/v;->k:Lcom/estrongs/android/a/j;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v4}, Lcom/estrongs/android/a/a/o;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/estrongs/android/a/a/o;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/a/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/a/v;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/a/v;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/a/v;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/estrongs/android/a/z;->a(Ljava/lang/String;Lcom/estrongs/android/a/a/k;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0, p2}, Lcom/estrongs/android/a/z;->a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v1, "cancel..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/v;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/a/v;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/a/v;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/a/v;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/a/v;->d:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/v;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/a/v;->g:Z

    iget-object v0, p0, Lcom/estrongs/android/a/v;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/a/v;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/a/v;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/a/v;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/estrongs/android/a/v;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/a/v;->f:Z

    invoke-direct {p0, p1}, Lcom/estrongs/android/a/v;->d(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v1, "fail to prepare for scanning..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/v;->k:Lcom/estrongs/android/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/v;->k:Lcom/estrongs/android/a/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/a/v;->e(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/estrongs/android/a/v;->e()V

    new-instance v1, Lcom/estrongs/android/a/y;

    const-string v2, "Disk Scanner"

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/a/y;-><init>(Lcom/estrongs/android/a/v;Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    const-string v3, "start scan..."

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/a/v;->d:Ljava/util/concurrent/ExecutorService;

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/v;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/estrongs/android/a/v;->r:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/estrongs/android/a/b/a;
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Lcom/estrongs/android/a/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/i;->d()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->h()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->b()I

    move-result v8

    add-int/2addr v3, v8

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->c()I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->d()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    return-object v0
.end method

.method public b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0, p2}, Lcom/estrongs/android/a/z;->a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/estrongs/android/a/a/v;

    invoke-static {p1, v0}, Lcom/estrongs/android/a/z;->a(Ljava/lang/String;Lcom/estrongs/android/a/a/v;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p1}, Lcom/estrongs/android/a/a/k;->b(Ljava/util/List;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/estrongs/android/a/z;->a(Ljava/lang/String;Lcom/estrongs/android/a/a/k;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0, p2}, Lcom/estrongs/android/a/z;->a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/estrongs/android/a/a/i;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/a/i;->b(Ljava/util/List;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/estrongs/android/a/z;->a(Ljava/lang/String;Lcom/estrongs/android/a/a/k;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p2}, Lcom/estrongs/android/a/z;->a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x2

    const-wide/16 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/k;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    if-ge v6, v10, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/estrongs/android/a/b/k;

    invoke-virtual {v3}, Lcom/estrongs/android/a/b/k;->a()Lcom/estrongs/fs/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v8

    add-long/2addr v4, v8

    move v6, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Lcom/estrongs/android/a/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v6

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    if-ge v3, v10, :cond_2

    check-cast v0, Lcom/estrongs/android/a/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/l;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/estrongs/android/a/b/m;
    .locals 14

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/k;->e()Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v4, v6

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v12

    add-long/2addr v4, v12

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v12

    cmp-long v11, v12, v6

    if-nez v11, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->f_()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".log"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Lcom/estrongs/android/a/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/i;->c()Ljava/util/List;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "log://"

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tmp://"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "emptyfile://"

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "emptyfolder://"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/a/b/m;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    :goto_3
    return-object v0

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Lcom/estrongs/android/a/b/p;

    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/a/k;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v4, v6

    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-class v0, Lcom/estrongs/android/a/b/o;

    goto :goto_4

    :cond_9
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Lcom/estrongs/android/a/b/w;

    goto :goto_4

    :cond_a
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Lcom/estrongs/android/a/b/e;

    goto :goto_4

    :cond_b
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-class v0, Lcom/estrongs/android/a/b/b;

    goto :goto_4

    :cond_c
    new-instance v0, Lcom/estrongs/android/a/b/m;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    goto :goto_3

    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/a/b/m;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    goto :goto_3
.end method

.method public f(Ljava/lang/String;)Lcom/estrongs/android/a/b/g;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/a/v;->q:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/estrongs/android/a/a/i;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/a/i;->a(Ljava/lang/String;)Lcom/estrongs/android/a/b/i;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/a/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "root:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->e_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/g;

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 10

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    aget-object v0, v0, v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    new-instance v1, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/e;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/e;->d()I

    move-result v3

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/e;->e()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/estrongs/android/a/b/a;-><init>(IIJ)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    aget-object v5, v0, v1

    iget-object v6, p0, Lcom/estrongs/android/a/v;->p:[Lcom/estrongs/android/a/a/e;

    array-length v7, v6

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v2

    :goto_2
    if-ge v4, v7, :cond_6

    aget-object v8, v6, v4

    if-ne v5, v8, :cond_5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Lcom/estrongs/android/a/a/e;->e()J

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/a/q;->g(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_7

    move-wide v0, v2

    :goto_4
    new-instance v2, Lcom/estrongs/android/a/b/a;

    invoke-direct {v2, v0, v1}, Lcom/estrongs/android/a/b/a;-><init>(J)V

    move-object v0, v2

    goto :goto_1

    :cond_7
    sub-long v0, v4, v0

    goto :goto_4
.end method
