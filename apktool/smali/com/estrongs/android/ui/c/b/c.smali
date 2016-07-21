.class Lcom/estrongs/android/ui/c/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/c/b/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->b(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->c(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->d(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;

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

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->e(Lcom/estrongs/android/ui/c/b/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->f(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/b/f;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->f(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/f;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;Lcom/estrongs/android/ui/c/b/f;)Lcom/estrongs/android/ui/c/b/f;

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/a;->b()V

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->b(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->c(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->d(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;

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

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/c/b/a;->b(Lcom/estrongs/android/ui/c/b/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->e(Lcom/estrongs/android/ui/c/b/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->f(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/b/f;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->f(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/f;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;Lcom/estrongs/android/ui/c/b/f;)Lcom/estrongs/android/ui/c/b/f;

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/a;->b()V

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
