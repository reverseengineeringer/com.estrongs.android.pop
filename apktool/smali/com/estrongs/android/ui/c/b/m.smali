.class Lcom/estrongs/android/ui/c/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/c/b/t;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/l;->g()Ljava/util/List;

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->b(Lcom/estrongs/android/ui/c/b/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->c(Lcom/estrongs/android/ui/c/b/l;)Lcom/estrongs/android/ui/c/b/q;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->c(Lcom/estrongs/android/ui/c/b/l;)Lcom/estrongs/android/ui/c/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/q;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/q;)Lcom/estrongs/android/ui/c/b/q;

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/l;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/l;->g()Ljava/util/List;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/c/b/l;->b(Lcom/estrongs/android/ui/c/b/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->b(Lcom/estrongs/android/ui/c/b/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->c(Lcom/estrongs/android/ui/c/b/l;)Lcom/estrongs/android/ui/c/b/q;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->c(Lcom/estrongs/android/ui/c/b/l;)Lcom/estrongs/android/ui/c/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/q;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/q;)Lcom/estrongs/android/ui/c/b/q;

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/m;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/l;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
