.class public Lorg/bouncycastle/crypto/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field private a:[B

.field private b:Lorg/bouncycastle/crypto/b;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/b;[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/f/b;-><init>(Lorg/bouncycastle/crypto/b;[BII)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/b;[BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/f/b;->a:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/f/b;->b:Lorg/bouncycastle/crypto/b;

    iget-object v0, p0, Lorg/bouncycastle/crypto/f/b;->a:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/f/b;->a:[B

    return-object v0
.end method

.method public b()Lorg/bouncycastle/crypto/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/f/b;->b:Lorg/bouncycastle/crypto/b;

    return-object v0
.end method
