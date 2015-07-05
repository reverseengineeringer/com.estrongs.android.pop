.class public Lcom/estrongs/fs/b/y;
.super Lcom/estrongs/a/a;


# instance fields
.field a:Lcom/estrongs/fs/b/aa;

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

.field private j:Ljava/lang/String;

.field private k:Z


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

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/y;->i:I

    iput-object v1, p0, Lcom/estrongs/fs/b/y;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/y;->k:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    iput-object p1, p0, Lcom/estrongs/fs/b/y;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/fs/b/y;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->p:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->n:Z

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/y;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/y;->k:Z

    return v0
.end method

.method private d()Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/estrongs/fs/b/aa;

    iget-object v2, p0, Lcom/estrongs/fs/b/y;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/y;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/b/aa;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    iput-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->getProgressListeners()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/aa;->addProgressListeners(Ljava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/aa;->execute(Z)V

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/aa;->getTaskStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/aa;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v2, v1, Lcom/estrongs/a/p;->a:I

    iget-object v1, v1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    iget-object v1, v1, Lcom/estrongs/fs/b/aa;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Exception;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0489

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    iget-object v1, v1, Lcom/estrongs/fs/b/aa;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    iget-object v1, v1, Lcom/estrongs/fs/b/aa;->a:Ljava/util/List;

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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/d;->a(Ljava/util/List;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->a(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cd;->b()V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
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

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->b:Ljava/util/List;

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
    iget-object v1, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

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

    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->a()V

    return-void
.end method

.method public requestStop()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aa;->requestStop()V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/a/a;->requestStop()V

    return-void
.end method

.method public task()Z
    .locals 14

    const/4 v13, 0x1

    const/4 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/b/y;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/estrongs/fs/b/y;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/m;)V

    const-class v0, Lcom/estrongs/a/a/e;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/e;

    iget-object v1, v0, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v2, v3

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/estrongs/fs/b/z;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/b/y;)V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/z;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    move v2, v3

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    iget-object v1, v1, Lcom/estrongs/fs/b/aa;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->taskStopped()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v2, v3

    goto :goto_0

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/estrongs/fs/b/y;->a:Lcom/estrongs/fs/b/aa;

    iget-object v1, v1, Lcom/estrongs/fs/b/aa;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    iget-object v7, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v7}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/m;)V

    new-instance v7, Lcom/estrongs/fs/util/a;

    iget-object v8, v0, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/estrongs/a/a/e;->b:Z

    invoke-direct {v7, v1, v8, v9}, Lcom/estrongs/fs/util/a;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Lcom/estrongs/fs/util/a;->a()Z
    :try_end_5
    .catch Lcom/estrongs/fs/util/EncryptException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_6
    const-string v8, "Password is incorrect"

    invoke-virtual {v7}, Lcom/estrongs/fs/util/EncryptException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, v2

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/estrongs/fs/b/y;->j:Ljava/lang/String;

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lcom/estrongs/fs/util/a;->b()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/estrongs/fs/b/y;->j:Ljava/lang/String;

    :cond_5
    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/estrongs/fs/b/y;->g:Ljava/util/List;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/estrongs/fs/b/y;->i:I

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lcom/estrongs/fs/util/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/estrongs/fs/b/y;->d:Ljava/util/List;

    iget-object v10, p0, Lcom/estrongs/fs/b/y;->e:Ljava/util/List;

    iget-object v11, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/List;

    iget-object v12, p0, Lcom/estrongs/fs/b/y;->h:Ljava/util/List;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/estrongs/android/pop/utils/cd;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v8

    or-int/2addr v1, v8

    iput v1, p0, Lcom/estrongs/fs/b/y;->i:I

    :cond_6
    invoke-virtual {v7}, Lcom/estrongs/fs/util/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/m;

    add-int/lit8 v7, v4, 0x1

    int-to-long v8, v7

    iput-wide v8, v1, Lcom/estrongs/a/a/m;->d:J

    move v1, v2

    goto :goto_2

    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/Exception;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0239

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2710

    new-instance v4, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v4}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    move v2, v3

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v2, v3

    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v13, p0, Lcom/estrongs/fs/b/y;->k:Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_3
.end method
