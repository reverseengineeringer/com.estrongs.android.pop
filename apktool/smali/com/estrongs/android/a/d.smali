.class Lcom/estrongs/android/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/estrongs/android/a/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LibAnalyzer finish!!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/a/b;->i()Lcom/estrongs/android/a/b;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/a/b;->b(Lcom/estrongs/android/a/b;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->e(Lcom/estrongs/android/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/estrongs/android/a/l;->k()Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    const-string v1, "appcatalog"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/q;->d(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    const-string v1, "newcreate"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/q;->e(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    const-string v1, "longtime"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/q;->c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    const-string v1, "largefile"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/q;->f(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    const-string v1, "redundancy"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

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

    invoke-interface {v0, p1, v7}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/a/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DBAnalyzer has validate data before DiskAnalyzer!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/d;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/q;->a()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
