.class Lorg/simpleframework/xml/core/Qualifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Decorator;


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->scan(Lorg/simpleframework/xml/core/Contact;)V

    return-void
.end method

.method private namespace(Lorg/simpleframework/xml/core/Contact;)V
    .locals 2

    const-class v0, Lorg/simpleframework/xml/Namespace;

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Namespace;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->set(Lorg/simpleframework/xml/Namespace;)V

    iget-object v1, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    :cond_0
    return-void
.end method

.method private scan(Lorg/simpleframework/xml/core/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->namespace(Lorg/simpleframework/xml/core/Contact;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->scope(Lorg/simpleframework/xml/core/Contact;)V

    return-void
.end method

.method private scope(Lorg/simpleframework/xml/core/Contact;)V
    .locals 5

    const-class v0, Lorg/simpleframework/xml/NamespaceList;

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/NamespaceList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/NamespaceList;->value()[Lorg/simpleframework/xml/Namespace;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v4, v3}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-void
.end method

.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    return-void
.end method
