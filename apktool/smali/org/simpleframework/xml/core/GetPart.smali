.class Lorg/simpleframework/xml/core/GetPart;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/MethodPart;


# instance fields
.field private final label:Ljava/lang/annotation/Annotation;

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    iput-object p2, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependent(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodType()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
