.class Lcom/jcraft/jsch/KeyPair$ASN1;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:I

.field c:I

.field final synthetic d:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/KeyPair;[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[BII)V

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/KeyPair;[BII)V
    .locals 2

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->d:Lcom/jcraft/jsch/KeyPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->a:[B

    iput p3, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->b:I

    iput p4, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->c:I

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/KeyPair$ASN1Exception;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1Exception;-><init>(Lcom/jcraft/jsch/KeyPair;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a([I)I
    .locals 6

    const/4 v4, 0x0

    aget v0, p1, v4

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->a:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v4

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_1

    :cond_0
    aput v1, p1, v4

    return v0

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->a:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method a()[B
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->b:I

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->a([I)I

    move-result v1

    aget v0, v0, v4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->a:[B

    array-length v3, v1

    invoke-static {v2, v0, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method b()[Lcom/jcraft/jsch/KeyPair$ASN1;
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->a:[B

    iget v2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->b:I

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->b:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v3, v0

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->a([I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    new-array v0, v0, [Lcom/jcraft/jsch/KeyPair$ASN1;

    :goto_0
    return-object v0

    :cond_0
    aget v1, v3, v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :goto_1
    if-gtz v2, :cond_1

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lcom/jcraft/jsch/KeyPair$ASN1;

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    aput v1, v3, v0

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->a([I)I

    move-result v5

    aget v6, v3, v0

    sub-int v7, v6, v1

    sub-int/2addr v2, v7

    new-instance v7, Lcom/jcraft/jsch/KeyPair$ASN1;

    iget-object v8, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->d:Lcom/jcraft/jsch/KeyPair;

    iget-object v9, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->a:[B

    add-int/lit8 v10, v1, -0x1

    sub-int v1, v6, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v5

    invoke-direct {v7, v8, v9, v10, v1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[BII)V

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int v1, v6, v5

    sub-int/2addr v2, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPair$ASN1;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
