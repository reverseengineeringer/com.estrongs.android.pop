.class Lorg/simpleframework/xml/core/Support;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private final creator:Lorg/simpleframework/xml/core/Instantiator;

.field private final factory:Lorg/simpleframework/xml/core/ScannerFactory;

.field private final filter:Lorg/simpleframework/xml/filter/Filter;

.field private final matcher:Lorg/simpleframework/xml/transform/Matcher;

.field private final transform:Lorg/simpleframework/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/transform/Transformer;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/transform/Transformer;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    new-instance v0, Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ScannerFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->factory:Lorg/simpleframework/xml/core/ScannerFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Instantiator;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Instantiator;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/Instantiator;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    return-void
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/Instantiator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Instantiator;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/Instantiator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Instantiator;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Support;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const-class p1, Ljava/lang/Double;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const-class p1, Ljava/lang/Float;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const-class p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const-class p1, Ljava/lang/Long;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const-class p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const-class p1, Ljava/lang/Character;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const-class p1, Ljava/lang/Short;

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const-class p1, Ljava/lang/Byte;

    goto :goto_0
.end method

.method public getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->factory:Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ScannerFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public getTransform(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0
.end method

.method public isFloat(Ljava/lang/Class;)Z
    .locals 2

    const/4 v0, 0x1

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 2

    const/4 v0, 0x1

    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
