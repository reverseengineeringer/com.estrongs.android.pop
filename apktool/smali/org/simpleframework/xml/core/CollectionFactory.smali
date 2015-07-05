.class Lorg/simpleframework/xml/core/CollectionFactory;
.super Lorg/simpleframework/xml/core/Factory;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-void
.end method

.method private isCollection(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getConversion(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/util/HashSet;

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/util/TreeSet;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v1, "Cannot instantiate %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/CollectionFactory;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/simpleframework/xml/core/CollectionFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/CollectionFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isCollection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Invalid collection %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 5

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Invalid collection %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/ConversionInstance;

    iget-object v2, p0, Lorg/simpleframework/xml/core/CollectionFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, p1, v0}, Lorg/simpleframework/xml/core/ConversionInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    return-object v1
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/CollectionFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/CollectionFactory;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Invalid collection %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CollectionFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/CollectionFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    goto :goto_0
.end method
