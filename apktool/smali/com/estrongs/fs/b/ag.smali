.class public Lcom/estrongs/fs/b/ag;
.super Lcom/estrongs/a/a;


# instance fields
.field a:Lcom/estrongs/fs/b/ai;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ag;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ag;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ag;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ag;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ag;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/ag;->i:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ag;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iput-object p1, p0, Lcom/estrongs/fs/b/ag;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/fs/b/ag;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    if-eq v0, v3, :cond_1

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v1, v0, :cond_1

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->p:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->n:Z

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/ag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ag;->j:Z

    return v0
.end method

.method private c()Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/estrongs/fs/b/ai;

    iget-object v2, p0, Lcom/estrongs/fs/b/ag;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ag;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/b/ai;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    iput-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ag;->getProgressListeners()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/ai;->addProgressListeners(Ljava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/ai;->execute(Z)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ai;->getTaskStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ai;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v2, v1, Lcom/estrongs/a/p;->a:I

    iget-object v1, v1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/ag;->setTaskResult(ILjava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v1, v1, Lcom/estrongs/fs/b/ai;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Exception;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b048a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/ag;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v1, v1, Lcom/estrongs/fs/b/ai;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v1, v1, Lcom/estrongs/fs/b/ai;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->c:J

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/d;->a(Ljava/util/List;Ljava/util/Set;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->c(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->c(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->c(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cd;->b()V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->b:Ljava/util/List;

    return-object v0
.end method

.method public canHide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected postTask()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/a/a;->postTask()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ag;->a()V

    return-void
.end method

.method public requestStop()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ai;->requestStop()V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/a/a;->requestStop()V

    return-void
.end method

.method public task()Z
    .locals 13

    const/4 v0, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/b/ag;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v12, p0, Lcom/estrongs/fs/b/ag;->j:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/estrongs/fs/b/ag;->j:Z

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/ag;->onProgress(Lcom/estrongs/a/a/m;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-boolean v1, v1, Lcom/estrongs/fs/b/ai;->a:Z

    if-nez v1, :cond_a

    const-class v0, Lcom/estrongs/a/a/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ag;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/f;

    iget-object v1, v0, Lcom/estrongs/a/a/f;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ag;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v12, p0, Lcom/estrongs/fs/b/ag;->j:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/estrongs/fs/b/ah;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/ah;-><init>(Lcom/estrongs/fs/b/ag;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ah;->start()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-boolean v0, v0, Lcom/estrongs/fs/b/ai;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-boolean v0, v0, Lcom/estrongs/fs/b/ai;->a:Z

    if-nez v0, :cond_3

    move v1, v3

    :goto_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v0, v0, Lcom/estrongs/fs/b/ai;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v2, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v0, v0, Lcom/estrongs/fs/b/ai;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v0, v0, Lcom/estrongs/fs/b/ai;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move v5, v3

    move v2, v3

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v0, v0, Lcom/estrongs/fs/b/ai;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ag;->taskStopped()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v12, p0, Lcom/estrongs/fs/b/ag;->j:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v0, v3

    goto/16 :goto_0

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v0, v0, Lcom/estrongs/fs/b/ai;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/ag;->onProgress(Lcom/estrongs/a/a/m;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-boolean v1, v1, Lcom/estrongs/fs/b/ai;->a:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/estrongs/fs/util/c;

    iget-object v4, v6, Lcom/estrongs/a/a/f;->a:Ljava/lang/String;

    iget-boolean v8, v6, Lcom/estrongs/a/a/f;->b:Z

    invoke-direct {v1, v0, v4, v8}, Lcom/estrongs/fs/util/c;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;Z)V

    :goto_4
    invoke-virtual {v1}, Lcom/estrongs/fs/util/c;->a()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    iput-boolean v12, p0, Lcom/estrongs/fs/b/ag;->j:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v0, v3

    goto/16 :goto_0

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/estrongs/fs/b/ag;->a:Lcom/estrongs/fs/b/ai;

    iget-object v1, v1, Lcom/estrongs/fs/b/ai;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/util/b;

    new-instance v4, Lcom/estrongs/fs/util/c;

    iget-object v8, v1, Lcom/estrongs/fs/util/b;->a:Ljava/lang/String;

    iget-boolean v9, v1, Lcom/estrongs/fs/util/b;->b:Z

    iget-object v1, v1, Lcom/estrongs/fs/util/b;->c:Ljava/lang/String;

    invoke-direct {v4, v0, v8, v9, v1}, Lcom/estrongs/fs/util/c;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v4

    goto :goto_4

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/estrongs/fs/b/ag;->i:I

    new-instance v8, Ljava/io/File;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->d:Ljava/util/List;

    iget-object v9, p0, Lcom/estrongs/fs/b/ag;->e:Ljava/util/List;

    iget-object v10, p0, Lcom/estrongs/fs/b/ag;->f:Ljava/util/List;

    iget-object v11, p0, Lcom/estrongs/fs/b/ag;->g:Ljava/util/List;

    invoke-static {v8, v0, v9, v10, v11}, Lcom/estrongs/android/pop/utils/cd;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    or-int/2addr v0, v4

    iput v0, p0, Lcom/estrongs/fs/b/ag;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->h:Ljava/util/List;

    invoke-virtual {v1}, Lcom/estrongs/fs/util/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v1}, Lcom/estrongs/fs/util/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ag;->processData:Lcom/estrongs/a/a/m;

    add-int/lit8 v1, v5, 0x1

    int-to-long v8, v1

    iput-wide v8, v0, Lcom/estrongs/a/a/m;->d:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ag;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-boolean v12, p0, Lcom/estrongs/fs/b/ag;->j:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v3

    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ftruncate failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Invalid argument"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0498

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    const/16 v3, 0x2710

    new-instance v4, Lcom/estrongs/a/q;

    invoke-direct {v4, v2, v1}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/ag;->setTaskResult(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iput-boolean v12, p0, Lcom/estrongs/fs/b/ag;->j:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v12, p0, Lcom/estrongs/fs/b/ag;->j:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_5

    :cond_a
    move-object v6, v0

    goto/16 :goto_1
.end method
