.class public final Lcom/dropbox/client2/jsonextract/JsonMap;
.super Lcom/dropbox/client2/jsonextract/JsonBase;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/client2/jsonextract/JsonBase",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Lcom/dropbox/client2/jsonextract/JsonThing;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isEnglishDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnglishLetter(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isIdentLike(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/dropbox/client2/jsonextract/JsonMap;->isEnglishLetter(C)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/dropbox/client2/jsonextract/JsonMap;->isEnglishLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/dropbox/client2/jsonextract/JsonMap;->isEnglishDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    invoke-static {p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->isIdentLike(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonThing;->pathConcat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    .locals 1

    invoke-super {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expecting object to have field \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", but it does not"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonMap;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonThing;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getOrNull(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonThing;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonMap$WrapperIterator;

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/client2/jsonextract/JsonMap$WrapperIterator;-><init>(Ljava/lang/String;Ljava/util/Iterator;Lcom/dropbox/client2/jsonextract/JsonMap$WrapperIterator;)V

    return-object v1
.end method
