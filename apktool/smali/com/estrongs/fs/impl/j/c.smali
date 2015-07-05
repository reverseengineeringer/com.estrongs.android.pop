.class final Lcom/estrongs/fs/impl/j/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/j/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/fs/impl/j/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/fs/impl/j/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/j/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/fs/impl/j/c;->b:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/estrongs/fs/impl/j/b;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/estrongs/fs/impl/j/f;

    invoke-direct {v4}, Lcom/estrongs/fs/impl/j/f;-><init>()V

    instance-of v5, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, v4, Lcom/estrongs/fs/impl/j/f;->a:J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    sub-long v0, v2, v0

    iput-wide v0, v4, Lcom/estrongs/fs/impl/j/f;->b:J

    :cond_2
    :goto_1
    sget-object v1, Lcom/estrongs/fs/impl/j/b;->a:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/fs/impl/j/b;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/estrongs/fs/impl/j/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/NetFsException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v0, v2, v3, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getLeftSpaceSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/estrongs/fs/impl/j/f;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/estrongs/fs/impl/j/f;->a:J
    :try_end_3
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
