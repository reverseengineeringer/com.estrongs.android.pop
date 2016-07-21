.class Lcom/gmail/yuyang226/flickr/oauth/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/gmail/yuyang226/flickr/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gmail/yuyang226/flickr/a;Lcom/gmail/yuyang226/flickr/a;)I
    .locals 2

    instance-of v0, p1, Lcom/gmail/yuyang226/flickr/c/a;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/gmail/yuyang226/flickr/c/a;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p2, Lcom/gmail/yuyang226/flickr/c/a;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/gmail/yuyang226/flickr/c/a;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/gmail/yuyang226/flickr/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gmail/yuyang226/flickr/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/gmail/yuyang226/flickr/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gmail/yuyang226/flickr/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/gmail/yuyang226/flickr/a;

    check-cast p2, Lcom/gmail/yuyang226/flickr/a;

    invoke-virtual {p0, p1, p2}, Lcom/gmail/yuyang226/flickr/oauth/b;->a(Lcom/gmail/yuyang226/flickr/a;Lcom/gmail/yuyang226/flickr/a;)I

    move-result v0

    return v0
.end method
