.class Lcom/estrongs/android/ui/view/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->c(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/view/ESVideoView;->c(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->c(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->c(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->d(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->f(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->seekTo(I)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->g(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->h(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->i(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->i(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    goto :goto_0
.end method
