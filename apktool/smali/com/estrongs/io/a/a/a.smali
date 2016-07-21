.class public Lcom/estrongs/io/a/a/a;
.super Lcom/estrongs/io/a/a/b;

# interfaces
.implements Lcom/estrongs/io/a/b;


# instance fields
.field private a:Z

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/io/archive/e;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/io/a/a/b;-><init>(Lcom/estrongs/io/archive/e;)V

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/a;->a:Z

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/a;->k:Z

    iput-object p2, p0, Lcom/estrongs/io/a/a/a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/io/a/a/a;->a:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/a/a/a;->e:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/io/a/a/a;->e:Lcom/estrongs/io/archive/e;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/estrongs/io/archive/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/io/a/a/a;->k:Z

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/io/a/a/a;->k:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/io/a/a/a;->l:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/io/a/a/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/a/a/a;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/a/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public d()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
