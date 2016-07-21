.class public Lcom/estrongs/android/scanner/af;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/estrongs/android/scanner/ak;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ExecutorService;

.field private volatile e:Z

.field private f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Lcom/estrongs/android/scanner/ae;

.field private final i:Lcom/estrongs/android/scanner/b/b;

.field private final j:Ljava/util/concurrent/CyclicBarrier;

.field private final k:Lcom/estrongs/android/scanner/d/m;

.field private l:Lcom/estrongs/android/scanner/y;

.field private final m:Lcom/estrongs/android/scanner/al;

.field private n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/scanner/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/scanner/al;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/estrongs/android/scanner/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/ag;-><init>(Lcom/estrongs/android/scanner/af;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->p:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/estrongs/android/scanner/ae;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/ae;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->h:Lcom/estrongs/android/scanner/ae;

    invoke-static {}, Lcom/estrongs/android/scanner/b/b;->a()Lcom/estrongs/android/scanner/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->i:Lcom/estrongs/android/scanner/b/b;

    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->j:Ljava/util/concurrent/CyclicBarrier;

    new-instance v0, Lcom/estrongs/android/scanner/d/m;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/d/m;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    iput-object p1, p0, Lcom/estrongs/android/scanner/af;->m:Lcom/estrongs/android/scanner/al;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/af;Lcom/estrongs/android/scanner/y;)Lcom/estrongs/android/scanner/y;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/af;->l:Lcom/estrongs/android/scanner/y;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/af;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/af;->f:Ljava/lang/ThreadLocal;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->j:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/af;Lcom/estrongs/android/scanner/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/af;->a(Lcom/estrongs/android/scanner/ak;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/scanner/ak;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/scanner/af;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->a()Ljava/io/File;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v4, v8}, Lcom/estrongs/android/scanner/d/m;->c(Ljava/lang/String;)Lcom/estrongs/android/scanner/a/c;

    move-result-object v9

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "absent path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v4, v8}, Lcom/estrongs/android/scanner/d/m;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/estrongs/android/scanner/a/c;->c()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v4}, Lcom/estrongs/android/scanner/d/m;->e()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/estrongs/android/scanner/af;->a(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v9}, Lcom/estrongs/android/scanner/a/c;->f()J

    move-result-wide v10

    cmp-long v10, v14, v10

    if-eqz v10, :cond_1a

    sget-object v10, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "modified path:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v14, v15}, Lcom/estrongs/android/scanner/a/c;->b(J)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v10, v9}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/a/c;)V

    move v10, v4

    move-object v4, v5

    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/scanner/af;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v9, v15

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->d()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v15}, Lcom/estrongs/android/scanner/af;->b([Ljava/lang/String;)Z

    move-result v5

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->f()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->e()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const/4 v9, 0x1

    move v11, v9

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->g()Ljava/lang/String;

    move-result-object v9

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/scanner/af;->i:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v12, v8}, Lcom/estrongs/android/scanner/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    :goto_4
    if-nez v14, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/scanner/af;->i:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v9, v8}, Lcom/estrongs/android/scanner/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->c()Z

    move-result v9

    if-nez v9, :cond_a

    if-eqz v14, :cond_8

    const/4 v9, 0x1

    move v13, v9

    :goto_6
    if-eqz v4, :cond_3

    move/from16 v0, v16

    invoke-virtual {v4, v5, v11, v0}, Lcom/estrongs/android/scanner/a/b;->a(ZZZ)V

    invoke-virtual {v4, v13}, Lcom/estrongs/android/scanner/a/b;->a(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v6, v4}, Lcom/estrongs/android/scanner/d/m;->a(Lcom/estrongs/android/scanner/a/c;)J

    move-result-wide v6

    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    array-length v4, v15

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, v15

    move/from16 v17, v0

    const/4 v4, 0x0

    move/from16 v25, v4

    move v4, v11

    move/from16 v11, v25

    :goto_7
    move/from16 v0, v17

    if-ge v11, v0, :cond_13

    aget-object v18, v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/scanner/af;->h:Lcom/estrongs/android/scanner/ae;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/ae;->c(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_4
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_5
    invoke-virtual {v9}, Lcom/estrongs/android/scanner/a/c;->f()J

    move-result-wide v10

    cmp-long v4, v14, v10

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/estrongs/android/scanner/af;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/estrongs/android/scanner/af;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    new-instance v4, Lcom/estrongs/android/scanner/a/b;

    invoke-static {v8}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5, v14, v15}, Lcom/estrongs/android/scanner/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move/from16 v25, v6

    move-wide v6, v10

    move/from16 v10, v25

    goto/16 :goto_2

    :cond_8
    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/scanner/af;->i:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v9, v8}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_9
    move v13, v9

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    :cond_a
    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/scanner/af;->i:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v9, v8}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v9, 0x1

    :goto_a
    move v13, v9

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_a

    :cond_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/scanner/af;->h:Lcom/estrongs/android/scanner/ae;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/ae;->a(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/af;->b(Ljava/lang/String;)V

    :cond_d
    new-instance v18, Lcom/estrongs/android/scanner/ak;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/ak;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/estrongs/android/scanner/ak;->a(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/estrongs/android/scanner/ak;->b(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/estrongs/android/scanner/ak;->c(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/estrongs/android/scanner/ak;->a(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/estrongs/android/scanner/ak;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/scanner/af;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/scanner/af;->l:Lcom/estrongs/android/scanner/y;

    move-object/from16 v21, v0

    invoke-static/range {v18 .. v18}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/y;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/scanner/af;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-nez v4, :cond_f

    const-string v4, "."

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/estrongs/android/scanner/a/d;->b(J)V

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/a/d;->d(J)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lcom/estrongs/android/scanner/a/d;->c(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->b()Z

    move-result v18

    or-int v18, v18, v13

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->a(Z)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v5, v4, v1}, Lcom/estrongs/android/scanner/a/d;->a(ZZZ)V

    if-eqz v14, :cond_11

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    :cond_10
    :goto_b
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_11
    if-eqz v12, :cond_12

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/estrongs/android/scanner/ak;->b()Z

    move-result v18

    if-eqz v18, :cond_10

    const-string v18, "SDCards"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    if-eqz v10, :cond_15

    const/4 v5, 0x2

    :goto_c
    new-instance v4, Lcom/estrongs/android/scanner/a/f;

    invoke-direct/range {v4 .. v9}, Lcom/estrongs/android/scanner/a/f;-><init>(IJLjava/lang/String;Ljava/util/List;)V

    if-eqz v12, :cond_14

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/estrongs/android/scanner/a/f;->b(Z)V

    invoke-virtual {v4, v12}, Lcom/estrongs/android/scanner/a/f;->a(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/scanner/af;->l:Lcom/estrongs/android/scanner/y;

    invoke-virtual {v5, v4}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/f;)V

    if-eqz v10, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/scanner/af;->c()V

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x1

    goto :goto_c

    :cond_16
    move v13, v9

    goto/16 :goto_6

    :cond_17
    move-object v12, v9

    goto/16 :goto_5

    :cond_18
    move-object v14, v12

    goto/16 :goto_4

    :cond_19
    move v11, v9

    goto/16 :goto_3

    :cond_1a
    move v10, v4

    move-object v4, v5

    goto/16 :goto_2
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/scanner/d/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/scanner/a/c;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/a/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/af;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/scanner/af;->e:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    return-object v0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find new folder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/af;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/af;->e:Z

    return v0
.end method

.method private static b([Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".nomedia"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final c()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find trash folder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/scanner/d/m;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/d/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/c;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/scanner/ak;

    invoke-direct {v0, v2}, Lcom/estrongs/android/scanner/ak;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/estrongs/android/scanner/af;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/af;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/scanner/af;->e()Z

    move-result v0

    return v0
.end method

.method private c([Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    const-string v3, "prepare for scanning..."

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    if-nez v4, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    sget-object v5, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no exist path!: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v0, Lcom/estrongs/android/scanner/ak;

    const/4 v4, 0x1

    invoke-direct {v0, v5, v4}, Lcom/estrongs/android/scanner/ak;-><init>(Ljava/io/File;Z)V

    iget-object v4, p0, Lcom/estrongs/android/scanner/af;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v4, p0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/scanner/a/f;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/a/f;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/scanner/af;->l:Lcom/estrongs/android/scanner/y;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/f;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    new-instance v1, Lcom/estrongs/android/scanner/aj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/scanner/aj;-><init>(Lcom/estrongs/android/scanner/af;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/m;->a(Lcom/estrongs/android/scanner/d/w;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->m:Lcom/estrongs/android/scanner/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->m:Lcom/estrongs/android/scanner/al;

    invoke-interface {v0}, Lcom/estrongs/android/scanner/al;->a()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final e()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/scanner/af;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    const-string v2, "check the scanner finished!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/estrongs/android/scanner/af;->e:Z

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/scanner/af;->e:Z

    invoke-direct {p0}, Lcom/estrongs/android/scanner/af;->d()V

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

.method static synthetic f(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/ae;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->h:Lcom/estrongs/android/scanner/ae;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/b/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->i:Lcom/estrongs/android/scanner/b/b;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/d/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->k:Lcom/estrongs/android/scanner/d/m;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/y;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->l:Lcom/estrongs/android/scanner/y;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/scanner/af;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->m:Lcom/estrongs/android/scanner/al;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    const-string v1, "cancel..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/af;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/estrongs/android/scanner/af;->a:J

    iget-object v0, p0, Lcom/estrongs/android/scanner/af;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/af;->e:Z

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/af;->c([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/scanner/af;->b:Ljava/lang/String;

    const-string v1, "fail to prepare for scanning..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/scanner/am;

    const-string v1, "Disk Scanner"

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/am;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/af;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/estrongs/android/scanner/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/ai;-><init>(Lcom/estrongs/android/scanner/af;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/af;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
