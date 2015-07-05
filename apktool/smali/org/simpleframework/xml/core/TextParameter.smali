.class Lorg/simpleframework/xml/core/TextParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final factory:Ljava/lang/reflect/Constructor;

.field private final index:I

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/Text;I)V
    .locals 2

    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateParameter;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-direct {v0, p2, p1, p3}, Lorg/simpleframework/xml/core/TextParameter$Contact;-><init>(Lorg/simpleframework/xml/Text;Ljava/lang/reflect/Constructor;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    new-instance v0, Lorg/simpleframework/xml/core/TextLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-direct {v0, v1, p2}, Lorg/simpleframework/xml/core/TextLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Text;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->path:Ljava/lang/String;

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->type:Ljava/lang/Class;

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->factory:Ljava/lang/reflect/Constructor;

    iput p3, p0, Lorg/simpleframework/xml/core/TextParameter;->index:I

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/TextParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/simpleframework/xml/core/TextParameter;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextParameter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextParameter;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/TextParameter;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/TextParameter$Contact;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
