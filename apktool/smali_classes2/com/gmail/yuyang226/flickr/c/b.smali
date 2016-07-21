.class public Lcom/gmail/yuyang226/flickr/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/yuyang226/flickr/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lorg/w3c/dom/Document;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->f:Lorg/w3c/dom/Element;

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->f:Lorg/w3c/dom/Element;

    const-string v1, "stat"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->a:Ljava/lang/String;

    const-string v0, "ok"

    iget-object v1, p0, Lcom/gmail/yuyang226/flickr/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->f:Lorg/w3c/dom/Element;

    const-string v1, "photoid"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->b:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->f:Lorg/w3c/dom/Element;

    const-string v1, "ticketid"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->c:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iput-object v3, p0, Lcom/gmail/yuyang226/flickr/c/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/gmail/yuyang226/flickr/c/b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->f:Lorg/w3c/dom/Element;

    const-string v1, "err"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "code"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/yuyang226/flickr/c/b;->d:Ljava/lang/String;

    const-string v1, "msg"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/b;->b:Ljava/lang/String;

    return-object v0
.end method
