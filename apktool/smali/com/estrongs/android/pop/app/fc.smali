.class Lcom/estrongs/android/pop/app/fc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/ak;

.field final synthetic b:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fc;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/fc;->a:Lcom/estrongs/android/pop/app/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fc;->a:Lcom/estrongs/android/pop/app/a/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ak;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fc;->a:Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fc;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->r()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fc;->a:Lcom/estrongs/android/pop/app/a/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ak;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fc;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v1, Lcom/estrongs/android/pop/app/fd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fd;-><init>(Lcom/estrongs/android/pop/app/fc;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->runOnUiThread(Ljava/lang/Runnable;)V
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
