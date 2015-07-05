.class public Lcom/a/a/e;
.super Ljava/lang/Object;


# static fields
.field public static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "host::\u0000"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/a/a/e;->a:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a([B)I
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, p0, v1

    if-ltz v3, :cond_0

    add-int/2addr v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit16 v3, v3, 0x100

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static a(Lcom/a/a/f;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/a/f;->a:I

    iget v2, p0, Lcom/a/a/f;->f:I

    xor-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/a/a/f;->d:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/a/a/f;->g:[B

    invoke-static {v1}, Lcom/a/a/e;->a([B)I

    move-result v1

    iget v2, p0, Lcom/a/a/f;->e:I

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a()[B
    .locals 4

    const v0, 0x4e584e43    # 9.072519E8f

    const/high16 v1, 0x1000000

    const/16 v2, 0x1000

    sget-object v3, Lcom/a/a/e;->a:[B

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/e;->a(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(II)[B
    .locals 2

    const v0, 0x45534c43

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/a/a/e;->a(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(III[B)[B
    .locals 3

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_2

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/a/a/e;->a([B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    xor-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public static a(II[B)[B
    .locals 1

    const v0, 0x45545257

    invoke-static {v0, p0, p1, p2}, Lcom/a/a/e;->a(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)[B
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const v1, 0x4e45504f    # 8.2759366E8f

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v1, p0, v2, v0}, Lcom/a/a/e;->a(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(I[B)[B
    .locals 2

    const v0, 0x48545541

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/a/a/e;->a(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(II)[B
    .locals 2

    const v0, 0x59414b4f

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/a/a/e;->a(III[B)[B

    move-result-object v0

    return-object v0
.end method
