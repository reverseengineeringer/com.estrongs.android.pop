.class Lcom/estrongs/android/view/music/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/music/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->m()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(JJ)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->c(Lcom/estrongs/android/view/music/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->c()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    iget-object v4, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v4}, Lcom/estrongs/android/view/music/a;->d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(JJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(JJ)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/music/c;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/MusicPlayerView;->a()V

    goto :goto_0
.end method
