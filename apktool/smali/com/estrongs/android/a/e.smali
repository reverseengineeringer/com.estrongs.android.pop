.class Lcom/estrongs/android/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/e;->a:Lcom/estrongs/android/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/a/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaAnalyzer finish!!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/e;->a:Lcom/estrongs/android/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/a/b;->c(Lcom/estrongs/android/a/b;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/a/e;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->d(Lcom/estrongs/android/a/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/j;

    iget-object v2, p0, Lcom/estrongs/android/a/e;->a:Lcom/estrongs/android/a/b;

    invoke-static {v2}, Lcom/estrongs/android/a/b;->b(Lcom/estrongs/android/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/e;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->g(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/ab;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
