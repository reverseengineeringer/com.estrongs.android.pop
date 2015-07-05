.class Lorg/simpleframework/xml/convert/Reference;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private data:Ljava/lang/Object;

.field private value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    iput-object p2, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    return-void
.end method
