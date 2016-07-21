.class Lcom/estrongs/android/view/music/b;
.super Lcom/estrongs/android/view/music/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/music/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-direct {p0}, Lcom/estrongs/android/view/music/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->b(Lcom/estrongs/android/view/music/a;)V

    return-void
.end method

.method public a(II)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;

    move-result-object v0

    int-to-long v2, p2

    iget-object v1, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v1}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->m()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(JJ)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/gq;->d(I)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->a()Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->a(Lcom/estrongs/android/view/music/a;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->a(Lcom/estrongs/android/view/music/a;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->b(Lcom/estrongs/android/view/music/a;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->c(Lcom/estrongs/android/view/music/a;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->b(Lcom/estrongs/android/view/music/a;)V

    return-void
.end method

.method public f(I)V
    .locals 4

    const-wide/16 v2, 0x64

    iget-object v0, p0, Lcom/estrongs/android/view/music/b;->a:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(JJ)V

    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method
