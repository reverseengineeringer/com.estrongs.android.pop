.class final Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;


# instance fields
.field final synthetic this$0:Lcom/estrongs/chromecast/ChromeCastImpl;


# direct methods
.method private constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/ChromeCastImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/chromecast/CastDeviceInfoImpl;

    invoke-direct {v1, p2}, Lcom/estrongs/chromecast/CastDeviceInfoImpl;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$300(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/CastDeviceListener;

    invoke-interface {v0, v1}, Lcom/estrongs/chromecast/CastDeviceListener;->onDeviceAdded(Lcom/estrongs/chromecast/CastDeviceInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/chromecast/CastDeviceInfoImpl;

    invoke-direct {v1, p2}, Lcom/estrongs/chromecast/CastDeviceInfoImpl;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$300(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/CastDeviceListener;

    invoke-interface {v0, v1}, Lcom/estrongs/chromecast/CastDeviceListener;->onDeviceRemoved(Lcom/estrongs/chromecast/CastDeviceInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    new-instance v1, Lcom/estrongs/chromecast/CastDeviceInfoImpl;

    invoke-direct {v1, p2}, Lcom/estrongs/chromecast/CastDeviceInfoImpl;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # setter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;
    invoke-static {v0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$102(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/CastDeviceInfo;)Lcom/estrongs/chromecast/CastDeviceInfo;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$300(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/CastDeviceListener;

    invoke-interface {v0, v1}, Lcom/estrongs/chromecast/CastDeviceListener;->onDeviceSelected(Lcom/estrongs/chromecast/CastDeviceInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # invokes: Lcom/estrongs/chromecast/ChromeCastImpl;->launchReceiver()V
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$400(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-virtual {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->teardown()V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    const/4 v1, 0x0

    # setter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;
    invoke-static {v0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$102(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/CastDeviceInfo;)Lcom/estrongs/chromecast/CastDeviceInfo;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/chromecast/CastDeviceInfoImpl;

    invoke-direct {v1, p2}, Lcom/estrongs/chromecast/CastDeviceInfoImpl;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$300(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/CastDeviceListener;

    invoke-interface {v0, v1}, Lcom/estrongs/chromecast/CastDeviceListener;->onDeviceUnSelected(Lcom/estrongs/chromecast/CastDeviceInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/chromecast/CastDeviceInfoImpl;

    invoke-direct {v1, p2}, Lcom/estrongs/chromecast/CastDeviceInfoImpl;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$300(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/CastDeviceListener;

    invoke-interface {v0, v1}, Lcom/estrongs/chromecast/CastDeviceListener;->onDeviceVolumeChanged(Lcom/estrongs/chromecast/CastDeviceInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method
