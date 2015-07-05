.class Lcom/estrongs/android/ftp/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ftp/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->a(Lcom/estrongs/android/ftp/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->b(Lcom/estrongs/android/ftp/a;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->c(Lcom/estrongs/android/ftp/a;)J

    move-result-wide v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v4}, Lcom/estrongs/android/ftp/a;->d(Lcom/estrongs/android/ftp/a;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    iget-boolean v4, v4, Lcom/estrongs/android/ftp/a;->e:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v4}, Lcom/estrongs/android/ftp/a;->a(Lcom/estrongs/android/ftp/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v5}, Lcom/estrongs/android/ftp/a;->b(Lcom/estrongs/android/ftp/a;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    iget-object v2, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v2}, Lcom/estrongs/android/ftp/a;->c(Lcom/estrongs/android/ftp/a;)J

    move-result-wide v2

    sub-long v8, v2, v0

    iget-object v0, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->b(Lcom/estrongs/android/ftp/a;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->c(Lcom/estrongs/android/ftp/a;)J

    move-result-wide v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v4, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    iget-object v4, v4, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/ftp/b;->a:Lcom/estrongs/android/ftp/a;

    iget-object v4, v4, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/estrongs/android/ftp/d;->a(JJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_1
    return-void
.end method
