.class Lcom/estrongs/android/pop/app/finder/d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/finder/a;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/finder/a;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/d;->c:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/finder/d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/finder/d;->c:Z

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            ")",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/finder/d;->b(Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/finder/d;->c(Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/finder/d;->d(Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/finder/d;->e(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Additional:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/Map;Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    move-result-object v3

    iput v1, v3, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->c:I

    const v0, 0x7f080303

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;->System_file:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const v0, 0x7f080308

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;->Hidden_file:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v4

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const v0, 0x7f080301

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    sget-object v3, Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;->Media_file:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private c(Ljava/util/Map;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/32 v8, 0x6400000

    const-wide/32 v6, 0xa00000

    const-wide/32 v4, 0x100000

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Size:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/Map;Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->c:I

    const-string v1, "<1M"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const-string v1, "1-10M"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const-string v1, "10-100M"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const-string v1, ">100M"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    return-void
.end method

.method private d(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v6, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Time:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-direct {p0, p1, v2}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/Map;Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->c:I

    const v3, 0x7f080305

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const v3, 0x7f08030a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-wide/32 v4, 0xf731400

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const v3, 0x7f08030d

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-wide/32 v4, 0x240c8400

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const v3, 0x7f080306

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-wide v4, 0x9a7ec800L

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    const v3, 0x7f080304

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v2

    const-wide v4, 0x39ef8b000L

    sub-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    return-void
.end method

.method private e(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Type:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-direct {p0, p1, v3}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/Map;Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    move-result-object v4

    const/4 v3, 0x3

    iput v3, v4, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->c:I

    const v3, 0x7f08019a

    invoke-virtual {v4, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-string v5, "book://"

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(Z)V

    const v3, 0x7f0801a0

    invoke-virtual {v4, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-string v5, "music://"

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(Z)V

    const v3, 0x7f08019f

    invoke-virtual {v4, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-string v5, "video://"

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    if-eqz v0, :cond_5

    if-nez v3, :cond_6

    :cond_5
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_6
    move v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(Z)V

    const v3, 0x7f0801a2

    invoke-virtual {v4, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    const-string v4, "pic://"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v4

    if-eqz v0, :cond_7

    if-nez v4, :cond_8

    :cond_7
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-virtual {v3, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(Z)V

    return-void

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v3, v1

    goto/16 :goto_1

    :cond_c
    move v3, v1

    goto :goto_2

    :cond_d
    move v3, v1

    goto :goto_3
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/d;->c:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->b(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/finder/a;->b(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/finder/a;->b(Lcom/estrongs/android/pop/app/finder/a;Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->b(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->c(Lcom/estrongs/android/pop/app/finder/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/d;->b:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->b(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->b(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method protected a()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-super {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->d(Lcom/estrongs/android/pop/app/finder/a;)Lcom/estrongs/android/pop/app/finder/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->d(Lcom/estrongs/android/pop/app/finder/a;)Lcom/estrongs/android/pop/app/finder/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/d;->a:Lcom/estrongs/android/pop/app/finder/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/finder/a;->d(Lcom/estrongs/android/pop/app/finder/a;)Lcom/estrongs/android/pop/app/finder/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/finder/f;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/finder/d;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/finder/d;->a(Ljava/util/List;)V

    return-void
.end method
