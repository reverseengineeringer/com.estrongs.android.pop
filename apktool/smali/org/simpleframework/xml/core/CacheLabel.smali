.class Lorg/simpleframework/xml/core/CacheLabel;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;

.field private final attribute:Z

.field private final collection:Z

.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final data:Z

.field private final decorator:Lorg/simpleframework/xml/core/Decorator;

.field private final depend:Lorg/simpleframework/xml/strategy/Type;

.field private final entry:Ljava/lang/String;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final inline:Z

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final names:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final override:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final paths:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final required:Z

.field private final text:Z

.field private final type:Ljava/lang/Class;

.field private final union:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->collection:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->depend:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->required:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->override:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->inline:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isUnion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getNames()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->names:Ljava/util/Collection;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPaths()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->paths:Ljava/util/Collection;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->path:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->type:Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->entry:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->data:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->text:Z

    iput-object p1, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->depend:Lorg/simpleframework/xml/strategy/Type;

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iget-boolean v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->names:Ljava/util/Collection;

    return-object v0
.end method

.method public getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->override:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->paths:Ljava/util/Collection;

    return-object v0
.end method

.method public getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public isAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    return v0
.end method

.method public isCollection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->collection:Z

    return v0
.end method

.method public isData()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->data:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->inline:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->required:Z

    return v0
.end method

.method public isText()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->text:Z

    return v0
.end method

.method public isUnion()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
