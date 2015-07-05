.class public Lcom/estrongs/android/pop/zeroconf/u;
.super Ljava/lang/Object;


# static fields
.field private static final l:[B


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/net/Inet4Address;

.field public g:Ljava/net/Inet6Address;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field private m:[B

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/u;->l:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->g:Ljava/net/Inet6Address;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/zeroconf/u;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    iput p2, p0, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/zeroconf/u;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    iget v2, p1, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0x2e

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v6, ""

    const-string v0, ""

    const-string v5, ""

    const-string v1, "in-addr.arpa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ip6.arpa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v0, "in-addr.arpa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "in-addr.arpa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    move-object v0, v2

    move-object v2, v6

    :goto_1
    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/u;->h:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/pop/zeroconf/u;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/zeroconf/u;->j:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ip6.arpa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object v2, v6

    goto :goto_1

    :cond_3
    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_services"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_9

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v7, "._"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5

    add-int/lit8 v3, v7, 0x2

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "."

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    sub-int v1, v7, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "._sub"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    add-int/lit8 v6, v5, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-object v2, v4

    goto/16 :goto_1

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    move-object v2, v6

    goto/16 :goto_1

    :cond_8
    move-object v1, v5

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto :goto_2
.end method

.method private d()[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->m:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->m:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->m:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/n;->b:[B

    goto :goto_0
.end method

.method private e()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->d()[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    move v1, v4

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->d()[B

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->d()[B

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v6, v1, 0xff

    if-eqz v6, :cond_0

    add-int v1, v0, v6

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->d()[B

    move-result-object v2

    array-length v2, v2

    if-le v1, v2, :cond_3

    :cond_0
    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-object v5, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    :goto_2
    return-object v0

    :cond_3
    move v3, v4

    :goto_3
    if-ge v3, v6, :cond_4

    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->d()[B

    move-result-object v1

    add-int v2, v0, v3

    aget-byte v1, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->d()[B

    move-result-object v7

    invoke-direct {v1, v7, v0, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    if-nez v1, :cond_5

    :try_start_3
    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_4

    :cond_5
    if-ne v3, v6, :cond_6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/u;->l:[B

    invoke-virtual {v5, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move v1, v0

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v3, 0x1

    sub-int v3, v6, v2

    new-array v3, v3, [B

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->d()[B

    move-result-object v7

    add-int v8, v0, v2

    const/4 v9, 0x0

    sub-int v2, v6, v2

    invoke-static {v7, v8, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/2addr v0, v6

    goto :goto_5

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/net/Inet4Address;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    return-void
.end method

.method public a(Ljava/net/Inet6Address;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/u;->g:Ljava/net/Inet6Address;

    return-void
.end method

.method public a([B)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/u;->m:[B

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/u;->e()Ljava/util/Map;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->g:Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/u;->n:Ljava/util/Map;

    const-string v3, "path"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/pop/zeroconf/u;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/estrongs/android/pop/zeroconf/u;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/zeroconf/u;->a(Lcom/estrongs/android/pop/zeroconf/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
