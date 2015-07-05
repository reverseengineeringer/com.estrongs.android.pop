.class Lcom/estrongs/android/pop/app/lr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lr;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lr;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lr;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lr;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->dismissDialog(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lr;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/lr;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lr;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->r(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    return-void
.end method
