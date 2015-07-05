.class Lcom/estrongs/android/pop/app/lu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/lt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/lt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lu;->a:Lcom/estrongs/android/pop/app/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lu;->a:Lcom/estrongs/android/pop/app/lt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lt;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lu;->a:Lcom/estrongs/android/pop/app/lt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lt;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lu;->a:Lcom/estrongs/android/pop/app/lt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lt;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lu;->a:Lcom/estrongs/android/pop/app/lt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lt;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lu;->a:Lcom/estrongs/android/pop/app/lt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lt;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V

    :cond_1
    return-void
.end method
