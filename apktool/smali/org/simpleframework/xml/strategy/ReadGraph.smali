.class Lorg/simpleframework/xml/strategy/ReadGraph;
.super Ljava/util/HashMap;


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;

.field private final mark:Ljava/lang/String;

.field private final refer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;Lorg/simpleframework/xml/strategy/Loader;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLength()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    iput-object p2, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    return-void
.end method

.method private readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {v1, p2, v0}, Lorg/simpleframework/xml/strategy/ArrayValue;-><init>(Ljava/lang/Class;I)V

    return-object v1
.end method

.method private readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readReference(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/simpleframework/xml/strategy/CycleException;

    const-string v2, "Element \'%s\' already exists"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/strategy/CycleException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    goto :goto_0
.end method

.method private readReference(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lorg/simpleframework/xml/strategy/CycleException;

    const-string v2, "Invalid reference \'%s\' found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/strategy/CycleException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    new-instance v0, Lorg/simpleframework/xml/strategy/Reference;

    invoke-direct {v0, v1, p2}, Lorg/simpleframework/xml/strategy/Reference;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 1

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/strategy/ObjectValue;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    if-eqz p4, :cond_0

    new-instance v0, Lorg/simpleframework/xml/strategy/Allocate;

    invoke-direct {v0, v1, p0, p4}, Lorg/simpleframework/xml/strategy/Allocate;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/strategy/Loader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/strategy/ReadGraph;->readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    return-object v0
.end method
