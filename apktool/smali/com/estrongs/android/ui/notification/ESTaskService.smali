.class public Lcom/estrongs/android/ui/notification/ESTaskService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/estrongs/android/ui/notification/b;

.field private b:Z

.field private c:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/estrongs/android/ui/notification/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/notification/b;-><init>(Lcom/estrongs/android/ui/notification/ESTaskService;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->a:Lcom/estrongs/android/ui/notification/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->c:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;

    invoke-direct {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->c:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.estrongs.action.chromecast.control.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.estrongs.action.chromecast.control.disconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.estrongs.action.chromecast.control.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.estrongs.action.chromecast.control.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.estrongs.action.chromecast.control.preview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->c:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/notification/ESTaskService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/notification/ESTaskService;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->a:Lcom/estrongs/android/ui/notification/b;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->c:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->c:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/notification/ESTaskService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
