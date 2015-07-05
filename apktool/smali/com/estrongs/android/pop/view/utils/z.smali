.class Lcom/estrongs/android/pop/view/utils/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Lcom/estrongs/android/pop/view/utils/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/utils/y;Ljava/lang/String;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/utils/z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/utils/z;->b:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/y;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/y;->a(Lcom/estrongs/android/pop/view/utils/y;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/y;->b(Lcom/estrongs/android/pop/view/utils/y;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/y;->a()V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".old"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-static {v3}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/view/utils/y;->a(Lcom/estrongs/android/pop/view/utils/y;Z)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_b

    :cond_4
    move v1, v0

    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_6

    if-nez v1, :cond_6

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v6, v6, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v6, v6, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v5

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/z;->a:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_3
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-wide/16 v0, 0x3e8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;

    move-result-object v1

    sget-object v3, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    monitor-enter v3
    :try_end_4
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    sget-object v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-interface {v1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->lastModified:J

    invoke-interface {v1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->size:J

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->cachePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->localFileLastModified:J

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c()V

    :cond_9
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/y;->c(Lcom/estrongs/android/pop/view/utils/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/z;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :try_start_6
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/utils/y;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z
    :try_end_6
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/z;->c:Lcom/estrongs/android/pop/view/utils/y;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/y;->a()V

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v4

    goto/16 :goto_2
.end method
