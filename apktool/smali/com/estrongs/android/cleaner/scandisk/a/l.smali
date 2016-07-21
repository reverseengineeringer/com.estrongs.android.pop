.class public Lcom/estrongs/android/cleaner/scandisk/a/l;
.super Lcom/estrongs/android/cleaner/scandisk/a/e;


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/cleaner/i;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0801cc

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/cleaner/scandisk/a/e;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V

    const-string v0, "Thumbnails"

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->h:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->i:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;
    .locals 5

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/l;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/estrongs/android/cleaner/h;

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->c:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/estrongs/android/cleaner/h;->a(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/estrongs/android/cleaner/h;->b(I)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-static {v0}, Lcom/estrongs/android/cleaner/j;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/cleaner/h;->c(Z)V

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/l;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1, v4}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/l;->f:Lcom/estrongs/android/cleaner/i;

    iget-object v1, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iget-wide v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method protected a(Lcom/estrongs/android/cleaner/scandisk/i;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;Lcom/estrongs/android/cleaner/scandisk/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
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

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Thumbnails"

    return-object v0
.end method
