.class public Lorg/bouncycastle/crypto/c/a;
.super Lorg/bouncycastle/crypto/f;


# instance fields
.field private d:Lorg/bouncycastle/crypto/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/f;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/d/a;

    new-instance v1, Lorg/bouncycastle/crypto/a/b;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/a/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/d/a;-><init>(Lorg/bouncycastle/crypto/c;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    return-void
.end method

.method private a([BI)V
    .locals 2

    const/4 v0, 0x0

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    return-void
.end method

.method private a([B[BI[B[BI)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/e;->a()I

    move-result v0

    new-array v3, v0, [B

    new-instance v4, Lorg/bouncycastle/crypto/f/a;

    invoke-direct {v4, p1}, Lorg/bouncycastle/crypto/f/a;-><init>([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/e;->a(Lorg/bouncycastle/crypto/b;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    array-length v2, p2

    invoke-interface {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/e;->a([BII)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    array-length v2, p4

    invoke-interface {v0, p4, v1, v2}, Lorg/bouncycastle/crypto/e;->a([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, v3, v1}, Lorg/bouncycastle/crypto/e;->a([BI)I

    array-length v0, v3

    invoke-static {v3, v1, p5, p6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-lt v2, p3, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/e;->a(Lorg/bouncycastle/crypto/b;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    array-length v5, v3

    invoke-interface {v0, v3, v1, v5}, Lorg/bouncycastle/crypto/e;->a([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, v3, v1}, Lorg/bouncycastle/crypto/e;->a([BI)I

    move v0, v1

    :goto_1
    array-length v5, v3

    if-ne v0, v5, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    add-int v5, p6, v0

    aget-byte v6, p5, v5

    aget-byte v7, v3, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p5, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(I)[B
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/crypto/c/a;->d:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/e;->a()I

    move-result v8

    add-int v0, p1, v8

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v8

    const/4 v0, 0x4

    new-array v4, v0, [B

    mul-int v0, v9, v8

    new-array v5, v0, [B

    const/4 v0, 0x1

    move v7, v0

    :goto_0
    if-le v7, v9, :cond_0

    return-object v5

    :cond_0
    invoke-direct {p0, v4, v7}, Lorg/bouncycastle/crypto/c/a;->a([BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/c/a;->a:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/c/a;->b:[B

    iget v3, p0, Lorg/bouncycastle/crypto/c/a;->c:I

    add-int/lit8 v0, v7, -0x1

    mul-int v6, v0, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/c/a;->a([B[BI[B[BI)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lorg/bouncycastle/crypto/b;
    .locals 4

    div-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/c/a;->b(I)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/f/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/f/a;-><init>([BII)V

    return-object v2
.end method
