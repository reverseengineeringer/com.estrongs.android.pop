.class public Lcom/estrongs/android/a/a/i;
.super Lcom/estrongs/android/a/a/k;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/estrongs/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/android/a/a/k;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/a/i;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private a(Lcom/estrongs/android/a/b/i;)V
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->e_()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v1, v9

    if-eqz v1, :cond_0

    array-length v1, v9

    new-array v10, v1, [Lcom/estrongs/android/a/b/q;

    array-length v11, v9

    move v7, v0

    move v8, v0

    :goto_1
    if-ge v7, v11, :cond_3

    aget-object v4, v9, v7

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v8, 0x1

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    aput-object v0, v10, v8

    move v0, v1

    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v8, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v8, 0x1

    new-instance v0, Lcom/estrongs/android/a/b/k;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    aput-object v0, v10, v8

    move v0, v6

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v10}, Lcom/estrongs/android/a/b/i;->a([Lcom/estrongs/android/a/b/q;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/estrongs/android/a/b/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    return-object v0
.end method

.method public final a(Lcom/estrongs/android/a/a;)V
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->c()[Lcom/estrongs/android/a/b/k;

    move-result-object v11

    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->b()[Lcom/estrongs/android/a/b/l;

    move-result-object v12

    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->a()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v8, 0x0

    array-length v5, v11

    move v4, v0

    move v10, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v11, v4

    instance-of v1, v0, Lcom/estrongs/android/a/b/p;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/estrongs/android/a/b/o;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/estrongs/android/a/b/w;

    if-eqz v1, :cond_b

    :cond_0
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/k;->d()J

    move-result-wide v0

    add-long/2addr v0, v8

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-wide v8, v0

    move v10, v2

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/estrongs/android/a/b/i;

    iget-object v2, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    array-length v4, v12

    array-length v5, v11

    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->d()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/a/b/i;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;IIJ)V

    if-eqz v10, :cond_2

    invoke-virtual {v1, v10, v8, v9}, Lcom/estrongs/android/a/b/i;->a(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_4

    move-object v0, v2

    :goto_3
    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/a/a/i;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    if-ne v0, v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/estrongs/android/a/b/i;->a(Lcom/estrongs/android/a/b/i;)V

    :cond_6
    invoke-direct {p0, v3}, Lcom/estrongs/android/a/a/i;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    if-nez v0, :cond_9

    new-instance v1, Lcom/estrongs/android/a/b/i;

    iget-object v2, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    array-length v4, v12

    array-length v5, v11

    invoke-virtual {p1}, Lcom/estrongs/android/a/a;->d()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/a/b/i;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;IIJ)V

    if-eqz v10, :cond_8

    invoke-virtual {v1, v10, v8, v9}, Lcom/estrongs/android/a/b/i;->a(IJ)V

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    :cond_9
    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/b/i;->a(Lcom/estrongs/android/a/b/i;)V

    goto :goto_4

    :cond_a
    move-object v2, v0

    goto :goto_2

    :cond_b
    move-wide v0, v8

    move v2, v10

    goto/16 :goto_1
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

    invoke-super {p0, p1}, Lcom/estrongs/android/a/a/k;->a(Ljava/util/List;)V

    iput-object p1, p0, Lcom/estrongs/android/a/a/i;->c:Ljava/util/List;

    return-void
.end method

.method protected a(Lcom/estrongs/android/a/b/q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/a/a/i;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/estrongs/android/a/a/i;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    invoke-direct {p0, v0}, Lcom/estrongs/android/a/a/i;->a(Lcom/estrongs/android/a/b/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v8, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    instance-of v1, v0, Lcom/estrongs/android/a/b/l;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/android/a/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/l;->d()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/l;->e_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/a/b/q;

    instance-of v5, v1, Lcom/estrongs/android/a/b/i;

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/estrongs/android/a/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    check-cast v1, Lcom/estrongs/android/a/b/i;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->d_()V

    iget-object v1, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->e_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c_()V
    .locals 0

    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/a/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/a/a/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/a/b/q;

    if-eqz v1, :cond_0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method
