.class public Lorg/simpleframework/xml/util/Dictionary;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/simpleframework/xml/util/Entry;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected map:Lorg/simpleframework/xml/util/Dictionary$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Dictionary",
            "<TE;>.Table;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/util/Dictionary$Table;-><init>(Lorg/simpleframework/xml/util/Dictionary;)V

    iput-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Dictionary;->add(Lorg/simpleframework/xml/util/Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/simpleframework/xml/util/Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-interface {p1}, Lorg/simpleframework/xml/util/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/util/Dictionary$Table;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/Dictionary$Table;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/Entry;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Dictionary$Table;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/Dictionary$Table;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/Entry;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Dictionary$Table;->size()I

    move-result v0

    return v0
.end method
