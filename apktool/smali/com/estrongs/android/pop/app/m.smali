.class Lcom/estrongs/android/pop/app/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/am;->f()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/a/am;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/a/am;->a(IZ)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/gc;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/gc;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/gc;->g(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
