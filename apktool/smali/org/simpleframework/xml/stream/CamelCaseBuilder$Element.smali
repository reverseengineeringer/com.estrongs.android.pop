.class Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;
.super Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;


# instance fields
.field private capital:Z

.field final synthetic this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$Attribute;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;-><init>(Lorg/simpleframework/xml/stream/CamelCaseBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected parse([CII)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->this$0:Lorg/simpleframework/xml/stream/CamelCaseBuilder;

    # getter for: Lorg/simpleframework/xml/stream/CamelCaseBuilder;->element:Z
    invoke-static {v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder;->access$1(Lorg/simpleframework/xml/stream/CamelCaseBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->capital:Z

    if-eqz v0, :cond_1

    :cond_0
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->toUpper(C)C

    move-result v0

    aput-char v0, p1, p2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/stream/CamelCaseBuilder$Element;->capital:Z

    return-void
.end method
