.class public Lcom/estrongs/android/a/a/v;
.super Lcom/estrongs/android/a/a/k;


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/estrongs/android/a/b/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/estrongs/android/a/b/r;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/r;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/estrongs/android/a/a/f;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/CountDownLatch;

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:I

.field private i:J

.field private j:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/a/a/k;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/a/v;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/a/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/estrongs/android/a/a/f;

    invoke-direct {v0, p1}, Lcom/estrongs/android/a/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-static {}, Lcom/estrongs/android/a/b/r;->i()Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/a/v;->a:Ljava/lang/ThreadLocal;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/a/a/v;->j:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/a/a/v;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/a/v;->j:I

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/a/a/v;)Lcom/estrongs/android/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/a/a/v;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private c(Lcom/estrongs/android/a/b/q;)V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/a/a/v;->a(Lcom/estrongs/android/a/b/q;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    check-cast p1, Lcom/estrongs/android/a/b/k;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    move-object v2, v0

    :goto_2
    new-instance v3, Lcom/estrongs/android/a/b/r;

    invoke-direct {v3, p1}, Lcom/estrongs/android/a/b/r;-><init>(Lcom/estrongs/android/a/b/k;)V

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/r;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/a/b/r;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/r;->m()V

    goto :goto_0

    :cond_2
    move v1, v2

    move-object v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/t;

    iget-object v0, v0, Lcom/estrongs/android/a/b/t;->a:[B

    invoke-virtual {v3, v0}, Lcom/estrongs/android/a/b/r;->a([B)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/r;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/r;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/a/a/v;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/a/b/t;

    iget-object v1, v1, Lcom/estrongs/android/a/b/t;->b:[B

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/b/r;->a([B)Ljava/lang/String;

    :cond_4
    invoke-virtual {v3}, Lcom/estrongs/android/a/b/r;->m()V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method static synthetic d(Lcom/estrongs/android/a/a/v;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/a/a/v;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/estrongs/android/a/a/m;
    .locals 6

    iget v0, p0, Lcom/estrongs/android/a/a/v;->h:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/estrongs/android/a/a/v;->h:I

    :cond_0
    if-gtz p1, :cond_1

    new-instance v0, Lcom/estrongs/android/a/a/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/a/m;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->e:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/a/a/m;

    iget v2, p0, Lcom/estrongs/android/a/a/v;->h:I

    iget-wide v4, p0, Lcom/estrongs/android/a/a/v;->i:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/estrongs/android/a/a/m;-><init>(Ljava/util/List;IJ)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/a/a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->c()[Lcom/estrongs/android/a/b/k;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/estrongs/android/a/a/v;->c(Lcom/estrongs/android/a/b/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/v;->f:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/v;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/f;->a()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/a/a/w;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/a/a/w;-><init>(Lcom/estrongs/android/a/a/v;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lcom/estrongs/android/a/b/q;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 22

    invoke-super/range {p0 .. p0}, Lcom/estrongs/android/a/a/k;->b()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/estrongs/android/a/a/v;->h:I

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/estrongs/android/a/a/v;->i:J

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/a/a/v;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-wide v8, v4

    move-wide v10, v6

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/a/a/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v6, :cond_a

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/a/a/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    :goto_0
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/estrongs/android/a/b/r;

    invoke-virtual {v5}, Lcom/estrongs/android/a/b/r;->j()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v6, v18, v20

    if-nez v6, :cond_3

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v5}, Lcom/estrongs/android/a/b/r;->k()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/a/a/v;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/estrongs/android/a/b/t;

    iget-object v6, v6, Lcom/estrongs/android/a/b/t;->a:[B

    invoke-virtual {v5, v6}, Lcom/estrongs/android/a/b/r;->a([B)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/estrongs/android/a/b/r;->j()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v6, v18, v20

    if-nez v6, :cond_1

    invoke-interface {v13, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/estrongs/android/a/b/r;->l()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/estrongs/android/a/b/r;->j()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v12, v6

    invoke-virtual {v7, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v12, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/estrongs/android/a/a/v;->h:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/estrongs/android/a/a/v;->h:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/estrongs/android/a/a/v;->i:J

    move-wide/from16 v18, v0

    invoke-virtual {v5}, Lcom/estrongs/android/a/b/r;->d()J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/estrongs/android/a/a/v;->i:J

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    cmp-long v12, v18, v10

    if-lez v12, :cond_6

    int-to-long v10, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/estrongs/android/a/a/v;->e:Ljava/util/List;

    goto/16 :goto_1

    :cond_6
    int-to-long v0, v5

    move-wide/from16 v18, v0

    cmp-long v5, v18, v10

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v5, v18, v8

    if-lez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/estrongs/android/a/a/v;->e:Ljava/util/List;

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v12, v0, :cond_8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/android/a/b/r;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/estrongs/android/a/a/v;->h:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/estrongs/android/a/a/v;->h:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/estrongs/android/a/a/v;->i:J

    move-wide/from16 v16, v0

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/r;->d()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/estrongs/android/a/a/v;->i:J

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v4}, Lcom/estrongs/android/a/a/f;->a()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v4, v13}, Lcom/estrongs/android/a/a/f;->a(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v4, v14}, Lcom/estrongs/android/a/a/f;->b(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v4}, Lcom/estrongs/android/a/a/f;->b()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/a/a/v;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :cond_a
    move-object v7, v6

    goto/16 :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/a/a/v;->j:I

    return-void
.end method

.method public b(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;)Z"
        }
    .end annotation

    const/4 v12, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v1, p0, Lcom/estrongs/android/a/a/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/android/a/b/r;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/a/b/r;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/r;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-ne v0, v12, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v12, :cond_5

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/a/b/r;

    invoke-virtual {v2}, Lcom/estrongs/android/a/b/r;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/f;->a()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/a/a/f;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->d:Lcom/estrongs/android/a/a/f;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/f;->b()V

    return v12

    :cond_7
    move-object v4, v5

    goto :goto_1
.end method

.method public final c()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/r;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-gt v1, v5, :cond_0

    goto :goto_1

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-object v2
.end method
