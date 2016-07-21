.class Lcom/estrongs/android/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:J

.field final synthetic d:Lcom/estrongs/android/a/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/ab;Ljava/lang/String;Ljava/util/ArrayList;J)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    iput-object p2, p0, Lcom/estrongs/android/a/ad;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/a/ad;->b:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/estrongs/android/a/ad;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/ad;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/ad;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->b(Lcom/estrongs/android/a/ab;)V

    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->c(Lcom/estrongs/android/a/ab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/estrongs/android/a/b/l;

    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->c(Lcom/estrongs/android/a/ab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->e(Lcom/estrongs/android/a/ab;)I

    move-result v0

    new-array v3, v0, [Lcom/estrongs/android/a/b/k;

    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->f(Lcom/estrongs/android/a/ab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/a/a;

    iget-object v4, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v4}, Lcom/estrongs/android/a/ab;->g(Lcom/estrongs/android/a/ab;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/a/a;-><init>(Ljava/lang/String;[Lcom/estrongs/android/a/b/l;[Lcom/estrongs/android/a/b/k;JJ)V

    move v1, v8

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v2}, Lcom/estrongs/android/a/ab;->h(Lcom/estrongs/android/a/ab;)[Lcom/estrongs/android/a/a/k;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v2}, Lcom/estrongs/android/a/ab;->h(Lcom/estrongs/android/a/ab;)[Lcom/estrongs/android/a/a/k;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v2}, Lcom/estrongs/android/a/ab;->i(Lcom/estrongs/android/a/ab;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v2}, Lcom/estrongs/android/a/ab;->i(Lcom/estrongs/android/a/ab;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_2

    new-instance v2, Lcom/estrongs/android/a/ag;

    iget-object v3, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    iget-object v4, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v4}, Lcom/estrongs/android/a/ab;->h(Lcom/estrongs/android/a/ab;)[Lcom/estrongs/android/a/a/k;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, v0}, Lcom/estrongs/android/a/ag;-><init>(Lcom/estrongs/android/a/ab;Lcom/estrongs/android/a/a/k;Lcom/estrongs/android/a/a;)V

    iget-object v3, p0, Lcom/estrongs/android/a/ad;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v4}, Lcom/estrongs/android/a/ab;->i(Lcom/estrongs/android/a/ab;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->d(Lcom/estrongs/android/a/ab;)V

    move-object v2, v1

    goto :goto_0

    :cond_4
    move v2, v8

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/a/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iget-object v2, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v2}, Lcom/estrongs/android/a/ab;->j(Lcom/estrongs/android/a/ab;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->k(Lcom/estrongs/android/a/ab;)Lcom/estrongs/android/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/ad;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_6
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/estrongs/android/a/ab;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analyze finish"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/estrongs/android/a/ab;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/estrongs/android/a/ad;->c:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/ad;->d:Lcom/estrongs/android/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/a/ab;->k(Lcom/estrongs/android/a/ab;)Lcom/estrongs/android/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/ad;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    goto :goto_4
.end method
