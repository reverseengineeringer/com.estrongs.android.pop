.class Lcom/estrongs/android/pop/view/utils/e;
.super Lcom/estrongs/android/ui/dialog/jh;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/view/utils/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/utils/d;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/utils/e;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iput-object p6, p0, Lcom/estrongs/android/pop/view/utils/e;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    const v1, 0x7f080181

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/d;->b:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/estrongs/a/a;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/utils/c;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/utils/d;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->a:Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    :goto_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/d;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    monitor-enter v2

    if-eqz v1, :cond_1

    :try_start_0
    iget-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->lastModified:J

    invoke-interface {v1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->size:J

    invoke-interface {v1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    :cond_0
    invoke-interface {v1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->lastModified:J

    invoke-interface {v1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->size:J

    :cond_1
    sget-object v1, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/utils/e;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/c;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->cachePath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/c;->d:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->localFileLastModified:J

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->c()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/c;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void

    :cond_3
    new-instance v0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/d;->b:Lcom/estrongs/fs/h;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;-><init>(Lcom/estrongs/fs/h;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected c(Lcom/estrongs/a/a;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/d;->c:Lcom/estrongs/android/pop/view/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    const v2, 0x7f0802e7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/view/utils/e;->c:Lcom/estrongs/android/pop/view/utils/d;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/utils/d;->b:Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method
