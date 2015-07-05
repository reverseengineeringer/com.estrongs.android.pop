.class Lcom/estrongs/bluetooth/parser/b;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:Lcom/estrongs/bluetooth/parser/a;

.field private b:I

.field private c:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/estrongs/bluetooth/parser/a;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/bluetooth/parser/b;->a:Lcom/estrongs/bluetooth/parser/a;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/b;->c:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/b;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/b;->c:Ljava/lang/StringBuffer;

    :cond_0
    iget v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    iget v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    iget v0, p0, Lcom/estrongs/bluetooth/parser/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    new-instance v1, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-direct {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;-><init>()V

    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FILE:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    invoke-virtual {v1, v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    invoke-virtual {v1, v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;)V

    goto :goto_0

    :cond_2
    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(J)V

    goto :goto_2

    :cond_3
    const-string v3, "modified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v3, "user-perm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/bluetooth/parser/OBEXElement;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/b;->a:Lcom/estrongs/bluetooth/parser/a;

    iget-object v0, v0, Lcom/estrongs/bluetooth/parser/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method
