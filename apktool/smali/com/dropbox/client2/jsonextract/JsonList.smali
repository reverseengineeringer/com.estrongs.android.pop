.class public final Lcom/dropbox/client2/jsonextract/JsonList;
.super Lcom/dropbox/client2/jsonextract/JsonBase;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/client2/jsonextract/JsonBase",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/dropbox/client2/jsonextract/JsonThing;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonList;->pathConcatIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathConcatIndex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->pathConcat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public expectLength(I)V
    .locals 2

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expecting array to have length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but it has length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonList;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public extract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonList;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-direct {v3, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/dropbox/client2/jsonextract/JsonExtractor;->extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public get(I)Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expecting array to have an element at index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but it only has length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonList;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonThing;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonList;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/dropbox/client2/jsonextract/JsonList;->pathConcatIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonList$WrapperIterator;

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonList;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/client2/jsonextract/JsonList$WrapperIterator;-><init>(Ljava/lang/String;Ljava/util/Iterator;Lcom/dropbox/client2/jsonextract/JsonList$WrapperIterator;)V

    return-object v1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
