.class public Lcom/estrongs/fs/b/aj;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field public b:Lcom/estrongs/fs/h;

.field public c:Ljava/lang/Throwable;

.field public d:Lcom/estrongs/android/pop/h;

.field e:Lcom/estrongs/fs/util/a/a;

.field f:Lcom/estrongs/fs/i;

.field g:Ljava/lang/Boolean;

.field h:Lcom/estrongs/android/util/TypedMap;

.field public i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/estrongs/fs/b/ak;

.field private l:J


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/android/pop/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->c:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->e:Lcom/estrongs/fs/util/a/a;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->f:Lcom/estrongs/fs/i;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->k:Lcom/estrongs/fs/b/ak;

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/aj;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/fs/b/aj;->l:J

    iput-object p1, p0, Lcom/estrongs/fs/b/aj;->a:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/aj;->d:Lcom/estrongs/android/pop/h;

    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aj;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/b/aj;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aj;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/b/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/aj;->k:Lcom/estrongs/fs/b/ak;

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aj;->requestStop()V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->c:Ljava/lang/Throwable;

    aget-object v0, p1, v2

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    aget-object v0, p1, v1

    check-cast v0, Lcom/estrongs/fs/util/a/a;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->e:Lcom/estrongs/fs/util/a/a;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Lcom/estrongs/fs/i;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->f:Lcom/estrongs/fs/i;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->g:Ljava/lang/Boolean;

    array-length v0, p1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    aget-object v0, p1, v4

    if-eqz v0, :cond_0

    aget-object v0, p1, v4

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/a/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/estrongs/fs/a/d;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/a/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ax(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    invoke-super {p0, v1}, Lcom/estrongs/a/a;->execute(Z)V

    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aj;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/aj;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/aj;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aj;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/aj;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/aj;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/aj;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aj;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected needSystemLock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onProgress(Lcom/estrongs/a/a/m;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/fs/b/aj;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/a/a;->onProgress(Lcom/estrongs/a/a/m;)V

    iput-wide v0, p0, Lcom/estrongs/fs/b/aj;->l:J

    goto :goto_0
.end method

.method public task()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/estrongs/fs/b/aj;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v4, v3}, Lcom/estrongs/fs/d;->l(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v5, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v6, "offset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v5, "limit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_0
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v5, "partialListener"

    iget-object v6, p0, Lcom/estrongs/fs/b/aj;->k:Lcom/estrongs/fs/b/ak;

    invoke-virtual {v2, v5, v6}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_1
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->a:Lcom/estrongs/fs/d;

    iget-object v5, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    iget-object v6, p0, Lcom/estrongs/fs/b/aj;->g:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/estrongs/fs/b/aj;->f:Lcom/estrongs/fs/i;

    iget-object v8, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->k:Lcom/estrongs/fs/b/ak;

    if-eqz v2, :cond_2

    if-ltz v4, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "cacheStatus"

    invoke-virtual {v2, v4}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_e

    :cond_2
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->e:Lcom/estrongs/fs/util/a/a;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->e:Lcom/estrongs/fs/util/a/a;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/utils/ac;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/ad;->z(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/estrongs/fs/b/aj;->a()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v3, "Comparison method violates its general contract!"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->c:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-static {v0, v2}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v2, "get_data_from_cache"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const-string v2, "ALL_LOADED"

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/aj;->setTaskResult(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_7
    const/4 v0, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/aj;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_1

    :cond_8
    move v3, v2

    :goto_2
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "cacheStatus"

    invoke-virtual {v2, v4}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->a:Lcom/estrongs/fs/d;

    iget-object v4, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/estrongs/fs/b/aj;->f:Lcom/estrongs/fs/i;

    iget-object v7, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    :cond_9
    invoke-direct {p0}, Lcom/estrongs/fs/b/aj;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->e:Lcom/estrongs/fs/util/a/a;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_a

    :try_start_6
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/aj;->e:Lcom/estrongs/fs/util/a/a;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :try_start_7
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->k:Lcom/estrongs/fs/b/ak;

    iget-object v4, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    invoke-interface {v2, p0, v4}, Lcom/estrongs/fs/b/ak;->a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "loadFinished"

    invoke-virtual {v2, v4}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v2, "loadFinished"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "ALL_LOADED"

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/aj;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v4, "Comparison method violates its general contract!"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    throw v2

    :cond_c
    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "offset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->a:Lcom/estrongs/fs/d;

    iget-object v4, p0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/estrongs/fs/b/aj;->f:Lcom/estrongs/fs/i;

    iget-object v7, p0, Lcom/estrongs/fs/b/aj;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    if-gtz v3, :cond_8

    goto :goto_3

    :cond_d
    :try_start_8
    iput-object v0, p0, Lcom/estrongs/fs/b/aj;->c:Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :cond_e
    move v3, v0

    goto/16 :goto_2
.end method
