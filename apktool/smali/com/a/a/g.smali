.class public Lcom/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lcom/a/a/b;

.field private b:I

.field private c:I

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/a/a/b;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    iput p2, p0, Lcom/a/a/g;->b:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/a/a/g;->f:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget v0, p0, Lcom/a/a/g;->b:I

    iget v1, p0, Lcom/a/a/g;->c:I

    invoke-static {v0, v1}, Lcom/a/a/e;->b(II)[B

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/g;->c:I

    return-void
.end method

.method a([B)V
    .locals 2

    iget-object v1, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([BZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/g;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, p0, Lcom/a/a/g;->b:I

    iget v1, p0, Lcom/a/a/g;->c:I

    invoke-static {v0, v1, p1}, Lcom/a/a/e;->a(II[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_1
    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/a/a/g;->a([BZ)V

    return-void
.end method

.method c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->f:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/g;->f:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/g;->c()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/a/a/g;->b:I

    iget v1, p0, Lcom/a/a/g;->c:I

    invoke-static {v0, v1}, Lcom/a/a/e;->a(II)[B

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()[B
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/a/a/g;->f:Z

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/a/a/g;->f:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public e()[B
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/a/a/g;->f:Z

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/a/a/g;->f:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/a/a/g;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/g;->f:Z

    return v0
.end method
