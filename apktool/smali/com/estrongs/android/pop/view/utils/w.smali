.class final Lcom/estrongs/android/pop/view/utils/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/ab;

    iget-boolean v6, v0, Lcom/estrongs/android/pop/view/utils/ab;->a:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/estrongs/android/pop/view/utils/ab;->b:Lcom/estrongs/android/pop/view/utils/y;

    if-eqz v6, :cond_2

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/ab;->b:Lcom/estrongs/android/pop/view/utils/y;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/y;->requestStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v6, v0, Lcom/estrongs/android/pop/view/utils/ab;->b:Lcom/estrongs/android/pop/view/utils/y;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/estrongs/android/pop/view/utils/ab;->a:Z

    sget-object v6, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->d:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->a(Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;Lcom/estrongs/android/pop/view/utils/ab;)Lcom/estrongs/android/pop/view/utils/y;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/ab;->b:Lcom/estrongs/android/pop/view/utils/y;

    new-instance v1, Lcom/estrongs/android/ui/notification/e;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v7

    const v8, 0x7f0b042f

    invoke-virtual {v7, v8}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/estrongs/android/pop/view/utils/ab;->b:Lcom/estrongs/android/pop/view/utils/y;

    invoke-direct {v1, v6, v7, v8}, Lcom/estrongs/android/ui/notification/e;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/ab;->b:Lcom/estrongs/android/pop/view/utils/y;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/y;->execute()V

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method
