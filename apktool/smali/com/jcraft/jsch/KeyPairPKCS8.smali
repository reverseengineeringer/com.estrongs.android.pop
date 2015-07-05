.class public Lcom/jcraft/jsch/KeyPairPKCS8;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B

.field private static final l:[B

.field private static final m:[B

.field private static final n:[B

.field private static final p:[B

.field private static final q:[B


# instance fields
.field private o:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->g:[B

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->h:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->i:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->j:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->k:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->l:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->m:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->n:[B

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->p:[B

    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->q:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x38t
        0x4t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x16t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2at
    .end array-data

    nop

    :array_7
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public a([B)[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method b([B)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v0, p0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v4

    array-length v0, v4

    if-lez v0, :cond_0

    move v0, v8

    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v0

    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->g:[B

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Lcom/jcraft/jsch/KeyPairRSA;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->c:Lcom/jcraft/jsch/JSch;

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KeyPair;->b([B)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;
    :try_end_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;

    if-eqz v0, :cond_6

    move v0, v7

    :goto_2
    return v0

    :cond_2
    :try_start_1
    aget-object v5, v4, v0

    invoke-virtual {v5}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->h:[B

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v2, p0, v0}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    move v0, v8

    :goto_3
    array-length v4, v3

    if-lt v0, v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->c:Lcom/jcraft/jsch/JSch;

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPairDSA;->f()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->c:Lcom/jcraft/jsch/JSch;

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KeyPair;->b([B)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v0, v8

    goto/16 :goto_2

    :cond_4
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move v0, v8

    goto/16 :goto_2

    :cond_6
    move v0, v8

    goto/16 :goto_2
.end method

.method b()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public c([B)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairPKCS8;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairPKCS8;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/KeyPair$ASN1;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->f:[B

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->i:[B

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v4

    new-instance v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->b()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->a()[B

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairPKCS8;->d([B)Lcom/jcraft/jsch/Cipher;
    :try_end_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :try_start_1
    const-string v2, "pbkdf"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/PBKDF;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v9

    invoke-interface {v2, p1, v4, v5, v9}, Lcom/jcraft/jsch/PBKDF;->a([B[BII)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v0, v3, v2, v8}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->d([B)V

    array-length v2, v1

    new-array v4, v2, [B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/KeyPairPKCS8;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->e:Z

    move v6, v7

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->n:[B

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->b([B[B)Z
    :try_end_2
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->o:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->c()[B

    move-result-object v0

    return-object v0
.end method

.method d([B)Lcom/jcraft/jsch/Cipher;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x4

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->k:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "aes128-cbc"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->l:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "aes192-cbc"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->m:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "aes256-cbc"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unknown oid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PKCS8: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "function "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method
