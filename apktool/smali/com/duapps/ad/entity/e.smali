.class Lcom/duapps/ad/entity/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/entity/c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/duapps/ad/entity/h;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/duapps/ad/entity/d;


# direct methods
.method constructor <init>(Lcom/duapps/ad/entity/d;Ljava/lang/String;Lcom/duapps/ad/entity/h;JI)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    iput-object p2, p0, Lcom/duapps/ad/entity/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/duapps/ad/entity/e;->b:Lcom/duapps/ad/entity/h;

    iput-wide p4, p0, Lcom/duapps/ad/entity/e;->c:J

    iput p6, p0, Lcom/duapps/ad/entity/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->a(Lcom/duapps/ad/entity/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/entity/e;->c:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v1}, Lcom/duapps/ad/entity/d;->e(Lcom/duapps/ad/entity/d;)I

    move-result v1

    invoke-static {v0, p1, v2, v3, v1}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;IJI)V

    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh result: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/duapps/ad/entity/e;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->f(Lcom/duapps/ad/entity/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/duapps/ad/entity/e;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    iput-boolean v6, v0, Lcom/duapps/ad/entity/d;->c:Z

    const-string v0, "FbCache"

    const-string v1, "Refresh result: DONE for geeen count"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duapps/ad/entity/d;->b:Z

    invoke-direct {p0, p1}, Lcom/duapps/ad/entity/e;->a(I)V

    return-void
.end method

.method public a(Lcom/duapps/ad/entity/h;)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->c(Lcom/duapps/ad/entity/d;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->d(Lcom/duapps/ad/entity/d;)Lcom/duapps/ad/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/d;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/h;Z)V
    .locals 3

    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoaded: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/entity/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->a(Lcom/duapps/ad/entity/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->a(Lcom/duapps/ad/entity/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->b(Lcom/duapps/ad/entity/d;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/e;->b:Lcom/duapps/ad/entity/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/entity/h;->a(Lcom/duapps/ad/entity/c;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/e;->e:Lcom/duapps/ad/entity/d;

    invoke-static {v0}, Lcom/duapps/ad/entity/d;->b(Lcom/duapps/ad/entity/d;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/entity/e;->b:Lcom/duapps/ad/entity/h;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/duapps/ad/entity/e;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
