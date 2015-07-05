.class Lorg/simpleframework/xml/strategy/WriteGraph;
.super Ljava/util/IdentityHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final mark:Ljava/lang/String;

.field private final refer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->refer:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->mark:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLength()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->length:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->label:Ljava/lang/String;

    return-void
.end method

.method private writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .locals 2

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/strategy/WriteGraph;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private writeReference(Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/WriteGraph;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/simpleframework/xml/strategy/WriteGraph;->size()I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->refer:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->mark:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/strategy/WriteGraph;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p2, p3}, Lorg/simpleframework/xml/strategy/WriteGraph;->writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/simpleframework/xml/strategy/WriteGraph;->writeReference(Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v0

    return v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
