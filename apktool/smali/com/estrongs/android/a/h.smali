.class Lcom/estrongs/android/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/h;->a:Lcom/estrongs/android/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/h;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->h(Lcom/estrongs/android/a/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/a/h;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->i(Lcom/estrongs/android/a/b;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
