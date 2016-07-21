.class public Lcom/estrongs/fs/b/au;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/estrongs/fs/d;

.field d:Landroid/app/Activity;

.field e:Lcom/estrongs/fs/b/aq;

.field f:Ljava/lang/Object;

.field g:J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/d;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/au;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/au;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/au;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/au;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/au;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/au;->k:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/b/au;->g:J

    iput-object p2, p0, Lcom/estrongs/fs/b/au;->c:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/fs/b/au;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/au;->canRestart:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/au;->d:Landroid/app/Activity;

    const/16 v0, 0x18

    iput v0, p0, Lcom/estrongs/fs/b/au;->task_type:I

    return-void
.end method

.method private a(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/.estrongs/recycle/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "/es_recycle_content/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    const-string v3, "/es_recycle_content/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/au;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected postTask()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/a/a;->postTask()V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/c;->a(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/n/d;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/v/c;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cm;->b()V

    goto :goto_0
.end method

.method public requestStop()V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aq;->requestStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-super {p0}, Lcom/estrongs/a/a;->requestStop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public task()Z
    .locals 14

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x4

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    if-eq v0, v5, :cond_3

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v1, v12, :cond_3

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v3, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v3, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v3, v0, Lcom/estrongs/a/a/m;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v3, v0, Lcom/estrongs/a/a/m;->n:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v13, v0, Lcom/estrongs/a/a/m;->o:Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/estrongs/fs/b/au;->a(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    new-instance v6, Lcom/estrongs/fs/b/av;

    invoke-direct {v6, p0}, Lcom/estrongs/fs/b/av;-><init>(Lcom/estrongs/fs/b/au;)V

    new-instance v7, Lcom/estrongs/android/pop/m;

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->d:Landroid/app/Activity;

    invoke-direct {v7, v0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/fs/b/au;->taskStopped()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v8}, Lcom/estrongs/fs/b/aq;->taskStopped()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aq;->getTaskStatus()I

    move-result v0

    if-eq v0, v12, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aq;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v3, v0, Lcom/estrongs/a/p;->a:I

    iget-object v0, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/fs/b/au;->setTaskResult(ILjava/lang/Object;)V

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v0, v0

    if-nez v0, :cond_c

    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/.estrongs/recycle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_4
    move-object v1, v0

    goto :goto_3

    :cond_a
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Lcom/estrongs/fs/impl/local/f;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/estrongs/fs/b/au;->g:J

    iget-object v9, p0, Lcom/estrongs/fs/b/au;->f:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    new-instance v0, Lcom/estrongs/fs/b/aq;

    iget-object v10, p0, Lcom/estrongs/fs/b/au;->c:Lcom/estrongs/fs/d;

    invoke-direct {v0, v10, v1, v8}, Lcom/estrongs/fs/b/aq;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V

    iput-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/aq;->a(Lcom/estrongs/a/a;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/b/aq;->g(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    iget-object v0, v0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/a/a/m;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    iget-object v0, v0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v3, v0, Lcom/estrongs/a/a/m;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/au;->getProgressListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/aq;->addProgressListeners(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0, v6}, Lcom/estrongs/fs/b/aq;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0, v7}, Lcom/estrongs/fs/b/aq;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/b/aq;->execute(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/aq;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/aq;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/aq;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->e:Lcom/estrongs/fs/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/aq;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    move-object v0, v2

    goto/16 :goto_4

    :cond_c
    move-object v0, v2

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/estrongs/fs/b/au;->taskStopped()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, v12}, Lcom/estrongs/fs/b/au;->setTaskStatus(I)V

    :cond_e
    return v13
.end method
