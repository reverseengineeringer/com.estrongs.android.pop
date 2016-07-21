.class Lcom/estrongs/android/pop/app/jw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->pause()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/jw;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
