.class public Lcom/estrongs/android/pop/app/f/n;
.super Ljava/lang/Thread;


# instance fields
.field public a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/estrongs/android/pop/app/f/m;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/f/m;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/n;->b:Lcom/estrongs/android/pop/app/f/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/pop/app/f/m;->a(Lcom/estrongs/android/pop/app/f/m;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-object p2, p0, Lcom/estrongs/android/pop/app/f/n;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/n;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/n;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/n;->b:Lcom/estrongs/android/pop/app/f/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/m;->a(Lcom/estrongs/android/pop/app/f/m;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
