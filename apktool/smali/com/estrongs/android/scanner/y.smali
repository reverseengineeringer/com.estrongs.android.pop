.class public abstract Lcom/estrongs/android/scanner/y;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Z

.field private volatile c:Z

.field private final d:Z

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/CyclicBarrier;

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/estrongs/android/scanner/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private i:[Lcom/estrongs/android/scanner/c/g;

.field private j:Lcom/estrongs/android/scanner/c/g;

.field private k:Lcom/estrongs/android/scanner/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/scanner/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/scanner/y;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/estrongs/android/scanner/y;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/y;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->f:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/y;Lcom/estrongs/android/scanner/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/y;->d(Lcom/estrongs/android/scanner/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/scanner/y;->c:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/scanner/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/estrongs/android/scanner/a/f;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/y;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/y;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/scanner/y;->b:Z

    return p1
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/scanner/y;->a:Ljava/lang/String;

    const-string v2, "start processing..."

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/y;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/scanner/y;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/y;->c:Z

    new-instance v1, Lcom/estrongs/android/scanner/am;

    const-string v2, "Disk Scanner Handler"

    invoke-direct {v1, v2}, Lcom/estrongs/android/scanner/am;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/scanner/y;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v1, p0, Lcom/estrongs/android/scanner/y;->f:Ljava/util/concurrent/CyclicBarrier;

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/scanner/y;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/estrongs/android/scanner/z;

    invoke-direct {v3, p0}, Lcom/estrongs/android/scanner/z;-><init>(Lcom/estrongs/android/scanner/y;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/estrongs/android/scanner/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/y;->d(Lcom/estrongs/android/scanner/a/f;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/y;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/scanner/y;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/y;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->h:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private d(Lcom/estrongs/android/scanner/a/f;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/f;)V

    goto :goto_1
.end method

.method private final d()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/scanner/y;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processor Tracer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/scanner/y;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/scanner/y;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/estrongs/android/scanner/y;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/scanner/y;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/scanner/y;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/estrongs/android/scanner/y;->a:Ljava/lang/String;

    const-string v2, "check the processor finished!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/y;->h:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/estrongs/android/scanner/y;->b:Z

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/scanner/y;->b:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/scanner/y;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;
    .locals 4

    iget-object v2, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/scanner/c/g;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;
    .locals 4

    iget-object v2, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-interface {v0, p1, p2}, Lcom/estrongs/android/scanner/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/scanner/a/a;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/a;)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/a;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/estrongs/android/scanner/a/f;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/y;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/y;->b(Lcom/estrongs/android/scanner/a/f;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/y;->c(Lcom/estrongs/android/scanner/a/f;)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/scanner/a/g;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, p1}, Lcom/estrongs/android/scanner/c/g;->a(Lcom/estrongs/android/scanner/a/g;)V

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/scanner/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)V
    .locals 9

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/y;->a()[Lcom/estrongs/android/scanner/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v0, v0

    iget-object v4, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v5, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    new-instance v8, Lcom/estrongs/android/scanner/aa;

    invoke-direct {v8, p0, v7, v4}, Lcom/estrongs/android/scanner/aa;-><init>(Lcom/estrongs/android/scanner/y;Lcom/estrongs/android/scanner/c/g;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/android/scanner/aa;

    iget-object v5, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    invoke-direct {v0, p0, v5, v4}, Lcom/estrongs/android/scanner/aa;-><init>(Lcom/estrongs/android/scanner/y;Lcom/estrongs/android/scanner/c/g;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/scanner/aa;

    iget-object v5, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    invoke-direct {v0, p0, v5, v4}, Lcom/estrongs/android/scanner/aa;-><init>(Lcom/estrongs/android/scanner/y;Lcom/estrongs/android/scanner/c/g;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/estrongs/android/scanner/y;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms to load handler cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/y;->d:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/y;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/y;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Lcom/estrongs/android/scanner/y;->c()V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/estrongs/android/scanner/y;->i:[Lcom/estrongs/android/scanner/c/g;

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_8

    aget-object v6, v4, v0

    invoke-interface {v6, v1}, Lcom/estrongs/android/scanner/c/g;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->j:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, v1}, Lcom/estrongs/android/scanner/c/g;->a(Z)V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/scanner/y;->k:Lcom/estrongs/android/scanner/c/g;

    invoke-interface {v0, v1}, Lcom/estrongs/android/scanner/c/g;->a(Z)V

    goto :goto_1
.end method

.method protected abstract a()[Lcom/estrongs/android/scanner/c/g;
.end method
