.class Lcom/flurry/sdk/z$b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/flurry/sdk/dc;

.field c:Lcom/flurry/sdk/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/flurry/sdk/e;->copy()Lcom/flurry/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/flurry/sdk/z$b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/flurry/sdk/z$b;

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dc;

    invoke-virtual {v1}, Lcom/flurry/sdk/dc;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    return v0
.end method
