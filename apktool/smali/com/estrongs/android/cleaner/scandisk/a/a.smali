.class public abstract Lcom/estrongs/android/cleaner/scandisk/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/cleaner/f;


# instance fields
.field protected a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/cleaner/e;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected c:Lcom/estrongs/android/cleaner/h;

.field protected d:I

.field protected final e:Ljava/lang/String;

.field protected final f:Lcom/estrongs/android/cleaner/i;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/cleaner/i;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->d:I

    invoke-static {p2}, Lcom/estrongs/android/cleaner/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->g:Ljava/util/List;

    const v0, 0x7f0801d4

    invoke-static {v0}, Lcom/estrongs/android/cleaner/j;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->f:Lcom/estrongs/android/cleaner/i;

    new-instance v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/cleaner/h;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-static {p3}, Lcom/estrongs/android/cleaner/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V
.end method

.method public a(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->d:I

    iget v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->d:I

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-interface {v0, v2}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/estrongs/android/cleaner/scandisk/a/a;->c(Lcom/estrongs/android/cleaner/scandisk/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/cleaner/scandisk/a/a;->b(Lcom/estrongs/android/cleaner/scandisk/h;)V

    goto :goto_0
.end method

.method protected abstract a(Lcom/estrongs/android/cleaner/scandisk/i;)Z
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v2, p1, Lcom/estrongs/android/cleaner/scandisk/h;->f:[Lcom/estrongs/android/cleaner/scandisk/i;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->g:I

    if-ge v1, v0, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/estrongs/android/cleaner/scandisk/a/a;->a(Lcom/estrongs/android/cleaner/scandisk/i;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v4, Lcom/estrongs/android/cleaner/h;

    iget-object v5, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v5}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v4, v0, v5, v6}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->b(I)V

    iget-object v0, v3, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/cleaner/h;->a(J)V

    iget-wide v6, v3, Lcom/estrongs/android/cleaner/scandisk/i;->e:J

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/cleaner/h;->c(J)V

    iget-wide v6, p1, Lcom/estrongs/android/cleaner/scandisk/h;->a:J

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/cleaner/h;->d(J)V

    iget-boolean v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->e:Z

    invoke-virtual {v4, v0}, Lcom/estrongs/android/cleaner/h;->c(Z)V

    invoke-virtual {p0, v4, v3}, Lcom/estrongs/android/cleaner/scandisk/a/a;->a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    invoke-interface {v0, v4}, Lcom/estrongs/android/cleaner/e;->a(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_2

    :cond_1
    iput-boolean v8, v3, Lcom/estrongs/android/cleaner/scandisk/i;->f:Z

    iput-boolean v8, p1, Lcom/estrongs/android/cleaner/scandisk/h;->d:Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->g:Ljava/util/List;

    return-object v0
.end method

.method public c(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " check finish status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->d:I

    if-gtz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    invoke-interface {p1, v0}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    :cond_0
    return-void
.end method

.method protected abstract c(Lcom/estrongs/android/cleaner/scandisk/h;)Z
.end method

.method public d()Lcom/estrongs/android/cleaner/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->c:Lcom/estrongs/android/cleaner/h;

    return-object v0
.end method

.method public e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/a;->d:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
