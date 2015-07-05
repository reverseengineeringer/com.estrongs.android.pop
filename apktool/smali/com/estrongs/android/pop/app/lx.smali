.class Lcom/estrongs/android/pop/app/lx;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->k(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v1

    iget-wide v2, v1, Lcom/estrongs/fs/c;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ly;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ly;-><init>(Lcom/estrongs/android/pop/app/lx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Ljava/lang/String;J)V

    goto :goto_1
.end method
