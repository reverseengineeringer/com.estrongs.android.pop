.class final Lcom/estrongs/android/ui/e/is;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/is;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/is;->b:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/ui/e/is;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/is;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/is;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/ui/e/is;->c:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/e/iq;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/is;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v1, Lcom/estrongs/android/ui/e/it;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/it;-><init>(Lcom/estrongs/android/ui/e/is;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/is;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v1, Lcom/estrongs/android/ui/e/iu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/iu;-><init>(Lcom/estrongs/android/ui/e/is;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
