.class public Lcom/flurry/sdk/hb;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/flurry/sdk/s;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    iput-object p2, p0, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/flurry/sdk/hb;->c:Z

    iput-boolean p4, p0, Lcom/flurry/sdk/hb;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/hb;->c:Z

    return v0
.end method

.method public c()Lcom/flurry/sdk/s;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/hb;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/flurry/sdk/hb;

    iget-boolean v2, p0, Lcom/flurry/sdk/hb;->c:Z

    iget-boolean v3, p1, Lcom/flurry/sdk/hb;->c:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/flurry/sdk/hb;->d:Z

    iget-boolean v3, p1, Lcom/flurry/sdk/hb;->d:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    iget-object v3, p1, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/flurry/sdk/hb;->c:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/flurry/sdk/hb;->d:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fAdObjectId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/s;

    invoke-interface {v1}, Lcom/flurry/sdk/s;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLaunchUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fShouldCloseAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/hb;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fSendYCookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/hb;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
