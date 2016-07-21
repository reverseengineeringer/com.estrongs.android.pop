.class public Lcom/estrongs/android/view/music/a;
.super Lcom/estrongs/android/view/cr;

# interfaces
.implements Lcom/estrongs/android/view/music/m;


# instance fields
.field private a:Lcom/estrongs/android/view/music/MusicPlayerView;

.field private b:Lcom/estrongs/android/view/music/f;

.field private c:Landroid/os/Handler;

.field private d:Lcom/estrongs/android/view/music/l;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/music/a;->c:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/music/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/music/b;-><init>(Lcom/estrongs/android/view/music/a;)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/a;->d:Lcom/estrongs/android/view/music/l;

    new-instance v0, Lcom/estrongs/android/view/music/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/music/c;-><init>(Lcom/estrongs/android/view/music/a;)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/a;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/music/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/music/a;->w()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/music/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/music/a;->x()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/view/music/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/music/a;->v()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/MusicPlayerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/view/music/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/view/music/a;->e:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/music/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->ah:Landroid/content/Context;

    return-object v0
.end method

.method private v()V
    .locals 1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/music/a;->d(I)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/view/music/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private x()V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/MusicPlayerView;->a()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->r()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->s()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    if-eqz v3, :cond_6

    iget-object v0, v3, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/c/i;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v1}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->t()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, ""

    :cond_4
    iget-object v3, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/view/music/MusicPlayerView;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/view/music/MusicPlayerView;->setAuthor(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/MusicPlayerView;->setMusicPath(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/estrongs/android/view/music/d;

    invoke-direct {v5, p0, v3}, Lcom/estrongs/android/view/music/d;-><init>(Lcom/estrongs/android/view/music/a;Lcom/estrongs/android/pop/app/c/i;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    invoke-virtual {v3}, Lcom/estrongs/android/view/music/MusicPlayerView;->a()V

    goto :goto_2
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030130

    return v0
.end method

.method protected i()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i()V

    const v0, 0x7f0e0505

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/music/a;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/music/MusicPlayerView;

    iput-object v0, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->setOnPlayerViewListener(Lcom/estrongs/android/view/music/m;)V

    new-instance v0, Lcom/estrongs/android/view/music/f;

    invoke-direct {v0}, Lcom/estrongs/android/view/music/f;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/a;->aF()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/music/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public j_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->j_()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/view/music/a;->w()V

    return-void
.end method

.method public l()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    iget-object v1, p0, Lcom/estrongs/android/view/music/a;->d:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/l;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/view/music/a;->v()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->g()Z

    iget-object v1, p0, Lcom/estrongs/android/view/music/a;->a:Lcom/estrongs/android/view/music/MusicPlayerView;

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->e()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/a;->b:Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/f;->h()V

    :cond_0
    return-void
.end method
