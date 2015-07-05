.class public Lcom/estrongs/android/pop/app/ge;
.super Lcom/estrongs/android/pop/app/gd;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/gd;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(II)V

    return-void
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/a/am;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/am;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/gc;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/gc;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/android/pop/app/a/al;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/al;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/estrongs/android/pop/app/a/am;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->F()Lcom/estrongs/android/pop/app/a/am;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(I)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Ljava/util/List;)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->p()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(I)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/estrongs/android/pop/app/a/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->z()V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->E()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    return-void
.end method

.method public r()Lcom/estrongs/android/pop/app/a/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->q()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c()I

    move-result v0

    return v0
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    return-void
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()Z

    move-result v0

    return v0
.end method

.method public y()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->D()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ge;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->o()V

    return-void
.end method
