.class public Lcom/duapps/ad/base/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;II[Ljava/lang/String;JLjava/util/concurrent/ConcurrentHashMap;)Lcom/duapps/ad/base/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/entity/a/a",
            "<",
            "Lcom/duapps/ad/entity/a/c;",
            ">;>;)",
            "Lcom/duapps/ad/base/c;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ChangePriorityForChannels"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheSize=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/duapps/ad/base/b;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "ChangePriorityForChannels"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "priorityArray=="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/duapps/ad/base/ap;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    if-eqz v0, :cond_2

    iget-wide v6, v0, Lcom/duapps/ad/entity/a/a;->d:J

    sub-long/2addr p4, v6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_6

    aget-object v0, v3, v1

    invoke-virtual {p6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    if-eqz v0, :cond_5

    aget-object v4, v3, v1

    invoke-static {v3, p2, v4}, Lcom/duapps/ad/base/d;->a([Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    iget-wide v6, v0, Lcom/duapps/ad/entity/a/a;->d:J

    sub-long v6, p4, v6

    invoke-virtual {v0, v4}, Lcom/duapps/ad/entity/a/a;->a(I)V

    iget-wide v4, v0, Lcom/duapps/ad/entity/a/a;->d:J

    add-long p4, v6, v4

    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    aget-object v0, v3, v1

    invoke-static {v3, p2, v0}, Lcom/duapps/ad/base/d;->a([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aget-object v5, v3, v1

    aput-object v5, v4, v2

    invoke-static {p0, p1, v0, v4, p6}, Lcom/duapps/ad/base/d;->a(Landroid/content/Context;II[Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/duapps/ad/base/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/duapps/ad/base/e;->b()J

    move-result-wide v4

    add-long/2addr p4, v4

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/duapps/ad/base/c;

    invoke-direct {v0, v3, p4, p5}, Lcom/duapps/ad/base/c;-><init>([Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/duapps/ad/base/d;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_3

    aget-object v4, p0, v0

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method
