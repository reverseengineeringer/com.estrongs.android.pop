.class Lorg/simpleframework/xml/core/Initializer;
.super Ljava/lang/Object;


# instance fields
.field private final factory:Ljava/lang/reflect/Constructor;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lorg/simpleframework/xml/core/Signature;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/Signature;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/Signature;->getParameters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method private getAdjustment(Lorg/simpleframework/xml/core/Context;D)D
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p2, v2

    add-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, p2, v0

    goto :goto_0
.end method

.method private getInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPercentage(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D
    .locals 7

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v2, v3}, Lorg/simpleframework/xml/core/Initializer;->getAdjustment(Lorg/simpleframework/xml/core/Context;D)D

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Parameter;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v0, v4

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v4

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method

.method private getVariable(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Parameter;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Criteria;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/Initializer;->getInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Initializer;->getVariable(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getScore(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D
    .locals 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Signature;->getSignature(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Signature;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Criteria;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Initializer;->getPercentage(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Signature;->getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v4

    if-nez v0, :cond_3

    invoke-interface {v3, p1}, Lorg/simpleframework/xml/core/Label;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    :goto_1
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Signature;->getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1
.end method

.method public isDefault()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
