.class public Lcom/jcraft/jsch/KeyPairDSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final m:[B

.field private static final n:[B

.field private static final o:[B


# instance fields
.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->m:[B

    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->n:[B

    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->o:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->l:I

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    iput-object p6, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    if-eqz p2, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->l:I

    :cond_0
    return-void
.end method

.method static a(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8

    const/4 v0, 0x7

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->a(ILjava/lang/String;)[[B

    move-result-object v7

    const/4 v0, 0x1

    aget-object v2, v7, v0

    const/4 v0, 0x2

    aget-object v3, v7, v0

    const/4 v0, 0x3

    aget-object v4, v7, v0

    const/4 v0, 0x4

    aget-object v5, v7, v0

    const/4 v0, 0x5

    aget-object v6, v7, v0

    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v7, v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/jcraft/jsch/KeyPairDSA;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jcraft/jsch/KeyPairDSA;->a:I

    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->o:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    return-object v1
.end method

.method public a([B)[B
    .locals 5

    :try_start_0
    const-string v0, "signature.dss"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jsch/SignatureDSA;->b([B[B[B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureDSA;->a([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->b()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairDSA;->o:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->a([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method b([B)Z
    .locals 7

    const/16 v4, 0x30

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->a:I

    if-ne v2, v0, :cond_2

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-eq v2, v4, :cond_1

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    if-eqz v2, :cond_0

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iput v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->l:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->a:I

    if-ne v2, v3, :cond_3

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    :try_start_1
    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/jcraft/jsch/Buffer;->a(ILjava/lang/String;)[[B

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :try_start_2
    aget-byte v2, p1, v2

    if-eq v2, v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_13

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v6, v1

    move v2, v3

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_5

    :goto_2
    aget-byte v4, p1, v2

    if-eq v4, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v6

    move v6, v2

    move v2, v4

    move v4, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_7

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_3
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_d

    :cond_7
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_8

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_4
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_e

    :cond_8
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_9

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_5
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_f

    :cond_9
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_a

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_6
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_10

    :cond_a
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_b

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_7
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_11

    :cond_b
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_c

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_8
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_12

    :cond_c
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    if-eqz v2, :cond_0

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iput v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->l:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_e
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_4

    :cond_f
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_5

    :cond_10
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_6

    :cond_11
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_7

    :cond_12
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_8

    :cond_13
    move v2, v3

    goto/16 :goto_2
.end method

.method b()[B
    .locals 1

    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->o:[B

    return-object v0
.end method

.method public c()[B
    .locals 3

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->c()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lcom/jcraft/jsch/KeyPairDSA;->o:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->a([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    goto :goto_0
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->e()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->d([B)V

    return-void
.end method

.method f()[B
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/KeyPairDSA;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairDSA;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/KeyPairDSA;->a([BII)I

    move-result v0

    new-array v2, v3, [B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->g:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->h:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->i:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->j:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->k:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->a([BI[B)I

    return-object v1
.end method
