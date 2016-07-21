.class public Ljcifs/util/RC4;
.super Ljava/lang/Object;


# instance fields
.field i:I

.field j:I

.field s:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/util/RC4;->init([BII)V

    return-void
.end method


# virtual methods
.method public init([BII)V
    .locals 7

    const/16 v6, 0x100

    const/4 v5, 0x0

    new-array v0, v6, [B

    iput-object v0, p0, Ljcifs/util/RC4;->s:[B

    iput v5, p0, Ljcifs/util/RC4;->i:I

    :goto_0
    iget v0, p0, Ljcifs/util/RC4;->i:I

    if-ge v0, v6, :cond_0

    iget-object v0, p0, Ljcifs/util/RC4;->s:[B

    iget v1, p0, Ljcifs/util/RC4;->i:I

    iget v2, p0, Ljcifs/util/RC4;->i:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Ljcifs/util/RC4;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/util/RC4;->i:I

    goto :goto_0

    :cond_0
    iput v5, p0, Ljcifs/util/RC4;->j:I

    iput v5, p0, Ljcifs/util/RC4;->i:I

    :goto_1
    iget v0, p0, Ljcifs/util/RC4;->i:I

    if-ge v0, v6, :cond_1

    iget v0, p0, Ljcifs/util/RC4;->j:I

    iget v1, p0, Ljcifs/util/RC4;->i:I

    rem-int/2addr v1, p3

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/util/RC4;->s:[B

    iget v2, p0, Ljcifs/util/RC4;->i:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/RC4;->j:I

    iget-object v0, p0, Ljcifs/util/RC4;->s:[B

    iget v1, p0, Ljcifs/util/RC4;->i:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Ljcifs/util/RC4;->s:[B

    iget v2, p0, Ljcifs/util/RC4;->i:I

    iget-object v3, p0, Ljcifs/util/RC4;->s:[B

    iget v4, p0, Ljcifs/util/RC4;->j:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, Ljcifs/util/RC4;->s:[B

    iget v2, p0, Ljcifs/util/RC4;->j:I

    aput-byte v0, v1, v2

    iget v0, p0, Ljcifs/util/RC4;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/util/RC4;->i:I

    goto :goto_1

    :cond_1
    iput v5, p0, Ljcifs/util/RC4;->j:I

    iput v5, p0, Ljcifs/util/RC4;->i:I

    return-void
.end method

.method public update([BII[BI)V
    .locals 8

    add-int v2, p2, p3

    :goto_0
    if-ge p2, v2, :cond_0

    iget v0, p0, Ljcifs/util/RC4;->i:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/RC4;->i:I

    iget v0, p0, Ljcifs/util/RC4;->j:I

    iget-object v1, p0, Ljcifs/util/RC4;->s:[B

    iget v3, p0, Ljcifs/util/RC4;->i:I

    aget-byte v1, v1, v3

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/RC4;->j:I

    iget-object v0, p0, Ljcifs/util/RC4;->s:[B

    iget v1, p0, Ljcifs/util/RC4;->i:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Ljcifs/util/RC4;->s:[B

    iget v3, p0, Ljcifs/util/RC4;->i:I

    iget-object v4, p0, Ljcifs/util/RC4;->s:[B

    iget v5, p0, Ljcifs/util/RC4;->j:I

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    iget-object v1, p0, Ljcifs/util/RC4;->s:[B

    iget v3, p0, Ljcifs/util/RC4;->j:I

    aput-byte v0, v1, v3

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    iget-object v4, p0, Ljcifs/util/RC4;->s:[B

    iget-object v5, p0, Ljcifs/util/RC4;->s:[B

    iget v6, p0, Ljcifs/util/RC4;->i:I

    aget-byte v5, v5, v6

    iget-object v6, p0, Ljcifs/util/RC4;->s:[B

    iget v7, p0, Ljcifs/util/RC4;->j:I

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    move p5, v0

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method
