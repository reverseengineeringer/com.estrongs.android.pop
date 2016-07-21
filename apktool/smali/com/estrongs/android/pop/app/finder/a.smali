.class public Lcom/estrongs/android/pop/app/finder/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/pop/app/finder/a;


# instance fields
.field private b:Lcom/estrongs/android/pop/app/finder/f;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/pop/app/finder/e;

.field private h:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/finder/a;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/finder/a;->a:Lcom/estrongs/android/pop/app/finder/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/finder/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/finder/a;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/finder/a;->a:Lcom/estrongs/android/pop/app/finder/a;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/finder/a;->a:Lcom/estrongs/android/pop/app/finder/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/finder/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/finder/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/a;->f:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/finder/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/finder/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/finder/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/finder/a;)Lcom/estrongs/android/pop/app/finder/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/finder/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->h:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/a;->h:Landroid/app/Activity;

    const v0, 0x7f0e023e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->c:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/pop/app/finder/f;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/finder/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/finder/f;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/app/finder/f;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/finder/a;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/finder/f;->a(Landroid/view/View;)V

    new-instance v1, Lcom/estrongs/android/pop/app/finder/d;

    invoke-direct {v1, p0, p2, v0}, Lcom/estrongs/android/pop/app/finder/d;-><init>(Lcom/estrongs/android/pop/app/finder/a;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/finder/d;->a()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/a;->g:Lcom/estrongs/android/pop/app/finder/e;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/f;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->b:Lcom/estrongs/android/pop/app/finder/f;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/finder/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/finder/d;-><init>(Lcom/estrongs/android/pop/app/finder/a;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/d;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->g:Lcom/estrongs/android/pop/app/finder/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->g:Lcom/estrongs/android/pop/app/finder/e;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/finder/e;->o_()V

    :cond_2
    return-void
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Additional:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    sget-object v2, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Type:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bx(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    move v5, v4

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    move v2, v4

    :goto_2
    const v6, 0x7f080301

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->b(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v6

    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->b(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_8

    invoke-virtual {v6}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v4

    :goto_3
    invoke-virtual {v7, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    :cond_3
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->b(I)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_9

    invoke-virtual {v6}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_4
    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    :cond_4
    return-void

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v5, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4
.end method

.method public h()Lcom/estrongs/android/pop/app/finder/c;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v1, Lcom/estrongs/android/pop/app/finder/c;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/finder/c;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/finder/a;->f()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->b()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v11, :cond_0

    sget-object v7, Lcom/estrongs/android/pop/app/finder/b;->a:[I

    iget-object v0, v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d()Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->f()J

    move-result-wide v8

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->g()J

    move-result-wide v6

    invoke-virtual {v1, v8, v9, v6, v7}, Lcom/estrongs/android/pop/app/finder/c;->a(JJ)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->h()J

    move-result-wide v8

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->i()J

    move-result-wide v6

    invoke-virtual {v1, v8, v9, v6, v7}, Lcom/estrongs/android/pop/app/finder/c;->b(JJ)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    sget-object v5, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Type:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/finder/c;->a(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/app/finder/c;->c(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/app/finder/c;->b(Ljava/util/List;)V

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/a;->f:Ljava/util/Map;

    return-void
.end method
