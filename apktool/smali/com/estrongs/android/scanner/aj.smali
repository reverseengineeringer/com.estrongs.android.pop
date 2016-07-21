.class Lcom/estrongs/android/scanner/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/w;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v0}, Lcom/estrongs/android/scanner/af;->l(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/al;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v0}, Lcom/estrongs/android/scanner/af;->l(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/scanner/al;->b()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/estrongs/android/scanner/af;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/estrongs/android/scanner/af;->a:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v1}, Lcom/estrongs/android/scanner/af;->m(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/number matched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v1}, Lcom/estrongs/android/scanner/af;->n(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/af;->a()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v0}, Lcom/estrongs/android/scanner/af;->h(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/aj;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v0}, Lcom/estrongs/android/scanner/af;->h(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/m;->f()V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
