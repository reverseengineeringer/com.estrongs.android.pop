.class Lcom/estrongs/android/pop/app/ke;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lcom/estrongs/chromecast/CastDeviceListener;
.implements Lcom/estrongs/chromecast/ChromeCastConnectionListener;
.implements Lcom/estrongs/chromecast/RemoteMediaPlayerListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ke;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ke;->b:Z

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ke;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->t()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->s()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v2

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :goto_0
    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ke;->b:Z

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    return-void
.end method

.method public onDeviceAdded(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDeviceRemoved(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDeviceSelected(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDeviceUnSelected(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    :cond_0
    return-void
.end method

.method public onDeviceVolumeChanged(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->n()V

    return-void
.end method

.method public onStatusUpdated(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v(Lcom/estrongs/android/pop/app/PopVideoPlayer;)I

    move-result v0

    if-ne v0, v2, :cond_3

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01d6

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_1
    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->z()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Chromecast"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z

    :cond_2
    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z

    :cond_3
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->l()V

    return-void
.end method

.method public seekTo(I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/aa;->a(J)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->j()V

    return-void
.end method
