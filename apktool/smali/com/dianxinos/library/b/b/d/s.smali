.class Lcom/dianxinos/library/b/b/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field volatile a:Z

.field volatile b:[Lcom/dianxinos/library/b/b/a/d;

.field final synthetic c:Lcom/dianxinos/library/b/b/d/q;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/b/b/d/q;)V
    .locals 1

    iput-object p1, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/s;->a:Z

    const/16 v0, 0xc8

    new-array v0, v0, [Lcom/dianxinos/library/b/b/a/d;

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->b:[Lcom/dianxinos/library/b/b/a/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v7, v0, Lcom/dianxinos/library/b/b/d/q;->s:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v0, v0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v7

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/s;->b:[Lcom/dianxinos/library/b/b/a/d;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/s;->b:[Lcom/dianxinos/library/b/b/a/d;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v0, v0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v6

    move v2, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/b/b/a/d;

    iget-object v8, v0, Lcom/dianxinos/library/b/b/a/d;->a:Ljava/lang/String;

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/dianxinos/library/b/b/a/d;->c:Lcom/dianxinos/library/b/b/d/p;

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    move v1, v2

    :goto_3
    move v2, v1

    move-object v1, v0

    goto :goto_2

    :cond_3
    const/16 v8, 0xc8

    if-ge v2, v8, :cond_4

    iget-object v8, p0, Lcom/dianxinos/library/b/b/d/s;->b:[Lcom/dianxinos/library/b/b/a/d;

    aput-object v0, v8, v2

    add-int/lit8 v0, v2, 0x1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v0, v0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v0, v3

    :goto_4
    if-ge v0, v2, :cond_7

    iget-object v4, p0, Lcom/dianxinos/library/b/b/d/s;->b:[Lcom/dianxinos/library/b/b/a/d;

    aget-object v4, v4, v0

    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v8, v8, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    iget-object v4, v4, Lcom/dianxinos/library/b/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v0, v0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v4, v5

    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    if-ge v3, v2, :cond_b

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->b:[Lcom/dianxinos/library/b/b/a/d;

    aget-object v0, v0, v3

    if-eqz v0, :cond_8

    iget-object v7, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v8, v0, Lcom/dianxinos/library/b/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/dianxinos/library/b/b/d/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/dianxinos/library/b/b/a/d;->d:Ljava/lang/String;

    iget-object v8, v0, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    sget-object v9, Lcom/dianxinos/library/b/b/d/a;->a:Ljava/lang/Object;

    if-eq v8, v9, :cond_a

    iget-object v8, v0, Lcom/dianxinos/library/b/b/a/d;->c:Lcom/dianxinos/library/b/b/d/p;

    iget-object v9, v0, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lcom/dianxinos/library/b/b/d/p;->a(Ljava/lang/Object;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v9, v9, Lcom/dianxinos/library/b/b/d/q;->v:Lcom/dianxinos/library/b/b/b/a;

    iget-object v10, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    invoke-static {v10, v7}, Lcom/dianxinos/library/b/b/d/q;->a(Lcom/dianxinos/library/b/b/d/q;Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Lcom/dianxinos/library/b/b/b/a;->a([B[B)[B

    move-result-object v7

    iput-object v7, v0, Lcom/dianxinos/library/b/b/a/d;->e:[B

    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    move v4, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    iput-object v6, v0, Lcom/dianxinos/library/b/b/a/d;->e:[B

    goto :goto_7

    :cond_b
    sget v0, Lcom/dianxinos/library/b/b/d/q;->p:I

    add-int/2addr v0, v2

    sput v0, Lcom/dianxinos/library/b/b/d/q;->p:I

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v0, v0, Lcom/dianxinos/library/b/b/d/q;->u:Lcom/dianxinos/library/b/b/c/a;

    iget-object v3, p0, Lcom/dianxinos/library/b/b/d/s;->b:[Lcom/dianxinos/library/b/b/a/d;

    invoke-virtual {v0, v3, v2}, Lcom/dianxinos/library/b/b/c/a;->a([Lcom/dianxinos/library/b/b/a/d;I)Z

    if-eqz v1, :cond_c

    :try_start_2
    iget-object v0, v1, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    :goto_8
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    invoke-virtual {v0, v5}, Lcom/dianxinos/library/b/b/d/q;->a(Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_8
.end method

.method public run()V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/b/b/d/q;->o:Lcom/dianxinos/library/b/c/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dianxinos/library/b/c/g;->a(I)V

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v2, v0, Lcom/dianxinos/library/b/b/d/q;->C:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/s;->a:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-boolean v0, v0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-boolean v0, v0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/dianxinos/library/b/b/d/s;->a()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    :goto_0
    iput-boolean v1, p0, Lcom/dianxinos/library/b/b/d/s;->a:Z

    sget-object v2, Lcom/dianxinos/library/b/b/d/q;->o:Lcom/dianxinos/library/b/c/g;

    invoke-virtual {v2, v1}, Lcom/dianxinos/library/b/c/g;->b(I)J

    move-result-wide v2

    sget-boolean v4, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/dianxinos/library/b/b/d/q;->p:I

    if-lez v4, :cond_0

    if-lez v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dianxinos/library/b/b/d/s;->c:Lcom/dianxinos/library/b/b/d/q;

    iget-object v5, v5, Lcom/dianxinos/library/b/b/d/q;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, avg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v6, v0

    div-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms, totalAvg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/dianxinos/library/b/b/d/q;->o:Lcom/dianxinos/library/b/c/g;

    invoke-virtual {v2, v1}, Lcom/dianxinos/library/b/c/g;->c(I)F

    move-result v1

    sget v2, Lcom/dianxinos/library/b/b/d/q;->p:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/dianxinos/library/b/b/d/q;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iput-boolean v1, p0, Lcom/dianxinos/library/b/b/d/s;->a:Z

    sget-object v0, Lcom/dianxinos/library/b/b/d/q;->o:Lcom/dianxinos/library/b/c/g;

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/b/c/g;->b(I)J

    sget-boolean v0, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/dianxinos/library/b/b/d/q;->p:I

    if-lez v0, :cond_0

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/dianxinos/library/b/b/d/s;->a:Z

    sget-object v2, Lcom/dianxinos/library/b/b/d/q;->o:Lcom/dianxinos/library/b/c/g;

    invoke-virtual {v2, v1}, Lcom/dianxinos/library/b/c/g;->b(I)J

    sget-boolean v1, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/dianxinos/library/b/b/d/q;->p:I

    if-lez v1, :cond_1

    :cond_1
    throw v0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method
