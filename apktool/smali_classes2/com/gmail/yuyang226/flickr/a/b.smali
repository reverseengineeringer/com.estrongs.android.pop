.class public Lcom/gmail/yuyang226/flickr/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gmail/yuyang226/flickr/a/b;->a:I

    iput p2, p0, Lcom/gmail/yuyang226/flickr/a/b;->b:I

    iput p3, p0, Lcom/gmail/yuyang226/flickr/a/b;->c:I

    iput p4, p0, Lcom/gmail/yuyang226/flickr/a/b;->d:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/gmail/yuyang226/flickr/a/b;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/gmail/yuyang226/flickr/a/b;

    iget v2, p0, Lcom/gmail/yuyang226/flickr/a/b;->d:I

    iget v3, p1, Lcom/gmail/yuyang226/flickr/a/b;->d:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/gmail/yuyang226/flickr/a/b;->c:I

    iget v3, p1, Lcom/gmail/yuyang226/flickr/a/b;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/gmail/yuyang226/flickr/a/b;->a:I

    iget v3, p1, Lcom/gmail/yuyang226/flickr/a/b;->a:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/gmail/yuyang226/flickr/a/b;->b:I

    iget v3, p1, Lcom/gmail/yuyang226/flickr/a/b;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/gmail/yuyang226/flickr/a/b;->d:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gmail/yuyang226/flickr/a/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gmail/yuyang226/flickr/a/b;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gmail/yuyang226/flickr/a/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method
