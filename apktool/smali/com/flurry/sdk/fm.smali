.class public Lcom/flurry/sdk/fm;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fu;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fm$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/fm;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fm;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fm;->a:I

    return p1
.end method

.method public static a(Lcom/flurry/sdk/fm;Lcom/flurry/sdk/fm;)Lcom/flurry/sdk/fm;
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v4

    invoke-virtual {v1}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v5

    if-eqz v4, :cond_4

    if-nez v5, :cond_5

    :cond_4
    move-object v0, v3

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/flurry/sdk/fp;->c:Lcom/flurry/sdk/fp;

    invoke-virtual {v4}, Lcom/flurry/sdk/fw;->a()Lcom/flurry/sdk/fp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/flurry/sdk/fp;->b:Lcom/flurry/sdk/fp;

    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->a()Lcom/flurry/sdk/fp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/flurry/sdk/fp;->c:Lcom/flurry/sdk/fp;

    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->a()Lcom/flurry/sdk/fp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move-object v0, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Lcom/flurry/sdk/fw;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move-object v0, v3

    goto :goto_0

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_a
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    new-instance v2, Lcom/flurry/sdk/fw$a;

    invoke-direct {v2}, Lcom/flurry/sdk/fw$a;-><init>()V

    sget-object v1, Lcom/flurry/sdk/fp;->c:Lcom/flurry/sdk/fp;

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fw$a;->a(Lcom/flurry/sdk/fp;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fw$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {v4}, Lcom/flurry/sdk/fw;->c()Lcom/flurry/sdk/fv;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fw$a;->a(Lcom/flurry/sdk/fv;)Lcom/flurry/sdk/fw$a;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/flurry/sdk/fw;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->d()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v0, v3

    goto/16 :goto_0

    :cond_d
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/fx;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/fx;

    invoke-virtual {v1}, Lcom/flurry/sdk/fx;->d()Lcom/flurry/sdk/fy;

    move-result-object v1

    invoke-virtual {v2}, Lcom/flurry/sdk/fx;->d()Lcom/flurry/sdk/fy;

    move-result-object v7

    if-eqz v1, :cond_e

    if-nez v7, :cond_f

    :cond_e
    move-object v0, v3

    goto/16 :goto_0

    :cond_f
    invoke-static {v1, v7}, Lcom/flurry/sdk/fy;->a(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/fy;)Lcom/flurry/sdk/fy;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v0, v3

    goto/16 :goto_0

    :cond_10
    new-instance v7, Lcom/flurry/sdk/fx$a;

    invoke-direct {v7}, Lcom/flurry/sdk/fx$a;-><init>()V

    invoke-virtual {v2}, Lcom/flurry/sdk/fx;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flurry/sdk/fx$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fx$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/fx;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/flurry/sdk/fx$a;->a(I)Lcom/flurry/sdk/fx$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/fx;->c()Lcom/flurry/sdk/fq;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/flurry/sdk/fx$a;->a(Lcom/flurry/sdk/fq;)Lcom/flurry/sdk/fx$a;

    invoke-virtual {v7, v1}, Lcom/flurry/sdk/fx$a;->a(Lcom/flurry/sdk/fy;)Lcom/flurry/sdk/fx$a;

    invoke-virtual {v7}, Lcom/flurry/sdk/fx$a;->a()Lcom/flurry/sdk/fx;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    invoke-virtual {v2, v7}, Lcom/flurry/sdk/fw$a;->a(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/flurry/sdk/fw;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_13
    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_14
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fw$a;->b(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/flurry/sdk/fw;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_16
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fw$a;->c(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {v2, v6}, Lcom/flurry/sdk/fw$a;->d(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/fw$a;->a()Lcom/flurry/sdk/fw;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/fu$a;

    invoke-direct {v2}, Lcom/flurry/sdk/fu$a;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fu$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fu$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/fu$a;->a(I)Lcom/flurry/sdk/fu$a;

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fu$a;->a(Lcom/flurry/sdk/fw;)Lcom/flurry/sdk/fu$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/fu$a;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/flurry/sdk/fm$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fm$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm$a;->a(Ljava/util/List;)Lcom/flurry/sdk/fm$a;

    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm$a;->a(I)Lcom/flurry/sdk/fm$a;

    sget-object v1, Lcom/flurry/sdk/fp;->b:Lcom/flurry/sdk/fp;

    invoke-virtual {v5}, Lcom/flurry/sdk/fw;->a()Lcom/flurry/sdk/fp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fp;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm$a;->a(Z)Lcom/flurry/sdk/fm$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/fm$a;->b()Lcom/flurry/sdk/fm;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/fm;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/fm;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/fm;->d:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/fs;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/fs;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fx;

    invoke-virtual {v0}, Lcom/flurry/sdk/fx;->d()Lcom/flurry/sdk/fy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fy;->c()Lcom/flurry/sdk/jx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/ft;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ft;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fx;

    invoke-virtual {v0}, Lcom/flurry/sdk/fx;->d()Lcom/flurry/sdk/fy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fy;->d()Lcom/flurry/sdk/jx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/fm;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/fm;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/fm;->d:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fx;

    invoke-virtual {v0}, Lcom/flurry/sdk/fx;->d()Lcom/flurry/sdk/fy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fy;->e()Lcom/flurry/sdk/fz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->f()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->e()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/flurry/sdk/ft;->b:Lcom/flurry/sdk/ft;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/ft;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
