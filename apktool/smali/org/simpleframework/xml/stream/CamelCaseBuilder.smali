.class Lorg/simpleframework/xml/stream/CamelCaseBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/stream/Style;


# instance fields
.field private final attribute:Z

.field private final element:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->attribute:Z

    iput-boolean p1, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->element:Z

    return-void
.end method

.method static synthetic access$0(Lorg/simpleframework/xml/stream/CamelCaseBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->attribute:Z

    return v0
.end method

.method static synthetic access$1(Lorg/simpleframework/xml/stream/CamelCaseBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->element:Z

    return v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;

    invoke-direct {v1, p0, p1, v0, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;)V

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;->process()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;

    invoke-direct {v1, p0, p1, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;)V

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->process()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
