.class public Lcom/baidu/mobstat/cs;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()[B

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/baidu/mobstat/cs;->a(Z[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cm;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Z[B)Ljava/security/interfaces/RSAKey;
    .locals 2

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0
.end method

.method private static a(ILjava/security/Key;I[B)[B
    .locals 4

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    array-length v1, p3

    sub-int/2addr v1, v0

    if-le v1, p2, :cond_0

    move v1, p2

    :cond_0
    invoke-virtual {v2, p3, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Z[B[B)[B
    .locals 3

    invoke-static {p0, p1}, Lcom/baidu/mobstat/cs;->a(Z[B)Ljava/security/interfaces/RSAKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0xb

    const/4 v2, 0x1

    check-cast v0, Ljava/security/Key;

    invoke-static {v2, v0, v1, p2}, Lcom/baidu/mobstat/cs;->a(ILjava/security/Key;I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Z[B[B)[B
    .locals 3

    invoke-static {p0, p1}, Lcom/baidu/mobstat/cs;->a(Z[B)Ljava/security/interfaces/RSAKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    check-cast v0, Ljava/security/Key;

    invoke-static {v2, v0, v1, p2}, Lcom/baidu/mobstat/cs;->a(ILjava/security/Key;I[B)[B

    move-result-object v0

    return-object v0
.end method
