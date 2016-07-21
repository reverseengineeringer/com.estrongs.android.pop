.class public Lcom/duapps/ad/entity/d;
.super Lcom/duapps/ad/entity/a/a;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Ljava/util/List;
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

.field private j:I

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/h;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/Handler;

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duapps/ad/entity/a/a;-><init>(Landroid/content/Context;IJ)V

    iput v4, p0, Lcom/duapps/ad/entity/d;->j:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    iput-object p1, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    invoke-static {p2}, Lcom/duapps/ad/base/ap;->a(I)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "fbnative"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/duapps/ad/entity/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/ag;->a(Landroid/content/Context;)Lcom/duapps/ad/base/ag;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/duapps/ad/base/ag;->a(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "FbCache"

    const-string v2, "Refresh request failed: no available Placement Id"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/duapps/ad/entity/d;->b:Z

    iput v4, p0, Lcom/duapps/ad/entity/d;->i:I

    :goto_0
    return-void

    :cond_1
    if-lez p5, :cond_2

    const/4 v1, 0x5

    if-le p5, v1, :cond_3

    :cond_2
    move p5, v0

    :cond_3
    iput p5, p0, Lcom/duapps/ad/entity/d;->i:I

    sget v1, Lcom/duapps/ad/entity/a/b;->a:I

    if-eq v1, p2, :cond_4

    sget v1, Lcom/duapps/ad/entity/a/b;->b:I

    if-ne v1, p2, :cond_5

    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/duapps/ad/entity/d;->a(I)V

    :cond_5
    iget-object v1, p0, Lcom/duapps/ad/entity/d;->l:Landroid/os/Handler;

    const-wide/32 v2, 0x325aa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/entity/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/os/Message;I)V
    .locals 7

    invoke-direct {p0}, Lcom/duapps/ad/entity/d;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "FbCache"

    const-string v1, "placementId is null"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/duapps/ad/entity/h;

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/d;->g:I

    invoke-direct {v3, v0, v2, v1}, Lcom/duapps/ad/entity/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v0, Lcom/duapps/ad/entity/e;

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/duapps/ad/entity/e;-><init>(Lcom/duapps/ad/entity/d;Ljava/lang/String;Lcom/duapps/ad/entity/h;JI)V

    invoke-virtual {v3, v0}, Lcom/duapps/ad/entity/h;->a(Lcom/duapps/ad/entity/c;)V

    invoke-virtual {v3}, Lcom/duapps/ad/entity/h;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/entity/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/entity/d;)Lcom/duapps/ad/d;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->h:Lcom/duapps/ad/d;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/entity/d;)Lcom/duapps/ad/d;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->h:Lcom/duapps/ad/d;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/entity/d;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/entity/d;->g:I

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/duapps/ad/entity/d;->j:I

    iget-object v1, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/duapps/ad/entity/d;->j:I

    iget-object v1, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/entity/d;->j:I

    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    iget v2, p0, Lcom/duapps/ad/entity/d;->j:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/duapps/ad/entity/d;->j:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/entity/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/duapps/ad/entity/d;->j:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic f(Lcom/duapps/ad/entity/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FbCache"

    const-string v1, "no net"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FbCache"

    const-string v1, "facebook not installed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "FbCache"

    const-string v1, "Refresh request..."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/duapps/ad/entity/d;->i:I

    if-gtz v0, :cond_2

    const-string v0, "FbCache"

    const-string v1, "Refresh request failed: no available Placement Id"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    iput p1, p0, Lcom/duapps/ad/entity/d;->i:I

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/d;->g:I

    invoke-static {v0, v1}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/d;->d:J

    sget v0, Lcom/duapps/ad/entity/a/b;->a:I

    iget v1, p0, Lcom/duapps/ad/entity/d;->g:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/duapps/ad/entity/a/b;->b:I

    iget v1, p0, Lcom/duapps/ad/entity/d;->g:I

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/duapps/ad/entity/d;->i:I

    :cond_3
    return-void
.end method

.method public b()Lcom/duapps/ad/entity/a/c;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    monitor-enter v2

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/entity/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    if-nez v1, :cond_3

    const-string v0, "FAIL"

    :goto_2
    iget v3, p0, Lcom/duapps/ad/entity/d;->g:I

    invoke-static {v2, v0, v3}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/duapps/ad/entity/d;->a()V

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/entity/h;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v0, "OK"

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public c()I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/h;

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/entity/h;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/duapps/ad/entity/h;->d()V

    move v0, v1

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/entity/d;->b()Lcom/duapps/ad/entity/a/c;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/duapps/ad/entity/d;->l:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/duapps/ad/entity/d;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "FbCache"

    const-string v1, "Refresh request failed: already refreshing"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/duapps/ad/entity/d;->c:Z

    iput-boolean v2, p0, Lcom/duapps/ad/entity/d;->e:Z

    iget-object v4, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/h;

    if-nez v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/entity/h;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/duapps/ad/entity/h;->d()V

    move v0, v1

    goto :goto_2

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, p0, Lcom/duapps/ad/entity/d;->i:I

    if-ge v1, v0, :cond_5

    iget v0, p0, Lcom/duapps/ad/entity/d;->i:I

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "FbCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refresh request send: green = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ,need = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/duapps/ad/entity/d;->l:Landroid/os/Handler;

    invoke-virtual {v1, v7, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_5
    const-string v0, "FbCache"

    const-string v1, "Refresh request OK: green is full"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/duapps/ad/entity/d;->c:Z

    goto :goto_3

    :cond_6
    if-ne v0, v7, :cond_8

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_7

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/entity/d;->a(Landroid/os/Message;I)V

    :goto_4
    move v0, v2

    goto/16 :goto_0

    :cond_7
    iput-boolean v3, p0, Lcom/duapps/ad/entity/d;->c:Z

    const-string v0, "FbCache"

    const-string v1, "Refresh result: DONE for geeen count"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move v0, v3

    goto/16 :goto_0
.end method
