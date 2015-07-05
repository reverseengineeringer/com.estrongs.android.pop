.class public Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;
.super Ljava/lang/Object;


# instance fields
.field protected data:[B

.field protected flag:I

.field private headerSize:I

.field protected name:Ljava/lang/String;


# direct methods
.method private constructor <init>(IIII[BI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int v0, p1, p2

    add-int/2addr v0, p4

    iput v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->headerSize:I

    invoke-static {p5, p6, p1}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    add-int v0, p6, p1

    invoke-static {p5, v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getInt3([BI)I

    move-result v0

    :goto_0
    mul-int/2addr v0, p3

    if-lez p4, :cond_0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    add-int v1, p6, p1

    add-int/2addr v1, p2

    aget-byte v1, p5, v1

    iput v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->flag:I

    :cond_0
    :goto_1
    add-int v1, p6, p1

    add-int/2addr v1, p2

    add-int/2addr v1, p4

    array-length v2, p5

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    const/4 v3, 0x0

    invoke-static {p5, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    add-int v0, p6, p1

    invoke-static {p5, v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getInt([BI)I

    move-result v0

    goto :goto_0

    :cond_2
    add-int v1, p6, p1

    add-int/2addr v1, p2

    invoke-static {p5, v1}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getInt2([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->flag:I

    goto :goto_1
.end method

.method synthetic constructor <init>(IIII[BILorg/apache/tika/parser/mp3/ID3v2Frame$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;-><init>(IIII[BI)V

    return-void
.end method


# virtual methods
.method protected getSize()I
    .locals 2

    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->headerSize:I

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
