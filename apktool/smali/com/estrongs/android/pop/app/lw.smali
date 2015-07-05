.class Lcom/estrongs/android/pop/app/lw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/lv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/lv;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iput p2, p0, Lcom/estrongs/android/pop/app/lw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/lw;->a:I

    const/16 v1, -0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/lw;->b:Lcom/estrongs/android/pop/app/lv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/lv;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0
.end method
