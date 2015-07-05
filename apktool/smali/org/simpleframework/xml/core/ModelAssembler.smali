.class Lorg/simpleframework/xml/core/ModelAssembler;
.super Ljava/lang/Object;


# instance fields
.field private final builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    return-void
.end method

.method private assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v5, v4}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v4

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Ordered attribute \'%s\' references an element in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, v4}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v5, v4}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v4

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Ordered element \'%s\' references an attribute in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, v4}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Model;->registerAttribute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    invoke-interface {p2, v5}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Element \'%s\' does not exist in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    goto :goto_0
.end method

.method private registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    if-le v2, v5, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v1, v3}, Lorg/simpleframework/xml/core/Model;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Ordered element \'%s\' in path \'%s\' is out of sequence for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p2, v3, v5

    const/4 v1, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelAssembler;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    return-void
.end method

.method private registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 3

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    return-void
.end method


# virtual methods
.method public assemble(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    return-void
.end method
