.class public Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final p:[B

.field private static final q:[B

.field private static final r:[B


# instance fields
.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->p:[B

    const-string v0, "-----END RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->q:[B

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->r:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->o:I

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    if-eqz p2, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->o:I

    :cond_0
    return-void
.end method

.method static a(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 5

    const/16 v0, 0x8

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->a(ILjava/lang/String;)[[B

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    new-instance v4, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, v4, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    const/4 v1, 0x5

    aget-object v1, v0, v1

    iput-object v1, v4, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    const/4 v1, 0x6

    aget-object v1, v0, v1

    iput-object v1, v4, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v4, Lcom/jcraft/jsch/KeyPairRSA;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v4, Lcom/jcraft/jsch/KeyPairRSA;->a:I

    return-object v4
.end method

.method private g()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    return-object v0
.end method

.method private h()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    return-object v0
.end method

.method private i()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->r:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->i()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->b:Ljava/lang/String;

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
    .locals 4

    :try_start_0
    const-string v0, "signature.rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->b([B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureRSA;->a([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->b()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairRSA;->r:[B

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

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->a:I

    if-ne v4, v3, :cond_1

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x4

    :try_start_1
    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/jcraft/jsch/Buffer;->a(ILjava/lang/String;)[[B

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->g()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->h()[B

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->a:I

    if-ne v4, v0, :cond_4

    aget-byte v2, p1, v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_3

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    if-eqz v2, :cond_2

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iput v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->o:I

    :cond_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->g()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->h()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->i()[B

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_19

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

    if-gtz v4, :cond_10

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

    if-gtz v4, :cond_11

    :cond_8
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

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

    if-gtz v4, :cond_12

    :cond_9
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

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

    if-gtz v4, :cond_13

    :cond_a
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

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

    if-gtz v4, :cond_14

    :cond_b
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

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

    if-gtz v4, :cond_15

    :cond_c
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_d

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_9
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_16

    :cond_d
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_e

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_a
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_17

    :cond_e
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_f

    and-int/lit8 v2, v2, 0x7f

    move v4, v2

    move v2, v1

    :goto_b
    add-int/lit8 v5, v4, -0x1

    if-gtz v4, :cond_18

    :cond_f
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    if-eqz v2, :cond_0

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iput v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->o:I

    goto/16 :goto_0

    :cond_10
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_11
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_4

    :cond_12
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_5

    :cond_13
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_6

    :cond_14
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_7

    :cond_15
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_8

    :cond_16
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_9

    :cond_17
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_a

    :cond_18
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_b

    :cond_19
    move v2, v3

    goto/16 :goto_2
.end method

.method b()[B
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairRSA;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/KeyPairRSA;->a([BII)I

    move-result v0

    new-array v2, v3, [B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->j:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->k:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->l:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->m:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a([BI[B)I

    return-object v1
.end method

.method c()[B
    .locals 1

    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->r:[B

    return-object v0
.end method

.method public d()[B
    .locals 3

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lcom/jcraft/jsch/KeyPairRSA;->r:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->h:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->g:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->a([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->f()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->i:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->d([B)V

    return-void
.end method
