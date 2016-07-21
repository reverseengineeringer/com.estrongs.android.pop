.class Lcom/estrongs/android/pop/app/gl;
.super Lcom/estrongs/android/pop/app/gs;

# interfaces
.implements Lcom/estrongs/chromecast/ChromeCastConnectionListener;
.implements Lcom/estrongs/chromecast/RemoteMediaPlayerListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/gs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/gl;->l()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    invoke-super {p0}, Lcom/estrongs/android/pop/app/gs;->a()Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/gs;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->c:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/gl;->onStatusUpdated(I)V

    return-void
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

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->c:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->n()V

    return-void
.end method

.method public onStatusUpdated(I)V
    .locals 5

    const/4 v4, 0x2

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C(Lcom/estrongs/android/pop/app/PopAudioPlayer;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/gl;->l()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/gl;->l()I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/gl;->l()I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->c:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->z()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/gl;->l()I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->i()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;IZ)V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f08067f

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/gl;->l()I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
    .end sparse-switch
.end method
