.class Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/appsflyer/AppsFlyerLib$SchedulerTask;

.field private b:Landroid/content/Context;


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/appsflyer/AppsFlyerProperties;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppsFlyer_3.2"

    const-string v1, "checkResumeTask background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->f(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->a:Lcom/appsflyer/AppsFlyerLib$SchedulerTask;

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
