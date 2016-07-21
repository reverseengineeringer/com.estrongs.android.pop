.class public Lcom/baidu/mobstat/ar;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/baidu/mobstat/ct;

.field final synthetic d:Lcom/baidu/bottom/service/BottomReceiver;


# direct methods
.method public constructor <init>(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/mobstat/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/ar;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iput-object p2, p0, Lcom/baidu/mobstat/ar;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/ar;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/baidu/mobstat/ar;->c:Lcom/baidu/mobstat/ct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iget-object v1, p0, Lcom/baidu/mobstat/ar;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ar;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/baidu/mobstat/ar;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iget-object v1, p0, Lcom/baidu/mobstat/ar;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ar;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/baidu/bottom/service/BottomReceiver;->b(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/bottom/service/BottomReceiver;->a()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string v0, "No need to handle receiver due to time strategy"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/baidu/mobstat/ar;->c:Lcom/baidu/mobstat/ct;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ct;->b()V

    invoke-static {v6}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/ct;)Lcom/baidu/mobstat/ct;

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/baidu/bottom/service/BottomReceiver;->a(J)J

    sget-object v0, Lcom/baidu/mobstat/an;->b:Lcom/baidu/mobstat/an;

    iget-object v1, p0, Lcom/baidu/mobstat/ar;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/an;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/baidu/mobstat/ar;->c:Lcom/baidu/mobstat/ct;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ct;->b()V

    invoke-static {v6}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/ct;)Lcom/baidu/mobstat/ct;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mobstat/ar;->c:Lcom/baidu/mobstat/ct;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ct;->b()V

    invoke-static {v6}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/ct;)Lcom/baidu/mobstat/ct;

    throw v0
.end method
