.class public abstract Lcom/estrongs/android/cleaner/scandisk/a/e;
.super Lcom/estrongs/android/cleaner/scandisk/a/a;


# instance fields
.field protected g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/estrongs/android/cleaner/scandisk/e;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V
    .locals 1
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

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/cleaner/scandisk/a/a;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->g:Ljava/util/Map;

    invoke-static {}, Lcom/estrongs/android/cleaner/scandisk/e;->a()Lcom/estrongs/android/cleaner/scandisk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->h:Lcom/estrongs/android/cleaner/scandisk/e;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->h:Lcom/estrongs/android/cleaner/scandisk/e;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/scandisk/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->h:Lcom/estrongs/android/cleaner/scandisk/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/cleaner/scandisk/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/android/cleaner/scandisk/i;Lcom/estrongs/android/cleaner/h;JZ)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v1, Lcom/estrongs/android/cleaner/h;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2, p2}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/e;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/h;->b(I)V

    iget-object v0, p1, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/h;->a(I)V

    iget-wide v2, p1, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/cleaner/h;->a(J)V

    iget-wide v2, p1, Lcom/estrongs/android/cleaner/scandisk/i;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/cleaner/h;->c(J)V

    invoke-virtual {v1, p3, p4}, Lcom/estrongs/android/cleaner/h;->d(J)V

    invoke-virtual {v1, p5}, Lcom/estrongs/android/cleaner/h;->c(Z)V

    invoke-virtual {p0, v1, p1}, Lcom/estrongs/android/cleaner/scandisk/a/e;->a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    invoke-interface {v0, v1}, Lcom/estrongs/android/cleaner/e;->a(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/estrongs/android/cleaner/scandisk/i;->f:Z

    return-void
.end method

.method protected a(Lcom/estrongs/android/cleaner/scandisk/i;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract a(Ljava/lang/String;Lcom/estrongs/android/cleaner/scandisk/h;)Z
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 8

    iget-object v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/scandisk/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/estrongs/android/cleaner/scandisk/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/estrongs/android/cleaner/scandisk/a/e;->a(Ljava/lang/String;Lcom/estrongs/android/cleaner/scandisk/h;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/android/cleaner/scandisk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v7, p1, Lcom/estrongs/android/cleaner/scandisk/h;->f:[Lcom/estrongs/android/cleaner/scandisk/i;

    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lcom/estrongs/android/cleaner/scandisk/h;->g:I

    if-ge v0, v1, :cond_0

    aget-object v2, v7, v0

    iget-wide v4, p1, Lcom/estrongs/android/cleaner/scandisk/h;->a:J

    iget-boolean v6, p1, Lcom/estrongs/android/cleaner/scandisk/h;->e:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/android/cleaner/scandisk/a/e;->a(Lcom/estrongs/android/cleaner/scandisk/i;Lcom/estrongs/android/cleaner/h;JZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method protected c(Lcom/estrongs/android/cleaner/scandisk/h;)Z
    .locals 2

    iget v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
