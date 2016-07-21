.class public Lcom/estrongs/android/a/ab;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/estrongs/android/a/a/k;

.field private final d:Lcom/estrongs/android/a/j;

.field private e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:I

.field private g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/o;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/fs/h;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile p:Z

.field private q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/a/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/a/ab;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/a/af;

    invoke-direct {v0}, Lcom/estrongs/android/a/af;-><init>()V

    sput-object v0, Lcom/estrongs/android/a/ab;->r:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/a/j;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/a/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/ae;-><init>(Lcom/estrongs/android/a/ab;)V

    iput-object v0, p0, Lcom/estrongs/android/a/ab;->q:Ljava/util/Comparator;

    iput-boolean v4, p0, Lcom/estrongs/android/a/ab;->p:Z

    iput-object p1, p0, Lcom/estrongs/android/a/ab;->d:Lcom/estrongs/android/a/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/ab;->b:Ljava/util/Set;

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/a/ab;->b:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/.estrongs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->b:Ljava/util/Set;

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/estrongs/android/a/a/k;

    iput-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x2

    new-instance v2, Lcom/estrongs/android/a/a/b;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/b;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x3

    new-instance v2, Lcom/estrongs/android/a/a/s;

    invoke-direct {v2}, Lcom/estrongs/android/a/a/s;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x4

    new-instance v2, Lcom/estrongs/android/a/a/v;

    invoke-direct {v2, v5}, Lcom/estrongs/android/a/a/v;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    new-instance v1, Lcom/estrongs/android/a/a/u;

    invoke-direct {v1}, Lcom/estrongs/android/a/a/u;-><init>()V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    new-instance v1, Lcom/estrongs/android/a/a/x;

    invoke-direct {v1}, Lcom/estrongs/android/a/a/x;-><init>()V

    aput-object v1, v0, v4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/ab;->o:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/a/ab;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/a/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/a/ab;->d()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/a/ab;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->i:Ljava/util/List;

    return-object v0
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/estrongs/android/a/ab;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6536\u5230\u7ebf\u7a0b\u4e2d\u65ad\uff01\uff01"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6536\u5230\u7ebf\u7a0b\u4e2d\u65ad\uff01\uff01"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/estrongs/android/a/ab;->p:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 18

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v12

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/estrongs/android/a/ab;->g:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/estrongs/android/a/ab;->f:I

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/a/ab;->j:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/ab;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/a/ab;->i:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/a/ab;->l:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/a/ab;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/estrongs/fs/h;

    move-object v8, v0

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/a/ab;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v8, v2, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_0

    const-wide/16 v2, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-wide v4, v2

    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/estrongs/fs/h;

    move-object v6, v0

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/a/ab;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/estrongs/android/a/ab;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v6

    check-cast v0, Lcom/estrongs/fs/impl/l/b;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/a/ab;->f:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/estrongs/android/a/ab;->f:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/estrongs/android/a/ab;->g:J

    invoke-interface {v6}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v10

    add-long/2addr v2, v10

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/estrongs/android/a/ab;->g:J

    invoke-interface {v6}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    add-long v10, v4, v2

    new-instance v2, Lcom/estrongs/android/a/b/o;

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-interface {v6}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/o;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v9}, Lcom/estrongs/fs/impl/l/b;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/a/b/o;->a(J)V

    invoke-virtual {v9}, Lcom/estrongs/fs/impl/l/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/a/b/o;->a(I)V

    invoke-virtual {v9}, Lcom/estrongs/fs/impl/l/b;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/a/b/o;->b(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v4, v10

    goto :goto_2

    :cond_4
    move-object v0, v8

    check-cast v0, Lcom/estrongs/fs/x;

    move-object v2, v0

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/fs/x;->setTotalSize(J)V

    new-instance v2, Lcom/estrongs/android/a/b/l;

    invoke-interface {v8}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/a/b/l;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/ab;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/ab;->l:Ljava/util/Map;

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    throw v2

    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v2, v14

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/estrongs/android/a/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/a/ab;->e()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/a/ab;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/ab;->f:I

    return v0
.end method

.method private e()V
    .locals 14

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v4

    const-string v0, "_size"

    aput-object v0, v2, v7

    const-string v0, "date_modified"

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v5, 0x4

    aget-object v0, v0, v5

    check-cast v0, Lcom/estrongs/android/a/a/v;

    iget-object v5, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/a/a/v;->b(I)V

    move v8, v1

    move-object v1, v3

    move-object v3, v6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db analyze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    if-eqz v9, :cond_8

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/android/a/ab;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/a/ab;->f:I

    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/a/ab;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v2, v10

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in DB!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/estrongs/android/a/ab;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/estrongs/android/a/ab;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in DB!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/a/a/v;->b(I)V

    move v8, v3

    move-object v3, v6

    goto/16 :goto_0

    :cond_3
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/a/q;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/estrongs/android/a/a/v;->b(I)V

    move v8, v4

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db dir file:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v9

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v2, v10

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in DB!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/estrongs/android/a/ab;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/estrongs/android/a/ab;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in DB!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    :try_start_3
    invoke-direct {p0, v3}, Lcom/estrongs/android/a/ab;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lastModified:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    cmp-long v2, v6, v12

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    :goto_4
    packed-switch v8, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/a/b/k;

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/estrongs/android/a/ab;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/a/ab;->f:I

    iget-wide v2, p0, Lcom/estrongs/android/a/ab;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/a/ab;->g:J

    goto/16 :goto_1

    :cond_7
    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "music file:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, 0x1

    cmp-long v0, v4, v12

    if-lez v0, :cond_0

    new-instance v2, Lcom/estrongs/android/a/b/p;

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/p;-><init>(Ljava/lang/String;JJ)V

    goto :goto_5

    :pswitch_1
    const-wide/16 v12, 0x1

    cmp-long v0, v4, v12

    if-lez v0, :cond_0

    new-instance v2, Lcom/estrongs/android/a/b/w;

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/w;-><init>(Ljava/lang/String;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v2, v10

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in DB!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/estrongs/android/a/ab;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/estrongs/android/a/ab;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in DB!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic f(Lcom/estrongs/android/a/ab;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/a/ab;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/ab;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/estrongs/android/a/ab;)[Lcom/estrongs/android/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/a/ab;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private i(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic j(Lcom/estrongs/android/a/ab;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/a/ab;->c()Z

    move-result v0

    return v0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic k(Lcom/estrongs/android/a/ab;)Lcom/estrongs/android/a/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->d:Lcom/estrongs/android/a/j;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0, p2}, Lcom/estrongs/android/a/z;->a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
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

.method public final a(Lcom/estrongs/fs/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 12

    sget-object v0, Lcom/estrongs/android/a/ab;->a:Ljava/lang/String;

    const-string v1, "analyze files in the media library..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/a/ab;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->d:Lcom/estrongs/android/a/j;

    invoke-interface {v0, p1}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-instance v8, Lcom/estrongs/android/a/ah;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/estrongs/android/a/ah;-><init>(Lcom/estrongs/android/a/ab;Lcom/estrongs/android/a/ac;)V

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v0, 0x3

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/estrongs/android/a/ab;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "gallery://local/buckets/"

    iput-object v0, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    :cond_2
    iget-object v6, p0, Lcom/estrongs/android/a/ab;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/estrongs/android/a/ad;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/ad;-><init>(Lcom/estrongs/android/a/ab;Ljava/lang/String;Ljava/util/ArrayList;J)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/estrongs/android/a/b/q;

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->k:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->l:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/estrongs/android/a/b/q;->e_()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/a/ab;->m:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/a/ab;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    return-void

    :cond_b
    move-object v1, v3

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/a;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/estrongs/android/a/b/a;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/b/a;

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/a/ab;->f:I

    iget-wide v4, p0, Lcom/estrongs/android/a/ab;->g:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/estrongs/android/a/b/a;-><init>(IIJ)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 13

    const/4 v2, 0x0

    const/4 v12, 0x2

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    aget-object v0, v0, v12

    check-cast v0, Lcom/estrongs/android/a/a/b;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/b;->b_()Ljava/util/Map;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/c/d;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/android/a/b/q;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v12, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/estrongs/android/a/z;->a(Ljava/lang/String;Lcom/estrongs/android/a/a/k;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p2}, Lcom/estrongs/android/a/z;->a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0, p2}, Lcom/estrongs/android/a/z;->a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/estrongs/android/a/b/d;
    .locals 18

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    check-cast v2, Lcom/estrongs/android/a/a/b;

    invoke-virtual {v2}, Lcom/estrongs/android/a/a/b;->b_()Ljava/util/Map;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v10, v4

    move v9, v3

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/estrongs/fs/impl/c/d;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/a/b/q;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/estrongs/android/a/ab;->l:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v16

    add-long v6, v6, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/estrongs/android/a/ab;->l:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/estrongs/android/a/b/a;

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    invoke-interface {v13, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int v4, v9, v5

    add-long v2, v10, v6

    move-wide v10, v2

    move v9, v4

    goto :goto_0

    :cond_4
    move-wide v6, v10

    move v5, v9

    :goto_2
    new-instance v2, Lcom/estrongs/android/a/b/d;

    const/4 v4, 0x0

    move-object v3, v13

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/d;-><init>(Ljava/util/Map;IIJ)V

    return-object v2

    :cond_5
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v10, v4

    move v9, v3

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/estrongs/fs/impl/c/d;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v2}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v16

    add-long v6, v6, v16

    invoke-virtual {v2}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/estrongs/android/a/b/a;

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    invoke-interface {v13, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int v3, v9, v5

    add-long v4, v10, v6

    move-wide v10, v4

    move v9, v3

    goto :goto_3

    :cond_9
    move-wide v6, v10

    move v5, v9

    goto :goto_2
.end method

.method public e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v3, 0x1

    aget-object v0, v0, v3

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
    move v3, v6

    :goto_1
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    return-object v0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;
    .locals 12

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    aget-object v0, v0, v2

    check-cast v0, Lcom/estrongs/android/a/a/x;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/x;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    add-int/2addr v3, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->h()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->d()J

    move-result-wide v10

    add-long/2addr v4, v10

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/android/a/ab;->r:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/estrongs/android/a/b/u;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/u;-><init>(Ljava/util/List;IIJ)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x0

    const-string v0, "MediaFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p1, "gallery://local/buckets/"

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/estrongs/android/a/b/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    if-ge v3, v6, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    :goto_2
    move v3, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/estrongs/android/a/b/a;

    iget v3, p0, Lcom/estrongs/android/a/ab;->f:I

    iget-wide v4, p0, Lcom/estrongs/android/a/ab;->g:J

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method public f(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/estrongs/android/a/a/v;

    invoke-static {p1, v0}, Lcom/estrongs/android/a/z;->a(Ljava/lang/String;Lcom/estrongs/android/a/a/v;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/estrongs/android/a/b/m;
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->c:[Lcom/estrongs/android/a/a/k;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/k;->e()Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v6

    move v3, v2

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v10

    add-long/2addr v4, v10

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-nez v10, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v3

    move v3, v0

    goto :goto_0

    :cond_1
    const-string v0, "emptyfile://"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v0, Lcom/estrongs/android/a/b/m;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    return-object v0

    :cond_2
    move-wide v4, v6

    move v3, v2

    goto :goto_1
.end method

.method public final h(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "MediaFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/m;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/ab;->j:Ljava/util/List;

    move v3, v2

    :goto_1
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/a/ab;->q:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/android/a/ab;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move-object v10, v3

    move v3, v1

    move-object v1, v10

    goto :goto_1
.end method
