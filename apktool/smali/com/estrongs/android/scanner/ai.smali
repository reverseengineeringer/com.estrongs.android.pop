.class Lcom/estrongs/android/scanner/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v2}, Lcom/estrongs/android/scanner/af;->f(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/ae;->a()V

    iget-object v2, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v2}, Lcom/estrongs/android/scanner/af;->g(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/b/b;->d()V

    iget-object v2, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v2}, Lcom/estrongs/android/scanner/af;->h(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/d/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/m;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/estrongs/android/scanner/af;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms to load directory cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {}, Lcom/estrongs/android/scanner/ab;->a()Lcom/estrongs/android/scanner/ab;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/scanner/ab;->a(Z)Lcom/estrongs/android/scanner/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/scanner/af;->a(Lcom/estrongs/android/scanner/af;Lcom/estrongs/android/scanner/y;)Lcom/estrongs/android/scanner/y;

    iget-object v0, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v0}, Lcom/estrongs/android/scanner/af;->j(Lcom/estrongs/android/scanner/af;)Lcom/estrongs/android/scanner/y;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v1}, Lcom/estrongs/android/scanner/af;->i(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/y;->a(Ljava/util/concurrent/ExecutorService;)V

    invoke-static {}, Lcom/estrongs/android/scanner/af;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start scan..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v1}, Lcom/estrongs/android/scanner/af;->i(Lcom/estrongs/android/scanner/af;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/ai;->a:Lcom/estrongs/android/scanner/af;

    invoke-static {v2}, Lcom/estrongs/android/scanner/af;->k(Lcom/estrongs/android/scanner/af;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
