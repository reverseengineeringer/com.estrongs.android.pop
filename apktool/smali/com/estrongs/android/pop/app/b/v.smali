.class Lcom/estrongs/android/pop/app/b/v;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/v;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-class v1, Lcom/estrongs/android/pop/app/b/k;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->p(Lcom/estrongs/android/pop/app/b/k;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Lcom/estrongs/android/pop/app/b/k;

    const/16 v2, 0xc8

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/android/pop/app/b/k;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->q(Lcom/estrongs/android/pop/app/b/k;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/v;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/android/pop/app/b/k;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
