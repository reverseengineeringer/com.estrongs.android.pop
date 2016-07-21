.class Lcom/estrongs/android/scanner/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v0}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/g;

    iget-object v2, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v2}, Lcom/estrongs/android/scanner/l;->b(Lcom/estrongs/android/scanner/l;)Lcom/estrongs/android/scanner/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v0}, Lcom/estrongs/android/scanner/l;->c(Lcom/estrongs/android/scanner/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/a;

    iget-object v2, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v2}, Lcom/estrongs/android/scanner/l;->b(Lcom/estrongs/android/scanner/l;)Lcom/estrongs/android/scanner/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/a;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v0}, Lcom/estrongs/android/scanner/l;->d(Lcom/estrongs/android/scanner/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/f;

    iget-object v2, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v2}, Lcom/estrongs/android/scanner/l;->b(Lcom/estrongs/android/scanner/l;)Lcom/estrongs/android/scanner/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/f;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v0}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v0}, Lcom/estrongs/android/scanner/l;->c(Lcom/estrongs/android/scanner/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/m;->a:Lcom/estrongs/android/scanner/l;

    invoke-static {v0}, Lcom/estrongs/android/scanner/l;->d(Lcom/estrongs/android/scanner/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
