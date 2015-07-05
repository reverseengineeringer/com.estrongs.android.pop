.class final Lcom/estrongs/android/pop/view/utils/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 4

    const/4 v3, 0x1

    check-cast p1, Lcom/estrongs/android/pop/view/utils/y;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/ab;

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, v0, Lcom/estrongs/android/pop/view/utils/ab;->a:Z

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/estrongs/android/pop/view/utils/ab;->b:Lcom/estrongs/android/pop/view/utils/y;

    sget-object v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->d:Ljava/util/Map;

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->b()V

    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/utils/y;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/utils/y;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-ne v0, v3, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->cachePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->localFileLastModified:J

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->d:Ljava/util/Map;

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->b()V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
