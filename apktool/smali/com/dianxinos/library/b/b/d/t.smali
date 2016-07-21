.class public final Lcom/dianxinos/library/b/b/d/t;
.super Lcom/dianxinos/library/b/b/b;


# instance fields
.field volatile b:Z

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dianxinos/library/b/b/d/q;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/dianxinos/library/b/b/c/b;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/io/File;

.field private h:[C

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/dianxinos/library/b/b/b/d;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[CI)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/b;-><init>()V

    iput-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->g:Ljava/io/File;

    iput-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->h:[C

    iput-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->i:Ljava/lang/String;

    iput v2, p0, Lcom/dianxinos/library/b/b/d/t;->j:I

    iput-boolean v2, p0, Lcom/dianxinos/library/b/b/d/t;->b:Z

    iput-boolean v2, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    iput-boolean v2, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->d:Lcom/dianxinos/library/b/b/c/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->g:Ljava/io/File;

    iput p4, p0, Lcom/dianxinos/library/b/b/d/t;->j:I

    array-length v0, p3

    new-array v0, v0, [C

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->h:[C

    invoke-static {v0}, Lcom/dianxinos/library/b/b/d/t;->b([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->i:Ljava/lang/String;

    new-instance v0, Lcom/dianxinos/library/b/b/c/b;

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/library/b/b/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->d:Lcom/dianxinos/library/b/b/c/b;

    new-instance v0, Lcom/dianxinos/library/b/b/d/u;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/b/b/d/u;-><init>(Lcom/dianxinos/library/b/b/d/t;)V

    invoke-static {v0}, Lcom/dianxinos/library/b/c/i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/dianxinos/library/b/b/d/q;)V
    .locals 1

    new-instance v0, Lcom/dianxinos/library/b/b/d/v;

    invoke-direct {v0, p0, p2, p1}, Lcom/dianxinos/library/b/b/d/v;-><init>(Lcom/dianxinos/library/b/b/d/t;Lcom/dianxinos/library/b/b/d/q;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dianxinos/library/b/c/i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/library/b/b/d/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    return v0
.end method

.method private static b([C)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    mul-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-char v3, p0, v0

    int-to-byte v3, v3

    add-int v4, v0, v0

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x61

    invoke-static {v0, v2}, Lcom/dianxinos/library/b/b/b/b;->a(C[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dianxinos/library/b/b/d/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/dianxinos/library/b/b/d/t;)Lcom/dianxinos/library/b/b/b/d;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->k:Lcom/dianxinos/library/b/b/b/d;

    return-object v0
.end method

.method private e()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/dianxinos/library/b/b/d/t;->j:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/dianxinos/library/b/b/c/a;

    iget-object v3, p0, Lcom/dianxinos/library/b/b/d/t;->d:Lcom/dianxinos/library/b/b/c/b;

    iget-object v4, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    const-string v5, "tcfb3352c2df335696c6bc631932c6a61a4cdf318"

    invoke-direct {v2, v3, v4, v5}, Lcom/dianxinos/library/b/b/c/a;-><init>(Lcom/dianxinos/library/b/b/c/b;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dianxinos/library/b/b/d/t;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/dianxinos/library/b/b/d/t;->h:[C

    invoke-static {v3, v4, v5}, Lcom/dianxinos/library/b/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;[C)[C

    move-result-object v3

    new-instance v4, Lcom/dianxinos/library/b/b/b/d;

    iget-object v5, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3}, Lcom/dianxinos/library/b/b/b/d;-><init>(Ljava/lang/String;Lcom/dianxinos/library/b/b/c/a;[C)V

    invoke-virtual {v4}, Lcom/dianxinos/library/b/b/b/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/dianxinos/library/b/b/b/d;->b()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v1, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/dianxinos/library/b/b/d/t;->k:Lcom/dianxinos/library/b/b/b/d;

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dianxinos/library/b/b/a;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: open storage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/dianxinos/library/b/b/d/t;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/b/b/d/q;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dianxinos/library/b/b/d/q;->b()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/dianxinos/library/b/b/d/q;

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->d:Lcom/dianxinos/library/b/b/c/b;

    invoke-direct {v0, v2, p0, p1}, Lcom/dianxinos/library/b/b/d/q;-><init>(Lcom/dianxinos/library/b/b/c/b;Lcom/dianxinos/library/b/b/d/t;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/library/b/b/d/t;->a(Ljava/lang/String;Lcom/dianxinos/library/b/b/d/q;)V

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->b:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([C)Z
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/dianxinos/library/b/b/d/t;->b([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method b()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/t;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    if-nez v2, :cond_5

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    sget-boolean v0, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load master container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    if-eqz v0, :cond_1

    sget-object v1, Lcom/dianxinos/library/b/b/d/t;->a:Ljava/util/Map;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/dianxinos/library/b/b/d/t;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    sget-boolean v0, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load master container "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->m:Z

    if-eqz v0, :cond_3

    sget-object v2, Lcom/dianxinos/library/b/b/d/t;->a:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/dianxinos/library/b/b/d/t;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :try_start_5
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/t;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-boolean v0, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "wait main container 1000ms ..."

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/t;->f:Ljava/lang/String;

    return-object v0
.end method
