.class public Lcom/estrongs/android/pop/app/b/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/estrongs/android/scanner/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(J)J
    .locals 12

    const-wide/32 v10, 0xea60

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0x5265c00

    div-long v0, p0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-long v2, v0

    mul-long/2addr v2, v6

    sub-long v2, p0, v2

    div-long/2addr v2, v8

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-long v2, v0

    mul-long/2addr v2, v6

    sub-long v2, p0, v2

    int-to-long v4, v1

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    div-long/2addr v2, v10

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v0, :cond_0

    int-to-long v0, v0

    mul-long/2addr v0, v6

    :goto_0
    return-wide v0

    :cond_0
    if-lez v1, :cond_1

    int-to-long v0, v1

    mul-long/2addr v0, v8

    goto :goto_0

    :cond_1
    int-to-long v0, v2

    mul-long/2addr v0, v10

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/fs/h;JLcom/estrongs/android/scanner/g;)Landroid/util/Pair;
    .locals 5

    invoke-static {p0, p3}, Lcom/estrongs/android/pop/app/b/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/scanner/g;)Lcom/estrongs/android/pop/app/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/b/a;->a(J)J

    move-result-wide v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/fs/h;Lcom/estrongs/android/scanner/g;)Lcom/estrongs/android/pop/app/b/b;
    .locals 10

    const/4 v0, 0x0

    new-instance v8, Lcom/estrongs/android/pop/app/b/b;

    invoke-direct {v8}, Lcom/estrongs/android/pop/app/b/b;-><init>()V

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/a;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1, p1}, Lcom/estrongs/android/pop/app/b/a;->a(Ljava/lang/String;Lcom/estrongs/android/scanner/g;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iput v2, v8, Lcom/estrongs/android/pop/app/b/b;->c:I

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/estrongs/android/pop/app/b/b;->e:Ljava/lang/String;

    iput-object v5, v8, Lcom/estrongs/android/pop/app/b/b;->d:Ljava/lang/String;

    iget-object v9, v8, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/pop/app/b/i;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v3

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/app/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v8, Lcom/estrongs/android/pop/app/b/b;->j:I

    move-object v0, v8

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/estrongs/fs/h;Lcom/estrongs/android/scanner/g;)Lcom/estrongs/android/pop/app/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/android/scanner/g;",
            ")",
            "Lcom/estrongs/android/pop/app/b/b;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/b;

    invoke-static {v0, p1, p2}, Lcom/estrongs/android/pop/app/b/a;->a(Lcom/estrongs/android/pop/app/b/b;Lcom/estrongs/fs/h;Lcom/estrongs/android/scanner/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/app/b/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/scanner/g;)Lcom/estrongs/android/pop/app/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/estrongs/android/scanner/g;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/scanner/b/b;->a()Lcom/estrongs/android/scanner/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/scanner/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/scanner/b/b;->a()Lcom/estrongs/android/scanner/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/scanner/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/estrongs/android/scanner/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static a(JJ)Z
    .locals 8

    const-wide/32 v0, 0x5265c00

    div-long v0, p2, v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-long v2, v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    sub-long v2, p2, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-long v2, v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    sub-long v2, p2, v2

    int-to-long v4, v1

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-lez v1, :cond_3

    add-int/lit8 v0, v1, 0x1

    int-to-long v2, v0

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    cmp-long v0, p0, v2

    if-gez v0, :cond_2

    int-to-long v0, v1

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    int-to-long v0, v0

    const-wide/32 v4, 0xea60

    mul-long/2addr v0, v4

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    int-to-long v0, v2

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/util/Pair;Lcom/estrongs/fs/h;JLcom/estrongs/android/scanner/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;",
            "Lcom/estrongs/fs/h;",
            "J",
            "Lcom/estrongs/android/scanner/g;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-gtz v1, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide v4, 0x95586c00L

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    if-nez p0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1, p0, p2, p3, p4}, Lcom/estrongs/android/pop/app/b/a;->a(Lcom/estrongs/fs/h;Landroid/util/Pair;JLcom/estrongs/android/scanner/g;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Lcom/estrongs/android/pop/app/b/b;Lcom/estrongs/fs/h;Lcom/estrongs/android/scanner/g;)Z
    .locals 10

    const/4 v8, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p2}, Lcom/estrongs/android/pop/app/b/a;->a(Ljava/lang/String;Lcom/estrongs/android/scanner/g;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    iget v3, p0, Lcom/estrongs/android/pop/app/b/b;->c:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/pop/app/b/i;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/app/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/b/b;->j:I

    move v0, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/estrongs/fs/h;Landroid/util/Pair;JLcom/estrongs/android/scanner/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;J",
            "Lcom/estrongs/android/scanner/g;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    sub-long v4, p2, v4

    invoke-static {v4, v5, v2, v3}, Lcom/estrongs/android/pop/app/b/a;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p0, p4}, Lcom/estrongs/android/pop/app/b/a;->a(Ljava/util/List;Lcom/estrongs/fs/h;Lcom/estrongs/android/scanner/g;)Lcom/estrongs/android/pop/app/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
