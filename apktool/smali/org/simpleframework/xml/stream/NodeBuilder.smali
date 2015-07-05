.class public final Lorg/simpleframework/xml/stream/NodeBuilder;
.super Ljava/lang/Object;


# static fields
.field private static provider:Lorg/simpleframework/xml/stream/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/simpleframework/xml/stream/ProviderFactory;->getInstance()Lorg/simpleframework/xml/stream/Provider;

    move-result-object v0

    sput-object v0, Lorg/simpleframework/xml/stream/NodeBuilder;->provider:Lorg/simpleframework/xml/stream/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/stream/NodeBuilder;->provider:Lorg/simpleframework/xml/stream/Provider;

    invoke-interface {v0, p0}, Lorg/simpleframework/xml/stream/Provider;->provide(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object v0

    invoke-static {v0}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Lorg/simpleframework/xml/stream/EventReader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/stream/NodeBuilder;->provider:Lorg/simpleframework/xml/stream/Provider;

    invoke-interface {v0, p0}, Lorg/simpleframework/xml/stream/Provider;->provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object v0

    invoke-static {v0}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Lorg/simpleframework/xml/stream/EventReader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method private static read(Lorg/simpleframework/xml/stream/EventReader;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/NodeReader;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/NodeReader;-><init>(Lorg/simpleframework/xml/stream/EventReader;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/NodeReader;->readRoot()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public static write(Ljava/io/Writer;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-static {p0, v0}, Lorg/simpleframework/xml/stream/NodeBuilder;->write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public static write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeRoot()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method
