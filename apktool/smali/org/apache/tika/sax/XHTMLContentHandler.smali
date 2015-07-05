.class public Lorg/apache/tika/sax/XHTMLContentHandler;
.super Lorg/apache/tika/sax/SafeContentHandler;


# static fields
.field private static final AUTO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

.field public static final ENDLINE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEAD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDENT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NL:[C

.field private static final TAB:[C

.field public static final XHTML:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# instance fields
.field private headEnded:Z

.field private headStarted:Z

.field private final metadata:Lorg/apache/tika/metadata/Metadata;

.field private useFrameset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [C

    const/16 v1, 0xa

    aput-char v1, v0, v3

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->NL:[C

    new-array v0, v4, [C

    const/16 v1, 0x9

    aput-char v1, v0, v3

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->TAB:[C

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "link"

    aput-object v1, v0, v4

    const-string v1, "base"

    aput-object v1, v0, v5

    const-string v1, "meta"

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->HEAD:Ljava/util/Set;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "html"

    aput-object v1, v0, v3

    const-string v1, "head"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "frameset"

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->AUTO:Ljava/util/Set;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "li"

    aput-object v1, v0, v3

    const-string v1, "dd"

    aput-object v1, v0, v4

    const-string v1, "dt"

    aput-object v1, v0, v5

    const-string v1, "td"

    aput-object v1, v0, v6

    const-string v1, "th"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "frame"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->INDENT:Ljava/util/Set;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "p"

    aput-object v1, v0, v3

    const-string v1, "h1"

    aput-object v1, v0, v4

    const-string v1, "h2"

    aput-object v1, v0, v5

    const-string v1, "h3"

    aput-object v1, v0, v6

    const-string v1, "h4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "h5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "h6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "div"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ul"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ol"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pre"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "blockquote"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fieldset"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "table"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "form"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "noscript"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "dd"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "noframes"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "br"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "select"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "option"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->ENDLINE:Ljava/util/Set;

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/tika/sax/SafeContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headStarted:Z

    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headEnded:Z

    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    iput-object p2, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    return-void
.end method

.method private lazyEndHead(Z)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyStartHead()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->headEnded:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->headEnded:Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    invoke-virtual {v2}, Lorg/apache/tika/metadata/Metadata;->names()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v2, 0x0

    move v15, v2

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    aget-object v7, v16, v15

    const-string v2, "title"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    invoke-virtual {v2, v7}, Lorg/apache/tika/metadata/Metadata;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    aget-object v13, v18, v14

    if-eqz v13, :cond_2

    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v3, ""

    const-string v4, "name"

    const-string v5, "name"

    const-string v6, "CDATA"

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ""

    const-string v10, "content"

    const-string v11, "content"

    const-string v12, "CDATA"

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "http://www.w3.org/1999/xhtml"

    const-string v4, "meta"

    const-string v5, "meta"

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5, v2}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v2, "http://www.w3.org/1999/xhtml"

    const-string v3, "meta"

    const-string v4, "meta"

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->newline()V

    :cond_2
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_1

    :cond_3
    const-string v2, "http://www.w3.org/1999/xhtml"

    const-string v3, "title"

    const-string v4, "title"

    sget-object v5, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4, v5}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4}, Lorg/apache/tika/sax/SafeContentHandler;->characters([CII)V

    :goto_2
    const-string v2, "http://www.w3.org/1999/xhtml"

    const-string v3, "title"

    const-string v4, "title"

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->newline()V

    const-string v2, "http://www.w3.org/1999/xhtml"

    const-string v3, "head"

    const-string v4, "head"

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->newline()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    if-eqz v2, :cond_6

    const-string v2, "http://www.w3.org/1999/xhtml"

    const-string v3, "frameset"

    const-string v4, "frameset"

    sget-object v5, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4, v5}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    const/4 v2, 0x0

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4}, Lorg/apache/tika/sax/SafeContentHandler;->characters([CII)V

    goto :goto_2

    :cond_6
    const-string v2, "http://www.w3.org/1999/xhtml"

    const-string v3, "body"

    const-string v4, "body"

    sget-object v5, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    move-object/from16 v0, p0

    invoke-super {v0, v2, v3, v4, v5}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_3
.end method

.method private lazyStartHead()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headStarted:Z

    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, "html"

    const-string v2, "html"

    sget-object v3, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-super {p0, v0, v1, v2, v3}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->newline()V

    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, "head"

    const-string v2, "head"

    sget-object v3, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-super {p0, v0, v1, v2, v3}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->newline()V

    :cond_0
    return-void
.end method

.method private static varargs unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tika/sax/XHTMLContentHandler;->characters([CII)V

    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->characters([CII)V

    return-void
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/tika/sax/XHTMLContentHandler;->characters(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/tika/sax/XHTMLContentHandler;->endElement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, "frameset"

    const-string v2, "frameset"

    invoke-super {p0, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, "html"

    const-string v2, "html"

    invoke-super {p0, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/apache/tika/sax/SafeContentHandler;->endDocument()V

    return-void

    :cond_0
    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, "body"

    const-string v2, "body"

    invoke-super {p0, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v0, p1, p1}, Lorg/apache/tika/sax/XHTMLContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->AUTO:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->ENDLINE:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->newline()V

    :cond_0
    return-void
.end method

.method public newline()V
    .locals 3

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->NL:[C

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/sax/XHTMLContentHandler;->NL:[C

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tika/sax/XHTMLContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public startDocument()V
    .locals 2

    invoke-super {p0}, Lorg/apache/tika/sax/SafeContentHandler;->startDocument()V

    const-string v0, ""

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/sax/XHTMLContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2

    const-string v0, "http://www.w3.org/1999/xhtml"

    sget-object v1, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, p1, v1}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v4, "CDATA"

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v1, p1, p1, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "frameset"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->AUTO:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->HEAD:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyStartHead()V

    :goto_1
    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->INDENT:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->TAB:[C

    sget-object v1, Lorg/apache/tika/sax/XHTMLContentHandler;->TAB:[C

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/tika/sax/XHTMLContentHandler;->ignorableWhitespace([CII)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;)V
    .locals 1

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
