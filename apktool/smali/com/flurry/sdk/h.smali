.class public Lcom/flurry/sdk/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/az;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/flurry/sdk/az;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v0, Lcom/flurry/sdk/h$1;

    invoke-direct {v0}, Lcom/flurry/sdk/h$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->b:Ljava/util/Map;

    new-instance v0, Lcom/flurry/sdk/h$2;

    invoke-direct {v0}, Lcom/flurry/sdk/h$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/h$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/h$3;-><init>(Lcom/flurry/sdk/h;)V

    iput-object v0, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/kb;

    return-void
.end method

.method private a(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v0

    sget-object v3, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/az;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    sget-object v3, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-virtual {v3}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "VerifyPackageLog"

    const-string v2, "onPackageVerified() no nextAdUnit or different originator, ready to fire PRE-RENDER. "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/c;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p1, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    iget-object v0, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/cj;Lcom/flurry/sdk/b;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->n()Lcom/flurry/sdk/bh;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bh;->a(Lcom/flurry/sdk/b;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/h;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v5}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/az;

    iget-object v5, v2, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v5, v2}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/az;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/h$4;->a:[I

    iget-object v1, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event not handled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for adSpace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-direct {p0, p1, v3}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/c;Ljava/util/List;)V

    return-void

    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->k(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->d(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->e(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->f(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->g(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->h(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->i(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->j(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_8
    invoke-direct {p0, v2}, Lcom/flurry/sdk/h;->i(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->m(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v2

    sget-object v4, Lcom/flurry/sdk/az;->m:Lcom/flurry/sdk/az;

    invoke-virtual {v2, v4}, Lcom/flurry/sdk/az;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "is_privacy"

    const-string v4, "true"

    invoke-virtual {v0, v2, v4}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->d(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_d
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->b(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_10
    invoke-direct {p0, v2}, Lcom/flurry/sdk/h;->e(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_11
    invoke-direct {p0, v2}, Lcom/flurry/sdk/h;->f(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_12
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_13
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->b(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_2

    :pswitch_14
    invoke-direct {p0, v2}, Lcom/flurry/sdk/h;->j(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_15
    invoke-direct {p0, v2}, Lcom/flurry/sdk/h;->k(Lcom/flurry/sdk/b;)V

    goto :goto_2

    :pswitch_16
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/flurry/sdk/bb;->Z:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v6, v5}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/bb;ZLjava/util/Map;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private a(Lcom/flurry/sdk/c;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/c;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/sdk/a;

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v0

    sget-object v3, Lcom/flurry/sdk/az;->c:Lcom/flurry/sdk/az;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/az;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "__sendToServer"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v3, v2

    :goto_1
    invoke-virtual {v2}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/az;->l:Lcom/flurry/sdk/az;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/az;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget v1, p1, Lcom/flurry/sdk/c;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;I)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/flurry/sdk/a;

    sget-object v2, Lcom/flurry/sdk/az;->c:Lcom/flurry/sdk/az;

    iget-object v3, p1, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    invoke-direct {v1, v2, v0, v3}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/az;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/kg;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget v2, p1, Lcom/flurry/sdk/c;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;I)V

    :cond_2
    return-void

    :cond_3
    move-object v3, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/flurry/sdk/h;Lcom/flurry/sdk/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/c;)V

    return-void
.end method

.method private b(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "VerifyPackageLog"

    const-string v2, "onPackageNotVerified() ready to fire PRE-RENDER."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "VerifyPackageLog"

    const-string v2, "onStartPrerender() Ready to pre-render."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/s;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/gr;

    invoke-direct {v0}, Lcom/flurry/sdk/gr;-><init>()V

    sget-object v1, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/gr$a;

    iput-object v1, v0, Lcom/flurry/sdk/gr;->e:Lcom/flurry/sdk/gr$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gr;->b()V

    return-void
.end method

.method private d(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v2}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/fn;->d(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->c(Z)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onAdImpressionLogged, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->j:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    return-void
.end method

.method private e(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fn;->e(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(Z)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    return-void
.end method

.method private f(Lcom/flurry/sdk/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v0

    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "nativeAdFilled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private f(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fn;->f(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->d(Z)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    return-void
.end method

.method private g(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onRenderFailed, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->d:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    return-void
.end method

.method private g(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fn;->g(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->e(Z)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    return-void
.end method

.method private h(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fn;->h(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->f(Z)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    return-void
.end method

.method private h(Lcom/flurry/sdk/b;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "binding_3rd_party"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->e()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    iget v0, v0, Lcom/flurry/sdk/cj;->a:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :goto_1
    return v2

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private i(Lcom/flurry/sdk/b;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->g()V

    return-void
.end method

.method private i(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fn;->i(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "doNotRemoveAssets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->g()V

    :cond_0
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLayout onVideoCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->e()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/sdk/co;->n:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v1, "Ad unit is rewardable, onVideoCompleted listener will fire"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing onVideoCompleted, adObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->k:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v1, "Ad unit is not rewardable, onVideoCompleted listener will not fire"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onExpanded, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->l:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    return-void
.end method

.method private j(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->p()Ljava/lang/String;

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onClicked, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v0

    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "nativeAdClick"

    invoke-virtual {v0, v1, v6}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->h:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/sdk/fm;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v6, v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/flurry/sdk/gk;->j()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v6}, Lcom/flurry/sdk/gk;->i(Z)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fn;->c(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private k(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onCollapsed, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->m:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    return-void
.end method

.method private k(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/flurry/sdk/h;->h(Lcom/flurry/sdk/b;)Z

    move-result v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v2, "preRender"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/flurry/sdk/h;->g(Lcom/flurry/sdk/b;)V

    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fn;->b(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/h;->d()V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->c(Lcom/flurry/sdk/au;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->g()V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/h;->l(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_0
.end method

.method private l(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    sget-object v3, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/az;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onFetchFailed, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private m(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v2, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v2}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/fn;->a(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    sget-object v3, Lcom/flurry/sdk/h;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/flurry/sdk/a;

    sget-object v2, Lcom/flurry/sdk/az;->g:Lcom/flurry/sdk/az;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/az;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->g()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/cj;Lcom/flurry/sdk/b;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/cj;",
            "Lcom/flurry/sdk/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/flurry/sdk/cj;->e:Ljava/util/List;

    iget-object v1, p2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cr;

    iget-object v1, v0, Lcom/flurry/sdk/cr;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/cr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p2, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/lt;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    :cond_2
    invoke-static {v0}, Lcom/flurry/sdk/a;->c(Ljava/lang/String;)Lcom/flurry/sdk/az;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/a;

    invoke-direct {v1, v0, v6, p2}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/az;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v2, "Unregister Event Handler "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onOpen, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->e:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v2, "Registered Event Handler "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdEvent"

    iget-object v2, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method public b(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onAppExit, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    invoke-direct {p0}, Lcom/flurry/sdk/h;->d()V

    return-void
.end method

.method public c(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onClose, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->f:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    invoke-direct {p0}, Lcom/flurry/sdk/h;->d()V

    return-void
.end method

.method public d(Lcom/flurry/sdk/b;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onVideoClose, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->f:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    return-void
.end method
