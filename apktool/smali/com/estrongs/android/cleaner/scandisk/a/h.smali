.class public Lcom/estrongs/android/cleaner/scandisk/a/h;
.super Lcom/estrongs/android/cleaner/scandisk/a/e;


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/cleaner/i;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0801cb

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/cleaner/scandisk/a/e;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V

    const-string v0, "Recycle"

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->h:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private g()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    new-instance v1, Lcom/estrongs/fs/j;

    invoke-direct {v1}, Lcom/estrongs/fs/j;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v1, v3}, Lcom/estrongs/fs/impl/q/a;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;
    .locals 4

    new-instance v0, Lcom/estrongs/android/cleaner/h;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->c:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(I)V

    invoke-virtual {v0, p2}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->c(I)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    move-object p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1, v4}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->f:Lcom/estrongs/android/cleaner/i;

    iget-object v1, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iget-wide v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/estrongs/android/cleaner/scandisk/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public b(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 9

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/cleaner/scandisk/a/h;->g()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->k:Ljava/util/HashMap;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/scandisk/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v2, p1, Lcom/estrongs/android/cleaner/scandisk/h;->f:[Lcom/estrongs/android/cleaner/scandisk/i;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->g:I

    if-ge v1, v0, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/estrongs/android/cleaner/scandisk/a/h;->a(Lcom/estrongs/android/cleaner/scandisk/i;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/h;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recycle root file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/cleaner/h;

    iget-object v5, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v5}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->c:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v4, v0, v5, v6}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/h;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->b(I)V

    iget-object v0, v3, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/cleaner/h;->a(J)V

    iget-wide v6, v3, Lcom/estrongs/android/cleaner/scandisk/i;->e:J

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/cleaner/h;->c(J)V

    iget-wide v6, p1, Lcom/estrongs/android/cleaner/scandisk/h;->a:J

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/cleaner/h;->d(J)V

    iget-boolean v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->e:Z

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->c(Z)V

    invoke-virtual {p0, v4, v3}, Lcom/estrongs/android/cleaner/scandisk/a/h;->a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/h;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    invoke-interface {v0, v4}, Lcom/estrongs/android/cleaner/e;->a(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_2

    :cond_3
    iput-boolean v8, v3, Lcom/estrongs/android/cleaner/scandisk/i;->f:Z

    iput-boolean v8, p1, Lcom/estrongs/android/cleaner/scandisk/h;->d:Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_5
    invoke-super {p0, p1}, Lcom/estrongs/android/cleaner/scandisk/a/e;->b(Lcom/estrongs/android/cleaner/scandisk/h;)V

    goto/16 :goto_0
.end method

.method protected c(Lcom/estrongs/android/cleaner/scandisk/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "Recycle"

    return-object v0
.end method
