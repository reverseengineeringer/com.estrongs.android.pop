.class public Lcom/estrongs/android/pop/view/utils/y;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

.field private b:Lcom/estrongs/fs/b/r;

.field private c:Lcom/estrongs/android/pop/view/utils/ab;

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;Lcom/estrongs/android/pop/view/utils/ab;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/y;->d:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/utils/y;->c:Lcom/estrongs/android/pop/view/utils/ab;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/y;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/utils/y;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/utils/y;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/utils/y;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/utils/y;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/utils/y;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/y;->d:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0
.end method

.method public addProgressListener(Lcom/estrongs/a/a/l;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/r;->addProgressListener(Lcom/estrongs/a/a/l;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/estrongs/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    return-object v0
.end method

.method public requestStop()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->requestStop()V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/a/a;->requestStop()V

    return-void
.end method

.method public task()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v5, v5, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/y;->d:Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iput-object v6, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->lastModified:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/y;->e:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->size:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/y;->f:J

    invoke-interface {v4}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/estrongs/android/pop/view/utils/y;->e:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/estrongs/android/pop/view/utils/y;->f:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iput-object v6, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iput-object v6, v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    throw v0

    :cond_4
    invoke-interface {v4}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".new"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_5

    const-string v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iput-object v0, v5, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->g()Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->b()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v0, Lcom/estrongs/fs/b/r;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v5

    new-instance v6, Lcom/estrongs/fs/impl/local/f;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->cachePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v7

    iget-object v8, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v7

    iget-object v8, p0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/r;->d(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/b/r;->e(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/utils/y;->getProgressListeners()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/b/r;->addProgressListeners(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    new-instance v5, Lcom/estrongs/android/pop/view/utils/z;

    invoke-direct {v5, p0, v1, v4}, Lcom/estrongs/android/pop/view/utils/z;-><init>(Lcom/estrongs/android/pop/view/utils/y;Ljava/lang/String;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/b/r;->addPostListener(Lcom/estrongs/a/a/o;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/r;->execute(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/y;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v1, v0, Lcom/estrongs/a/p;->a:I

    iget-object v0, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/view/utils/y;->setTaskResult(ILjava/lang/Object;)V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_6
    move v0, v3

    goto/16 :goto_0
.end method
