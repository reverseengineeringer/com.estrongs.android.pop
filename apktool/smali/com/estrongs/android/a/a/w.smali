.class Lcom/estrongs/android/a/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/a/a/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/a/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    iput-object p2, p0, Lcom/estrongs/android/a/a/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->a(Lcom/estrongs/android/a/a/v;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->b(Lcom/estrongs/android/a/a/v;)Lcom/estrongs/android/a/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v1}, Lcom/estrongs/android/a/a/v;->a(Lcom/estrongs/android/a/a/v;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/a/f;->a(I)[Lcom/estrongs/android/a/b/r;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "same Cached number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/estrongs/android/a/b/r;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->c(Lcom/estrongs/android/a/a/v;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->c(Lcom/estrongs/android/a/a/v;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_4

    :cond_0
    :goto_2
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->b(Lcom/estrongs/android/a/a/v;)Lcom/estrongs/android/a/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/a/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/a/f;->a(Ljava/lang/String;)[Lcom/estrongs/android/a/b/r;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->d(Lcom/estrongs/android/a/a/v;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->e(Lcom/estrongs/android/a/a/v;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/a/w;->b:Lcom/estrongs/android/a/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/a/v;->b(Lcom/estrongs/android/a/a/v;)Lcom/estrongs/android/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/f;->b()V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load same file cache: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method
