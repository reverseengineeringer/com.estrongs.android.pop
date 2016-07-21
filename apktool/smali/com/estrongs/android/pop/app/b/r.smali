.class Lcom/estrongs/android/pop/app/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/b/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/b/i;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->i(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->i(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->j(Lcom/estrongs/android/pop/app/b/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->c(Lcom/estrongs/android/pop/app/b/k;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->h(Lcom/estrongs/android/pop/app/b/k;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->h(Lcom/estrongs/android/pop/app/b/k;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Lcom/estrongs/android/view/cq;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/k;->i(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/cq;->a(Ljava/util/List;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->i(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->c(Lcom/estrongs/android/pop/app/b/k;Z)Z

    goto :goto_1
.end method
