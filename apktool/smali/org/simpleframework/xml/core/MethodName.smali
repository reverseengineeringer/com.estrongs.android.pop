.class Lorg/simpleframework/xml/core/MethodName;
.super Ljava/lang/Object;


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field private name:Ljava/lang/String;

.field private type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodName;->method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodName;->type:Lorg/simpleframework/xml/core/MethodType;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->type:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method
