.class public Lcom/flurry/sdk/eq;
.super Lcom/flurry/sdk/el;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/el;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/flurry/sdk/ea;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/sdk/kp$a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/eq$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/eq$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/flurry/sdk/eq;->c(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/eq;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/ef;

    invoke-virtual {p0}, Lcom/flurry/sdk/eq;->e()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ef;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/ef;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/flurry/sdk/dy;->b()Lcom/flurry/sdk/eg;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/kn;

    invoke-direct {v2}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/sdk/eq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/eq;->a()Lcom/flurry/sdk/kp$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kn;->d(I)V

    new-instance v3, Lcom/flurry/sdk/kx;

    invoke-direct {v3}, Lcom/flurry/sdk/kx;-><init>()V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/lb;)V

    new-instance v3, Lcom/flurry/sdk/lc;

    invoke-direct {v3}, Lcom/flurry/sdk/lc;-><init>()V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    const-string v3, "Content-Type"

    invoke-static {}, Lcom/flurry/sdk/em;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Length"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/kn;Lcom/flurry/sdk/eg;)V

    new-instance v0, Lcom/flurry/sdk/eq$1;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/eq$1;-><init>(Lcom/flurry/sdk/eq;Lcom/flurry/sdk/eq$a;)V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)V

    return-void
.end method
