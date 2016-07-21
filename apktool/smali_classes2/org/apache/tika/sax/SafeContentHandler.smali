.class public Lorg/apache/tika/sax/SafeContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;


# static fields
.field private static final REPLACEMENT:[C


# instance fields
.field private final charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

.field private final ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const v2, 0xfffd

    aput-char v2, v0, v1

    sput-object v0, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    new-instance v0, Lorg/apache/tika/sax/SafeContentHandler$1;

    invoke-direct {v0, p0}, Lorg/apache/tika/sax/SafeContentHandler$1;-><init>(Lorg/apache/tika/sax/SafeContentHandler;)V

    iput-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    new-instance v0, Lorg/apache/tika/sax/SafeContentHandler$2;

    invoke-direct {v0, p0}, Lorg/apache/tika/sax/SafeContentHandler$2;-><init>(Lorg/apache/tika/sax/SafeContentHandler;)V

    iput-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    return-void
.end method

.method static synthetic access$001(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->characters([CII)V

    return-void
.end method

.method static synthetic access$101(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->ignorableWhitespace([CII)V

    return-void
.end method

.method private filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V
    .locals 4

    add-int v2, p2, p3

    move v0, p2

    :goto_0
    if-ge p2, v2, :cond_2

    invoke-static {p1, p2, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v3}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-le p2, v0, :cond_0

    sub-int v3, p2, v0

    invoke-interface {p4, p1, v0, v3}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/tika/sax/SafeContentHandler;->writeReplacement(Lorg/apache/tika/sax/SafeContentHandler$Output;)V

    move v0, v1

    :cond_1
    move p2, v1

    goto :goto_0

    :cond_2
    sub-int v1, v2, v0

    invoke-interface {p4, p1, v0, v1}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    return-void
.end method

.method private isInvalid(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    invoke-static {v2, v0}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    return-void
.end method

.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lorg/apache/tika/sax/ContentHandlerDecorator;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    return-void
.end method

.method protected isInvalid(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p1, v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const v2, 0xe000

    if-ge p1, v2, :cond_3

    const v2, 0xd7ff

    if-gt p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_4

    const v2, 0xfffd

    if-gt p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const v2, 0x10ffff

    if-gt p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_2

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    move v8, v7

    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_3

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    if-lt v8, v6, :cond_0

    invoke-direct {p0, v5}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;-><init>(Lorg/apache/tika/sax/SafeContentHandler$1;)V

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v7, v3, v1}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move-object v0, p4

    :cond_3
    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/ContentHandlerDecorator;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method protected writeReplacement(Lorg/apache/tika/sax/SafeContentHandler$Output;)V
    .locals 3

    sget-object v0, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    return-void
.end method
