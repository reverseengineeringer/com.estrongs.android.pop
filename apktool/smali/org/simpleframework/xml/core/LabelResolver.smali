.class Lorg/simpleframework/xml/core/LabelResolver;
.super Ljava/lang/Object;


# instance fields
.field private final attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final texts:Lorg/simpleframework/xml/core/LabelMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->elements:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->texts:Lorg/simpleframework/xml/core/LabelMap;

    return-void
.end method

.method private register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 3

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2, v1, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p2, v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;
    .locals 2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public register(Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0
.end method

.method public resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    goto :goto_0
.end method
