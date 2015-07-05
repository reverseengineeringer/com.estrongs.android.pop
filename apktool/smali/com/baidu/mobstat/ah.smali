.class Lcom/baidu/mobstat/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mobstat/ag;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ag;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    iput-object p2, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/ah;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ag;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v0}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/ad;->a()Lcom/baidu/mobstat/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ad;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v0}, Lcom/baidu/mobstat/ag;->b(Lcom/baidu/mobstat/ag;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v0}, Lcom/baidu/mobstat/ag;->b(Lcom/baidu/mobstat/ag;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ag;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/r;->b(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ag;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/r;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ag;I)I

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/r;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ag;->b(Lcom/baidu/mobstat/ag;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v0}, Lcom/baidu/mobstat/ag;->c(Lcom/baidu/mobstat/ag;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    iget-object v1, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ah;->b:Ljava/lang/String;

    const-string v3, "internal"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/ag;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/ai;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ai;-><init>(Lcom/baidu/mobstat/ah;)V

    iget-object v2, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v2}, Lcom/baidu/mobstat/ag;->e(Lcom/baidu/mobstat/ag;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v0}, Lcom/baidu/mobstat/ag;->c(Lcom/baidu/mobstat/ag;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    iget-object v1, p0, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ah;->b:Ljava/lang/String;

    const-string v3, "onceaday"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
