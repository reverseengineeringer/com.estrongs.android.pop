.class public abstract Lcom/estrongs/android/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/a/o;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/estrongs/android/a/a/m;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/a/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/k;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/estrongs/android/a/a/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    return-void
.end method

.method private c(Lcom/estrongs/android/a/b/q;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/a/a/m;
    .locals 8

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    new-instance v0, Lcom/estrongs/android/a/a/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/a/m;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Lcom/estrongs/android/a/a/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/a/m;-><init>()V

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_3

    move v0, v1

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-le v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/a/a/k;->f()Ljava/util/Comparator;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    iget-object v6, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v6, v6, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/a/b/q;

    invoke-interface {v5, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_7

    :goto_2
    if-ge v2, v3, :cond_5

    iget-object v6, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v6, v6, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v6, v6, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    goto :goto_3

    :cond_5
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    new-instance v0, Lcom/estrongs/android/a/a/m;

    iget-object v1, p0, Lcom/estrongs/android/a/a/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/a/a/k;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/estrongs/android/a/a/m;-><init>(Ljava/util/List;IJ)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method public final a(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/estrongs/android/a/b/q;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/android/a/a/k;->f()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/a/a;)V
    .locals 5

    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->c()[Lcom/estrongs/android/a/b/k;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6536\u5230\u7ebf\u7a0b\u4e2d\u65ad\uff01\uff01"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/estrongs/android/a/a/k;->a(Lcom/estrongs/android/a/b/q;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/estrongs/android/a/a/k;->c(Lcom/estrongs/android/a/b/q;)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/a/a/k;->b(Lcom/estrongs/android/a/b/q;)V

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract a(Lcom/estrongs/android/a/b/q;)Z
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/estrongs/android/a/a/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    return-void
.end method

.method protected b(Lcom/estrongs/android/a/b/q;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    iget-object v2, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v2, v2, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c_()V
    .locals 0

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/android/a/a/k;->f()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/estrongs/android/a/a/k;->d:Lcom/estrongs/android/a/a/m;

    iget-object v0, v0, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    return-object v0
.end method

.method protected f()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/a/a/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/a/l;-><init>(Lcom/estrongs/android/a/a/k;)V

    return-object v0
.end method
