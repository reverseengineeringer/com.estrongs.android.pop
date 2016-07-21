.class Lorg/simpleframework/xml/core/ExpressionBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ExpressionBuilder;-><init>(Lorg/simpleframework/xml/strategy/Type;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;-><init>(Lorg/simpleframework/xml/core/ExpressionBuilder;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private create(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;
    .locals 2

    new-instance v0, Lorg/simpleframework/xml/core/PathParser;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/core/PathParser;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ExpressionBuilder;->create(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method
