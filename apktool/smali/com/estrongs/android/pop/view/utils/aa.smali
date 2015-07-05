.class public Lcom/estrongs/android/pop/view/utils/aa;
.super Landroid/os/FileObserver;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/aa;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/aa;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->cachePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->localFileLastModified:J

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->a(Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_1
    sget-object v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/aa;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->cachePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->localFileLastModified:J

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->a(Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method
