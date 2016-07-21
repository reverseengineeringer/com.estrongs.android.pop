.class Lcom/estrongs/android/pop/app/b/s;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/b/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/k;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/s;->b:Lcom/estrongs/android/pop/app/b/k;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/b/s;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-class v1, Lcom/estrongs/android/pop/app/b/k;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/s;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/s;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->k(Lcom/estrongs/android/pop/app/b/k;)V

    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/s;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/android/pop/app/b/k;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/s;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->l(Lcom/estrongs/android/pop/app/b/k;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
