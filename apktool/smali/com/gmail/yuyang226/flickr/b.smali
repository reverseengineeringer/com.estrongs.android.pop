.class public Lcom/gmail/yuyang226/flickr/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/yuyang226/flickr/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/yuyang226/flickr/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gmail/yuyang226/flickr/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/gmail/yuyang226/flickr/b;->c:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->b:Lorg/json/JSONObject;

    const-string v1, "stat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->a:Ljava/lang/String;

    const-string v0, "ok"

    iget-object v1, p0, Lcom/gmail/yuyang226/flickr/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fail"

    iget-object v1, p0, Lcom/gmail/yuyang226/flickr/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->b:Lorg/json/JSONObject;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->b:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/b;->e:Ljava/lang/String;

    return-object v0
.end method
