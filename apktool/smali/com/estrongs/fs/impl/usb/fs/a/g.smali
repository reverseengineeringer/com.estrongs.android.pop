.class public Lcom/estrongs/fs/impl/usb/fs/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/c;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/driver/a;

.field private b:Lcom/estrongs/fs/impl/usb/fs/a/b;

.field private c:Lcom/estrongs/fs/impl/usb/fs/a/c;

.field private d:Lcom/estrongs/fs/impl/usb/fs/a/e;

.field private e:Lcom/estrongs/fs/impl/usb/fs/a/a;

.field private f:Lcom/estrongs/fs/impl/usb/fs/a/h;

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->g:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->a:Lcom/estrongs/fs/impl/usb/driver/a;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->b:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iput-object p3, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->c:Lcom/estrongs/fs/impl/usb/fs/a/c;

    iput-object p4, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    iput-object p5, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    return-void
.end method

.method public static a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/e;)Lcom/estrongs/fs/impl/usb/fs/a/g;
    .locals 6

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/g;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/impl/usb/fs/a/g;-><init>(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/e;)V

    return-object v0
.end method

.method private m()V
    .locals 8

    sget-object v7, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->e:Lcom/estrongs/fs/impl/usb/fs/a/a;

    if-nez v0, :cond_0

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/a/a;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->a:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v5, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->b:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v6, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->c:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/a/a;-><init>(JLcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;)V

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->e:Lcom/estrongs/fs/impl/usb/fs/a/a;

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->e:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(J)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(JLjava/nio/ByteBuffer;)V
    .locals 3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "The file is deleted"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/g;->m()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->e()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->e:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(JLjava/nio/ByteBuffer;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, v2, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(JLjava/nio/ByteBuffer;)V
    .locals 7

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "The file is deleted"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/g;->m()V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/g;->f()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/g;->a(J)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->f()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->e:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/fs/impl/usb/fs/a/a;->b(JLjava/nio/ByteBuffer;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, v2, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/c;)V

    check-cast p1, Lcom/estrongs/fs/impl/usb/fs/a/e;

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/g;->g()V

    return-void
.end method

.method public d()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()[Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()J
    .locals 4

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->c()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 4

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/g;->m()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->e:Lcom/estrongs/fs/impl/usb/fs/a/a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->g:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->j()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->k()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->l()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/g;->f:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->m()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
