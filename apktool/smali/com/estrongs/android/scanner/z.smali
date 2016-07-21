.class Lcom/estrongs/android/scanner/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    invoke-static {v0}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/y;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    invoke-static {v0}, Lcom/estrongs/android/scanner/y;->b(Lcom/estrongs/android/scanner/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    invoke-static {v0}, Lcom/estrongs/android/scanner/y;->c(Lcom/estrongs/android/scanner/y;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/scanner/y;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit the processor task!"

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
    iget-object v0, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    invoke-static {v0}, Lcom/estrongs/android/scanner/y;->d(Lcom/estrongs/android/scanner/y;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/f;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/f;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/y;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    invoke-static {v0}, Lcom/estrongs/android/scanner/y;->e(Lcom/estrongs/android/scanner/y;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/estrongs/android/scanner/y;->b(Lcom/estrongs/android/scanner/y;Z)Z

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/scanner/z;->a:Lcom/estrongs/android/scanner/y;

    invoke-static {v1, v0}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/y;Lcom/estrongs/android/scanner/a/f;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method
