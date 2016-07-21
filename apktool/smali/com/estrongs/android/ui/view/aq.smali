.class Lcom/estrongs/android/ui/view/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->d(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->k(Lcom/estrongs/android/ui/view/ESVideoView;)Lcom/estrongs/android/ui/view/av;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->k(Lcom/estrongs/android/ui/view/ESVideoView;)Lcom/estrongs/android/ui/view/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/view/av;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->i(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aq;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    return-void
.end method
