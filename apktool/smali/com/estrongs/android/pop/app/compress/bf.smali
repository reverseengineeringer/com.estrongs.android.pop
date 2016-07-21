.class Lcom/estrongs/android/pop/app/compress/bf;
.super Lcom/estrongs/io/a/a/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bb;Lcom/estrongs/io/archive/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bf;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/io/a/a/a;-><init>(Lcom/estrongs/io/archive/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bf;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->c(Lcom/estrongs/android/pop/app/compress/bb;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bf;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->d(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/cb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bf;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->d(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bf;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->c(Lcom/estrongs/android/pop/app/compress/bb;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bf;->e:Lcom/estrongs/io/archive/e;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/bg;-><init>(Lcom/estrongs/android/pop/app/compress/bf;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bf;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->c(Lcom/estrongs/android/pop/app/compress/bb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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

    goto :goto_1
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/io/a/a/a;->a(Ljava/lang/String;JI)V

    return-void
.end method
