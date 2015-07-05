.class Lcom/baidu/mobstat/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/Download;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/Download;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/Download;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/baidu/mobstat/Download;->a:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/Download;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/Download;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/Download;->b(Lcom/baidu/mobstat/Download;Z)Z

    invoke-static {}, Lcom/baidu/mobstat/Download;->b()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/Download;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "UpdateVersionService"

    const-string v1, "down file succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/baidu/mobstat/Download;->b:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    const-string v0, "UpdateVersionService"

    const-string v1, "down file fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/Download;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/Download;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/Download;->b(Lcom/baidu/mobstat/Download;Z)Z

    invoke-static {}, Lcom/baidu/mobstat/Download;->b()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/Download;->b:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    sget v0, Lcom/baidu/mobstat/Download;->c:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/Download;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/Download;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/Download;->b(Lcom/baidu/mobstat/Download;Z)Z

    invoke-static {}, Lcom/baidu/mobstat/Download;->b()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/Download;->c:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
