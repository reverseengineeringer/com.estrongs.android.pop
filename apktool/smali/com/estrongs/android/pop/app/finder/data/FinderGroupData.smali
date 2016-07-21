.class public Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;
.super Lcom/estrongs/android/pop/app/finder/data/a;


# instance fields
.field public c:I

.field public d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/finder/data/a;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->c:I

    iput-object p2, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;
    .locals 3

    const v0, 0x7f0802ff

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/e;->a:[I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    invoke-direct {v1, v0, p0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;-><init>(ILcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)V

    return-object v1

    :pswitch_1
    const v0, 0x7f080309

    goto :goto_0

    :pswitch_2
    const v0, 0x7f08030b

    goto :goto_0

    :pswitch_3
    const v0, 0x7f08030c

    goto :goto_0

    :pswitch_4
    const v0, 0x7f080300

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;-><init>(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    goto :goto_0
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    sget-object v2, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Size:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    sget-object v2, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Time:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderItemData;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
