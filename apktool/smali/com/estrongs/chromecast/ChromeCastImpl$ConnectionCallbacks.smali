.class Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/q;


# instance fields
.field final synthetic this$0:Lcom/estrongs/chromecast/ChromeCastImpl;


# direct methods
.method private constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/ChromeCastImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$500(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mWaitingForReconnect:Z
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$800(Lcom/estrongs/chromecast/ChromeCastImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # setter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mWaitingForReconnect:Z
    invoke-static {v0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$802(Lcom/estrongs/chromecast/ChromeCastImpl;Z)Z

    if-eqz p1, :cond_1

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-virtual {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->teardown()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # invokes: Lcom/estrongs/chromecast/ChromeCastImpl;->reattachMediaChannel()V
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$900(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;
    invoke-static {v1}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$500(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/common/api/n;

    move-result-object v1

    const-string v2, "43597A76"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    new-instance v1, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;

    invoke-direct {v1, p0}, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/w;->a(Lcom/google/android/gms/common/api/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to launch application"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-virtual {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->teardown()V

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1200(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/ChromeCastConnectionListener;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCastConnectionListener;->onConnectionFailed()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    const/4 v1, 0x1

    # setter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mWaitingForReconnect:Z
    invoke-static {v0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$802(Lcom/estrongs/chromecast/ChromeCastImpl;Z)Z

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1200(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/ChromeCastConnectionListener;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCastConnectionListener;->onConnectionSuspended()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
