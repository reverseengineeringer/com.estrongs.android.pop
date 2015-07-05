.class Lorg/simpleframework/xml/convert/RegistryBinder;
.super Ljava/lang/Object;


# instance fields
.field private final cache:Lorg/simpleframework/xml/convert/ClassCache;

.field private final factory:Lorg/simpleframework/xml/convert/ConverterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    new-instance v0, Lorg/simpleframework/xml/convert/ClassCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ClassCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/ClassCache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ClassCache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/RegistryBinder;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
