.class public abstract Lde/innosystec/unrar/unpack/d;
.super Lde/innosystec/unrar/unpack/c;


# static fields
.field public static final ae:[I

.field public static final af:[B

.field public static final ag:[I

.field public static final ah:[I

.field public static final ai:[I

.field public static final aj:[I


# instance fields
.field protected S:[Lde/innosystec/unrar/unpack/decode/g;

.field protected T:[B

.field protected U:I

.field protected V:I

.field protected W:I

.field protected X:I

.field protected Y:[Lde/innosystec/unrar/unpack/decode/a;

.field protected Z:Lde/innosystec/unrar/unpack/decode/e;

.field protected aa:Lde/innosystec/unrar/unpack/decode/d;

.field protected ab:Lde/innosystec/unrar/unpack/decode/f;

.field protected ac:Lde/innosystec/unrar/unpack/decode/h;

.field protected ad:Lde/innosystec/unrar/unpack/decode/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x30

    const/16 v2, 0x1c

    const/16 v1, 0x8

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/innosystec/unrar/unpack/d;->ae:[I

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lde/innosystec/unrar/unpack/d;->af:[B

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lde/innosystec/unrar/unpack/d;->ag:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lde/innosystec/unrar/unpack/d;->ah:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lde/innosystec/unrar/unpack/d;->ai:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lde/innosystec/unrar/unpack/d;->aj:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
        0x8000
        0xc000
        0x10000
        0x18000
        0x20000
        0x30000
        0x40000
        0x50000
        0x60000
        0x70000
        0x80000
        0x90000
        0xa0000
        0xb0000
        0xc0000
        0xd0000
        0xe0000
        0xf0000
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/c;-><init>()V

    new-array v0, v1, [Lde/innosystec/unrar/unpack/decode/g;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->S:[Lde/innosystec/unrar/unpack/decode/g;

    const/16 v0, 0x404

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->T:[B

    new-array v0, v1, [Lde/innosystec/unrar/unpack/decode/a;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->Y:[Lde/innosystec/unrar/unpack/decode/a;

    new-instance v0, Lde/innosystec/unrar/unpack/decode/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/e;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->Z:Lde/innosystec/unrar/unpack/decode/e;

    new-instance v0, Lde/innosystec/unrar/unpack/decode/d;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/d;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->aa:Lde/innosystec/unrar/unpack/decode/d;

    new-instance v0, Lde/innosystec/unrar/unpack/decode/f;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/f;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->ab:Lde/innosystec/unrar/unpack/decode/f;

    new-instance v0, Lde/innosystec/unrar/unpack/decode/h;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/h;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->ac:Lde/innosystec/unrar/unpack/decode/h;

    new-instance v0, Lde/innosystec/unrar/unpack/decode/b;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/b;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/d;->ad:Lde/innosystec/unrar/unpack/decode/b;

    return-void
.end method


# virtual methods
.method protected a(Lde/innosystec/unrar/unpack/decode/c;)I
    .locals 10

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/c;->a()[I

    move-result-object v5

    const/16 v8, 0x8

    aget v8, v5, v8

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_8

    aget v8, v5, v3

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    aget v4, v5, v1

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    aget v2, v5, v0

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/d;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/c;->c()[I

    move-result-object v1

    aget v1, v1, v0

    long-to-int v2, v6

    add-int/lit8 v3, v0, -0x1

    aget v3, v5, v3

    sub-int/2addr v2, v3

    rsub-int/lit8 v0, v0, 0x10

    ushr-int v0, v2, v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/c;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/c;->b()[I

    move-result-object v1

    aget v0, v1, v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    aget v0, v5, v2

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_6

    aget v0, v5, v4

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto :goto_0

    :cond_8
    const/16 v0, 0xc

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_c

    const/16 v0, 0xa

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_a

    const/16 v0, 0x9

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_9

    const/16 v0, 0x9

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    goto :goto_0

    :cond_a
    const/16 v0, 0xb

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_b

    const/16 v0, 0xb

    goto :goto_0

    :cond_b
    const/16 v0, 0xc

    goto :goto_0

    :cond_c
    const/16 v0, 0xe

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_e

    const/16 v0, 0xd

    aget v0, v5, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_d

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0xf

    goto/16 :goto_0
.end method

.method protected a([BILde/innosystec/unrar/unpack/decode/c;I)V
    .locals 10

    const/16 v0, 0x10

    new-array v5, v0, [I

    const/16 v0, 0x10

    new-array v6, v0, [I

    const/4 v0, 0x0

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/c;->b()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    aget v2, v5, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v5, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v6, v0

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/c;->c()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/c;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    move v4, v2

    :goto_1
    const/16 v2, 0x10

    if-ge v4, v2, :cond_2

    const-wide/16 v2, 0x2

    aget v7, v5, v4

    int-to-long v8, v7

    add-long/2addr v0, v8

    mul-long/2addr v2, v0

    rsub-int/lit8 v0, v4, 0xf

    shl-long v0, v2, v0

    const-wide/32 v8, 0xffff

    cmp-long v7, v0, v8

    if-lez v7, :cond_1

    const-wide/32 v0, 0xffff

    :cond_1
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/c;->a()[I

    move-result-object v7

    long-to-int v0, v0

    aput v0, v7, v4

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/c;->c()[I

    move-result-object v0

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/c;->c()[I

    move-result-object v1

    add-int/lit8 v7, v4, -0x1

    aget v1, v1, v7

    add-int/lit8 v7, v4, -0x1

    aget v7, v5, v7

    add-int/2addr v1, v7

    aput v1, v0, v4

    aput v1, v6, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p4, :cond_4

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/c;->b()[I

    move-result-object v1

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    aget v3, v6, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, v6, v2

    aput v0, v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p3, p4}, Lde/innosystec/unrar/unpack/decode/c;->a(I)V

    return-void
.end method

.method protected b(I)B
    .locals 11

    const/4 v0, 0x1

    const/16 v10, 0x10

    const/16 v9, -0x10

    const/4 v2, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->Y:[Lde/innosystec/unrar/unpack/decode/a;

    iget v3, p0, Lde/innosystec/unrar/unpack/d;->W:I

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/decode/a;->a(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->d()I

    move-result v1

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/decode/a;->e(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->c()I

    move-result v1

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/decode/a;->d(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->m()I

    move-result v1

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->b()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/decode/a;->c(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->m()I

    move-result v1

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/decode/a;->b(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->l()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->g()I

    move-result v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->b()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/2addr v1, v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->h()I

    move-result v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->c()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->i()I

    move-result v5

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->d()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->j()I

    move-result v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->e()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->k()I

    move-result v5

    iget v6, p0, Lde/innosystec/unrar/unpack/d;->X:I

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x3

    and-int/lit16 v1, v1, 0xff

    sub-int v5, v1, p1

    int-to-byte v1, p1

    shl-int/lit8 v1, v1, 0x3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    aget v6, v3, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v3, v2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    aget v6, v3, v0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->b()I

    move-result v7

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v3, v0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/4 v6, 0x2

    aget v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->b()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/4 v6, 0x3

    aget v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->c()I

    move-result v8

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/4 v6, 0x4

    aget v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->c()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/4 v6, 0x5

    aget v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->d()I

    move-result v8

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/4 v6, 0x6

    aget v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->d()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/4 v6, 0x7

    aget v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->e()I

    move-result v8

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/16 v6, 0x8

    aget v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->e()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/16 v6, 0x9

    aget v7, v3, v6

    iget v8, p0, Lde/innosystec/unrar/unpack/d;->X:I

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    const/16 v6, 0xa

    aget v7, v3, v6

    iget v8, p0, Lde/innosystec/unrar/unpack/d;->X:I

    add-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v7

    aput v1, v3, v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->l()I

    move-result v1

    sub-int v1, v5, v1

    int-to-byte v1, v1

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/decode/a;->l(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->m()I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/unpack/d;->X:I

    invoke-virtual {v4, v5}, Lde/innosystec/unrar/unpack/decode/a;->k(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v3

    aput v2, v3, v2

    move v3, v1

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v6

    array-length v6, v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v6

    aget v6, v6, v0

    if-ge v6, v3, :cond_0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v1

    aget v3, v1, v0

    move v1, v0

    :cond_0
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->f()[I

    move-result-object v6

    aput v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    int-to-byte v0, v5

    return v0

    :pswitch_0
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->g()I

    move-result v0

    if-lt v0, v9, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->f(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->g()I

    move-result v0

    if-ge v0, v10, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->f(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->h()I

    move-result v0

    if-lt v0, v9, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->g(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->h()I

    move-result v0

    if-ge v0, v10, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->g(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->i()I

    move-result v0

    if-lt v0, v9, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->h(I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->i()I

    move-result v0

    if-ge v0, v10, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->h(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->j()I

    move-result v0

    if-lt v0, v9, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->j()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->i(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->j()I

    move-result v0

    if-ge v0, v10, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->i(I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->k()I

    move-result v0

    if-lt v0, v9, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->j(I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->k()I

    move-result v0

    if-ge v0, v10, :cond_2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/decode/a;->k()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/decode/a;->j(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected b(II)V
    .locals 7

    const v6, 0x3fffff

    const v4, 0x3ffed4

    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->j:[I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/innosystec/unrar/unpack/d;->m:I

    and-int/lit8 v1, v1, 0x3

    aput p2, v0, v1

    iput p2, p0, Lde/innosystec/unrar/unpack/d;->M:I

    iput p1, p0, Lde/innosystec/unrar/unpack/d;->N:I

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->k:I

    sub-int/2addr v0, p2

    if-ge v0, v4, :cond_0

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->k:I

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/d;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/d;->k:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    aput-byte v0, v1, v2

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/d;->k:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->k:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    add-int/lit8 v0, v4, 0x1

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    :goto_0
    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/d;->k:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/d;->k:I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    aput-byte v0, v2, v3

    move v0, v1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/d;->k:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    add-int/lit8 v1, v0, 0x1

    and-int/2addr v0, v6

    aget-byte v0, v5, v0

    aput-byte v0, v3, v4

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->k:I

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v6

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->k:I

    move v0, v1

    move p1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected d(Z)V
    .locals 12

    const/16 v11, 0x2000

    const/16 v10, 0x10e

    const/16 v7, 0x10d

    const-wide/16 v8, 0x1

    const/16 v6, 0x100

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/d;->c:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->l:I

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->k:I

    :cond_0
    :goto_0
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->k:I

    const v1, 0x3fffff

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->k:I

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->ak:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->g:I

    add-int/lit8 v1, v1, -0x1e

    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->c()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->k()V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->i()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/d;->a(Z)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    sub-long/2addr v0, v8

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    goto :goto_0

    :cond_5
    iget v0, p0, Lde/innosystec/unrar/unpack/d;->l:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->k:I

    sub-int/2addr v0, v1

    const v1, 0x3fffff

    and-int/2addr v0, v1

    if-ge v0, v10, :cond_6

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->l:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->k:I

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->i()V

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/d;->c:Z

    if-nez v0, :cond_2

    :cond_6
    iget v0, p0, Lde/innosystec/unrar/unpack/d;->U:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->S:[Lde/innosystec/unrar/unpack/decode/g;

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->W:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/d;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/d;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/d;->k:I

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/d;->b(I)B

    move-result v0

    aput-byte v0, v1, v2

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->W:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->V:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->W:I

    :cond_8
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    sub-long/2addr v0, v8

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->Z:Lde/innosystec/unrar/unpack/decode/e;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/d;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    if-ge v0, v6, :cond_a

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->i:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/d;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/d;->k:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    sub-long/2addr v0, v8

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/d;->h:J

    goto/16 :goto_0

    :cond_a
    if-le v0, v7, :cond_e

    sget-object v1, Lde/innosystec/unrar/unpack/d;->ae:[I

    add-int/lit16 v2, v0, -0x10e

    aget v0, v1, v2

    add-int/lit8 v0, v0, 0x3

    sget-object v1, Lde/innosystec/unrar/unpack/d;->af:[B

    aget-byte v1, v1, v2

    if-lez v1, :cond_b

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v2

    rsub-int/lit8 v3, v1, 0x10

    ushr-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/d;->c(I)V

    :cond_b
    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->aa:Lde/innosystec/unrar/unpack/decode/d;

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/d;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v2

    sget-object v1, Lde/innosystec/unrar/unpack/d;->ag:[I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    sget-object v3, Lde/innosystec/unrar/unpack/d;->ah:[I

    aget v2, v3, v2

    if-lez v2, :cond_c

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v3

    rsub-int/lit8 v4, v2, 0x10

    ushr-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/d;->c(I)V

    :cond_c
    if-lt v1, v11, :cond_d

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v1

    const-wide/32 v4, 0x40000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    invoke-virtual {p0, v0, v1}, Lde/innosystec/unrar/unpack/d;->b(II)V

    goto/16 :goto_0

    :cond_e
    if-ne v0, v7, :cond_f

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_f
    if-ne v0, v6, :cond_10

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->N:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->M:I

    invoke-virtual {p0, v0, v1}, Lde/innosystec/unrar/unpack/d;->b(II)V

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x105

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->j:[I

    iget v2, p0, Lde/innosystec/unrar/unpack/d;->m:I

    add-int/lit16 v0, v0, -0x100

    sub-int v0, v2, v0

    and-int/lit8 v0, v0, 0x3

    aget v1, v1, v0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->ac:Lde/innosystec/unrar/unpack/decode/h;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/d;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v2

    sget-object v0, Lde/innosystec/unrar/unpack/d;->ae:[I

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x2

    sget-object v3, Lde/innosystec/unrar/unpack/d;->af:[B

    aget-byte v2, v3, v2

    if-lez v2, :cond_11

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v3

    rsub-int/lit8 v4, v2, 0x10

    ushr-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/d;->c(I)V

    :cond_11
    const/16 v2, 0x101

    if-lt v1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    if-lt v1, v11, :cond_12

    add-int/lit8 v0, v0, 0x1

    const/high16 v2, 0x40000

    if-lt v1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    invoke-virtual {p0, v0, v1}, Lde/innosystec/unrar/unpack/d;->b(II)V

    goto/16 :goto_0

    :cond_13
    if-ge v0, v10, :cond_0

    sget-object v1, Lde/innosystec/unrar/unpack/d;->ai:[I

    add-int/lit16 v2, v0, -0x105

    aget v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lde/innosystec/unrar/unpack/d;->aj:[I

    aget v1, v1, v2

    if-lez v1, :cond_14

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v2

    rsub-int/lit8 v3, v1, 0x10

    ushr-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/d;->c(I)V

    :cond_14
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lde/innosystec/unrar/unpack/d;->b(II)V

    goto/16 :goto_0
.end method

.method protected e(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput v2, p0, Lde/innosystec/unrar/unpack/d;->W:I

    iput v2, p0, Lde/innosystec/unrar/unpack/d;->X:I

    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->V:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->Y:[Lde/innosystec/unrar/unpack/decode/a;

    new-instance v1, Lde/innosystec/unrar/unpack/decode/a;

    invoke-direct {v1}, Lde/innosystec/unrar/unpack/decode/a;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->T:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method protected j()Z
    .locals 10

    const/16 v9, 0x10

    const/4 v3, 0x1

    const/16 v8, 0x13

    const/4 v7, 0x2

    const/4 v2, 0x0

    new-array v4, v8, [B

    const/16 v0, 0x404

    new-array v6, v0, [B

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->ak:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->g:I

    add-int/lit8 v1, v1, -0x19

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    iput v1, p0, Lde/innosystec/unrar/unpack/d;->U:I

    and-int/lit16 v1, v0, 0x4000

    if-nez v1, :cond_2

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->T:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    :cond_2
    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/d;->c(I)V

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->U:I

    if-eqz v1, :cond_4

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/d;->V:I

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->W:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->V:I

    if-lt v0, v1, :cond_3

    iput v2, p0, Lde/innosystec/unrar/unpack/d;->W:I

    :cond_3
    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/d;->c(I)V

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->V:I

    mul-int/lit16 v0, v0, 0x101

    :goto_1
    move v1, v2

    :goto_2
    if-ge v1, v8, :cond_5

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v5

    ushr-int/lit8 v5, v5, 0xc

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lde/innosystec/unrar/unpack/d;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0x176

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->ad:Lde/innosystec/unrar/unpack/decode/b;

    invoke-virtual {p0, v4, v2, v1, v8}, Lde/innosystec/unrar/unpack/d;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    move v1, v2

    :cond_6
    :goto_3
    if-ge v1, v0, :cond_b

    iget v4, p0, Lde/innosystec/unrar/unpack/d;->ak:I

    iget v5, p0, Lde/innosystec/unrar/unpack/d;->g:I

    add-int/lit8 v5, v5, -0x5

    if-le v4, v5, :cond_7

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_7
    iget-object v4, p0, Lde/innosystec/unrar/unpack/d;->ad:Lde/innosystec/unrar/unpack/decode/b;

    invoke-virtual {p0, v4}, Lde/innosystec/unrar/unpack/d;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v4

    if-ge v4, v9, :cond_8

    iget-object v5, p0, Lde/innosystec/unrar/unpack/d;->T:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-ne v4, v9, :cond_9

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v4

    ushr-int/lit8 v4, v4, 0xe

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/d;->c(I)V

    :goto_4
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_6

    if-ge v1, v0, :cond_6

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v6, v4

    aput-byte v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_4

    :cond_9
    const/16 v5, 0x11

    if-ne v4, v5, :cond_a

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v4

    ushr-int/lit8 v4, v4, 0xd

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lde/innosystec/unrar/unpack/d;->c(I)V

    :goto_5
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_6

    if-ge v1, v0, :cond_6

    add-int/lit8 v4, v1, 0x1

    aput-byte v2, v6, v1

    move v1, v4

    move v4, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->m()I

    move-result v4

    ushr-int/lit8 v4, v4, 0x9

    add-int/lit8 v4, v4, 0xb

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lde/innosystec/unrar/unpack/d;->c(I)V

    goto :goto_5

    :cond_b
    iget v0, p0, Lde/innosystec/unrar/unpack/d;->ak:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->g:I

    if-le v0, v1, :cond_c

    move v2, v3

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lde/innosystec/unrar/unpack/d;->U:I

    if-eqz v0, :cond_d

    move v0, v2

    :goto_6
    iget v1, p0, Lde/innosystec/unrar/unpack/d;->V:I

    if-ge v0, v1, :cond_e

    mul-int/lit16 v1, v0, 0x101

    iget-object v4, p0, Lde/innosystec/unrar/unpack/d;->S:[Lde/innosystec/unrar/unpack/decode/g;

    aget-object v4, v4, v0

    const/16 v5, 0x101

    invoke-virtual {p0, v6, v1, v4, v5}, Lde/innosystec/unrar/unpack/d;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->Z:Lde/innosystec/unrar/unpack/decode/e;

    const/16 v1, 0x12a

    invoke-virtual {p0, v6, v2, v0, v1}, Lde/innosystec/unrar/unpack/d;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x12a

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->aa:Lde/innosystec/unrar/unpack/decode/d;

    const/16 v4, 0x30

    invoke-virtual {p0, v6, v0, v1, v4}, Lde/innosystec/unrar/unpack/d;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x15a

    iget-object v1, p0, Lde/innosystec/unrar/unpack/d;->ac:Lde/innosystec/unrar/unpack/decode/h;

    const/16 v4, 0x1c

    invoke-virtual {p0, v6, v0, v1, v4}, Lde/innosystec/unrar/unpack/d;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    :cond_e
    :goto_7
    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->T:[B

    array-length v0, v0

    if-ge v2, v0, :cond_f

    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->T:[B

    aget-byte v1, v6, v2

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    move v2, v3

    goto/16 :goto_0
.end method

.method protected k()V
    .locals 2

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->g:I

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->ak:I

    add-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p0, Lde/innosystec/unrar/unpack/d;->U:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->S:[Lde/innosystec/unrar/unpack/decode/g;

    iget v1, p0, Lde/innosystec/unrar/unpack/d;->W:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/d;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->j()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/unpack/d;->Z:Lde/innosystec/unrar/unpack/decode/e;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/d;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/d;->j()Z

    goto :goto_0
.end method
