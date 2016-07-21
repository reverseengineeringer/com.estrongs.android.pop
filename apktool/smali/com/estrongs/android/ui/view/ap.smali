.class Lcom/estrongs/android/ui/view/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->c(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->d(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->j(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->j(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ap;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->d(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
