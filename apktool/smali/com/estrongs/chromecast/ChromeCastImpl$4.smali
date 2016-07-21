.class Lcom/estrongs/chromecast/ChromeCastImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/aa",
        "<",
        "Lcom/google/android/gms/cast/as;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estrongs/chromecast/ChromeCastImpl;


# direct methods
.method constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$4;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/as;)V
    .locals 4

    const/16 v2, -0x3e8

    invoke-interface {p1}, Lcom/google/android/gms/cast/as;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to request status."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$4;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # setter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerState:I
    invoke-static {v0, v2}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1502(Lcom/estrongs/chromecast/ChromeCastImpl;I)I

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$4;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1600(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/RemoteMediaPlayerListener;

    const/16 v3, -0x3e8

    invoke-interface {v0, v3}, Lcom/estrongs/chromecast/RemoteMediaPlayerListener;->onStatusUpdated(I)V

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

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/z;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/as;

    invoke-virtual {p0, p1}, Lcom/estrongs/chromecast/ChromeCastImpl$4;->onResult(Lcom/google/android/gms/cast/as;)V

    return-void
.end method
