.class Lcom/estrongs/android/ui/view/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->l(Lcom/estrongs/android/ui/view/ESVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/view/ESVideoView;->c(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/view/ESVideoView;->d(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->m(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->m(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/an;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->d(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
