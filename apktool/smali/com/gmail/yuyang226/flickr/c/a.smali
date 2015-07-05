.class public Lcom/gmail/yuyang226/flickr/c/a;
.super Lcom/gmail/yuyang226/flickr/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "photo"

    invoke-direct {p0, v0, p2}, Lcom/gmail/yuyang226/flickr/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jpeg"

    iput-object v0, p0, Lcom/gmail/yuyang226/flickr/c/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/gmail/yuyang226/flickr/c/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gmail/yuyang226/flickr/c/a;->b:Ljava/lang/String;

    return-object v0
.end method
