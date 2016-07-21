.class public Lde/a/a/a/a/e;
.super Lde/a/a/a/a/a;

# interfaces
.implements Lde/a/a/a/a/d;


# static fields
.field private static final j:Ljava/util/logging/Logger;


# instance fields
.field protected g:Lorg/bouncycastle/crypto/b;

.field protected h:Lorg/bouncycastle/crypto/e/a;

.field protected i:Lorg/bouncycastle/crypto/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lde/a/a/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/a/a/a/a/e;->j:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    const/16 v6, 0x3e8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x20

    invoke-direct {p0}, Lde/a/a/a/a/a;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/c/a;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/c/a;-><init>()V

    invoke-static {}, Lde/a/a/a/a/e;->d()[B

    move-result-object v0

    iput-object v0, p0, Lde/a/a/a/a/e;->a:[B

    iget-object v0, p0, Lde/a/a/a/a/e;->a:[B

    invoke-virtual {v1, p1, v0, v6}, Lorg/bouncycastle/crypto/f;->a([B[BI)V

    const/16 v0, 0x210

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/f;->a(I)Lorg/bouncycastle/crypto/b;

    move-result-object v0

    iput-object v0, p0, Lde/a/a/a/a/e;->g:Lorg/bouncycastle/crypto/b;

    iget-object v0, p0, Lde/a/a/a/a/e;->g:Lorg/bouncycastle/crypto/b;

    check-cast v0, Lorg/bouncycastle/crypto/f/a;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/f/a;->a()[B

    move-result-object v0

    new-array v2, v3, [B

    iput-object v2, p0, Lde/a/a/a/a/e;->b:[B

    iget-object v2, p0, Lde/a/a/a/a/e;->b:[B

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v3, [B

    iput-object v2, p0, Lde/a/a/a/a/e;->c:[B

    iget-object v2, p0, Lde/a/a/a/a/e;->c:[B

    invoke-static {v0, v3, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v5, [B

    iput-object v2, p0, Lde/a/a/a/a/e;->d:[B

    const/16 v2, 0x40

    iget-object v3, p0, Lde/a/a/a/a/e;->d:[B

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lde/a/a/a/a/e;->a:[B

    invoke-virtual {v1, p1, v0, v6}, Lorg/bouncycastle/crypto/f;->a([B[BI)V

    const/16 v0, 0x100

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/f;->a(I)Lorg/bouncycastle/crypto/b;

    move-result-object v0

    iput-object v0, p0, Lde/a/a/a/a/e;->g:Lorg/bouncycastle/crypto/b;

    new-instance v0, Lorg/bouncycastle/crypto/d/a;

    new-instance v1, Lorg/bouncycastle/crypto/a/b;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/a/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/d/a;-><init>(Lorg/bouncycastle/crypto/c;)V

    iput-object v0, p0, Lde/a/a/a/a/e;->i:Lorg/bouncycastle/crypto/d/a;

    iget-object v0, p0, Lde/a/a/a/a/e;->i:Lorg/bouncycastle/crypto/d/a;

    new-instance v1, Lorg/bouncycastle/crypto/f/a;

    iget-object v2, p0, Lde/a/a/a/a/e;->c:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/f/a;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/d/a;->a(Lorg/bouncycastle/crypto/b;)V

    new-instance v0, Lorg/bouncycastle/crypto/e/a;

    new-instance v1, Lorg/bouncycastle/crypto/b/a;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/b/a;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/e/a;-><init>(Lorg/bouncycastle/crypto/a;)V

    iput-object v0, p0, Lde/a/a/a/a/e;->h:Lorg/bouncycastle/crypto/e/a;

    iget-object v0, p0, Lde/a/a/a/a/e;->h:Lorg/bouncycastle/crypto/e/a;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/e/a;->a()I

    move-result v0

    iput v0, p0, Lde/a/a/a/a/e;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lde/a/a/a/a/e;->f:I

    sget-object v0, Lde/a/a/a/a/e;->j:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/a/a/a/a/e;->j:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pwBytes   = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lde/a/a/a/a/f;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lde/a/a/a/a/e;->j:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "salt      = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/a/a/a/a/e;->a:[B

    invoke-static {v2}, Lde/a/a/a/a/f;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/a/a/a/a/e;->a:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lde/a/a/a/a/e;->j:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pwVerif   = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/a/a/a/a/e;->d:[B

    invoke-static {v2}, Lde/a/a/a/a/f;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/a/a/a/a/e;->d:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static d()[B
    .locals 5

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a([BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    if-lt v0, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lde/a/a/a/a/e;->a([BII)V

    iget v1, p0, Lde/a/a/a/a/e;->e:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a([BII)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lde/a/a/a/a/e;->e:I

    new-array v0, v0, [B

    iget v1, p0, Lde/a/a/a/a/e;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/a/a/a/a/e;->f:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lde/a/a/a/a/f;->a(II)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/f/b;

    iget-object v3, p0, Lde/a/a/a/a/e;->g:Lorg/bouncycastle/crypto/b;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/f/b;-><init>(Lorg/bouncycastle/crypto/b;[B)V

    iget-object v1, p0, Lde/a/a/a/a/e;->h:Lorg/bouncycastle/crypto/e/a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/e/a;->a(ZLorg/bouncycastle/crypto/b;)V

    sub-int v1, p3, p2

    iget v2, p0, Lde/a/a/a/a/e;->e:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lde/a/a/a/a/e;->h:Lorg/bouncycastle/crypto/e/a;

    invoke-virtual {v1, p1, p2, v0, v4}, Lorg/bouncycastle/crypto/e/a;->a([BI[BI)I

    iget v1, p0, Lde/a/a/a/a/e;->e:I

    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lde/a/a/a/a/e;->i:Lorg/bouncycastle/crypto/d/a;

    iget v2, p0, Lde/a/a/a/a/e;->e:I

    invoke-virtual {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/d/a;->a([BII)V

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lde/a/a/a/a/e;->e:I

    new-array v2, v2, [B

    invoke-static {p1, p2, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lde/a/a/a/a/e;->h:Lorg/bouncycastle/crypto/e/a;

    invoke-virtual {v3, v2, v4, v0, v4}, Lorg/bouncycastle/crypto/e/a;->a([BI[BI)I

    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lde/a/a/a/a/e;->i:Lorg/bouncycastle/crypto/d/a;

    invoke-virtual {v2, v0, v4, v1}, Lorg/bouncycastle/crypto/d/a;->a([BII)V

    goto :goto_0
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/e;->a:[B

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/e;->d:[B

    return-object v0
.end method

.method public c()[B
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    iget-object v0, p0, Lde/a/a/a/a/e;->i:Lorg/bouncycastle/crypto/d/a;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/d/a;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lde/a/a/a/a/e;->i:Lorg/bouncycastle/crypto/d/a;

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/d/a;->a([BI)I

    new-array v1, v3, [B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
