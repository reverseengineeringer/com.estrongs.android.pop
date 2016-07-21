.class public Lde/innosystec/unrar/unpack/vm/a;
.super Ljava/lang/Object;


# instance fields
.field protected ak:I

.field protected al:I

.field protected am:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/a;->am:[B

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/a;->al:I

    add-int/2addr v0, p1

    iget v1, p0, Lde/innosystec/unrar/unpack/vm/a;->ak:I

    shr-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/a;->ak:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/a;->al:I

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/vm/a;->c(I)V

    return-void
.end method

.method public e(I)Z
    .locals 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/a;->ak:I

    add-int/2addr v0, p1

    const v1, 0x8000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/a;->ak:I

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/a;->al:I

    return-void
.end method

.method public m()I
    .locals 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/a;->am:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/vm/a;->ak:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/a;->am:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/vm/a;->ak:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/a;->am:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/vm/a;->ak:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget v1, p0, Lde/innosystec/unrar/unpack/vm/a;->al:I

    rsub-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public n()I
    .locals 1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->m()I

    move-result v0

    return v0
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/a;->am:[B

    return-object v0
.end method
