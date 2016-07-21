.class public Lcom/estrongs/fs/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/u;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/estrongs/fs/d;

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/old/fs/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/d;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/d;->f:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/estrongs/fs/d;->e:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/estrongs/fs/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/fs/d;
    .locals 2

    sget-object v0, Lcom/estrongs/fs/d;->c:Lcom/estrongs/fs/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/d;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/fs/d;->c:Lcom/estrongs/fs/d;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/d;->c:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v1, 0x7f0804a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/estrongs/fs/h;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/u/b;->a(Ljava/lang/String;Lcom/estrongs/fs/h;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;Lcom/estrongs/fs/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    .locals 2

    const-class v1, Lcom/estrongs/fs/d;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/i;",
            "ZZ)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/fs/x;

    invoke-direct {v1, p2}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v0, Lcom/estrongs/android/view/bn;

    const v2, 0x7fffffff

    invoke-direct {v0, p2, v2}, Lcom/estrongs/android/view/bn;-><init>(Ljava/lang/String;I)V

    move-object v7, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/estrongs/fs/h;

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    if-eqz v9, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v9, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v7, v6}, Lcom/estrongs/android/view/bn;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_5

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    invoke-interface {v6}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    :try_start_0
    invoke-interface {v6}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {p3, v6}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_8
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    move-object v7, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/d;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aQ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/d;->e:Ljava/lang/Boolean;

    :cond_0
    iget-object v1, p0, Lcom/estrongs/fs/d;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int/lit8 v1, p6, -0x1

    mul-int/2addr v1, p5

    int-to-long v2, v1

    cmp-long v1, p3, v2

    if-lez v1, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    invoke-static {p2}, Lcom/estrongs/fs/d;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/estrongs/fs/impl/m/b;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/estrongs/old/fs/a;->k(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "ZZ",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "net://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "@baidu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    const-string v3, "baidu-up-to-pcs"

    invoke-direct {v2, v3}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_1
    if-nez p4, :cond_33

    sget-object v5, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    :goto_2
    const/4 v2, 0x0

    instance-of v3, v5, Lcom/estrongs/fs/q;

    if-eqz v3, :cond_4

    sget-boolean v2, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :cond_4
    :goto_3
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/fs/a/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v3

    const-string v4, "cacheStatus"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_7

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/estrongs/fs/a/b;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v2, v3, Lcom/estrongs/fs/a/d;->a:Z

    if-eqz v2, :cond_6

    const-string v2, "cacheStatus"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :goto_4
    const-string v2, "get_data_from_cache"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v3}, Lcom/estrongs/fs/a/d;->a()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const-string v2, "cacheStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto :goto_4

    :cond_7
    const-string v3, "get_data_from_cache"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/estrongs/fs/impl/r/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->p(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->q(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const/4 p3, 0x0

    :cond_9
    if-eqz p3, :cond_a

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v2, v4}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_a
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/estrongs/fs/impl/e/a;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "externalstorage://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Lcom/estrongs/fs/impl/local/f;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    move-object v2, v3

    goto/16 :goto_0

    :cond_d
    const-string v3, "page"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v8, v9}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_e

    const-string v3, "offset"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v8, v9}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v3

    if-lez v3, :cond_11

    :cond_e
    const/4 v3, 0x1

    :goto_6
    iget-object v4, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v4

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v4

    if-eqz v2, :cond_30

    instance-of v2, v4, Lcom/estrongs/fs/impl/f/d;

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/estrongs/fs/impl/f/b;->a()Lcom/estrongs/fs/impl/f/b;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_2e

    instance-of v4, v2, Lcom/estrongs/fs/impl/l/a;

    if-eqz v4, :cond_2a

    check-cast v2, Lcom/estrongs/fs/impl/l/a;

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v0}, Lcom/estrongs/fs/impl/l/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    :goto_8
    const-string v4, "app://"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "book://"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "apk://"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "storage://"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "archive://"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "encrypt://"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_9
    if-eqz p3, :cond_10

    if-eqz v2, :cond_10

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bh(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v7, v2, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_10
    const-string v3, "offset"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/fs/a/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "loadFinished"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/a/d;->a:Z

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v7, v5, v0, v1}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto :goto_9

    :pswitch_2
    if-eqz v4, :cond_12

    const-string v2, "SMB_List"

    invoke-virtual {v4, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p5

    invoke-static {v7, v5, v0}, Lcom/estrongs/fs/impl/u/b;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v2

    goto :goto_9

    :pswitch_3
    move-object/from16 v0, p5

    invoke-static {v7, v5, v0}, Lcom/estrongs/fs/impl/usb/e;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v2

    goto :goto_9

    :pswitch_4
    if-eqz v4, :cond_13

    const-string v2, "WEBDAV_List"

    invoke-virtual {v4, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p5

    invoke-static {v7, v5, v0}, Lcom/estrongs/fs/impl/w/b;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v2

    goto :goto_9

    :pswitch_5
    const/4 v2, 0x0

    const/4 v8, 0x2

    if-ne v6, v8, :cond_16

    const-string v2, "FTP_List"

    :cond_14
    :goto_a
    if-eqz v4, :cond_15

    if-eqz v2, :cond_15

    invoke-virtual {v4, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_15
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v2

    if-nez v2, :cond_19

    new-instance v2, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/b/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_16
    const/4 v8, 0x5

    if-ne v6, v8, :cond_17

    const-string v2, "SFTP_List"

    goto :goto_a

    :cond_17
    const/16 v8, 0x13

    if-eq v6, v8, :cond_18

    const/16 v8, 0x14

    if-ne v8, v6, :cond_14

    :cond_18
    const-string v2, "FTPS_List"

    goto :goto_a

    :cond_19
    new-instance v4, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v4}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v6, "server"

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/ad;->n(Ljava/lang/String;)I

    move-result v6

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/estrongs/android/pop/ad;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/estrongs/android/pop/ad;->m(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "mode"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_1a
    :goto_b
    const-string v8, "encode"

    invoke-static {v6}, Lcom/estrongs/android/util/e;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-interface {v2, v4}, Lcom/estrongs/old/fs/a;->a(Lcom/estrongs/android/util/TypedMap;)V

    invoke-interface {v2, v7, v5}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;Lcom/estrongs/fs/i;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    :cond_1b
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/estrongs/android/pop/ad;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const-string v9, "privatekey"

    invoke-virtual {v4, v9, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_1c
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/estrongs/android/pop/ad;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1a

    const-string v9, "privatekey_passphrases"

    invoke-virtual {v4, v9, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto :goto_b

    :pswitch_6
    sget-boolean v3, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-nez v3, :cond_1d

    if-eqz v2, :cond_1e

    :cond_1d
    invoke-static {}, Lcom/estrongs/fs/impl/n/b;->a()Lcom/estrongs/fs/impl/n/b;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v5, v0}, Lcom/estrongs/fs/impl/n/b;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/estrongs/fs/impl/n/d;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v3, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-nez v3, :cond_1f

    if-eqz v2, :cond_20

    :cond_1f
    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->a()Lcom/estrongs/fs/impl/p/b;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v5, v0}, Lcom/estrongs/fs/impl/p/b;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :cond_20
    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/estrongs/fs/impl/p/c;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_8
    sget-boolean v3, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-nez v3, :cond_21

    if-eqz v2, :cond_22

    :cond_21
    invoke-static {}, Lcom/estrongs/fs/impl/v/b;->a()Lcom/estrongs/fs/impl/v/b;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v5, v0}, Lcom/estrongs/fs/impl/v/b;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :cond_22
    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/estrongs/fs/impl/v/c;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_9
    if-eqz v4, :cond_23

    const-string v2, "Bluetooth_List"

    invoke-virtual {v4, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, p5

    invoke-static {v7, v5, v0}, Lcom/estrongs/fs/impl/e/a;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_a
    :try_start_0
    iget-object v2, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p6

    invoke-static {v2, v4, v6, v5, v0}, Lcom/estrongs/fs/impl/o/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v4

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v4, :cond_27

    const-string v2, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    check-cast v2, Lcom/estrongs/fs/impl/o/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/o/a;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v10, v2, Lcom/estrongs/fs/impl/o/a;->absolutePath:Ljava/lang/String;

    const-string v11, "/>"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v2, Lcom/estrongs/fs/impl/o/a;->absolutePath:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_24
    if-eqz v8, :cond_25

    const-string v10, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    const-string v11, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_25

    const-string v10, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    const-string v11, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_25
    invoke-virtual {v2, v5}, Lcom/estrongs/fs/impl/o/a;->a(Ljava/lang/String;)V

    if-nez v6, :cond_26

    :goto_d
    invoke-virtual {v2, v5}, Lcom/estrongs/fs/impl/o/a;->b(Ljava/lang/String;)V

    const-string v5, "user_info"

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/estrongs/fs/impl/o/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_c

    :catch_0
    move-exception v2

    new-instance v3, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v3, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_26
    move-object v5, v6

    goto :goto_d

    :cond_27
    :try_start_1
    const-string v2, "@pcs/files/apps/Downloads/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "pcs"

    invoke-static {v2}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->av(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v8

    if-eqz v8, :cond_28

    invoke-virtual {v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ar()Lcom/estrongs/android/pop/view/ei;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Lcom/estrongs/fs/impl/o/e;)V

    :cond_28
    move-object/from16 v0, p6

    invoke-virtual {v2, v5, v6, v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    const-string v5, "PCSD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fos before downlist: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_31

    if-nez v4, :cond_29

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_29
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v4

    :goto_e
    const-string v4, "PCSD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fos after downlist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v2

    new-instance v3, Lcom/estrongs/fs/FileSystemException;

    iget-object v4, v2, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v4}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_b
    :try_start_2
    iget-object v2, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v2, v7, p2, v5, v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->listFiles(Landroid/content/Context;Ljava/lang/String;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    :try_end_2
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto/16 :goto_9

    :catch_2
    move-exception v2

    new-instance v3, Lcom/estrongs/fs/FileSystemException;

    iget-object v4, v2, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v4}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_c
    move-object/from16 v0, p5

    invoke-static {v7, v5, v0}, Lcom/estrongs/fs/impl/q/a;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_d
    new-instance v2, Lcom/estrongs/fs/impl/c/a;

    invoke-direct {v2}, Lcom/estrongs/fs/impl/c/a;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v5, v0}, Lcom/estrongs/fs/impl/c/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_e
    new-instance v2, Lcom/estrongs/fs/impl/j/a;

    invoke-direct {v2}, Lcom/estrongs/fs/impl/j/a;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v5, v0}, Lcom/estrongs/fs/impl/j/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_f
    new-instance v2, Lcom/estrongs/android/pop/app/b/j;

    invoke-direct {v2}, Lcom/estrongs/android/pop/app/b/j;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v5, v0}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    :cond_2a
    instance-of v4, v2, Lcom/estrongs/fs/impl/t/a;

    if-eqz v4, :cond_2d

    if-eqz p6, :cond_2b

    sget-object v4, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    move-object/from16 v0, p6

    if-ne v0, v4, :cond_2c

    :cond_2b
    new-instance p6, Lcom/estrongs/android/util/TypedMap;

    invoke-direct/range {p6 .. p6}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    :cond_2c
    const-string v4, "refresh"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    move-object/from16 v0, p6

    invoke-interface {v2, p1, v5, v0}, Lcom/estrongs/fs/u;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_8

    :cond_2d
    move-object/from16 v0, p6

    invoke-interface {v2, p1, v5, v0}, Lcom/estrongs/fs/u;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_8

    :cond_2e
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not result in the file system for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/estrongs/fs/a/d;->a:Z

    goto/16 :goto_0

    :cond_30
    move-object v2, v4

    goto/16 :goto_7

    :cond_31
    move-object v2, v4

    goto/16 :goto_e

    :cond_32
    move-object v2, v4

    goto/16 :goto_9

    :cond_33
    move-object/from16 v5, p4

    goto/16 :goto_2

    :cond_34
    move-object v7, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->d()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/fs/g;

    invoke-direct {v1}, Lcom/estrongs/fs/g;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lcom/estrongs/fs/h;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/estrongs/fs/impl/l/a;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/l/a;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, Lcom/estrongs/fs/impl/k/c;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/estrongs/fs/impl/k/c;

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/impl/k/c;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/estrongs/fs/impl/u/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/estrongs/fs/impl/usb/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/estrongs/fs/impl/w/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v3}, Lcom/estrongs/old/fs/a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    :sswitch_5
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/estrongs/fs/impl/e/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    move-result v0

    goto :goto_0

    :sswitch_6
    :try_start_0
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_7
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-static {v3, v0, v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->deleteFile(Ljava/lang/String;J)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    instance-of v2, v0, Lcom/estrongs/fs/impl/adb/c;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/estrongs/fs/impl/adb/c;

    invoke-static {v3}, Lcom/estrongs/fs/impl/adb/c;->e(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/u/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/estrongs/old/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/o/b;->e(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/w/b;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/usb/e;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Lcom/estrongs/fs/h;)Lcom/estrongs/fs/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/estrongs/android/ui/topclassify/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/ui/topclassify/c;

    invoke-virtual {p1}, Lcom/estrongs/android/ui/topclassify/c;->b()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/x;->b(I)Lcom/estrongs/fs/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static c()V
    .locals 0

    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->c()V

    invoke-static {}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b()V

    invoke-static {}, Lcom/estrongs/fs/impl/w/b;->a()V

    return-void
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 1

    const-string v0, "mynetwork://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "apk://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "book://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "encrypt://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pic://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "music://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/fs/f;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/f;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/estrongs/fs/x;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/pop/b/a;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/old/fs/a;

    if-nez v0, :cond_2

    :try_start_0
    const-string v2, "ftp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ftps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ftpes"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->b()Lcom/estrongs/old/fs/a;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v2, "sftp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->c()Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static p(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/i;->k(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q(Ljava/lang/String;)Lcom/estrongs/fs/u;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "app://"

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/b/e;

    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/b/e;-><init>(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1
    const-string v3, "getInstance"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/u;

    :goto_2
    if-nez v0, :cond_0

    const-class v0, Lcom/estrongs/fs/u;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/u;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/high16 v0, 0x20000

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/16 v0, 0x1400

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const v0, 0x8000

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_5
    const v0, 0xf000

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v5

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-ne v2, v6, :cond_a

    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v0, v3, [Lcom/estrongs/fs/h;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/fs/e;

    invoke-direct {v2, p0, v0, p1}, Lcom/estrongs/fs/e;-><init>(Lcom/estrongs/fs/d;[Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    aget-object v1, v0, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/z;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sparse-switch v5, :sswitch_data_0

    :goto_2
    if-eqz v0, :cond_7

    move-object v1, v0

    goto :goto_0

    :sswitch_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/i;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;

    move-result-object v0

    goto :goto_2

    :sswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/u/b;->i(Ljava/lang/String;)Lcom/estrongs/fs/impl/u/a;

    move-result-object v0

    goto :goto_2

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->h(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/c;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/w/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/w/a;

    move-result-object v0

    goto :goto_2

    :sswitch_4
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/estrongs/old/fs/a;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    goto :goto_2

    :sswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->i(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    goto :goto_2

    :sswitch_6
    :try_start_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_6

    :goto_3
    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/o/b;->d(Ljava/lang/String;Z)Lcom/estrongs/fs/impl/o/a;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/impl/o/a;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/impl/o/a;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :sswitch_7
    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileObject(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_5
    invoke-interface {v0, p1}, Lcom/estrongs/fs/u;->a(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    new-instance v0, Lcom/estrongs/fs/z;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v1, v0

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    if-eqz p2, :cond_9

    new-instance v1, Lcom/estrongs/fs/z;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-eqz p2, :cond_0

    new-instance v1, Lcom/estrongs/fs/z;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :cond_a
    move v2, v4

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/estrongs/fs/impl/m/b;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/estrongs/fs/impl/m/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/m/b;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/u/b;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/usb/e;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1, p2, p3, p4}, Lcom/estrongs/fs/impl/w/b;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    :sswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/estrongs/fs/impl/o/b;->c(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_7
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileInputStream(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-interface {v0, p1}, Lcom/estrongs/fs/u;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not result in the file system for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;JZ)Ljava/io/OutputStream;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    if-eqz v1, :cond_0

    const/16 v2, 0xb

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "\u4e0d\u652f\u6301\u65ad\u70b9\u4e0a\u4f20"

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/u/b;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/usb/e;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "Z",
            "Lcom/estrongs/fs/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "Z",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v5, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "ZZ",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    sget-object v6, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "ZZ",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    instance-of v0, p4, Lcom/estrongs/fs/b;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/estrongs/fs/b;

    const-class v1, Lcom/estrongs/android/view/bn;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move v1, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/bn;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/estrongs/fs/d;->c(Lcom/estrongs/fs/h;)Lcom/estrongs/fs/i;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-nez p4, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {p4, v0}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v8

    goto :goto_1
.end method

.method public a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "ZZ",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    sget-object v5, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/b/o;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/estrongs/android/pop/app/f/q;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v3, Lcom/estrongs/android/pop/app/f/r;

    invoke-direct {v3, v0, v5, v5}, Lcom/estrongs/android/pop/app/f/r;-><init>(Ljava/util/Map;ZZ)V

    :cond_0
    :try_start_0
    const-string v2, "recursion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V

    return-object v1

    :catch_0
    move-exception v0

    move v4, v5

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/fs/x;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    invoke-virtual {p0, v0, p2, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/d;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Lcom/estrongs/fs/b/u;)Z
    .locals 33

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v11

    if-eqz v11, :cond_8

    instance-of v2, v11, Lcom/estrongs/fs/b/r;

    if-eqz v2, :cond_8

    move-object v2, v11

    check-cast v2, Lcom/estrongs/fs/b/r;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/r;->b()[B

    move-result-object v2

    move-object/from16 v20, v2

    :goto_0
    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/fs/b/r;

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/r;

    iget-object v4, v2, Lcom/estrongs/fs/b/r;->v:Ljava/util/Set;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface/range {v27 .. v27}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b8

    const-string v2, "rw"

    invoke-static {v5, v2}, Lcom/estrongs/android/util/ap;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    move-object/from16 v21, v3

    :goto_2
    :try_start_1
    invoke-static {v4}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x0

    if-ne v3, v6, :cond_b7

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/16 v6, 0x17

    if-ne v3, v6, :cond_b7

    :cond_1
    invoke-static {v4}, Lcom/estrongs/android/util/ap;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    const/4 v2, 0x1

    move/from16 v26, v2

    :goto_3
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const/16 v24, 0x1

    const/16 v23, 0x0

    move/from16 v6, v23

    move/from16 v7, v24

    move v5, v2

    :cond_2
    :goto_4
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    if-eqz v5, :cond_a5

    :cond_3
    if-nez v5, :cond_5

    if-eqz v11, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v4, v3, v8

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    if-eqz v21, :cond_6

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_7

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_7
    move v2, v3

    :goto_5
    return v2

    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v20, v2

    goto/16 :goto_0

    :cond_9
    move-object v2, v3

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v2, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v11, :cond_2

    const/4 v3, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v2, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v4, v8, v2

    invoke-virtual {v11, v3, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    move-object/from16 v3, v21

    :goto_6
    :try_start_3
    invoke-virtual {v2}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_aa

    new-instance v4, Lcom/estrongs/a/q;

    invoke-direct {v4, v5, v2}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v4

    :goto_7
    if-eqz v11, :cond_b

    const/16 v4, 0x2710

    invoke-virtual {v11, v4, v2}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_b
    if-eqz v3, :cond_c

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_d

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_d
    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v3, 0x0

    if-nez v7, :cond_12

    move v12, v3

    :goto_9
    const/16 v25, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_b2

    if-eqz v12, :cond_b2

    const/4 v5, 0x1

    if-eqz v11, :cond_14

    :try_start_4
    iget-boolean v3, v2, Lcom/estrongs/fs/b/u;->e:Z

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v10

    invoke-static {v8}, Lcom/estrongs/fs/d;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v10}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_f
    invoke-interface {v10}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_13

    invoke-interface {v10}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v14

    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v16

    cmp-long v3, v14, v16

    if-gez v3, :cond_13

    const/4 v3, 0x1

    :goto_a
    const-class v13, Lcom/estrongs/a/a/h;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v14, v15

    const/4 v3, 0x2

    iget-object v15, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    aput-object v15, v14, v3

    const/4 v3, 0x3

    aput-object v10, v14, v3

    invoke-virtual {v11, v13, v14}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v3

    check-cast v3, Lcom/estrongs/a/a/h;

    if-eqz v3, :cond_b5

    const/4 v5, 0x0

    iget-boolean v6, v3, Lcom/estrongs/a/a/h;->f:Z

    if-eqz v6, :cond_b4

    iget v6, v3, Lcom/estrongs/a/a/h;->g:I

    const/4 v10, 0x1

    if-ne v6, v10, :cond_b4

    const/4 v7, 0x0

    move v6, v7

    :goto_b
    iget v7, v3, Lcom/estrongs/a/a/h;->g:I

    const/4 v10, 0x5

    if-ne v7, v10, :cond_10

    const/4 v5, 0x1

    :cond_10
    iget v3, v3, Lcom/estrongs/a/a/h;->g:I

    :goto_c
    move v7, v6

    move v6, v5

    move v5, v3

    :goto_d
    const/4 v3, 0x2

    if-ne v5, v3, :cond_15

    if-eqz v11, :cond_b3

    const/4 v3, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v2, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x1

    aput-object v4, v5, v2

    invoke-virtual {v11, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    instance-of v2, v11, Lcom/estrongs/fs/b/aq;

    if-eqz v2, :cond_b3

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/aq;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/aq;->C:Ljava/util/List;

    if-nez v2, :cond_11

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/aq;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/estrongs/fs/b/aq;->C:Ljava/util/List;

    :cond_11
    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/aq;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/aq;->C:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, v25

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b6

    if-eqz v5, :cond_b6

    const/4 v7, 0x0

    move v12, v3

    goto/16 :goto_9

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_14
    const/4 v7, 0x0

    goto :goto_d

    :cond_15
    const/4 v3, 0x3

    if-ne v5, v3, :cond_19

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    if-nez v2, :cond_16

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_4
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_16
    const/4 v3, 0x0

    if-eqz v21, :cond_17

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_17
    if-eqz v11, :cond_18

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_18

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_18
    move v2, v3

    goto/16 :goto_5

    :cond_19
    const/4 v3, 0x4

    if-ne v5, v3, :cond_b2

    const/4 v3, 0x1

    move v10, v3

    move/from16 v23, v6

    move/from16 v24, v7

    :goto_e
    if-eqz v26, :cond_22

    if-eqz v12, :cond_1a

    if-eqz v12, :cond_22

    :cond_1a
    :try_start_5
    invoke-static {v4}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/estrongs/fs/impl/o/b;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v3, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v5, 0x7f0802e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v11, :cond_1b

    const/16 v4, 0x2710

    invoke-virtual {v11, v4, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_5
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1b
    const/4 v3, 0x0

    if-eqz v21, :cond_1c

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_1c
    if-eqz v11, :cond_1d

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1d

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_1d
    move v2, v3

    goto/16 :goto_5

    :cond_1e
    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v25

    goto/16 :goto_4

    :catch_1
    move-exception v3

    :try_start_6
    iget-object v4, v3, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    new-instance v2, Lcom/estrongs/a/q;

    invoke-direct {v2, v4, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_f
    const/16 v3, 0x2710

    invoke-virtual {v11, v3, v2}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_6
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v3, 0x0

    if-eqz v21, :cond_1f

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_1f
    if-eqz v11, :cond_20

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_20

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_20

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_20
    move v2, v3

    goto/16 :goto_5

    :cond_21
    :try_start_7
    new-instance v4, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v6, 0x7f0802e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v2, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v4

    goto :goto_f

    :cond_22
    const/4 v3, 0x1

    invoke-static {v8}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {v8}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/estrongs/fs/impl/local/i;->h(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/fs/w;->a()Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_25

    const/16 v2, 0x10

    new-instance v3, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v5, 0x7f08049c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v3, 0x0

    if-eqz v21, :cond_23

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_23
    if-eqz v11, :cond_24

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_24

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_24

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_24
    move v2, v3

    goto/16 :goto_5

    :cond_25
    move/from16 v22, v3

    :try_start_8
    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/fs/w;->a()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v2, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_8
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v7

    if-nez v7, :cond_28

    const/4 v3, 0x0

    if-eqz v21, :cond_26

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_26
    if-eqz v11, :cond_27

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_27

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_27

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_27
    move v2, v3

    goto/16 :goto_5

    :cond_28
    const/4 v2, 0x0

    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-nez v2, :cond_2d

    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/estrongs/fs/c;->d:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v2, :cond_2d

    const/4 v3, 0x0

    if-eqz v21, :cond_29

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_29
    if-eqz v11, :cond_2a

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2a

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2a

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_2a
    move v2, v3

    goto/16 :goto_5

    :catch_2
    move-exception v2

    const/4 v3, 0x0

    if-eqz v21, :cond_2b

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_2b
    if-eqz v11, :cond_2c

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2c

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2c

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_2c
    move v2, v3

    goto/16 :goto_5

    :cond_2d
    :try_start_b
    const-string v2, "/"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_10
    const/4 v2, 0x0

    move v6, v2

    :goto_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_2e

    new-instance v8, Lcom/estrongs/fs/b/u;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v12, 0x0

    invoke-direct {v8, v2, v3, v12, v13}, Lcom/estrongs/fs/b/u;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_11

    :cond_2e
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/fs/b/r;

    if-eqz v2, :cond_30

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/r;

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->v:Ljava/util/Set;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_2f
    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_12
    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v25

    goto/16 :goto_4

    :cond_31
    if-eqz v26, :cond_32

    if-eqz v12, :cond_32

    :cond_32
    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-gtz v3, :cond_33

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/d;->d(Ljava/lang/String;)J

    move-result-wide v6

    :cond_33
    if-eqz v23, :cond_b0

    invoke-static {v8}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v11, :cond_34

    const/16 v3, 0xc

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v12, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v12}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v11, v3, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_34
    :goto_13
    if-eqz v11, :cond_35

    const/4 v3, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v11, v3, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_35
    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-static {v3, v5}, Lcom/estrongs/fs/impl/o/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    if-eqz v11, :cond_af

    const/4 v3, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v2, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v4, v8, v2

    invoke-virtual {v11, v3, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v2, 0xd

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v25

    goto/16 :goto_4

    :cond_36
    const/4 v9, 0x3

    move-object/from16 v0, v20

    array-length v8, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v3

    if-eqz v3, :cond_39

    new-instance v10, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;

    invoke-direct {v10}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;-><init>()V

    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v13

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    move-object v12, v4

    move-object v15, v5

    move-wide/from16 v16, v6

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Lcom/estrongs/a/a;Ljava/lang/String;JLjava/lang/String;JII)Z
    :try_end_b
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v3

    if-nez v3, :cond_92

    const/4 v3, 0x0

    if-eqz v21, :cond_37

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_37
    if-eqz v11, :cond_38

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_38

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_38

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_38
    move v2, v3

    goto/16 :goto_5

    :cond_39
    :try_start_c
    invoke-static {v5}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    new-instance v10, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;

    invoke-direct {v10}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;-><init>()V

    iget-object v3, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v13

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object v12, v4

    move-object v15, v5

    move-wide/from16 v16, v6

    invoke-virtual/range {v10 .. v19}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Lcom/estrongs/a/a;Ljava/lang/String;JLjava/lang/String;JII)Z
    :try_end_c
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v3

    if-nez v3, :cond_92

    const/4 v3, 0x0

    if-eqz v21, :cond_3a

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_3a
    if-eqz v11, :cond_3b

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3b

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3b

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_3b
    move v2, v3

    goto/16 :goto_5

    :cond_3c
    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_d
    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-gtz v3, :cond_3d

    if-eqz v10, :cond_40

    :cond_3d
    invoke-static {v5}, Lcom/estrongs/fs/d;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v3, 0x1

    move v14, v3

    :goto_14
    if-eqz v14, :cond_3e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/d;->d(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    :cond_3e
    if-eqz v14, :cond_41

    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    if-lez v3, :cond_41

    if-eqz v11, :cond_3f

    const/4 v3, 0x2

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v0, v2, Lcom/estrongs/fs/b/u;->c:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x1

    aput-object v4, v10, v12

    const/4 v12, 0x2

    const-string v13, "RBT"

    aput-object v13, v10, v12

    invoke-virtual {v11, v3, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_3f
    :goto_15
    if-eqz v14, :cond_44

    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    cmp-long v3, v12, v6

    if-nez v3, :cond_44

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-eqz v3, :cond_44

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v25

    goto/16 :goto_4

    :cond_40
    const/4 v3, 0x0

    move v14, v3

    goto :goto_14

    :cond_41
    const-wide/16 v12, 0x0

    iput-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J
    :try_end_d
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_15

    :catch_3
    move-exception v2

    :goto_16
    if-eqz v11, :cond_42

    const/16 v3, 0x2710

    :try_start_e
    new-instance v4, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v6, 0x7f0802e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v11, v3, v4}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_42
    if-eqz v21, :cond_43

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_43
    if-eqz v11, :cond_d

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_d

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/fs/b/u;->e:Z

    goto/16 :goto_8

    :cond_44
    :try_start_f
    new-instance v10, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v10}, Lcom/estrongs/android/util/TypedMap;-><init>()V
    :try_end_f
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v14, :cond_4a

    :try_start_10
    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v13, v10}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    :try_end_10
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v9

    :cond_45
    :goto_18
    if-eqz v14, :cond_46

    :try_start_11
    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    if-lez v3, :cond_46

    const-string v3, "RBT"

    invoke-virtual {v10, v3}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const-string v3, "RBT"

    invoke-virtual {v10, v3}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    const-wide/16 v12, 0x0

    iput-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    if-eqz v11, :cond_46

    const/4 v3, 0x2

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x1

    aput-object v4, v10, v12

    const/4 v12, 0x2

    const-string v13, "reset"

    aput-object v13, v10, v12

    invoke-virtual {v11, v3, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_46
    if-nez v9, :cond_52

    if-eqz v11, :cond_47

    const/4 v3, 0x2

    new-instance v4, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v6, 0x7f0802e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v2, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v11, v3, v4}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_11
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_47
    const/4 v3, 0x0

    if-eqz v21, :cond_48

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_48
    if-eqz v11, :cond_49

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_49

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_49

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_49
    move v2, v3

    goto/16 :goto_5

    :cond_4a
    const-wide/16 v12, 0x0

    goto/16 :goto_17

    :catch_4
    move-exception v3

    :try_start_12
    invoke-virtual {v3}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_45

    const-string v12, "unauthorized"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4f

    const-class v3, Lcom/estrongs/a/a/c;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v9, v12

    invoke-virtual {v11, v3, v9}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v3

    check-cast v3, Lcom/estrongs/a/a/c;

    iget-boolean v9, v3, Lcom/estrongs/a/a/c;->d:Z

    if-eqz v9, :cond_4d

    invoke-virtual {v11}, Lcom/estrongs/a/a;->requestStop()V
    :try_end_12
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v3, 0x0

    if-eqz v21, :cond_4b

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_4b
    if-eqz v11, :cond_4c

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4c

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4c

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_4c
    move v2, v3

    goto/16 :goto_5

    :cond_4d
    :try_start_13
    const-string v9, "NEW_USERNAME"

    iget-object v12, v3, Lcom/estrongs/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v10, v9, v12}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v9, "NEW_PASSWORD"

    iget-object v3, v3, Lcom/estrongs/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v10, v9, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    if-eqz v14, :cond_4e

    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v13, v10}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v9

    goto/16 :goto_18

    :cond_4e
    const-wide/16 v12, 0x0

    goto :goto_19

    :cond_4f
    if-eqz v14, :cond_45

    const-string v12, "UnsupportResume"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v11}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "need_reload"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/estrongs/a/a;->requestStop()V
    :try_end_13
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const/4 v3, 0x0

    if-eqz v21, :cond_50

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_50
    if-eqz v11, :cond_51

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_51

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_51

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_51
    move v2, v3

    goto/16 :goto_5

    :cond_52
    :try_start_14
    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    :cond_53
    const-wide/16 v12, -0x1

    cmp-long v3, v6, v12

    if-eqz v3, :cond_ae

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v3

    move-object v10, v9

    :goto_1a
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_54

    iget-object v8, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v8}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I
    :try_end_14
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result v8

    const/16 v9, 0x12

    if-ne v8, v9, :cond_55

    :cond_54
    if-eqz v10, :cond_55

    if-nez v3, :cond_65

    :cond_55
    :try_start_15
    iget-wide v2, v2, Lcom/estrongs/fs/b/u;->c:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_56

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_56
    :goto_1b
    const/4 v3, 0x0

    if-eqz v21, :cond_57

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_57
    if-eqz v11, :cond_58

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_58

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_58

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_58
    move v2, v3

    goto/16 :goto_5

    :cond_59
    :try_start_16
    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    const/4 v3, 0x0

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aC(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5f

    if-eqz v11, :cond_5c

    const-class v3, Lcom/estrongs/a/a/i;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v8, v10

    invoke-virtual {v11, v3, v8}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v3

    check-cast v3, Lcom/estrongs/a/a/i;

    iget v8, v3, Lcom/estrongs/a/a/i;->g:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_5f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_16
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    const/4 v3, 0x0

    if-eqz v21, :cond_5a

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_5a
    if-eqz v11, :cond_5b

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5b

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5b

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_5b
    move v2, v3

    goto/16 :goto_5

    :cond_5c
    const/4 v3, 0x0

    if-eqz v21, :cond_5d

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_5d
    if-eqz v11, :cond_5e

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5e

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5e

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_5e
    move v2, v3

    goto/16 :goto_5

    :cond_5f
    if-nez v3, :cond_60

    :try_start_17
    sget-object v3, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v3}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;

    move-result-object v3

    move-object v10, v9

    goto/16 :goto_1a

    :cond_60
    iget-object v3, v3, Lcom/estrongs/a/a/i;->b:Lcom/estrongs/android/util/TypedMap;

    goto :goto_1c

    :cond_61
    if-eqz v14, :cond_62

    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    if-nez v3, :cond_64

    :cond_62
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v3

    :goto_1d
    if-eqz v14, :cond_ad

    if-nez v3, :cond_ad

    if-eqz v11, :cond_63

    const/4 v3, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    iget-wide v0, v2, Lcom/estrongs/fs/b/u;->c:J

    move-wide/from16 v16, v0

    sub-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v11, v3, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_63
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/estrongs/fs/b/u;->c:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v3

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v8

    move-object v10, v8

    goto/16 :goto_1a

    :cond_64
    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JZ)Ljava/io/OutputStream;

    move-result-object v3

    goto :goto_1d

    :cond_65
    if-eqz v11, :cond_66

    const/16 v8, 0x9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    iget-wide v0, v2, Lcom/estrongs/fs/b/u;->c:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-virtual {v11, v8, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_66
    iget-wide v12, v2, Lcom/estrongs/fs/b/u;->c:J
    :try_end_17
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-wide v8, v12

    :goto_1e
    :try_start_18
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v12, -0x1

    if-eq v15, v12, :cond_88

    if-eqz v11, :cond_77

    invoke-virtual {v11}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v12

    if-eqz v12, :cond_77

    if-nez v14, :cond_67

    const/4 v2, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    sub-long v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-virtual {v11, v2, v12}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_67
    if-eqz v3, :cond_ac

    :try_start_19
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    const/4 v2, 0x0

    :goto_1f
    const/4 v3, 0x1

    :try_start_1a
    invoke-virtual {v11, v3}, Lcom/estrongs/a/a;->enableTaskHide(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/estrongs/a/a;->enableTaskHide(Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :goto_20
    const/4 v3, 0x0

    if-eqz v10, :cond_68

    :try_start_1b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :cond_68
    :goto_21
    if-eqz v2, :cond_69

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :cond_69
    cmp-long v2, v8, v6

    if-gez v2, :cond_70

    if-nez v14, :cond_6a

    if-eqz v11, :cond_6a

    const/4 v2, 0x2

    const/4 v3, 0x2

    :try_start_1d
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_1d
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :cond_6a
    const/4 v3, 0x0

    if-eqz v21, :cond_6b

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_6b
    if-eqz v11, :cond_6c

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6c

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_6c

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_6c
    move v2, v3

    goto/16 :goto_5

    :catch_5
    move-exception v2

    move-object v2, v3

    goto :goto_1f

    :catch_6
    move-exception v10

    :try_start_1e
    instance-of v2, v2, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v2, :cond_69

    if-nez v14, :cond_6d

    if-eqz v11, :cond_6d

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_1e
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :cond_6d
    const/4 v3, 0x0

    if-eqz v21, :cond_6e

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_6e
    if-eqz v11, :cond_6f

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6f

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_6f

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_6f
    move v2, v3

    goto/16 :goto_5

    :cond_70
    if-eqz v11, :cond_71

    :try_start_1f
    invoke-static {}, Lcom/estrongs/android/util/bk;->l()Z

    move-result v2

    if-eqz v2, :cond_74

    instance-of v2, v11, Lcom/estrongs/fs/b/r;

    if-eqz v2, :cond_74

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    if-eqz v2, :cond_74

    const/16 v6, 0xd

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v7, v2

    const/4 v4, 0x1

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    aput-object v2, v7, v4

    invoke-virtual {v11, v6, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    :goto_22
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    :try_end_1f
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :cond_71
    if-eqz v21, :cond_72

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_72
    if-eqz v11, :cond_73

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_73

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_73

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_73
    move v2, v3

    goto/16 :goto_5

    :cond_74
    const/16 v2, 0xd

    const/4 v6, 0x2

    :try_start_20
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-virtual {v11, v2, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_20
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_22

    :catchall_0
    move-exception v2

    move-object v3, v2

    :goto_23
    if-eqz v21, :cond_75

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_75
    if-eqz v11, :cond_76

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_76

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_76

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_76
    throw v3

    :cond_77
    const/4 v12, 0x0

    :try_start_21
    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v12, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    int-to-long v12, v15

    add-long/2addr v12, v8

    :try_start_22
    iget-wide v8, v2, Lcom/estrongs/fs/b/u;->c:J

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    iput-wide v8, v2, Lcom/estrongs/fs/b/u;->c:J

    if-eqz v11, :cond_78

    const/16 v8, 0x9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v9, v16

    const/16 v16, 0x1

    iget-wide v0, v2, Lcom/estrongs/fs/b/u;->c:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v9, v16

    invoke-virtual {v11, v8, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v8, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    int-to-long v0, v15

    move-wide/from16 v18, v0

    const-wide/16 v30, 0x0

    add-long v18, v18, v30

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v9, v16

    const/4 v15, 0x1

    aput-object v4, v9, v15

    invoke-virtual {v11, v8, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_78
    if-eqz v11, :cond_ab

    invoke-virtual {v11}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v8

    if-eqz v8, :cond_ab

    if-nez v14, :cond_79

    const/4 v2, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    sub-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v11, v2, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :cond_79
    if-eqz v3, :cond_7a

    :try_start_23
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    const/4 v3, 0x0

    :goto_24
    const/4 v2, 0x1

    :try_start_24
    invoke-virtual {v11, v2}, Lcom/estrongs/a/a;->enableTaskHide(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/estrongs/a/a;->enableTaskHide(Z)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :cond_7a
    const/4 v8, 0x0

    if-eqz v10, :cond_7b

    :try_start_25
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :cond_7b
    :goto_25
    if-eqz v3, :cond_7c

    :try_start_26
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_7
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    :cond_7c
    cmp-long v2, v12, v6

    if-gez v2, :cond_83

    if-nez v14, :cond_7d

    if-eqz v11, :cond_7d

    const/4 v2, 0x2

    const/4 v3, 0x2

    :try_start_27
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_27
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :cond_7d
    const/4 v3, 0x0

    if-eqz v21, :cond_7e

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_7e
    if-eqz v11, :cond_7f

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7f

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_7f

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_7f
    move v2, v3

    goto/16 :goto_5

    :catch_7
    move-exception v2

    :try_start_28
    instance-of v2, v3, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v2, :cond_7c

    if-nez v14, :cond_80

    if-eqz v11, :cond_80

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_28
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :cond_80
    const/4 v3, 0x0

    if-eqz v21, :cond_81

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_81
    if-eqz v11, :cond_82

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_82

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_82

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_82
    move v2, v3

    goto/16 :goto_5

    :cond_83
    if-eqz v11, :cond_84

    :try_start_29
    invoke-static {}, Lcom/estrongs/android/util/bk;->l()Z

    move-result v2

    if-eqz v2, :cond_87

    instance-of v2, v11, Lcom/estrongs/fs/b/r;

    if-eqz v2, :cond_87

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    if-eqz v2, :cond_87

    const/16 v3, 0xd

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v6, v2

    const/4 v4, 0x1

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    aput-object v2, v6, v4

    invoke-virtual {v11, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    :goto_26
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :cond_84
    if-eqz v21, :cond_85

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_85
    if-eqz v11, :cond_86

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_86

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_86

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_86
    move v2, v8

    goto/16 :goto_5

    :cond_87
    const/16 v2, 0xd

    const/4 v3, 0x2

    :try_start_2a
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v5, v3, v4

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_2a
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_3
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto :goto_26

    :cond_88
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    if-eqz v10, :cond_89

    :try_start_2c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    :cond_89
    :goto_27
    if-eqz v3, :cond_8a

    :try_start_2d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_8
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :cond_8a
    cmp-long v3, v8, v6

    if-gez v3, :cond_91

    if-nez v14, :cond_8b

    if-eqz v11, :cond_8b

    const/4 v2, 0x2

    const/4 v3, 0x2

    :try_start_2e
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_2e
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2e .. :try_end_2e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_3
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    :cond_8b
    const/4 v3, 0x0

    if-eqz v21, :cond_8c

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_8c
    if-eqz v11, :cond_8d

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8d

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_8d

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_8d
    move v2, v3

    goto/16 :goto_5

    :catch_8
    move-exception v10

    :try_start_2f
    instance-of v3, v3, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v3, :cond_8a

    if-nez v14, :cond_8e

    if-eqz v11, :cond_8e

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_2f
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2f .. :try_end_2f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_3
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    :cond_8e
    const/4 v3, 0x0

    if-eqz v21, :cond_8f

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_8f
    if-eqz v11, :cond_90

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_90

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_90

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_90
    move v2, v3

    goto/16 :goto_5

    :cond_91
    if-eqz v11, :cond_92

    :try_start_30
    invoke-static {}, Lcom/estrongs/android/util/bk;->l()Z

    move-result v3

    if-eqz v3, :cond_95

    instance-of v3, v11, Lcom/estrongs/fs/b/r;

    if-eqz v3, :cond_95

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    if-eqz v3, :cond_95

    const/16 v6, 0xd

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v7, v3

    const/4 v8, 0x1

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    aput-object v3, v7, v8

    invoke-virtual {v11, v6, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    :goto_28
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    :cond_92
    iget-boolean v3, v2, Lcom/estrongs/fs/b/u;->d:Z

    if-eqz v3, :cond_94

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    if-eqz v11, :cond_a4

    instance-of v3, v11, Lcom/estrongs/fs/b/r;

    if-eqz v3, :cond_a4

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget v6, v3, Lcom/estrongs/fs/b/r;->w:I

    invoke-static {v5}, Lcom/estrongs/fs/a/a;->g(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v3, Lcom/estrongs/fs/b/r;->w:I

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-static {}, Lcom/estrongs/android/util/bk;->l()Z

    move-result v3

    if-eqz v3, :cond_93

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->t:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    :cond_93
    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->s:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_94
    :goto_29
    iget-object v2, v2, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v2, v1}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Z)V

    goto/16 :goto_12

    :cond_95
    const/16 v3, 0xd

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v11, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_30
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_30 .. :try_end_30} :catch_0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    goto :goto_28

    :catchall_1
    move-exception v2

    move-object/from16 v32, v2

    move-object v2, v3

    move-object/from16 v3, v32

    :goto_2a
    if-eqz v10, :cond_96

    :try_start_31
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_e
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_31 .. :try_end_31} :catch_0
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    :cond_96
    :goto_2b
    if-eqz v2, :cond_97

    :try_start_32
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_9
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_32 .. :try_end_32} :catch_0
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    :cond_97
    cmp-long v2, v8, v6

    if-gez v2, :cond_9e

    if-nez v14, :cond_98

    if-eqz v11, :cond_98

    const/4 v2, 0x2

    const/4 v3, 0x2

    :try_start_33
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_33
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_33 .. :try_end_33} :catch_0
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    :cond_98
    const/4 v3, 0x0

    if-eqz v21, :cond_99

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_99
    if-eqz v11, :cond_9a

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9a

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_9a

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_9a
    move v2, v3

    goto/16 :goto_5

    :catch_9
    move-exception v10

    :try_start_34
    instance-of v2, v2, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v2, :cond_97

    if-nez v14, :cond_9b

    if-eqz v11, :cond_9b

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_34
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_34 .. :try_end_34} :catch_0
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_3
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    :cond_9b
    const/4 v3, 0x0

    if-eqz v21, :cond_9c

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_9c
    if-eqz v11, :cond_9d

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9d

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_9d

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_9d
    move v2, v3

    goto/16 :goto_5

    :cond_9e
    if-eqz v11, :cond_9f

    :try_start_35
    invoke-static {}, Lcom/estrongs/android/util/bk;->l()Z

    move-result v2

    if-eqz v2, :cond_a0

    instance-of v2, v11, Lcom/estrongs/fs/b/r;

    if-eqz v2, :cond_a0

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    if-eqz v2, :cond_a0

    const/16 v6, 0xd

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v7, v2

    const/4 v4, 0x1

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    iget-object v2, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    aput-object v2, v7, v4

    invoke-virtual {v11, v6, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v2, v0

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    :goto_2c
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    :cond_9f
    throw v3

    :cond_a0
    const/16 v2, 0xd

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-virtual {v11, v2, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_a1
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->p:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_a2
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->q:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_a3
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    move-object v0, v11

    check-cast v0, Lcom/estrongs/fs/b/r;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/r;->r:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_a4
    invoke-static {v5}, Lcom/estrongs/fs/impl/local/i;->j(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_a5
    if-nez v5, :cond_a7

    if-eqz v11, :cond_a6

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_a6
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_35
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_35 .. :try_end_35} :catch_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    :cond_a7
    const/4 v3, 0x1

    if-eqz v21, :cond_a8

    invoke-static/range {v21 .. v21}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_a8
    if-eqz v11, :cond_a9

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a9

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_a9

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    invoke-virtual {v11, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/u;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/fs/b/u;->e:Z

    :cond_a9
    move v2, v3

    goto/16 :goto_5

    :cond_aa
    :try_start_36
    new-instance v4, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v6, 0x7f0802e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_3

    move-object v2, v4

    goto/16 :goto_7

    :catch_a
    move-exception v10

    goto/16 :goto_21

    :catch_b
    move-exception v2

    goto/16 :goto_24

    :catch_c
    move-exception v2

    goto/16 :goto_25

    :catch_d
    move-exception v10

    goto/16 :goto_27

    :catch_e
    move-exception v10

    goto/16 :goto_2b

    :catchall_2
    move-exception v2

    move-object/from16 v21, v3

    move-object v3, v2

    goto/16 :goto_23

    :catchall_3
    move-exception v2

    move-object/from16 v21, v3

    move-object v3, v2

    goto/16 :goto_23

    :catch_f
    move-exception v2

    move-object/from16 v21, v3

    goto/16 :goto_16

    :catch_10
    move-exception v2

    goto/16 :goto_6

    :catchall_4
    move-exception v3

    goto/16 :goto_2a

    :catchall_5
    move-exception v2

    move-wide v8, v12

    move-object/from16 v32, v2

    move-object v2, v3

    move-object/from16 v3, v32

    goto/16 :goto_2a

    :catch_11
    move-exception v2

    goto/16 :goto_1b

    :cond_ab
    move-wide v8, v12

    goto/16 :goto_1e

    :cond_ac
    move-object v2, v3

    goto/16 :goto_20

    :cond_ad
    move-object v10, v9

    goto/16 :goto_1a

    :cond_ae
    move-object v3, v8

    move-object v10, v9

    goto/16 :goto_1a

    :cond_af
    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v25

    goto/16 :goto_4

    :cond_b0
    move-object v5, v8

    goto/16 :goto_13

    :cond_b1
    move-object v5, v8

    goto/16 :goto_10

    :cond_b2
    move v10, v9

    move/from16 v23, v6

    move/from16 v24, v7

    goto/16 :goto_e

    :cond_b3
    move/from16 v5, v25

    goto/16 :goto_4

    :cond_b4
    move v6, v7

    goto/16 :goto_b

    :cond_b5
    move v3, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_c

    :cond_b6
    move v12, v3

    goto/16 :goto_9

    :cond_b7
    move/from16 v26, v2

    goto/16 :goto_3

    :cond_b8
    move-object/from16 v21, v3

    goto/16 :goto_2
.end method

.method public a(Lcom/estrongs/fs/h;)Z
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/l;->e()V

    invoke-virtual {p0, p1, p2, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/estrongs/android/scanner/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/android/scanner/l;->a(Z)V

    return v0
.end method

.method public a(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lcom/estrongs/fs/FileExistException;

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileExistException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v4, v0, Lcom/estrongs/fs/impl/l/a;

    if-eqz v4, :cond_6

    check-cast v0, Lcom/estrongs/fs/impl/l/a;

    invoke-virtual {v0, p1, v3}, Lcom/estrongs/fs/impl/l/a;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/at;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/p;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    instance-of v3, v0, Lcom/estrongs/fs/impl/adb/c;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/estrongs/fs/impl/adb/c;

    new-instance v1, Lcom/estrongs/fs/z;

    invoke-direct {v1, p2}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/fs/impl/adb/c;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/at;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/p;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v0, :cond_1

    instance-of v2, v1, Lcom/estrongs/fs/b/at;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/estrongs/fs/b/p;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/estrongs/android/pop/view/utils/y;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "rw"

    invoke-static {p2, v0}, Lcom/estrongs/android/util/ap;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    move v0, v1

    goto :goto_1

    :sswitch_1
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/u/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/usb/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/w/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_4
    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/b/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    invoke-interface {v0, v2, p2}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_5
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_6
    :try_start_0
    invoke-static {v2}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/o/b;->c(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_7
    :try_start_1
    invoke-static {v2, p2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;Lcom/estrongs/fs/h;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/l;->e()V

    invoke-interface/range {p2 .. p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    :goto_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v11

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v12

    const/4 v6, 0x0

    invoke-static {v8}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "mediafire"

    invoke-static {v8, v2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move v3, v2

    :goto_2
    const/4 v2, 0x1

    if-eqz v3, :cond_20

    const/4 v2, 0x0

    move v7, v2

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/fs/w;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v12, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/estrongs/fs/a/b;->d(Ljava/util/List;)V

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;)V

    :cond_5
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/scanner/l;->a(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    :cond_7
    :try_start_1
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v14

    const/4 v5, 0x1

    if-eqz v14, :cond_f

    if-eqz v11, :cond_1f

    const-class v3, Lcom/estrongs/a/a/h;

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v2, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v11, v3, v15}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v3

    check-cast v3, Lcom/estrongs/a/a/h;

    if-eqz v3, :cond_1f

    const/4 v6, 0x0

    iget-boolean v5, v3, Lcom/estrongs/a/a/h;->f:Z

    if-eqz v5, :cond_8

    iget v5, v3, Lcom/estrongs/a/a/h;->g:I

    const/4 v15, 0x1

    if-ne v5, v15, :cond_8

    :cond_8
    iget v5, v3, Lcom/estrongs/a/a/h;->g:I

    const/4 v15, 0x5

    if-ne v5, v15, :cond_9

    const/4 v6, 0x1

    :cond_9
    iget v5, v3, Lcom/estrongs/a/a/h;->g:I

    move v3, v5

    move v5, v6

    :goto_5
    const/4 v6, 0x2

    if-ne v3, v6, :cond_a

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v2, 0x1

    aput-object p1, v4, v2

    invoke-virtual {v11, v3, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move v6, v5

    goto/16 :goto_4

    :cond_a
    const/4 v6, 0x3

    if-ne v3, v6, :cond_e

    invoke-virtual {v11}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/a/p;->a:I

    if-nez v2, :cond_b

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/estrongs/fs/a/b;->d(Ljava/util/List;)V

    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;)V

    :cond_d
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/scanner/l;->a(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v5

    move v5, v3

    :cond_f
    if-eqz v6, :cond_10

    :try_start_2
    invoke-static {v4}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xc

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    invoke-virtual {v11, v3, v15}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_10
    const/4 v3, 0x0

    if-eqz v14, :cond_14

    const/4 v15, 0x1

    if-ne v5, v15, :cond_14

    if-eqz v7, :cond_14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ".bak."

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v15, Lcom/estrongs/fs/x;

    invoke-direct {v15, v4}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-nez v15, :cond_14

    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/estrongs/fs/a/b;->d(Ljava/util/List;)V

    :cond_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_12

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;)V

    :cond_12
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/scanner/l;->a(Z)V

    goto/16 :goto_0

    :cond_13
    move-object v3, v4

    goto :goto_6

    :cond_14
    :try_start_3
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_18

    if-eqz v14, :cond_15

    const/4 v2, 0x1

    if-ne v5, v2, :cond_15

    if-eqz v7, :cond_15

    new-instance v2, Lcom/estrongs/fs/x;

    invoke-direct {v2, v3}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_15
    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/estrongs/fs/a/b;->d(Ljava/util/List;)V

    :cond_16
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;)V

    :cond_17
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/scanner/l;->a(Z)V

    goto/16 :goto_0

    :cond_18
    :try_start_4
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v15

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Lcom/estrongs/android/scanner/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_19

    const/4 v4, 0x1

    if-ne v5, v4, :cond_19

    if-eqz v7, :cond_19

    new-instance v4, Lcom/estrongs/fs/x;

    invoke-direct {v4, v3}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z

    :cond_19
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/estrongs/fs/z;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v2}, Lcom/estrongs/fs/z;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1a

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/estrongs/fs/a/b;->d(Ljava/util/List;)V

    :cond_1a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;)V

    :cond_1b
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/scanner/l;->a(Z)V

    throw v2

    :cond_1c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1d

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/fs/a/b;->d(Ljava/util/List;)V

    :cond_1d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;)V

    :cond_1e
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/estrongs/android/scanner/l;->a(Z)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1f
    move v3, v5

    move v5, v6

    goto/16 :goto_5

    :cond_20
    move v7, v2

    goto/16 :goto_3

    :cond_21
    move-object v8, v2

    goto/16 :goto_1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)Z"
        }
    .end annotation

    const/4 v14, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v2, v5

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "rw"

    invoke-static {v2, v6}, Lcom/estrongs/android/util/ap;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    move-object v6, v3

    :goto_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v8

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;)Z

    move-result v7

    and-int/2addr v7, v3

    if-nez v7, :cond_8

    instance-of v3, v4, Lcom/estrongs/fs/b/ab;

    if-eqz v3, :cond_e

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/ab;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ab;->c()Z

    move-result v3

    if-eqz v3, :cond_e

    const-class v3, Lcom/estrongs/a/a/k;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v4, v3, v10}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v3

    iget v3, v3, Lcom/estrongs/a/a/d;->g:I

    if-ne v3, v14, :cond_7

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/ab;

    move-object v3, v0

    iget-object v10, v3, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    if-nez v10, :cond_4

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    iput-object v10, v3, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    :cond_4
    iget-object v3, v3, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    :goto_3
    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v10

    invoke-virtual {v10}, Lcom/estrongs/fs/w;->a()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v10

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/estrongs/fs/a/b;->d(Ljava/lang/String;)V

    :cond_5
    if-nez v3, :cond_a

    move v2, v7

    :goto_4
    instance-of v3, v4, Lcom/estrongs/fs/b/ab;

    if-nez v3, :cond_6

    instance-of v3, v4, Lcom/estrongs/android/pop/view/utils/y;

    if-nez v3, :cond_6

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/a/b;->d(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    move v3, v5

    goto :goto_3

    :cond_8
    :try_start_2
    instance-of v3, v4, Lcom/estrongs/fs/b/ab;

    if-eqz v3, :cond_9

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/ab;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    if-eqz v3, :cond_9

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/ab;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v4, :cond_b

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    :goto_5
    move v3, v7

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v3, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_b

    const/4 v3, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-virtual {v4, v3, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v3, v6

    :goto_6
    if-eqz v3, :cond_d

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_d
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_6

    :cond_e
    move v3, v8

    goto/16 :goto_3

    :cond_f
    move v2, v3

    goto/16 :goto_4

    :cond_10
    move-object v6, v3

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/w/b;->a(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v1}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v2, "length"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/estrongs/fs/u;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/estrongs/fs/impl/o/b;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    .locals 4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileOutputStream(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/estrongs/fs/u;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/u/b;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/fs/impl/w/b;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    :pswitch_6
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_7
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_8
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->exists(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    invoke-static {p1}, Lcom/estrongs/fs/impl/n/d;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_b
    invoke-static {p1}, Lcom/estrongs/fs/impl/p/c;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_c
    invoke-static {p1}, Lcom/estrongs/fs/impl/v/c;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_d
    invoke-static {p1}, Lcom/estrongs/fs/impl/f/c;->e(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_7

    invoke-interface {v2, p1}, Lcom/estrongs/fs/u;->b(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    new-instance v4, Lcom/estrongs/fs/z;

    if-nez p2, :cond_9

    :goto_2
    invoke-direct {v4, p1, v0}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;)V

    :cond_2
    :goto_3
    move v1, v2

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "rw"

    invoke-static {p1, v3}, Lcom/estrongs/android/util/ap;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_3
    :try_start_1
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_4
    move v2, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    :cond_5
    throw v0

    :sswitch_1
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/u/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :sswitch_2
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/usb/e;->a(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :sswitch_3
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/w/b;->b(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :sswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v2

    if-eqz p2, :cond_6

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-interface {v2, p1}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :sswitch_5
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/e/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :sswitch_6
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_7
    :try_start_3
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->createFile(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v3, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v3}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v4, "length"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/estrongs/fs/u;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v2, v0

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    move v2, v1

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/i;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/u/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->i(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/w/b;->a(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    :sswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->f(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :sswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileInfo(Ljava/lang/String;)Lcom/estrongs/fs/c;
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :sswitch_8
    invoke-static {p1}, Lcom/estrongs/fs/impl/adb/c;->k(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
        0x24 -> :sswitch_8
    .end sparse-switch
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/estrongs/fs/u;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "rw"

    invoke-static {p1, v0}, Lcom/estrongs/android/util/ap;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->a([Ljava/lang/String;)Z

    move v0, v1

    :cond_3
    :goto_1
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/u/b;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/w/b;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/estrongs/old/fs/a;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :sswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->i(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->mkDirs(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public d(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/i;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/u/b;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->f(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/w/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    :sswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :sswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/o/b;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    :sswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileLength(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public e(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, p1, v0}, Lcom/estrongs/fs/u;->a(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/i;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/u/b;->h(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->j(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->j(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    :sswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->h(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/estrongs/fs/impl/o/b;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :sswitch_7
    const-wide/16 v0, -0x1

    :try_start_1
    sget-object v2, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    invoke-static {p1, v0, v1, v2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileOutputStream(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_6
        0x21 -> :sswitch_3
    .end sparse-switch
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/i;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/u/b;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/w/b;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :sswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/e/a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->j(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->isDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x12 -> :sswitch_7
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_6
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public j(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getThumbnail(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->l(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    const-string v1, "flashair"

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/k/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/k/c;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/o/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public o(Ljava/lang/String;)Lcom/estrongs/fs/u;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/u;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/fs/d;->q(Ljava/lang/String;)Lcom/estrongs/fs/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    goto :goto_0
.end method
