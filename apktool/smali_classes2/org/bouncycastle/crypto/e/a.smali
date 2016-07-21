.class public Lorg/bouncycastle/crypto/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a;


# instance fields
.field private final a:Lorg/bouncycastle/crypto/a;

.field private final b:I

.field private c:[B

.field private d:[B

.field private e:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/e/a;->a:Lorg/bouncycastle/crypto/a;

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->a()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/e/a;->b:I

    iget v0, p0, Lorg/bouncycastle/crypto/e/a;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/e/a;->c:[B

    iget v0, p0, Lorg/bouncycastle/crypto/e/a;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    iget v0, p0, Lorg/bouncycastle/crypto/e/a;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/e/a;->e:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->a()I

    move-result v0

    return v0
.end method

.method public a([BI[BI)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->a:Lorg/bouncycastle/crypto/a;

    iget-object v3, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/e/a;->e:[B

    invoke-interface {v0, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/a;->a([BI[BI)I

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/e/a;->e:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v2

    :goto_1
    if-gez v3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    array-length v0, v0

    return v0

    :cond_0
    add-int v3, p4, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/e/a;->e:[B

    aget-byte v4, v4, v0

    add-int v5, p2, v0

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v0

    const/16 v0, 0xff

    if-le v4, v0, :cond_2

    move v0, v2

    :goto_2
    iget-object v5, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public a(ZLorg/bouncycastle/crypto/b;)V
    .locals 4

    const/4 v3, 0x0

    instance-of v0, p2, Lorg/bouncycastle/crypto/f/b;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/f/b;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/f/b;->a()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/e/a;->c:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/e/a;->c:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e/a;->b()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->a:Lorg/bouncycastle/crypto/a;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/f/b;->b()Lorg/bouncycastle/crypto/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/a;->a(ZLorg/bouncycastle/crypto/b;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SIC mode requires ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->c:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/e/a;->d:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/e/a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->b()V

    return-void
.end method
