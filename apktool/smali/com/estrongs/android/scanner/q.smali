.class Lcom/estrongs/android/scanner/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/scanner/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/l;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/q;->b:Lcom/estrongs/android/scanner/l;

    iput-boolean p2, p0, Lcom/estrongs/android/scanner/q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/scanner/a/g;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/a/g;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/scanner/r;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/scanner/r;-><init>(Lcom/estrongs/android/scanner/q;Lcom/estrongs/fs/a/b;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/scanner/a/g;->a(Lcom/estrongs/android/scanner/d/w;)V

    iget-boolean v1, p0, Lcom/estrongs/android/scanner/q;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/scanner/q;->b:Lcom/estrongs/android/scanner/l;

    invoke-static {v1}, Lcom/estrongs/android/scanner/l;->e(Lcom/estrongs/android/scanner/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cataloger"

    const-string v2, "\u6253\u5f00\u6587\u4ef6\u76d1\u63a7!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/q;->b:Lcom/estrongs/android/scanner/l;

    invoke-static {v1}, Lcom/estrongs/android/scanner/l;->f(Lcom/estrongs/android/scanner/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/scanner/q;->b:Lcom/estrongs/android/scanner/l;

    invoke-static {v1, v0}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/l;Lcom/estrongs/android/scanner/a/g;)V

    return-void
.end method
