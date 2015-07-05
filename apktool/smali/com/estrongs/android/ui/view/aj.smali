.class Lcom/estrongs/android/ui/view/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ESVideoView;->b(Lcom/estrongs/android/ui/view/ESVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
