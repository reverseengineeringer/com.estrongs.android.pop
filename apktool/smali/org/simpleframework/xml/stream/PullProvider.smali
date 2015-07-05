.class Lorg/simpleframework/xml/stream/PullProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field private final factory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullProvider;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullProvider;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    return-void
.end method


# virtual methods
.method public provide(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullProvider;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/stream/PullReader;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/stream/PullReader;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1
.end method

.method public provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullProvider;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/stream/PullReader;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/stream/PullReader;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1
.end method
