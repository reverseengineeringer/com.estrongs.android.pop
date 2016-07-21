.class public Lcom/estrongs/android/cleaner/scandisk/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/cleaner/g;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/android/cleaner/scandisk/f;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/estrongs/android/cleaner/f;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/cleaner/scandisk/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:I

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/cleaner/scandisk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/cleaner/scandisk/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/estrongs/android/cleaner/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/cleaner/f;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->k:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->h:I

    iput-object p2, p0, Lcom/estrongs/android/cleaner/scandisk/c;->d:Lcom/estrongs/android/cleaner/f;

    iput-object p1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->e:Ljava/util/Map;

    return-void
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->h:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/scandisk/c;Ljava/lang/String;ZLcom/estrongs/android/cleaner/scandisk/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/cleaner/scandisk/c;->a(Ljava/lang/String;ZLcom/estrongs/android/cleaner/scandisk/g;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLcom/estrongs/android/cleaner/scandisk/g;)V
    .locals 15

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    array-length v3, v7

    new-array v10, v3, [Lcom/estrongs/android/cleaner/scandisk/i;

    const/4 v4, 0x0

    array-length v11, v7

    const/4 v3, 0x0

    move v5, v3

    move v3, v4

    :goto_2
    if-ge v5, v11, :cond_6

    aget-object v4, v7, v5

    iget-boolean v12, p0, Lcom/estrongs/android/cleaner/scandisk/c;->k:Z

    if-nez v12, :cond_3

    sget-object v2, Lcom/estrongs/android/cleaner/scandisk/c;->a:Ljava/lang/String;

    const-string v3, "receive the exit message!"

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-direct {p0, v12}, Lcom/estrongs/android/cleaner/scandisk/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/estrongs/android/cleaner/scandisk/c;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "yield the path:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    new-instance v14, Lcom/estrongs/android/cleaner/scandisk/i;

    invoke-direct {v14}, Lcom/estrongs/android/cleaner/scandisk/i;-><init>()V

    iput-object v12, v14, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iput-object v4, v14, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v12

    iput-wide v12, v14, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    iput-object v4, v14, Lcom/estrongs/android/cleaner/scandisk/i;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iput-boolean v4, v14, Lcom/estrongs/android/cleaner/scandisk/i;->f:Z

    const-wide/16 v12, 0x0

    iput-wide v12, v14, Lcom/estrongs/android/cleaner/scandisk/i;->e:J

    add-int/lit8 v4, v3, 0x1

    aput-object v14, v10, v3

    move v3, v4

    goto :goto_3

    :cond_6
    new-instance v4, Lcom/estrongs/android/cleaner/scandisk/h;

    invoke-direct {v4}, Lcom/estrongs/android/cleaner/scandisk/h;-><init>()V

    iput-wide v8, v4, Lcom/estrongs/android/cleaner/scandisk/h;->a:J

    iput-object v2, v4, Lcom/estrongs/android/cleaner/scandisk/h;->b:Ljava/lang/String;

    iput-object v10, v4, Lcom/estrongs/android/cleaner/scandisk/h;->f:[Lcom/estrongs/android/cleaner/scandisk/i;

    iput v3, v4, Lcom/estrongs/android/cleaner/scandisk/h;->g:I

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/estrongs/android/cleaner/scandisk/h;->d:Z

    move/from16 v0, p2

    iput-boolean v0, v4, Lcom/estrongs/android/cleaner/scandisk/h;->e:Z

    if-nez v3, :cond_7

    const/4 v2, 0x2

    iput v2, v4, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/estrongs/android/cleaner/scandisk/g;->a(Lcom/estrongs/android/cleaner/scandisk/h;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x3

    iput v2, v4, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    goto :goto_4
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/cleaner/scandisk/c;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/estrongs/android/cleaner/scandisk/g;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->d:Lcom/estrongs/android/cleaner/f;

    invoke-direct {v4, v1}, Lcom/estrongs/android/cleaner/scandisk/g;-><init>(Lcom/estrongs/android/cleaner/f;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/f;

    invoke-interface {v1}, Lcom/estrongs/android/cleaner/f;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v1}, Lcom/estrongs/android/cleaner/scandisk/g;->a(Lcom/estrongs/android/cleaner/f;)V

    invoke-interface {v1}, Lcom/estrongs/android/cleaner/f;->e()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->e:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->b:Lcom/estrongs/android/cleaner/scandisk/f;

    invoke-interface {v1, v0}, Lcom/estrongs/android/cleaner/scandisk/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/scandisk/g;

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/scandisk/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/scandisk/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->k:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/cleaner/scandisk/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->f:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/cleaner/scandisk/c;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/cleaner/scandisk/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->h:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->g:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->h:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/c;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/estrongs/android/cleaner/scandisk/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/cleaner/scandisk/d;-><init>(Lcom/estrongs/android/cleaner/scandisk/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/estrongs/android/cleaner/scandisk/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/f;",
            ">;",
            "Lcom/estrongs/android/cleaner/scandisk/f;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/cleaner/scandisk/c;->a:Ljava/lang/String;

    const-string v1, "init..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/estrongs/android/cleaner/scandisk/c;->b:Lcom/estrongs/android/cleaner/scandisk/f;

    :goto_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/cleaner/scandisk/c;->a(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/cleaner/scandisk/b/b;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/scandisk/b/b;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->b:Lcom/estrongs/android/cleaner/scandisk/f;

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/cleaner/scandisk/c;->f()V

    return-void
.end method

.method public c()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/cleaner/scandisk/c;->a:Ljava/lang/String;

    const-string v1, "destroy..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/c;->b()V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/scandisk/c;->a:Ljava/lang/String;

    const-string v1, "call finish"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/cleaner/scandisk/c;->f()V

    goto :goto_0
.end method
