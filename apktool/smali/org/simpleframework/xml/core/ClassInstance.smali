.class Lorg/simpleframework/xml/core/ClassInstance;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field private creator:Lorg/simpleframework/xml/core/Instantiator;

.field private type:Ljava/lang/Class;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Instantiator;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassInstance;->creator:Lorg/simpleframework/xml/core/Instantiator;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassInstance;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstance;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstance;->creator:Lorg/simpleframework/xml/core/Instantiator;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassInstance;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Instantiator;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassInstance;->value:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstance;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstance;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassInstance;->value:Ljava/lang/Object;

    return-object p1
.end method
