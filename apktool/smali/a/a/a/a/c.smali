.class final La/a/a/a/c;
.super Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private a:[B


# direct methods
.method constructor <init>(La/a/a/a/a;)V
    .locals 6

    const v5, 0xfffd

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    invoke-virtual {p1}, La/a/a/a/a;->a()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v4

    if-lt v0, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, La/a/a/a/c;->a:[B

    :goto_1
    array-length v0, v4

    if-lt v1, v0, :cond_2

    return-void

    :cond_0
    aget-char v3, v4, v0

    if-le v3, v2, :cond_1

    if-ge v3, v5, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-char v0, v4, v1

    if-eqz v0, :cond_3

    if-ge v0, v5, :cond_3

    iget-object v2, p0, La/a/a/a/c;->a:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    iget-object v0, p0, La/a/a/a/c;->a:[B

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, La/a/a/a/c;->a:[B

    aget-byte v0, v0, v1

    :goto_2
    if-nez v0, :cond_2

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1
.end method
