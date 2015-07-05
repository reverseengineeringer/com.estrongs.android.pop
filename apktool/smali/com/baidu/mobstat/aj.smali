.class Lcom/baidu/mobstat/aj;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mobstat/ag;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ag;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/aj;->d:Lcom/baidu/mobstat/ag;

    iput-object p2, p0, Lcom/baidu/mobstat/aj;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/aj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/aj;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "samelog"

    const-string v1, "timer"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/DataCore;->isPartEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "samelog"

    const-string v1, "timer send"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobstat/aj;->d:Lcom/baidu/mobstat/ag;

    iget-object v1, p0, Lcom/baidu/mobstat/aj;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/aj;->d:Lcom/baidu/mobstat/ag;

    invoke-static {v2}, Lcom/baidu/mobstat/ag;->d(Lcom/baidu/mobstat/ag;)Z

    move-result v2

    iget-object v3, p0, Lcom/baidu/mobstat/aj;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/aj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
