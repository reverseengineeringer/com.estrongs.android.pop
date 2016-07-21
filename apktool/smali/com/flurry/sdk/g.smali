.class public Lcom/flurry/sdk/g;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/flurry/sdk/fb;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/fb;

    invoke-direct {v0}, Lcom/flurry/sdk/fb;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/g;->a:Lcom/flurry/sdk/fb;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/flurry/sdk/s;)V
    .locals 7

    const/4 v5, 0x0

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/flurry/sdk/gr;

    invoke-direct {v6}, Lcom/flurry/sdk/gr;-><init>()V

    sget-object v0, Lcom/flurry/sdk/bb;->S:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    sget-object v0, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/gr$a;

    iput-object v0, v6, Lcom/flurry/sdk/gr;->e:Lcom/flurry/sdk/gr$a;

    invoke-virtual {v6}, Lcom/flurry/sdk/gr;->b()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/bb;->S:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Landroid/content/Context;Lcom/flurry/sdk/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/gr;

    invoke-direct {v0}, Lcom/flurry/sdk/gr;-><init>()V

    sget-object v1, Lcom/flurry/sdk/gr$a;->a:Lcom/flurry/sdk/gr$a;

    iput-object v1, v0, Lcom/flurry/sdk/gr;->e:Lcom/flurry/sdk/gr$a;

    iput-object p1, v0, Lcom/flurry/sdk/gr;->a:Lcom/flurry/sdk/s;

    iput-object p2, v0, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/flurry/sdk/gr;->c:Z

    iput-boolean p4, v0, Lcom/flurry/sdk/gr;->d:Z

    invoke-virtual {v0}, Lcom/flurry/sdk/gr;->b()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method private f(Lcom/flurry/sdk/a;I)V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "notify user"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0}, Lcom/flurry/sdk/gu;-><init>()V

    iput-object p1, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    iput p2, v0, Lcom/flurry/sdk/gu;->c:I

    sget-object v1, Lcom/flurry/sdk/gu$a;->a:Lcom/flurry/sdk/gu$a;

    iput-object v1, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()V

    return-void
.end method

.method private g(Lcom/flurry/sdk/a;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->o(Lcom/flurry/sdk/a;)Z

    move-result v3

    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goToFrame: triggering event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v0, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->c()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goToFrame: currentIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and go to index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v0, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->k()Lcom/flurry/sdk/bc;

    move-result-object v4

    iget-object v0, v0, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/flurry/sdk/bc;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "goToFrame: Moving now from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/flurry/sdk/bc;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to format "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v5, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/flurry/sdk/bc;->b:Lcom/flurry/sdk/bc;

    invoke-virtual {v4}, Lcom/flurry/sdk/bc;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p2}, Lcom/flurry/sdk/au;->a(I)V

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v9, v3}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Lcom/flurry/sdk/s;ZZ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "goToFrame: Already a takeover Ad, just move to next frame. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/flurry/sdk/bc;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to format "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v5, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/flurry/sdk/au;->a(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v9, v3}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private i(Lcom/flurry/sdk/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "requiresCallComplete"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "Fire call complete"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0}, Lcom/flurry/sdk/gu;-><init>()V

    iput-object p1, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    sget-object v1, Lcom/flurry/sdk/gu$a;->e:Lcom/flurry/sdk/gu$a;

    iput-object v1, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()V

    :cond_0
    return-void
.end method

.method private j(Lcom/flurry/sdk/a;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v4

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->o(Lcom/flurry/sdk/a;)Z

    move-result v6

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v2}, Lcom/flurry/sdk/ma;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string v5, "true"

    const-string v8, "native"

    invoke-virtual {p1, v8}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v5, "true"

    const-string v9, "is_privacy"

    invoke-virtual {p1, v9}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    :goto_1
    if-eqz v8, :cond_2

    const/4 v0, 0x2

    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v4, "Explictly instructed to use native browser"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v3}, Lcom/flurry/sdk/au;->a(Z)V

    invoke-virtual {v7}, Lcom/flurry/sdk/au;->r()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)V

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to perform directOpen action: no url in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k(Lcom/flurry/sdk/a;)V
    .locals 9

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->o(Lcom/flurry/sdk/a;)Z

    move-result v5

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v6}, Lcom/flurry/sdk/ma;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, v6}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "true"

    const-string v7, "native"

    invoke-virtual {p1, v7}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v0, "true"

    const-string v8, "is_privacy"

    invoke-virtual {p1, v8}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v7, :cond_2

    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v3, "Explictly instructed to use native browser"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v0, p1, v6}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Lcom/flurry/sdk/au;->a(Z)V

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v3, v6, v0, v5}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_3
    invoke-static {v2, v3, v6, v0, v5}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to perform directOpen action: no url in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private l(Lcom/flurry/sdk/a;)V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "closing ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0}, Lcom/flurry/sdk/gu;-><init>()V

    iput-object p1, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/flurry/sdk/gu;->c:I

    sget-object v1, Lcom/flurry/sdk/gu$a;->d:Lcom/flurry/sdk/gu$a;

    iput-object v1, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()V

    return-void
.end method

.method private m(Lcom/flurry/sdk/a;)V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "expanding ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0}, Lcom/flurry/sdk/gu;-><init>()V

    iput-object p1, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/flurry/sdk/gu;->c:I

    sget-object v1, Lcom/flurry/sdk/gu$a;->c:Lcom/flurry/sdk/gu$a;

    iput-object v1, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()V

    return-void
.end method

.method private n(Lcom/flurry/sdk/a;)V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "closing ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0}, Lcom/flurry/sdk/gu;-><init>()V

    iput-object p1, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/flurry/sdk/gu;->c:I

    sget-object v1, Lcom/flurry/sdk/gu$a;->b:Lcom/flurry/sdk/gu$a;

    iput-object v1, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()V

    return-void
.end method

.method private o(Lcom/flurry/sdk/a;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "sendYCookies"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const/4 v2, 0x6

    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught Exception with sendYCookies parameter in onProcessRedirect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->c:Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;)V
    .locals 7

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "Cannot process redirect, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)V
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "Unable to launch url, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v8

    new-instance v0, Lcom/flurry/sdk/g$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move-object v5, p4

    move v6, p6

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/g$1;-><init>(Lcom/flurry/sdk/g;Ljava/lang/String;Landroid/content/Context;ZLcom/flurry/sdk/s;ZZ)V

    invoke-virtual {v8, v0}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lcom/flurry/sdk/a;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v4

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->o(Lcom/flurry/sdk/a;)Z

    move-result v6

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v2}, Lcom/flurry/sdk/ma;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string v5, "true"

    const-string v8, "native"

    invoke-virtual {p1, v8}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v5, "true"

    const-string v9, "is_privacy"

    invoke-virtual {p1, v9}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    :goto_1
    if-eqz v8, :cond_2

    const/4 v0, 0x2

    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v4, "Explictly instructed to use native browser"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/flurry/sdk/g;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v9, p1, v2}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/flurry/sdk/au;->r()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)V

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to perform directOpen action: no url in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/a;I)V
    .locals 6

    const/4 v5, 0x5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    :cond_0
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAction:action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    if-le p2, v1, :cond_1

    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/flurry/sdk/g$2;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/az;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",triggered by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->i(Lcom/flurry/sdk/a;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->k(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->j(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->c(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/a;I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/g;->c(Lcom/flurry/sdk/a;I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->d(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->e(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->b()V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->f(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->g(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/g;->d(Lcom/flurry/sdk/a;I)V

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/g;->e(Lcom/flurry/sdk/a;I)V

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/g;->h(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->n(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/g;->f(Lcom/flurry/sdk/a;I)V

    goto :goto_1

    :pswitch_11
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->m(Lcom/flurry/sdk/a;)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->l(Lcom/flurry/sdk/a;)V

    goto :goto_1

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
    .end packed-switch
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->e()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->r()V

    return-void
.end method

.method b(Lcom/flurry/sdk/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v0

    const-string v1, "groupId"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Lcom/flurry/sdk/s;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method b(Lcom/flurry/sdk/a;I)V
    .locals 7

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/bb;->n:Lcom/flurry/sdk/bb;

    :goto_0
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v5, p2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/bb;->o:Lcom/flurry/sdk/bb;

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c(Lcom/flurry/sdk/a;)V
    .locals 11

    const/4 v10, 0x6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v4

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sendYCookies"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_0
    const-string v2, "native"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v3, v2

    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/g;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v2, p1, v7}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/sdk/ma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)V

    :cond_0
    return-void

    :catch_0
    move-exception v3

    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caught Exception with sendYCookies parameter in onProcessRedirect:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v3, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v6, v0

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caught Exception with useNative parameter in onProcessRedirect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v3, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v0

    goto :goto_2
.end method

.method c(Lcom/flurry/sdk/a;I)V
    .locals 10

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/bb;->p:Lcom/flurry/sdk/bb;

    :goto_0
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v6

    iget-object v6, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v7, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-virtual {v6, v7}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "origin"

    sget-object v7, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-virtual {v7}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v6, 0x3

    const-string v7, "VerifyPackageLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onVerifyPackage() called for pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packageInstalled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, p2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/flurry/sdk/bb;->q:Lcom/flurry/sdk/bb;

    goto :goto_0
.end method

.method d(Lcom/flurry/sdk/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->o(Lcom/flurry/sdk/a;)Z

    move-result v1

    const-string v2, "package"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/s;Z)Z

    :cond_0
    return-void
.end method

.method d(Lcom/flurry/sdk/a;I)V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v2, Lcom/flurry/sdk/bb;->p:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v2, Lcom/flurry/sdk/bb;->q:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-virtual {v2}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v4

    :goto_0
    instance-of v0, v1, Lcom/flurry/sdk/v;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/v;

    invoke-virtual {v0}, Lcom/flurry/sdk/v;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    instance-of v0, v1, Lcom/flurry/sdk/r;

    if-nez v0, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    const/16 v0, 0xa

    if-le p2, v0, :cond_3

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const-string v0, "delay"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x1e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v1, v0, v4, v5, v3}, Lcom/flurry/sdk/s;->a(Lcom/flurry/sdk/au;JZ)V

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x6

    sget-object v6, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caught Exception with delay parameter in nextAdUnit:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5, v2}, Lcom/flurry/sdk/s;->a(Lcom/flurry/sdk/au;JZ)V

    goto :goto_1

    :cond_6
    move v2, v3

    goto/16 :goto_0
.end method

.method e(Lcom/flurry/sdk/a;)V
    .locals 10

    const/4 v9, 0x6

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v4, v2

    const-string v0, "expirationTimeEpochSeconds"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    :cond_0
    :goto_0
    const/4 v7, 0x2

    const-string v0, "maxRetries"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    :cond_1
    :goto_1
    const/4 v6, 0x0

    const-string v0, "sendYCookies"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v3, Lcom/flurry/sdk/bb;->i:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v3, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    sget-object v0, Lcom/flurry/sdk/fg;->c:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v8, Lcom/flurry/sdk/fg;->h:Ljava/lang/String;

    sget-object v0, Lcom/flurry/sdk/fg;->c:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_3
    sget-object v0, Lcom/flurry/sdk/fg;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v8, Lcom/flurry/sdk/fg;->f:Ljava/lang/String;

    sget-object v0, Lcom/flurry/sdk/fg;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendUrlAsync: New Url: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " adObj: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v3, v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v1, Lcom/flurry/sdk/bb;->i:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v1, Lcom/flurry/sdk/bb;->L:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v1, Lcom/flurry/sdk/bb;->H:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v1, Lcom/flurry/sdk/bb;->I:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    sget-object v1, Lcom/flurry/sdk/bb;->j:Lcom/flurry/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BeaconTest: event name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v9

    iget-object v9, v9, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v9}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " beacon Url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " adObj: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/flurry/sdk/dj;

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->d()Lcom/flurry/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/flurry/sdk/g;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v8, p1, v3}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/dj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->i()Lcom/flurry/sdk/dk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dk;->b(Lcom/flurry/sdk/kr;)V

    :cond_8
    return-void

    :catch_0
    move-exception v2

    sget-object v2, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught Exception with expirationTime parameter in onSendUrlAsync:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught Exception with maxRetries parameter in onSendUrlAsync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    sget-object v2, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caught Exception with sendYCookies parameter in onSendUrlAsync:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method e(Lcom/flurry/sdk/a;I)V
    .locals 10

    const/4 v9, 0x4

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v0, "idHash"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/flurry/sdk/bf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/be;

    sget-object v1, Lcom/flurry/sdk/bb;->F:Lcom/flurry/sdk/bb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->e()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/flurry/sdk/bf;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding expired frequency cap info for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->b()Lcom/flurry/sdk/cw;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Lcom/flurry/sdk/bf;->a(Lcom/flurry/sdk/cw;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->j()I

    move-result v3

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->g()I

    move-result v0

    if-lt v3, v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frequency cap exhausted for id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->E:Lcom/flurry/sdk/bb;

    :goto_1
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v5, p2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method f(Lcom/flurry/sdk/a;)V
    .locals 10

    const/4 v9, 0x3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "__sendToServer"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "__sendToServer"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "__sendToServer"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v5}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/au;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLogEvent("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v0, v3}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/bb;ZLjava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/au;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event already logged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method g(Lcom/flurry/sdk/a;)V
    .locals 6

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "offset"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/g;->g(Lcom/flurry/sdk/a;I)V

    :pswitch_0
    return-void

    :sswitch_0
    const-string v4, "next"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "current"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Lcom/flurry/sdk/au;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x338af3 -> :sswitch_0
        0x432bbd79 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method h(Lcom/flurry/sdk/a;)V
    .locals 8

    const/4 v7, 0x4

    const-string v0, "idHash"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/be;

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->a()V

    sget-object v2, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateViewCount:capType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->b()Lcom/flurry/sdk/cw;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",capRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",totalCap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",views="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->j()I

    move-result v2

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->g()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->e()Lcom/flurry/sdk/co;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/co;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->j()I

    move-result v3

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->g()I

    move-result v4

    if-le v3, v4, :cond_1

    const/4 v3, 0x6

    sget-object v4, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FlurryAdAction: !! rendering a capped object for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for adspace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Lcom/flurry/sdk/bd;

    invoke-direct {v2}, Lcom/flurry/sdk/bd;-><init>()V

    iput-object v0, v2, Lcom/flurry/sdk/bd;->a:Lcom/flurry/sdk/be;

    invoke-virtual {v2}, Lcom/flurry/sdk/bd;->b()V

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlurryAdAction: hit cap for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/sdk/be;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for adspace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v3, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
