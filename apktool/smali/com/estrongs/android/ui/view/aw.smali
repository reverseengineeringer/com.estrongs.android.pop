.class Lcom/estrongs/android/ui/view/aw;
.super Ljava/lang/Thread;


# instance fields
.field public a:I

.field public b:I

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/aw;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/aw;->a:I

    iput v1, p0, Lcom/estrongs/android/ui/view/aw;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/aw;->e:Lcom/estrongs/android/ui/view/ESVideoView;

    iput-object p1, p0, Lcom/estrongs/android/ui/view/aw;->e:Lcom/estrongs/android/ui/view/ESVideoView;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/estrongs/android/ui/view/aw;->a:I

    iget v0, p0, Lcom/estrongs/android/ui/view/aw;->a:I

    iput v0, p0, Lcom/estrongs/android/ui/view/aw;->b:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/aw;->c:Z

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/aw;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/view/aw;->a:I

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/aw;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/estrongs/android/ui/view/aw;->a:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/estrongs/android/ui/view/aw;->a:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aw;->e:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->a(I)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    return-void
.end method
