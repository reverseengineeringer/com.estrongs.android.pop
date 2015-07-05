.class public final Lorg/apache/commons/net/io/ToNetASCIIInputStream;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final __LAST_WAS_CR:I = 0x1

.field private static final __LAST_WAS_NL:I = 0x2

.field private static final __NOTHING_SPECIAL:I


# instance fields
.field private __status:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6

    const/16 v0, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-ne v1, v5, :cond_0

    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    move v0, v1

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-eq v2, v4, :cond_1

    iput v5, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-ge p3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->available()I

    move-result v1

    if-le p3, v1, :cond_5

    :goto_1
    if-ge v1, v0, :cond_4

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v1

    if-ne v1, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v2, p2

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_3
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_3

    :cond_2
    sub-int v0, v3, p2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, p3

    goto :goto_1
.end method
