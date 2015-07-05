.class public Lcom/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field a:Ljava/io/OutputStream;

.field private b:Ljava/net/Socket;

.field private c:I

.field private d:Ljava/io/InputStream;

.field private e:Ljava/lang/Thread;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/a/a/d;

.field private j:Z

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/a/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/b;->k:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b;->c:I

    invoke-direct {p0}, Lcom/a/a/b;->c()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/a/a/b;I)I
    .locals 0

    iput p1, p0, Lcom/a/a/b;->h:I

    return p1
.end method

.method public static a(Ljava/net/Socket;Lcom/a/a/d;)Lcom/a/a/b;
    .locals 2

    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0}, Lcom/a/a/b;-><init>()V

    iput-object p1, v0, Lcom/a/a/b;->i:Lcom/a/a/d;

    iput-object p0, v0, Lcom/a/a/b;->b:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/b;->d:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/b;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/b;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/a/a/b;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/b;->g:Z

    return p1
.end method

.method private c()Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/a/a/c;

    invoke-direct {v1, p0, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/b;Lcom/a/a/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/b;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/a/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/b;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/a/a/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    :try_start_0
    invoke-virtual {v0}, Lcom/a/a/g;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method static synthetic e(Lcom/a/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/b;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/a/a/b;)Lcom/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->i:Lcom/a/a/d;

    return-object v0
.end method

.method static synthetic g(Lcom/a/a/b;)I
    .locals 1

    iget v0, p0, Lcom/a/a/b;->h:I

    return v0
.end method

.method static synthetic h(Lcom/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/b;->d()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/g;
    .locals 4

    iget v0, p0, Lcom/a/a/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b;->c:I

    iget-boolean v1, p0, Lcom/a/a/b;->f:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connect() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/a/a/b;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_1
    iget-boolean v1, p0, Lcom/a/a/b;->g:Z

    if-nez v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Lcom/a/a/g;

    invoke-direct {v1, p0, v0}, Lcom/a/a/g;-><init>(Lcom/a/a/b;I)V

    iget-object v2, p0, Lcom/a/a/b;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/a/a/e;->a(ILjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Lcom/a/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/net/ConnectException;

    const-string v1, "Stream open actively rejected by remote peer"

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    return-object v1
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/b;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-static {}, Lcom/a/a/e;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b;->f:Z

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/b;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_1
    iget-boolean v0, p0, Lcom/a/a/b;->g:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/b;->f:Z

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/Thread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
