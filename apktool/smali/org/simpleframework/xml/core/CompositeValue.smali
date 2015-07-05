.class Lorg/simpleframework/xml/core/CompositeValue;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->style:Lorg/simpleframework/xml/stream/Style;

    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeValue;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeValue;->entry:Lorg/simpleframework/xml/core/Entry;

    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v0, v1, v2}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v0, v1, v2}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Can not read value of %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeValue;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeValue;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeValue;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeValue;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
