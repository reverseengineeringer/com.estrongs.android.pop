.class Lorg/simpleframework/xml/stream/DocumentProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field private final factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    return-void
.end method

.method private provide(Lorg/xml/sax/InputSource;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    new-instance v1, Lorg/simpleframework/xml/stream/DocumentReader;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/stream/DocumentReader;-><init>(Lorg/w3c/dom/Document;)V

    return-object v1
.end method


# virtual methods
.method public provide(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 1

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentProvider;->provide(Lorg/xml/sax/InputSource;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object v0

    return-object v0
.end method

.method public provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 1

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentProvider;->provide(Lorg/xml/sax/InputSource;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object v0

    return-object v0
.end method
