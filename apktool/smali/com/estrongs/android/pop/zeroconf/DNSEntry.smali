.class public abstract Lcom/estrongs/android/pop/zeroconf/DNSEntry;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

.field private final f:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->e:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->f:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->g:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->a:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Domain:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->a:Ljava/util/Map;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Protocol:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->a:Ljava/util/Map;

    sget-object v3, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Application:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->a:Ljava/util/Map;

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Instance:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v9, 0x2e

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

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
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    move-object v4, v0

    move-object v0, v2

    move-object v2, v6

    :goto_1
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    sget-object v6, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Domain:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Protocol:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Application:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-static {v4}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Instance:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;->Subtype:Lcom/estrongs/android/pop/zeroconf/DNSEntry$Fields;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

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

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object v4, v2

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

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_9

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string v7, "._"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5

    add-int/lit8 v3, v7, 0x2

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    invoke-static {v4}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto/16 :goto_1

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_1

    :cond_8
    move-object v1, v5

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto/16 :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
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


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->e:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->e:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_IGNORE:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    goto :goto_0
.end method

.method public d()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->f:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->f:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->g:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/pop/zeroconf/DNSEntry;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/pop/zeroconf/DNSEntry;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->c()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->c()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->d()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->d()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
