.class public abstract Lcom/estrongs/fs/util/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field protected final b:Ljava/text/Collator;

.field protected c:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/a/a;->b:Ljava/text/Collator;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/util/a/a;->c:I

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/util/a/a;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a/a;->b:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method protected a(II)I
    .locals 2

    sub-int v0, p1, p2

    iget v1, p0, Lcom/estrongs/fs/util/a/a;->c:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/util/a/a;->b:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/estrongs/fs/util/a/a;->c:I

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/estrongs/fs/util/a/a;->c:I

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget v0, p0, Lcom/estrongs/fs/util/a/a;->c:I

    mul-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/estrongs/fs/util/a/a;->c:I

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/estrongs/fs/util/a/a;->c:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/fs/h;)Z
    .locals 1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
