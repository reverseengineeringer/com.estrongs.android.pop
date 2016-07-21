.class public Lcom/estrongs/android/cleaner/scandisk/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/cleaner/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Z

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/estrongs/android/cleaner/h;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/cleaner/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/cleaner/i;

.field private h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Residual Junk"

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->a:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->b:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->c:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->g:Lcom/estrongs/android/cleaner/i;

    new-instance v0, Lcom/estrongs/android/cleaner/h;

    invoke-direct {v0, v2}, Lcom/estrongs/android/cleaner/h;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    const-string v1, "Residual Junk"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    const v1, 0x7f0801cd

    invoke-static {v1}, Lcom/estrongs/android/cleaner/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/estrongs/android/appinfo/w;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;
    .locals 5

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/estrongs/android/appinfo/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/cleaner/h;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/cleaner/h;->a(I)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/cleaner/h;->b(I)V

    invoke-virtual {v0, p2}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/android/appinfo/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1}, Lcom/estrongs/android/appinfo/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/appinfo/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-interface {v1}, Lcom/estrongs/fs/h;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/appinfo/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/estrongs/android/cleaner/h;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/estrongs/android/appinfo/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/io/File;)Lcom/estrongs/android/cleaner/scandisk/a/k;
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/estrongs/android/cleaner/scandisk/a/k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/cleaner/scandisk/a/k;-><init>(Lcom/estrongs/android/cleaner/scandisk/a/i;Lcom/estrongs/android/cleaner/scandisk/a/j;)V

    iput-wide v6, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    iput-boolean v1, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->b:Z

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/bg;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v0, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->b:Z

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->g:Lcom/estrongs/android/cleaner/i;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v4, v3

    if-nez v4, :cond_5

    :cond_4
    iput-wide v6, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    goto :goto_1

    :cond_5
    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-direct {p0, v5}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Ljava/io/File;)Lcom/estrongs/android/cleaner/scandisk/a/k;

    move-result-object v5

    iget-wide v6, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    iget-wide v8, v5, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    iget-boolean v5, v5, Lcom/estrongs/android/cleaner/scandisk/a/k;->b:Z

    if-eqz v5, :cond_6

    iput-boolean v0, v2, Lcom/estrongs/android/cleaner/scandisk/a/k;->b:Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private a(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    invoke-direct {p0, p3}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Ljava/io/File;)Lcom/estrongs/android/cleaner/scandisk/a/k;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/estrongs/android/cleaner/scandisk/a/k;->b:Z

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;Lcom/estrongs/android/cleaner/scandisk/a/k;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-direct {p0, p1, p2, v3}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;Lcom/estrongs/android/cleaner/scandisk/a/k;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;Lcom/estrongs/android/cleaner/scandisk/a/k;)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;Lcom/estrongs/android/cleaner/scandisk/a/k;)V
    .locals 7

    const/4 v6, 0x6

    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v1, p3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-interface {v1}, Lcom/estrongs/fs/h;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v2, Lcom/estrongs/android/cleaner/h;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v0, v3, p1}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    invoke-virtual {v2, v6}, Lcom/estrongs/android/cleaner/h;->b(I)V

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/estrongs/android/cleaner/h;->a(I)V

    iget-wide v4, p4, Lcom/estrongs/android/cleaner/scandisk/a/k;->a:J

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/cleaner/h;->a(J)V

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->n()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/cleaner/h;->c(J)V

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->o()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/cleaner/h;->d(J)V

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/cleaner/h;->c(Z)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/estrongs/android/cleaner/h;->d(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p1, v6}, Lcom/estrongs/android/cleaner/h;->c(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    invoke-interface {v0, v2}, Lcom/estrongs/android/cleaner/e;->a(Lcom/estrongs/android/cleaner/h;)V

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/estrongs/android/cleaner/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/estrongs/android/cleaner/h;->c(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/util/bk;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public a(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Residual Junk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/appinfo/w;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/estrongs/android/appinfo/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/estrongs/android/appinfo/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->b:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/estrongs/android/cleaner/scandisk/a/i;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v1, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Lcom/estrongs/android/appinfo/w;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;

    move-result-object v1

    invoke-virtual {v2}, Lcom/estrongs/android/appinfo/w;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7, v6}, Lcom/estrongs/android/cleaner/scandisk/a/i;->a(Lcom/estrongs/android/cleaner/h;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Residual Junk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/e;

    const-string v3, "Residual Junk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-interface {v1, v3}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_1

    :cond_2
    const-string v1, "Residual Junk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/e;

    const-string v3, "Residual Junk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-interface {v1, v3}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_2

    :cond_3
    iput-boolean v8, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->c:Z

    :goto_3
    return-void

    :cond_4
    iput-boolean v8, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->c:Z

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v1

    const-string v1, "Residual Junk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " finish"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/e;

    const-string v4, "Residual Junk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-interface {v1, v4}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_4

    :cond_5
    iput-boolean v8, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->c:Z

    throw v2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const-string v0, "Residual Junk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    const-string v0, "Residual Junk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "Residual Junk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    invoke-interface {p1, v0}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    :cond_0
    return-void
.end method

.method public d()Lcom/estrongs/android/cleaner/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/i;->e:Lcom/estrongs/android/cleaner/h;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Filter:Residual Junk"

    return-object v0
.end method
