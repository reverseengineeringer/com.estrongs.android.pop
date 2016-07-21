.class Lcom/estrongs/chromecast/ChromeCastImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/aw;


# instance fields
.field final synthetic this$0:Lcom/estrongs/chromecast/ChromeCastImpl;


# direct methods
.method constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$2;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdated()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$2;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1400(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/cast/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->c()Lcom/google/android/gms/cast/ah;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/ah;->b()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$2;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # setter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerState:I
    invoke-static {v0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1502(Lcom/estrongs/chromecast/ChromeCastImpl;I)I

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$2;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1600(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/RemoteMediaPlayerListener;

    invoke-interface {v0, v1}, Lcom/estrongs/chromecast/RemoteMediaPlayerListener;->onStatusUpdated(I)V

    goto :goto_1

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

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method
