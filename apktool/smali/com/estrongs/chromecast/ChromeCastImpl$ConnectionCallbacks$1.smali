.class Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/aa",
        "<",
        "Lcom/google/android/gms/cast/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;


# direct methods
.method constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;->this$1:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/c;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->b()Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->d()Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->c()Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/cast/c;->e()Z

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;->this$1:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    iget-object v0, v0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    const/4 v1, 0x1

    # setter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mApplicationStarted:Z
    invoke-static {v0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1002(Lcom/estrongs/chromecast/ChromeCastImpl;Z)Z

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;->this$1:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    iget-object v0, v0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # invokes: Lcom/estrongs/chromecast/ChromeCastImpl;->attachMediaChannel()V
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1100(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;->this$1:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    iget-object v0, v0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

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

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCastConnectionListener;->onConnected()V

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

    :goto_1
    return-void

    :cond_1
    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application could not launch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;->this$1:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    iget-object v0, v0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-virtual {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->teardown()V

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;->this$1:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    iget-object v0, v0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1200(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/ChromeCastConnectionListener;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCastConnectionListener;->onConnectionFailed()V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/z;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/c;

    invoke-virtual {p0, p1}, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks$1;->onResult(Lcom/google/android/gms/cast/c;)V

    return-void
.end method
