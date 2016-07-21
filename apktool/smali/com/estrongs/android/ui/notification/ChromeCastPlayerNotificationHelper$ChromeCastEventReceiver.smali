.class public Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Lcom/estrongs/android/pop/app/ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->g()Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a(Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;)Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.estrongs.action.chromecast.control.preview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/app/ag;->a(J)V

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.estrongs.action.chromecast.control.next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/app/ag;->a(J)V

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "com.estrongs.action.chromecast.control.close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b(Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;)Lcom/estrongs/android/ui/notification/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b(Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;)Lcom/estrongs/android/ui/notification/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    goto :goto_0

    :cond_3
    const-string v1, "com.estrongs.action.chromecast.control.play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->l()V

    :goto_1
    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->o()Lcom/estrongs/android/pop/app/ah;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, v4, Lcom/estrongs/android/pop/app/ah;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/estrongs/android/pop/app/ah;->b:Ljava/lang/String;

    iget-object v3, v4, Lcom/estrongs/android/pop/app/ah;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/ah;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/ag;->m()Lcom/estrongs/android/pop/app/c/k;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/c/k;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->j()V

    goto :goto_1

    :cond_7
    const-string v1, "com.estrongs.action.chromecast.control.disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->q()V

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b(Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;)Lcom/estrongs/android/ui/notification/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b(Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;)Lcom/estrongs/android/ui/notification/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
