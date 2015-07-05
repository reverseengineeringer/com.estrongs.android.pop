.class Lcom/estrongs/android/pop/view/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/service/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/service/a;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/pop/app/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/r;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/app/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/c;->f()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/service/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/app/service/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/c;->a(Lcom/estrongs/android/pop/app/service/a;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2, v2}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_1
    invoke-interface {p1, v2, v0}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/ak;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/app/service/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/service/a;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method
