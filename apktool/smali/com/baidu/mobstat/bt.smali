.class Lcom/baidu/mobstat/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/bs;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bs;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    iput-object p2, p0, Lcom/baidu/mobstat/bt;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {v0}, Lcom/baidu/mobstat/bs;->a(Lcom/baidu/mobstat/bs;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {v0}, Lcom/baidu/mobstat/bs;->a(Lcom/baidu/mobstat/bs;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bs;->a(Lcom/baidu/mobstat/bs;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/be;->a()Lcom/baidu/mobstat/be;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/bt;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/be;->a(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bs;->a(Lcom/baidu/mobstat/bs;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {}, Lcom/baidu/mobstat/be;->a()Lcom/baidu/mobstat/be;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bt;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/be;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bs;->a(Lcom/baidu/mobstat/bs;I)I

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {}, Lcom/baidu/mobstat/be;->a()Lcom/baidu/mobstat/be;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bt;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/be;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bs;->a(Lcom/baidu/mobstat/bs;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {v0}, Lcom/baidu/mobstat/bs;->b(Lcom/baidu/mobstat/bs;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    iget-object v1, p0, Lcom/baidu/mobstat/bt;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bs;->d(Landroid/content/Context;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {v0}, Lcom/baidu/mobstat/bs;->d(Lcom/baidu/mobstat/bs;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/bu;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/bu;-><init>(Lcom/baidu/mobstat/bt;)V

    iget-object v2, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {v2}, Lcom/baidu/mobstat/bs;->c(Lcom/baidu/mobstat/bs;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    invoke-static {v0}, Lcom/baidu/mobstat/bs;->b(Lcom/baidu/mobstat/bs;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    iget-object v1, p0, Lcom/baidu/mobstat/bt;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bs;->d(Landroid/content/Context;)V

    goto :goto_0
.end method
