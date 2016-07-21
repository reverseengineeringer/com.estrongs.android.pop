.class public Lcom/estrongs/android/pop/app/c/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/estrongs/android/pop/app/c/j;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/estrongs/android/pop/app/c/a/c;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->g:I

    new-instance v0, Lcom/estrongs/android/pop/app/c/a/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/c/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->g:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->d(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/c/a/c;->e(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/pop/app/c/k;->f:I

    if-nez p1, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/c/a/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/c/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->g:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->c(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/c/a/b;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/c/a/b;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/k;->a:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/c/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->c(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/app/c/j;)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v4, 0x1

    if-nez p1, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/c/a/c;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a/c;->c()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a/c;->f()I

    move-result v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lcom/estrongs/android/pop/app/c/k;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/a/c;->d(I)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/k;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/c/i;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/pop/app/c/k;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v4, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v4, v1}, Lcom/estrongs/android/pop/app/c/j;->a(Lcom/estrongs/android/pop/app/c/i;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    if-gez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v0

    if-ge v1, v0, :cond_4

    iput v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    :cond_4
    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->f:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->c(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->f:I

    return v0
.end method

.method public c(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->g:I

    return v0
.end method

.method public d(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/c/k;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->c(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Lcom/estrongs/android/pop/app/c/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    return-object v0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->a()V

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    return v0
.end method

.method public g()Lcom/estrongs/android/pop/app/c/i;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->b:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a/c;->d()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a/c;->e()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/c/a/c;->e(I)I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->m()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    iget v1, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a/c;->c(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/c/k;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/k;->e:Lcom/estrongs/android/pop/app/c/a/c;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/c/a/c;->e(I)I

    move-result v0

    return v0
.end method
