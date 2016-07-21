.class public Lde/innosystec/unrar/unpack/vm/b;
.super Lde/innosystec/unrar/unpack/vm/a;


# instance fields
.field private a:[B

.field private b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/vm/a;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const v0, 0x17d7840

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    return-void
.end method

.method private a(III)I
    .locals 5

    div-int/lit8 v0, p2, 0x8

    and-int/lit8 v1, p2, 0x7

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v4, p1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/2addr v3, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    ushr-int/2addr v0, v1

    const/4 v1, -0x1

    rsub-int/lit8 v2, p3, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public static a(Lde/innosystec/unrar/unpack/vm/a;)I
    .locals 4

    const/4 v3, 0x2

    const/16 v2, 0x10

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    const v1, 0xc000

    and-int/2addr v1, v0

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    :goto_0
    return v0

    :sswitch_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :sswitch_1
    and-int/lit16 v1, v0, 0x3c00

    if-nez v1, :cond_0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, -0x100

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/f;)I
    .locals 2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->c()Lde/innosystec/unrar/unpack/vm/VMOpType;

    move-result-object v0

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->d()I

    move-result v0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->a()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x3ffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-static {v1, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->d()I

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-static {v1, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    goto :goto_0
.end method

.method private a(Z[BI)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-byte v0, p2, p3

    :goto_0
    return v0

    :cond_0
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p2, p3}, Lde/innosystec/unrar/b/b;->a([BI)I

    move-result v0

    goto :goto_0
.end method

.method private a([BI)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x7

    new-array v1, v1, [Lde/innosystec/unrar/unpack/vm/h;

    new-instance v2, Lde/innosystec/unrar/unpack/vm/h;

    const/16 v3, 0x35

    const v4, -0x52a89779

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v2, v3, v4, v5}, Lde/innosystec/unrar/unpack/vm/h;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lde/innosystec/unrar/unpack/vm/h;

    const/16 v4, 0x39

    const v5, 0x3cd7e57e

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/h;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lde/innosystec/unrar/unpack/vm/h;

    const/16 v4, 0x78

    const v5, 0x3769893f

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/h;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lde/innosystec/unrar/unpack/vm/h;

    const/16 v4, 0x1d

    const v5, 0xe06077d

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/h;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lde/innosystec/unrar/unpack/vm/h;

    const/16 v4, 0x95

    const v5, 0x1c2c5dc8

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/h;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lde/innosystec/unrar/unpack/vm/h;

    const/16 v4, 0xd8

    const v5, -0x437a18ff

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/h;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lde/innosystec/unrar/unpack/vm/h;

    const/16 v4, 0x28

    const v5, 0x46b9c560    # 23778.688f

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/h;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, -0x1

    array-length v3, p1

    invoke-static {v2, p1, v0, v3}, Lde/innosystec/unrar/a/a;->a(I[BII)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/h;->a()I

    move-result v3

    if-ne v3, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/h;->b()I

    move-result v3

    array-length v4, p1

    if-ne v3, v4, :cond_0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/h;->c()Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    goto :goto_1
.end method

.method private a(IIII)V
    .locals 7

    div-int/lit8 v3, p3, 0x8

    and-int/lit8 v0, p3, 0x7

    const/4 v1, -0x1

    rsub-int/lit8 v2, p4, 0x20

    ushr-int/2addr v1, v2

    shl-int/2addr v1, v0

    xor-int/lit8 v1, v1, -0x1

    shl-int v2, p2, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v5, p1, v3

    add-int/2addr v5, v0

    aget-byte v6, v4, v5

    and-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v5, p1, v3

    add-int/2addr v5, v0

    aget-byte v6, v4, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    ushr-int/lit8 v1, v1, 0x8

    const/high16 v4, -0x1000000

    or-int/2addr v1, v4

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/VMStandardFilters;)V
    .locals 27

    sget-object v2, Lde/innosystec/unrar/unpack/vm/c;->b:[I

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-long v6, v2

    const v2, 0x3c000

    if-ge v4, v2, :cond_0

    const/high16 v5, 0x1000000

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    const/16 v2, -0x17

    :goto_1
    int-to-byte v8, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    add-int/lit8 v2, v4, -0x4

    if-ge v3, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v9, v3

    const/16 v9, -0x18

    if-eq v3, v9, :cond_1

    if-ne v3, v8, :cond_3

    :cond_1
    int-to-long v10, v2

    add-long/2addr v10, v6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v3

    int-to-long v12, v3

    const-wide/32 v14, -0x80000000

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-eqz v3, :cond_5

    add-long/2addr v10, v12

    const-wide/32 v14, -0x80000000

    and-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-nez v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    long-to-int v10, v12

    add-int/2addr v10, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v2, v10}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x4

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    const/16 v2, -0x18

    goto :goto_1

    :cond_5
    int-to-long v14, v5

    sub-long v14, v12, v14

    const-wide/32 v16, -0x80000000

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    sub-long v10, v12, v10

    long-to-int v10, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v2, v10}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    const v2, 0x3c000

    if-ge v6, v2, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x10

    new-array v7, v3, [B

    fill-array-data v7, :array_0

    const/4 v3, 0x4

    ushr-long/2addr v4, v3

    move v3, v2

    :goto_4
    add-int/lit8 v2, v6, -0x15

    if-ge v3, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, -0x10

    if-ltz v2, :cond_7

    aget-byte v8, v7, v2

    if-eqz v8, :cond_7

    const/4 v2, 0x0

    :goto_5
    const/4 v9, 0x2

    if-gt v2, v9, :cond_7

    const/4 v9, 0x1

    shl-int/2addr v9, v2

    and-int/2addr v9, v8

    if-eqz v9, :cond_6

    mul-int/lit8 v9, v2, 0x29

    add-int/lit8 v9, v9, 0x5

    add-int/lit8 v10, v9, 0x25

    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lde/innosystec/unrar/unpack/vm/b;->a(III)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v9, 0xd

    const/16 v11, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lde/innosystec/unrar/unpack/vm/b;->a(III)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v10, v4

    long-to-int v10, v10

    const v11, 0xfffff

    and-int/2addr v10, v11

    add-int/lit8 v9, v9, 0xd

    const/16 v11, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v9, v11}, Lde/innosystec/unrar/unpack/vm/b;->a(IIII)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v3, 0x10

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    move v3, v2

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    and-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v8, v2, -0x1

    const/4 v4, 0x0

    mul-int/lit8 v2, v7, 0x2

    and-int/lit8 v9, v2, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v5, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v7}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const v2, 0x1e000

    if-ge v7, v2, :cond_0

    const/4 v2, 0x0

    move v6, v2

    :goto_6
    if-ge v6, v8, :cond_0

    const/4 v3, 0x0

    add-int v2, v7, v6

    :goto_7
    if-ge v2, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v11, v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v10, v2

    add-int/2addr v2, v8

    move v4, v5

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v12, v2, -0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    const/4 v13, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v6, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v11}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const v2, 0x1e000

    if-ge v11, v2, :cond_0

    if-ltz v4, :cond_0

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_d

    const-wide/16 v2, 0x0

    move v7, v5

    move v5, v6

    :goto_9
    if-ge v5, v11, :cond_c

    sub-int v8, v5, v12

    const/4 v9, 0x3

    if-lt v8, v9, :cond_9

    add-int/2addr v8, v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    aget-byte v9, v9, v8

    and-int/lit16 v9, v9, 0xff

    move-object/from16 v0, p0

    iget-object v10, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, v10, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v14, v9

    add-long/2addr v14, v2

    int-to-long v0, v8

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    sub-long v16, v14, v2

    move-wide/from16 v0, v16

    long-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v16, v14, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v0, v16

    if-gt v10, v0, :cond_a

    if-gt v10, v14, :cond_a

    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v8, v7

    int-to-long v8, v7

    sub-long/2addr v2, v8

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    const-wide/16 v8, 0xff

    and-long/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v3, v11, v5

    const-wide/16 v14, 0xff

    and-long/2addr v14, v8

    long-to-int v7, v14

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int v2, v5, v13

    move v5, v2

    move v7, v10

    move-wide v2, v8

    goto :goto_9

    :cond_a
    move/from16 v0, v16

    if-gt v0, v14, :cond_b

    int-to-long v2, v9

    goto :goto_a

    :cond_b
    int-to-long v2, v8

    goto :goto_a

    :cond_c
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_8

    :cond_d
    add-int/lit8 v3, v11, -0x2

    move v2, v4

    :goto_b
    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v5, v11, v2

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v6, v11, v2

    aget-byte v7, v5, v6

    add-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v6, v11, v2

    add-int/lit8 v6, v6, 0x2

    aget-byte v7, v5, v6

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v2, v2, 0x3

    goto :goto_b

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v20, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x0

    aget v21, v2, v3

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3c020

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v4, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const v2, 0x1e000

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    const/4 v12, 0x0

    :goto_c
    move/from16 v0, v21

    if-ge v12, v0, :cond_0

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x7

    new-array v0, v2, [J

    move-object/from16 v22, v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-wide/from16 v16, v10

    move v11, v12

    move v10, v2

    move v2, v4

    move v4, v5

    move v5, v13

    :goto_d
    move/from16 v0, v20

    if-ge v11, v0, :cond_11

    long-to-int v13, v6

    sub-int/2addr v13, v4

    long-to-int v14, v6

    const-wide/16 v6, 0x8

    mul-long v6, v6, v16

    mul-int v4, v9, v14

    int-to-long v0, v4

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    mul-int v4, v8, v13

    int-to-long v0, v4

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    mul-int v4, v3, v2

    int-to-long v0, v4

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    const/4 v4, 0x3

    ushr-long/2addr v6, v4

    const-wide/16 v18, 0xff

    and-long v6, v6, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v15, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    sub-long/2addr v6, v4

    const-wide/16 v18, -0x1

    and-long v18, v18, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v7, v20, v11

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v6, v7

    sub-long v6, v18, v16

    long-to-int v6, v6

    int-to-byte v6, v6

    int-to-long v0, v6

    move-wide/from16 v16, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    shl-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    aget-wide v6, v22, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v22, v5

    const/4 v5, 0x1

    aget-wide v6, v22, v5

    sub-int v23, v4, v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v22, v5

    const/4 v5, 0x2

    aget-wide v6, v22, v5

    add-int v23, v4, v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v22, v5

    const/4 v5, 0x3

    aget-wide v6, v22, v5

    sub-int v23, v4, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v22, v5

    const/4 v5, 0x4

    aget-wide v6, v22, v5

    add-int v23, v4, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v22, v5

    const/4 v5, 0x5

    aget-wide v6, v22, v5

    sub-int v23, v4, v2

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v22, v5

    const/4 v5, 0x6

    aget-wide v6, v22, v5

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v22, v5

    and-int/lit8 v2, v10, 0x1f

    if-nez v2, :cond_10

    const/4 v2, 0x0

    aget-wide v6, v22, v2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v2

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v2, v0, :cond_f

    aget-wide v24, v22, v2

    cmp-long v23, v24, v6

    if-gez v23, :cond_e

    aget-wide v6, v22, v2

    int-to-long v4, v2

    :cond_e
    const-wide/16 v24, 0x0

    aput-wide v24, v22, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_f
    long-to-int v2, v4

    packed-switch v2, :pswitch_data_1

    :cond_10
    move v2, v3

    move v4, v9

    move v3, v8

    :goto_f
    add-int v6, v11, v21

    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v11, v6

    move v8, v3

    move v9, v4

    move v3, v2

    move v4, v14

    move-wide/from16 v6, v16

    move v5, v15

    move-wide/from16 v16, v18

    move v2, v13

    goto/16 :goto_d

    :pswitch_5
    const/16 v2, -0x10

    if-lt v9, v2, :cond_10

    add-int/lit8 v2, v9, -0x1

    move v4, v2

    move v2, v3

    move v3, v8

    goto :goto_f

    :pswitch_6
    const/16 v2, 0x10

    if-ge v9, v2, :cond_10

    add-int/lit8 v2, v9, 0x1

    move v4, v2

    move v2, v3

    move v3, v8

    goto :goto_f

    :pswitch_7
    const/16 v2, -0x10

    if-lt v8, v2, :cond_10

    add-int/lit8 v2, v8, -0x1

    move v4, v9

    move/from16 v26, v2

    move v2, v3

    move/from16 v3, v26

    goto :goto_f

    :pswitch_8
    const/16 v2, 0x10

    if-ge v8, v2, :cond_10

    add-int/lit8 v2, v8, 0x1

    move v4, v9

    move/from16 v26, v2

    move v2, v3

    move/from16 v3, v26

    goto :goto_f

    :pswitch_9
    const/16 v2, -0x10

    if-lt v3, v2, :cond_10

    add-int/lit8 v2, v3, -0x1

    move v3, v8

    move v4, v9

    goto :goto_f

    :pswitch_a
    const/16 v2, 0x10

    if-ge v3, v2, :cond_10

    add-int/lit8 v2, v3, 0x1

    move v3, v8

    move v4, v9

    goto :goto_f

    :cond_11
    add-int/lit8 v12, v12, 0x1

    move v13, v5

    goto/16 :goto_c

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v6, v2, v3

    const/4 v3, 0x0

    const v2, 0x1e000

    if-ge v6, v2, :cond_0

    move v5, v6

    :goto_10
    if-ge v3, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_12

    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    :cond_12
    :goto_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v4, v5, 0x1

    aput-byte v2, v7, v5

    move v5, v4

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3c01c

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_0

    :cond_14
    move v3, v4

    goto :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 1
        0x4t
        0x4t
        0x6t
        0x6t
        0x0t
        0x0t
        0x7t
        0x7t
        0x4t
        0x4t
        0x0t
        0x0t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/f;Z)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->c(I)V

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_0
    return-void

    :cond_0
    const v1, 0xc000

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    if-eqz p2, :cond_1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_3

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->c(I)V

    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/f;->a(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_0

    :cond_3
    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_4

    shr-int/lit8 v0, v0, 0x9

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->c(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_1
    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->a(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_1
.end method

.method private a(Z[BII)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-byte v0, p4

    aput-byte v0, p2, p3

    :goto_0
    return-void

    :cond_0
    aget-byte v0, p2, p3

    and-int/lit8 v0, v0, 0x0

    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3, p4}, Lde/innosystec/unrar/b/b;->c([BII)V

    goto :goto_0

    :cond_2
    invoke-static {p2, p3, p4}, Lde/innosystec/unrar/b/b;->a([BII)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lde/innosystec/unrar/unpack/vm/b;->e:I

    if-lt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput p1, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    goto :goto_0
.end method

.method private a(Ljava/util/List;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/e;",
            ">;I)Z"
        }
    .end annotation

    const v0, 0x17d7840

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    iput p2, p0, Lde/innosystec/unrar/unpack/vm/b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    :goto_0
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/e;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/f;)I

    move-result v3

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->c()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/f;)I

    move-result v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/c;->a:[I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v2, v4, v3, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    sub-int v0, v2, v0

    if-nez v0, :cond_1

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto :goto_1

    :cond_1
    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto :goto_1

    :cond_2
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_3

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_1

    :cond_3
    if-le v1, v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    goto :goto_3

    :pswitch_5
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_5

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_1

    :cond_5
    if-le v1, v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    const-wide/16 v8, -0x1

    and-long/2addr v6, v8

    long-to-int v2, v6

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_7

    const/4 v1, 0x1

    :goto_5
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    move v1, v2

    :goto_6
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_7
    if-nez v2, :cond_8

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_7
    or-int/lit8 v1, v1, 0x0

    goto :goto_5

    :cond_8
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_9

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    if-ge v2, v4, :cond_b

    const/4 v1, 0x1

    :goto_8
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    move v1, v2

    goto :goto_6

    :cond_b
    if-nez v2, :cond_c

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_9
    or-int/lit8 v1, v1, 0x0

    goto :goto_8

    :cond_c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_9

    :pswitch_7
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_8
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v8

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    if-nez v4, :cond_d

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_a
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_d
    if-le v4, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_a

    :cond_e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    goto :goto_a

    :pswitch_a
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_b
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_c
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_d
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x0

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    and-int/lit16 v1, v1, 0xff

    :cond_f
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    if-nez v1, :cond_10

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    :goto_b
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    goto :goto_b

    :pswitch_f
    const/4 v0, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_10
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, -0x2

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    if-nez v1, :cond_11

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    :goto_c
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_1

    :cond_11
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    goto :goto_c

    :pswitch_12
    const/4 v0, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x2

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_13
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x2

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_14
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    xor-int/2addr v2, v1

    if-nez v2, :cond_12

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_d
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_12
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_d

    :pswitch_16
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    and-int/2addr v2, v1

    if-nez v2, :cond_13

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_e
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_13
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_e

    :pswitch_17
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    or-int/2addr v2, v1

    if-nez v2, :cond_14

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_f
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_14
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_f

    :pswitch_18
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_15

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    :goto_10
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_1

    :cond_15
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    goto :goto_10

    :pswitch_19
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_1a
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_1b
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_1c
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_1d
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_1e
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x4

    aput v2, v0, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v4, 0x7

    aget v2, v2, v4

    const v4, 0x3ffff

    and-int/2addr v2, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_20
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const v6, 0x3ffff

    and-int/2addr v5, v6

    invoke-direct {p0, v2, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    goto/16 :goto_1

    :pswitch_21
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x4

    aput v2, v0, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v4, 0x7

    aget v2, v2, v4

    const v4, 0x3ffff

    and-int/2addr v2, v4

    iget v4, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v0, v1, v2, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v5

    shl-int v6, v4, v5

    if-nez v6, :cond_16

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    move v2, v1

    :goto_11
    add-int/lit8 v1, v5, -0x1

    shl-int v1, v4, v1

    const/high16 v4, -0x80000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_17

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_12
    or-int/2addr v1, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_16
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v6

    move v2, v1

    goto :goto_11

    :cond_17
    const/4 v1, 0x0

    goto :goto_12

    :pswitch_24
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    ushr-int v5, v2, v4

    if-nez v5, :cond_18

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_13
    add-int/lit8 v4, v4, -0x1

    ushr-int/2addr v2, v4

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_18
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v5

    goto :goto_13

    :pswitch_25
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    shr-int v5, v2, v4

    if-nez v5, :cond_19

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_14
    add-int/lit8 v4, v4, -0x1

    shr-int/2addr v2, v4

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_19
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v5

    goto :goto_14

    :pswitch_26
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    neg-int v2, v1

    if-nez v2, :cond_1a

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_15
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_1a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v4, v2

    or-int/2addr v1, v4

    goto :goto_15

    :pswitch_27
    const/4 v0, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_28
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_29
    const/4 v1, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v2, 0x7

    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x4

    :goto_16
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1b

    const/4 v2, 0x0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3ffff

    and-int/2addr v4, v0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    aget v5, v5, v1

    invoke-direct {p0, v2, v3, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x4

    goto :goto_16

    :cond_1b
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x20

    aput v2, v0, v1

    goto/16 :goto_1

    :pswitch_2a
    const/4 v1, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v2, 0x7

    aget v0, v0, v2

    :goto_17
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    rsub-int/lit8 v3, v1, 0x7

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v6, 0x3ffff

    and-int/2addr v6, v0

    invoke-direct {p0, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_17

    :pswitch_2b
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x4

    aput v2, v0, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    iget v3, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-direct {p0, v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_2c
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    goto/16 :goto_1

    :pswitch_2d
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_2e
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_2f
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v6

    iget-object v7, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v6, v7, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v6

    invoke-direct {p0, v4, v5, v3, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v3, v1, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_30
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v8, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v8, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    mul-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_31
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    div-int v1, v2, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :pswitch_32
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    iget v2, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v5, v2

    int-to-long v6, v4

    const-wide/16 v8, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v10, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v10, v1

    add-long/2addr v8, v10

    and-long/2addr v6, v8

    const-wide/16 v8, -0x1

    int-to-long v10, v5

    add-long/2addr v8, v10

    and-long/2addr v6, v8

    const-wide/16 v8, -0x1

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    and-int/lit16 v1, v1, 0xff

    move v2, v1

    :goto_18
    if-lt v2, v4, :cond_1c

    if-ne v2, v4, :cond_1d

    if-eqz v5, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :goto_19
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_1d
    if-nez v2, :cond_1e

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_1a
    or-int/lit8 v1, v1, 0x0

    goto :goto_19

    :cond_1e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_1a

    :pswitch_33
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    iget v2, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v5, v2

    int-to-long v6, v4

    const-wide/16 v8, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v10, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v10, v1

    sub-long/2addr v8, v10

    and-long/2addr v6, v8

    const-wide/16 v8, -0x1

    int-to-long v10, v5

    sub-long/2addr v8, v10

    and-long/2addr v6, v8

    const-wide/16 v8, -0x1

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    and-int/lit16 v1, v1, 0xff

    move v2, v1

    :goto_1b
    if-gt v2, v4, :cond_1f

    if-ne v2, v4, :cond_20

    if-eqz v5, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :goto_1c
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_1

    :cond_20
    if-nez v2, :cond_21

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_1d
    or-int/lit8 v1, v1, 0x0

    goto :goto_1c

    :cond_21
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_1d

    :pswitch_34
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->b()I

    move-result v0

    invoke-static {v0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->findFilter(I)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    goto/16 :goto_1

    :cond_23
    move v2, v1

    goto :goto_1b

    :cond_24
    move v2, v1

    goto/16 :goto_18

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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch
.end method

.method private a([B)Z
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lde/innosystec/unrar/unpack/vm/g;)V
    .locals 7

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/e;

    sget-object v1, Lde/innosystec/unrar/unpack/vm/c;->a:[I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lde/innosystec/unrar/unpack/vm/d;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    sget-object v6, Lde/innosystec/unrar/unpack/vm/d;->a:[B

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/innosystec/unrar/unpack/vm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v1

    aget-byte v1, v6, v1

    and-int/lit8 v6, v1, 0x38

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    sget-object v1, Lde/innosystec/unrar/unpack/vm/c;->a:[I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_3
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_4
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_5
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_5

    :cond_3
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_3

    :sswitch_1
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_6
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_6

    :sswitch_2
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_7
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_7

    :sswitch_3
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_8
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_8

    :sswitch_4
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_9
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_9

    :cond_a
    return-void

    :cond_b
    move v1, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_2
        0x12 -> :sswitch_3
        0x27 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    if-nez v0, :cond_0

    const v0, 0x40004

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    :cond_0
    return-void
.end method

.method public a(I[BII)V
    .locals 5

    const/high16 v4, 0x40000

    if-ge p1, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    sub-int v1, v4, p1

    if-ge v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lde/innosystec/unrar/unpack/vm/g;)V
    .locals 13

    const-wide/16 v8, 0x0

    const/high16 v12, 0x40000

    const v11, 0x3ffff

    const v10, 0x3c000

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v3

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0x2000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    int-to-long v6, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v6, v10, v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v6, 0x2000

    sub-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    and-long/2addr v6, v2

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    move v2, v1

    :goto_2
    int-to-long v8, v2

    cmp-long v0, v8, v6

    if-gez v0, :cond_2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    long-to-int v0, v4

    add-int/2addr v0, v10

    add-int v8, v0, v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v2, 0x7

    aput v12, v0, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->a()Ljava/util/List;

    move-result-object v0

    :goto_3
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->c()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/e;

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v0, v2}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    :cond_3
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v2, 0x3c020

    invoke-direct {p0, v1, v0, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    and-int v2, v0, v11

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v3, 0x3c01c

    invoke-direct {p0, v1, v0, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    and-int/2addr v0, v11

    add-int v3, v2, v0

    if-lt v3, v12, :cond_4

    move v0, v1

    move v2, v1

    :cond_4
    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/g;->b(I)V

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/g;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v2, 0x3c030

    invoke-direct {p0, v1, v0, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    const/16 v2, 0x1fc0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v3, v0, 0x40

    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    :goto_4
    add-int/lit8 v2, v0, 0x40

    if-ge v1, v2, :cond_6

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v4, v10, v1

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    return-void
.end method

.method public a(Ljava/util/Vector;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a([BILde/innosystec/unrar/unpack/vm/g;)V
    .locals 10

    const v9, 0x8000

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->l()V

    invoke-static {v9, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->am:[B

    aget-byte v5, v4, v1

    aget-byte v6, p1, v1

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v8}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    invoke-virtual {p3, v0}, Lde/innosystec/unrar/unpack/vm/g;->a(I)V

    aget-byte v1, p1, v0

    if-ne v3, v1, :cond_d

    invoke-direct {p0, p1, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([BI)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v1

    sget-object v3, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    if-eq v1, v3, :cond_2

    new-instance v3, Lde/innosystec/unrar/unpack/vm/e;

    invoke-direct {v3}, Lde/innosystec/unrar/unpack/vm/e;-><init>()V

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_STANDARD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v4

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->getFilter()I

    move-result v1

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->c()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Lde/innosystec/unrar/unpack/vm/g;->a(I)V

    move p2, v0

    :cond_2
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v1

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    and-int/2addr v1, v9

    if-eqz v1, :cond_3

    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x0

    and-long/2addr v4, v6

    move v1, v0

    :goto_2
    iget v3, p0, Lde/innosystec/unrar/unpack/vm/b;->ak:I

    if-ge v3, p2, :cond_3

    int-to-long v6, v1

    cmp-long v3, v6, v4

    if-gez v3, :cond_3

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->h()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget v1, p0, Lde/innosystec/unrar/unpack/vm/b;->ak:I

    if-ge v1, p2, :cond_d

    new-instance v3, Lde/innosystec/unrar/unpack/vm/e;

    invoke-direct {v3}, Lde/innosystec/unrar/unpack/vm/e;-><init>()V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v1

    and-int v4, v1, v9

    if-nez v4, :cond_5

    shr-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->findVMCommand(I)Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v1

    invoke-virtual {v3, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_4
    sget-object v1, Lde/innosystec/unrar/unpack/vm/d;->a:[B

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v1

    shr-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v3, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Z)V

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_6
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->c()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    sget-object v1, Lde/innosystec/unrar/unpack/vm/d;->a:[B

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_4

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v4

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/f;Z)V

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->c()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->a()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/f;Z)V

    :cond_4
    :goto_7
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Lde/innosystec/unrar/unpack/vm/g;->a(I)V

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5
    shr-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x18

    invoke-static {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->findVMCommand(I)Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v1

    invoke-virtual {v3, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_4

    :cond_6
    move v1, v0

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/vm/e;->a(Z)V

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/f;->c()Lde/innosystec/unrar/unpack/vm/VMOpType;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    if-ne v1, v4, :cond_4

    sget-object v1, Lde/innosystec/unrar/unpack/vm/d;->a:[B

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/f;->b()I

    move-result v1

    const/16 v4, 0x100

    if-lt v1, v4, :cond_9

    add-int/lit16 v1, v1, -0x100

    :goto_8
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v4

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    goto :goto_7

    :cond_9
    const/16 v4, 0x88

    if-lt v1, v4, :cond_b

    add-int/lit16 v1, v1, -0x108

    :cond_a
    :goto_9
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->c()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_8

    :cond_b
    const/16 v4, 0x10

    if-lt v1, v4, :cond_c

    add-int/lit8 v1, v1, -0x8

    goto :goto_9

    :cond_c
    if-lt v1, v8, :cond_a

    add-int/lit8 v1, v1, -0x10

    goto :goto_9

    :cond_d
    new-instance v0, Lde/innosystec/unrar/unpack/vm/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/e;-><init>()V

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->b()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->c()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/vm/f;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/g;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lde/innosystec/unrar/unpack/vm/g;->a(I)V

    if-eqz p2, :cond_e

    invoke-direct {p0, p3}, Lde/innosystec/unrar/unpack/vm/b;->b(Lde/innosystec/unrar/unpack/vm/g;)V

    :cond_e
    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    return-object v0
.end method
