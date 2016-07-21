.class public Lcom/estrongs/android/a/a/x;
.super Lcom/estrongs/android/a/a/k;


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/o;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/a/b/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:J

.field private f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/a/b/o;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/a/a/k;-><init>()V

    new-instance v0, Lcom/estrongs/android/a/a/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/a/y;-><init>(Lcom/estrongs/android/a/a/x;)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/x;->f:Ljava/util/Comparator;

    new-instance v0, Lcom/estrongs/android/a/a/z;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/a/z;-><init>(Lcom/estrongs/android/a/a/x;)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/x;->g:Ljava/util/Comparator;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/a/a/x;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/a/a/x;->d:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    const-wide/32 v0, 0x4b000

    iput-wide v0, p0, Lcom/estrongs/android/a/a/x;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/estrongs/android/a/a/m;
    .locals 6

    iget v0, p0, Lcom/estrongs/android/a/a/x;->d:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/estrongs/android/a/a/x;->d:I

    :cond_0
    if-gtz p1, :cond_1

    new-instance v0, Lcom/estrongs/android/a/a/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/a/m;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/estrongs/android/a/a/m;

    iget v2, p0, Lcom/estrongs/android/a/a/x;->d:I

    iget-wide v4, p0, Lcom/estrongs/android/a/a/x;->e:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/estrongs/android/a/a/m;-><init>(Ljava/util/List;IJ)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/a/a;)V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->c()[Lcom/estrongs/android/a/b/k;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    instance-of v4, v0, Lcom/estrongs/android/a/b/o;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/k;->d()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/estrongs/android/a/a/x;->a:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->i()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->i()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->f()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->f_()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected a(Lcom/estrongs/android/a/b/q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/a/a/x;->g:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-wide/16 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->d()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->d()J

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    iget-object v2, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/a/a/x;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v4

    move v2, v5

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->i()J

    move-result-wide v6

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->i()J

    move-result-wide v8

    sub-long v8, v6, v8

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->j()I

    move-result v3

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    add-int/lit8 v10, v1, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->j()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->k()I

    move-result v10

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    add-int/lit8 v11, v1, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->k()I

    move-result v0

    sub-int v0, v10, v0

    if-ne v3, v0, :cond_5

    if-nez v3, :cond_5

    move v0, v5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "t1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    cmp-long v3, v8, v6

    if-gez v3, :cond_7

    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/estrongs/android/a/a/x;->e:J

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->d()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/estrongs/android/a/a/x;->e:J

    iget v0, p0, Lcom/estrongs/android/a/a/x;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/a/a/x;->d:I

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/estrongs/android/a/a/x;->e:J

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/o;->d()J

    move-result-wide v6

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/estrongs/android/a/a/x;->e:J

    iget v0, p0, Lcom/estrongs/android/a/a/x;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/a/a/x;->d:I

    :cond_4
    move v2, v4

    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_5
    move v0, v4

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v2, v0

    goto :goto_5

    :cond_7
    move v2, v5

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/util/List;)Z
    .locals 8
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

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    iget-object v1, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/a/b/o;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/a/b/o;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v2, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    move-object v2, v3

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/a/b/o;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/a/x;->c:Ljava/util/List;

    return-object v0
.end method
