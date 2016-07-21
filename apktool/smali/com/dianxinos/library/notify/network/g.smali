.class public final Lcom/dianxinos/library/notify/network/g;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/network/d;

.field private final b:Lcom/dianxinos/library/notify/network/i;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/dianxinos/library/notify/network/d;Lcom/dianxinos/library/notify/network/i;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/network/g;->a:Lcom/dianxinos/library/notify/network/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dianxinos/library/notify/network/g;->b:Lcom/dianxinos/library/notify/network/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dianxinos/library/notify/network/d;Lcom/dianxinos/library/notify/network/i;Lcom/dianxinos/library/notify/network/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/library/notify/network/g;-><init>(Lcom/dianxinos/library/notify/network/d;Lcom/dianxinos/library/notify/network/i;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/library/notify/network/g;)Lcom/dianxinos/library/notify/network/i;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/g;->b:Lcom/dianxinos/library/notify/network/i;

    return-object v0
.end method

.method static synthetic a(Lcom/dianxinos/library/notify/network/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/library/notify/network/g;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/g;->a:Lcom/dianxinos/library/notify/network/d;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/g;->b:Lcom/dianxinos/library/notify/network/i;

    invoke-static {v0}, Lcom/dianxinos/library/notify/network/i;->a(Lcom/dianxinos/library/notify/network/i;)Lcom/dianxinos/library/notify/network/g;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/dianxinos/library/notify/network/h;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/g;->b:Lcom/dianxinos/library/notify/network/i;

    invoke-virtual {v3, p1}, Lcom/dianxinos/library/notify/network/i;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/dianxinos/library/notify/network/h;-><init>(Lcom/dianxinos/library/notify/network/g;Ljava/io/OutputStream;Lcom/dianxinos/library/notify/network/e;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/g;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/g;->a:Lcom/dianxinos/library/notify/network/d;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/dianxinos/library/notify/network/d;->a(Lcom/dianxinos/library/notify/network/d;Lcom/dianxinos/library/notify/network/g;ZJ)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/g;->a:Lcom/dianxinos/library/notify/network/d;

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/g;->b:Lcom/dianxinos/library/notify/network/i;

    invoke-static {v1}, Lcom/dianxinos/library/notify/network/i;->c(Lcom/dianxinos/library/notify/network/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/d;->c(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/g;->a:Lcom/dianxinos/library/notify/network/d;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1, p2}, Lcom/dianxinos/library/notify/network/d;->a(Lcom/dianxinos/library/notify/network/d;Lcom/dianxinos/library/notify/network/g;ZJ)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/g;->c:Z

    return v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/g;->a:Lcom/dianxinos/library/notify/network/d;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p0, v1, v2, v3}, Lcom/dianxinos/library/notify/network/d;->a(Lcom/dianxinos/library/notify/network/d;Lcom/dianxinos/library/notify/network/g;ZJ)V

    return-void
.end method
