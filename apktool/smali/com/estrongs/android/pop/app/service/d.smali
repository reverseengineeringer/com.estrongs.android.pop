.class Lcom/estrongs/android/pop/app/service/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v0, Lcom/estrongs/android/pop/z;->w:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v1

    const-string v0, "bssid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/util/an;->c()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/app/f/c;->a()Lcom/estrongs/android/pop/app/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/f/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->d(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/f;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/service/f;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/app/f/c;->a()Lcom/estrongs/android/pop/app/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f/c;->f()V

    invoke-static {}, Lcom/estrongs/android/pop/app/f/c;->a()Lcom/estrongs/android/pop/app/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f/c;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Z)Z

    goto/16 :goto_0

    :cond_8
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->f(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/f/c;->a()Lcom/estrongs/android/pop/app/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/f/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/g;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->g(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/service/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/service/g;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Z)Z

    goto/16 :goto_0

    :cond_9
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide v4, 0x9a7ec800L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    const-class v2, Lcom/estrongs/android/pop/app/ESUsePromptActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/d;->a:Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
