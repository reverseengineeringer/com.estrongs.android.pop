.class Lcom/estrongs/android/pop/app/mj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/mj;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->dismissDialog(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->dismissDialog(I)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getCurrentPosition()I

    move-result v0

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->pause()V

    :cond_4
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/mj;->a:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->b()V

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/view/ESVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/mj;->a:Z

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    if-eqz v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/mj;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;J)J

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method
