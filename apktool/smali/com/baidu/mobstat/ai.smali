.class Lcom/baidu/mobstat/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ah;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/ai;->a:Lcom/baidu/mobstat/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/mobstat/ai;->a:Lcom/baidu/mobstat/ah;

    iget-object v0, v0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    iget-object v1, p0, Lcom/baidu/mobstat/ai;->a:Lcom/baidu/mobstat/ah;

    iget-object v1, v1, Lcom/baidu/mobstat/ah;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ai;->a:Lcom/baidu/mobstat/ah;

    iget-object v2, v2, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v2}, Lcom/baidu/mobstat/ag;->d(Lcom/baidu/mobstat/ag;)Z

    move-result v2

    iget-object v3, p0, Lcom/baidu/mobstat/ai;->a:Lcom/baidu/mobstat/ah;

    iget-object v3, v3, Lcom/baidu/mobstat/ah;->b:Ljava/lang/String;

    const-string v4, "appstart"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
