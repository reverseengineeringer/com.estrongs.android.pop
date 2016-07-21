.class public Lcom/estrongs/android/a/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/android/a/j;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private final d:[Lcom/estrongs/android/a/a/q;

.field private final e:[Lcom/estrongs/android/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/a/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/a/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/a/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/estrongs/android/a/a/g;

    iput-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/estrongs/android/a/a/q;

    iput-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    iput-object p1, p0, Lcom/estrongs/android/a/q;->b:Lcom/estrongs/android/a/j;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/a/q;)Lcom/estrongs/android/a/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/q;->b:Lcom/estrongs/android/a/j;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/estrongs/android/util/bg;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    if-lez v0, :cond_1

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " like "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/a/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date_modified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x76a700

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date_modified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".temp\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)J
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v6, v0, v5

    aget-wide v8, v0, v10

    sub-long/2addr v6, v8

    aget-wide v0, v0, v11

    mul-long/2addr v0, v6

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1

    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v2, v0, v5

    aget-wide v4, v0, v10

    sub-long/2addr v2, v4

    aget-wide v0, v0, v11

    mul-long/2addr v2, v0

    :cond_2
    :goto_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    move-wide v2, v0

    goto :goto_2
.end method

.method private g()Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0xa00000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.apk"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    new-instance v1, Lcom/estrongs/android/a/a/q;

    invoke-direct {p0}, Lcom/estrongs/android/a/q;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/q;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    new-instance v1, Lcom/estrongs/android/a/a/q;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/q;-><init>(Landroid/net/Uri;)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    new-instance v1, Lcom/estrongs/android/a/a/q;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/q;-><init>(Landroid/net/Uri;)V

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    new-instance v1, Lcom/estrongs/android/a/a/q;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/q;-><init>(Landroid/net/Uri;)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    const/4 v1, 0x4

    new-instance v2, Lcom/estrongs/android/a/a/q;

    invoke-static {}, Lcom/estrongs/android/a/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/estrongs/android/a/a/q;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    new-instance v1, Lcom/estrongs/android/a/a/g;

    invoke-direct {p0}, Lcom/estrongs/android/a/q;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    new-instance v1, Lcom/estrongs/android/a/a/g;

    invoke-direct {p0}, Lcom/estrongs/android/a/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    new-instance v1, Lcom/estrongs/android/a/a/g;

    invoke-direct {p0}, Lcom/estrongs/android/a/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    new-instance v1, Lcom/estrongs/android/a/a/g;

    invoke-direct {p0}, Lcom/estrongs/android/a/q;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/a/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/q;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/q;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/a/q;->c:Ljava/util/concurrent/ExecutorService;
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

.method public a(Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x5

    const/4 v9, 0x0

    sget-object v0, Lcom/estrongs/android/a/q;->a:Ljava/lang/String;

    const-string v1, "analyze files in the library..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/a/q;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    array-length v0, v0

    iget-object v1, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    array-length v1, v1

    add-int/2addr v0, v1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Lcom/estrongs/android/a/u;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/estrongs/android/a/u;-><init>(Lcom/estrongs/android/a/q;Lcom/estrongs/android/a/r;)V

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/estrongs/android/a/q;->c:Ljava/util/concurrent/ExecutorService;

    move v0, v9

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/estrongs/android/a/s;

    iget-object v2, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p1, v2}, Lcom/estrongs/android/a/s;-><init>(Lcom/estrongs/android/a/q;Ljava/lang/String;Lcom/estrongs/android/a/a/n;)V

    iget-object v2, p0, Lcom/estrongs/android/a/q;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    aget-object v0, v0, v9

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/a/s;

    iget-object v1, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    aget-object v1, v1, v9

    invoke-direct {v0, p0, p1, v1}, Lcom/estrongs/android/a/s;-><init>(Lcom/estrongs/android/a/q;Ljava/lang/String;Lcom/estrongs/android/a/a/n;)V

    iget-object v1, p0, Lcom/estrongs/android/a/q;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/a/q;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/a/r;

    invoke-direct {v1, p0, v10, p1}, Lcom/estrongs/android/a/r;-><init>(Lcom/estrongs/android/a/q;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/estrongs/android/a/b/a;

    invoke-direct {v2, v0, v1}, Lcom/estrongs/android/a/b/a;-><init>(J)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_1
    new-instance v1, Lcom/estrongs/android/a/b/a;

    invoke-interface {v0}, Lcom/estrongs/android/a/a/n;->c()I

    move-result v3

    invoke-interface {v0}, Lcom/estrongs/android/a/a/n;->d()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/estrongs/android/a/b/a;-><init>(IIJ)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/estrongs/android/a/q;->d:[Lcom/estrongs/android/a/a/q;

    array-length v6, v3

    move-wide v4, v0

    :goto_2
    if-ge v2, v6, :cond_6

    aget-object v7, v3, v2

    invoke-interface {v7}, Lcom/estrongs/android/a/a/n;->d()J

    move-result-wide v8

    add-long/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/a/q;->g(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v6, v2, v0

    if-nez v6, :cond_7

    :goto_3
    new-instance v2, Lcom/estrongs/android/a/b/a;

    invoke-direct {v2, v0, v1}, Lcom/estrongs/android/a/b/a;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    :cond_7
    sub-long v0, v2, v4

    goto :goto_3
.end method

.method public final c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/g;->a()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/g;->a()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/g;->a()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/q;->e:[Lcom/estrongs/android/a/a/g;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/g;->a()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method
