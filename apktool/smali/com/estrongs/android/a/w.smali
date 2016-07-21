.class Lcom/estrongs/android/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/v;->a(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/v;->b(Lcom/estrongs/android/a/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/v;->c(Lcom/estrongs/android/a/v;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/a/v;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit the scanner task!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/BrokenBarrierException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/v;->d(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    invoke-static {v1, v0}, Lcom/estrongs/android/a/v;->a(Lcom/estrongs/android/a/v;Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    invoke-static {v0}, Lcom/estrongs/android/a/v;->e(Lcom/estrongs/android/a/v;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/a/w;->a:Lcom/estrongs/android/a/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/a/v;->a(Lcom/estrongs/android/a/v;Z)Z

    goto :goto_0
.end method
