.class Lcom/baidu/mobstat/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mobstat/x;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/x;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/z;->d:Lcom/baidu/mobstat/x;

    iput-wide p2, p0, Lcom/baidu/mobstat/z;->a:J

    iput-object p4, p0, Lcom/baidu/mobstat/z;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/baidu/mobstat/af;->a()Lcom/baidu/mobstat/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/af;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/af;->a()Lcom/baidu/mobstat/af;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/af;->a()Lcom/baidu/mobstat/af;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    new-instance v0, Lcom/baidu/mobstat/ac;

    iget-object v1, p0, Lcom/baidu/mobstat/z;->d:Lcom/baidu/mobstat/x;

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ac;-><init>(Lcom/baidu/mobstat/x;)V

    iget-wide v2, p0, Lcom/baidu/mobstat/z;->a:J

    iput-wide v2, v0, Lcom/baidu/mobstat/ac;->c:J

    iget-object v1, p0, Lcom/baidu/mobstat/z;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/ac;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/ac;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mobstat/z;->d:Lcom/baidu/mobstat/x;

    iget-object v2, p0, Lcom/baidu/mobstat/z;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mobstat/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/z;->d:Lcom/baidu/mobstat/x;

    iget-object v2, v2, Lcom/baidu/mobstat/x;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sdkstat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventStat: event_id["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mobstat/z;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] with label["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is duplicated, older is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mobstat/util/e;->b([Ljava/lang/Object;)I

    :cond_1
    iget-object v2, p0, Lcom/baidu/mobstat/z;->d:Lcom/baidu/mobstat/x;

    iget-object v2, v2, Lcom/baidu/mobstat/x;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put a keyword["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] into durationlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "sdkstat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
