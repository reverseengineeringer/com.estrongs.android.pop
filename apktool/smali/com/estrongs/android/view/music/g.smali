.class Lcom/estrongs/android/view/music/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/gp;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/music/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->d(Lcom/estrongs/android/view/music/f;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;Lcom/estrongs/android/pop/app/gq;)Lcom/estrongs/android/pop/app/gq;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/l;->a()V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/music/l;->a(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/music/l;->b(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/music/l;->c(I)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/music/l;->d(I)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/music/l;->e(I)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/music/l;->f(I)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    goto :goto_1

    :cond_2
    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/g;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/music/l;->g(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
