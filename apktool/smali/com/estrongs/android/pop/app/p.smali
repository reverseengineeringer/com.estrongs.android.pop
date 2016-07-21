.class Lcom/estrongs/android/pop/app/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/gp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/gp;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/gp;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(Lcom/estrongs/android/pop/app/AudioPlayerService;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/c/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/c/k;->d(I)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)Z

    :cond_1
    return-void
.end method
