.class Lcom/estrongs/android/ui/view/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, p3}, Lcom/estrongs/android/ui/view/ESVideoView;->f(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, p4}, Lcom/estrongs/android/ui/view/ESVideoView;->g(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->i(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v3

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v3

    if-ne v3, p4, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->d(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->f(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->f(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->n(Lcom/estrongs/android/ui/view/ESVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->o(Lcom/estrongs/android/ui/view/ESVideoView;)Lcom/estrongs/android/ui/view/aw;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->o(Lcom/estrongs/android/ui/view/ESVideoView;)Lcom/estrongs/android/ui/view/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/aw;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/at;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;Lcom/estrongs/android/ui/view/aw;)Lcom/estrongs/android/ui/view/aw;

    return-void
.end method
