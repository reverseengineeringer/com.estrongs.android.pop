.class final Lcom/duapps/ad/base/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/duapps/ad/stats/p;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/base/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/duapps/ad/base/f;->b:Lcom/duapps/ad/stats/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/duapps/ad/stats/p;Z)V
    .locals 7

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "DuAdNetwork"

    const-string v1, "context or record is null"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/duapps/ad/stats/p;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/duapps/ad/coin/d;->a(Landroid/content/Context;)Lcom/duapps/ad/coin/d;

    move-result-object v2

    invoke-static {p1}, Lcom/duapps/ad/base/t;->a(Landroid/content/Context;)Lcom/duapps/ad/base/t;

    move-result-object v3

    const-string v0, "22v2"

    invoke-virtual {v2, v1, v0}, Lcom/duapps/ad/coin/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "DuAdNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Gain coin pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";points="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/duapps/ad/stats/p;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";isGained="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_6

    invoke-static {p1, v1}, Lcom/duapps/ad/stats/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/duapps/ad/coin/CoinManager;->a(Landroid/content/Context;)Lcom/duapps/ad/coin/CoinManager;

    move-result-object v0

    const-string v4, "22"

    invoke-virtual {v0, v1, v4}, Lcom/duapps/ad/coin/CoinManager;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;

    move-result-object v4

    invoke-virtual {p2}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->h:Ljava/lang/String;

    iput-boolean p3, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->i:Z

    invoke-virtual {v4}, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    invoke-virtual {v0, v5}, Lcom/duapps/ad/coin/CoinManager;->a(I)V

    :cond_3
    const/4 v0, 0x0

    iget v5, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v6, 0x19c

    if-eq v5, v6, :cond_4

    iget v5, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_4

    iget v5, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v6, 0x194

    if-ne v5, v6, :cond_5

    :cond_4
    const-string v0, "22v2"

    invoke-virtual {v2, v1, v0}, Lcom/duapps/ad/coin/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/duapps/ad/base/t;->d(Ljava/lang/String;)V

    iget v0, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->b:I

    invoke-virtual {p2}, Lcom/duapps/ad/stats/p;->b()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_5
    invoke-static {p1, v4}, Lcom/duapps/ad/coin/CoinManager;->a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RequestResult;)V

    iget v2, v4, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    invoke-static {p1, v1, v2, v0}, Lcom/duapps/ad/stats/x;->a(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/duapps/ad/base/t;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 10

    const-wide/16 v4, -0x1

    invoke-static {}, Lcom/duapps/ad/base/DuAdNetwork;->f()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Landroid/content/Context;)Lcom/duapps/ad/base/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/t;->a()Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/duapps/ad/base/f;->b:Lcom/duapps/ad/stats/p;

    if-nez v0, :cond_1

    move-wide v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/stats/p;

    invoke-static {}, Lcom/duapps/ad/base/DuAdNetwork;->g()I

    move-result v1

    int-to-long v8, v1

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->c()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_2
    iget-object v8, p0, Lcom/duapps/ad/base/f;->a:Landroid/content/Context;

    invoke-virtual {p0, v8, v0, v1}, Lcom/duapps/ad/base/f;->a(Landroid/content/Context;Lcom/duapps/ad/stats/p;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/base/f;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->c()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
