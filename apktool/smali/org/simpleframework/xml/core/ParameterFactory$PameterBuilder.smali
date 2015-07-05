.class Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;
.super Ljava/lang/Object;


# instance fields
.field public create:Ljava/lang/Class;

.field public type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;->create:Ljava/lang/Class;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;->type:Ljava/lang/Class;

    return-void
.end method

.method private varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;->create:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/reflect/Constructor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;->type:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
