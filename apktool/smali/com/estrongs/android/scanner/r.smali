.class Lcom/estrongs/android/scanner/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/w;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/a/b;

.field final synthetic b:Lcom/estrongs/android/scanner/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/q;Lcom/estrongs/fs/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/r;->b:Lcom/estrongs/android/scanner/q;

    iput-object p2, p0, Lcom/estrongs/android/scanner/r;->a:Lcom/estrongs/fs/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "Cataloger"

    const-string v2, "flush UI because of insert!"

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/r;->a:Lcom/estrongs/fs/a/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    return-void
.end method
