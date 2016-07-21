.class public Ljcifs/util/MD4;
.super Ljava/security/MessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->X:[I

    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-void
.end method

.method private constructor <init>(Ljcifs/util/MD4;)V
    .locals 2

    invoke-direct {p0}, Ljcifs/util/MD4;-><init>()V

    iget-object v0, p1, Ljcifs/util/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    iget-object v0, p1, Ljcifs/util/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    iget-wide v0, p1, Ljcifs/util/MD4;->count:J

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    return-void
.end method

.method private FF(IIIIII)I
    .locals 3

    and-int v0, p2, p3

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v1, p4

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private GG(IIIIII)I
    .locals 3

    or-int v0, p3, p4

    and-int/2addr v0, p2

    and-int v1, p3, p4

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private HH(IIIIII)I
    .locals 3

    xor-int v0, p2, p3

    xor-int/2addr v0, p4

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private transform([BI)V
    .locals 28

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/util/MD4;->X:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    add-int/lit8 p2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->context:[I

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->context:[I

    const/4 v4, 0x2

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->context:[I

    const/4 v5, 0x3

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x1

    aget v11, v1, v2

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v5

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x2

    aget v10, v1, v2

    const/16 v11, 0xb

    move-object/from16 v5, p0

    move v6, v4

    move v9, v3

    invoke-direct/range {v5 .. v11}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x3

    aget v9, v1, v2

    const/16 v10, 0x13

    move-object/from16 v4, p0

    move v5, v3

    invoke-direct/range {v4 .. v10}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x4

    aget v14, v1, v2

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move v10, v8

    move v12, v6

    move v13, v7

    invoke-direct/range {v9 .. v15}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x5

    aget v13, v1, v2

    const/4 v14, 0x7

    move-object/from16 v8, p0

    move v9, v7

    move v12, v6

    invoke-direct/range {v8 .. v14}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x6

    aget v12, v1, v2

    const/16 v13, 0xb

    move-object/from16 v7, p0

    move v8, v6

    invoke-direct/range {v7 .. v13}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x7

    aget v6, v1, v2

    const/16 v7, 0x13

    move-object/from16 v1, p0

    move v2, v11

    move v4, v9

    move v5, v10

    invoke-direct/range {v1 .. v7}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0x8

    aget v16, v1, v2

    const/16 v17, 0x3

    move-object/from16 v11, p0

    move v12, v10

    move v14, v3

    move v15, v9

    invoke-direct/range {v11 .. v17}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0x9

    aget v15, v1, v2

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v11, v9

    move v14, v3

    invoke-direct/range {v10 .. v16}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xa

    aget v14, v1, v2

    const/16 v15, 0xb

    move-object/from16 v9, p0

    move v10, v3

    invoke-direct/range {v9 .. v15}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xb

    aget v6, v1, v2

    const/16 v7, 0x13

    move-object/from16 v1, p0

    move v2, v13

    move v4, v11

    move v5, v12

    invoke-direct/range {v1 .. v7}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xc

    aget v9, v1, v2

    const/4 v10, 0x3

    move-object/from16 v4, p0

    move v5, v12

    move v7, v3

    move v8, v11

    invoke-direct/range {v4 .. v10}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xd

    aget v15, v1, v2

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v13, v6

    move v14, v3

    invoke-direct/range {v10 .. v16}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xe

    aget v7, v1, v2

    const/16 v8, 0xb

    move-object/from16 v2, p0

    move v5, v12

    invoke-direct/range {v2 .. v8}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xf

    aget v10, v1, v2

    const/16 v11, 0x13

    move-object/from16 v5, p0

    move v8, v4

    move v9, v12

    invoke-direct/range {v5 .. v11}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    const/16 v17, 0x3

    move-object/from16 v11, p0

    move v14, v7

    move v15, v4

    invoke-direct/range {v11 .. v17}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x4

    aget v8, v1, v2

    const/4 v9, 0x5

    move-object/from16 v3, p0

    move v6, v13

    invoke-direct/range {v3 .. v9}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0x8

    aget v11, v1, v2

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v9, v5

    move v10, v13

    invoke-direct/range {v6 .. v12}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xc

    aget v17, v1, v2

    const/16 v18, 0xd

    move-object/from16 v12, p0

    move v15, v8

    move/from16 v16, v5

    invoke-direct/range {v12 .. v18}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x1

    aget v9, v1, v2

    const/4 v10, 0x3

    move-object/from16 v4, p0

    move v7, v14

    invoke-direct/range {v4 .. v10}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x5

    aget v12, v1, v2

    const/4 v13, 0x5

    move-object/from16 v7, p0

    move v10, v6

    move v11, v14

    invoke-direct/range {v7 .. v13}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0x9

    aget v18, v1, v2

    const/16 v19, 0x9

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v6

    invoke-direct/range {v13 .. v19}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xd

    aget v10, v1, v2

    const/16 v11, 0xd

    move-object/from16 v5, p0

    move v8, v15

    invoke-direct/range {v5 .. v11}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x2

    aget v13, v1, v2

    const/4 v14, 0x3

    move-object/from16 v8, p0

    move v11, v7

    move v12, v15

    invoke-direct/range {v8 .. v14}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x6

    aget v19, v1, v2

    const/16 v20, 0x5

    move-object/from16 v14, p0

    move/from16 v17, v10

    move/from16 v18, v7

    invoke-direct/range {v14 .. v20}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xa

    aget v11, v1, v2

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move/from16 v9, v16

    invoke-direct/range {v6 .. v12}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xe

    aget v14, v1, v2

    const/16 v15, 0xd

    move-object/from16 v9, p0

    move v12, v8

    move/from16 v13, v16

    invoke-direct/range {v9 .. v15}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x3

    aget v20, v1, v2

    const/16 v21, 0x3

    move-object/from16 v15, p0

    move/from16 v18, v11

    move/from16 v19, v8

    invoke-direct/range {v15 .. v21}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x7

    aget v12, v1, v2

    const/4 v13, 0x5

    move-object/from16 v7, p0

    move/from16 v10, v17

    invoke-direct/range {v7 .. v13}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xb

    aget v15, v1, v2

    const/16 v16, 0x9

    move-object/from16 v10, p0

    move v13, v9

    move/from16 v14, v17

    invoke-direct/range {v10 .. v16}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xf

    aget v21, v1, v2

    const/16 v22, 0xd

    move-object/from16 v16, p0

    move/from16 v19, v12

    move/from16 v20, v9

    invoke-direct/range {v16 .. v22}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x0

    aget v13, v1, v2

    const/4 v14, 0x3

    move-object/from16 v8, p0

    move/from16 v11, v18

    invoke-direct/range {v8 .. v14}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0x8

    aget v16, v1, v2

    const/16 v17, 0x9

    move-object/from16 v11, p0

    move v14, v10

    move/from16 v15, v18

    invoke-direct/range {v11 .. v17}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x4

    aget v22, v1, v2

    const/16 v23, 0xb

    move-object/from16 v17, p0

    move/from16 v20, v13

    move/from16 v21, v10

    invoke-direct/range {v17 .. v23}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xc

    aget v14, v1, v2

    const/16 v15, 0xf

    move-object/from16 v9, p0

    move/from16 v12, v19

    invoke-direct/range {v9 .. v15}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x2

    aget v17, v1, v2

    const/16 v18, 0x3

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v19

    invoke-direct/range {v12 .. v18}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xa

    aget v23, v1, v2

    const/16 v24, 0x9

    move-object/from16 v18, p0

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-direct/range {v18 .. v24}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x6

    aget v15, v1, v2

    const/16 v16, 0xb

    move-object/from16 v10, p0

    move/from16 v13, v20

    invoke-direct/range {v10 .. v16}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xe

    aget v18, v1, v2

    const/16 v19, 0xf

    move-object/from16 v13, p0

    move/from16 v16, v12

    move/from16 v17, v20

    invoke-direct/range {v13 .. v19}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x1

    aget v24, v1, v2

    const/16 v25, 0x3

    move-object/from16 v19, p0

    move/from16 v22, v15

    move/from16 v23, v12

    invoke-direct/range {v19 .. v25}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0x9

    aget v16, v1, v2

    const/16 v17, 0x9

    move-object/from16 v11, p0

    move/from16 v14, v21

    invoke-direct/range {v11 .. v17}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x5

    aget v19, v1, v2

    const/16 v20, 0xb

    move-object/from16 v14, p0

    move/from16 v17, v13

    move/from16 v18, v21

    invoke-direct/range {v14 .. v20}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xd

    aget v25, v1, v2

    const/16 v26, 0xf

    move-object/from16 v20, p0

    move/from16 v23, v16

    move/from16 v24, v13

    invoke-direct/range {v20 .. v26}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x3

    aget v17, v1, v2

    const/16 v18, 0x3

    move-object/from16 v12, p0

    move/from16 v15, v22

    invoke-direct/range {v12 .. v18}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xb

    aget v20, v1, v2

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v18, v14

    move/from16 v19, v22

    invoke-direct/range {v15 .. v21}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/4 v2, 0x7

    aget v26, v1, v2

    const/16 v27, 0xb

    move-object/from16 v21, p0

    move/from16 v24, v17

    move/from16 v25, v14

    invoke-direct/range {v21 .. v27}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->X:[I

    const/16 v2, 0xf

    aget v18, v1, v2

    const/16 v19, 0xf

    move-object/from16 v13, p0

    move/from16 v16, v23

    invoke-direct/range {v13 .. v19}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/util/MD4;->context:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int v4, v4, v17

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/util/MD4;->context:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/2addr v1, v4

    aput v1, v2, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x2

    aget v3, v1, v2

    add-int/2addr v3, v15

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x3

    aget v3, v1, v2

    add-int v3, v3, v23

    aput v3, v1, v2

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0, p0}, Ljcifs/util/MD4;-><init>(Ljcifs/util/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .locals 11

    const/4 v10, 0x4

    const/4 v1, 0x0

    iget-wide v2, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v4, 0x40

    rem-long/2addr v2, v4

    long-to-int v0, v2

    const/16 v2, 0x38

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v0, v0, 0x38

    :goto_0
    add-int/lit8 v2, v0, 0x8

    new-array v3, v2, [B

    const/16 v2, -0x80

    aput-byte v2, v3, v1

    move v2, v1

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    add-int v4, v0, v2

    iget-wide v6, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    mul-int/lit8 v5, v2, 0x8

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0

    :cond_1
    array-length v0, v3

    invoke-virtual {p0, v3, v1, v0}, Ljcifs/util/MD4;->engineUpdate([BII)V

    const/16 v0, 0x10

    new-array v3, v0, [B

    move v2, v1

    :goto_2
    if-ge v2, v10, :cond_3

    move v0, v1

    :goto_3
    if-ge v0, v10, :cond_2

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v0

    iget-object v5, p0, Ljcifs/util/MD4;->context:[I

    aget v5, v5, v2

    mul-int/lit8 v6, v0, 0x8

    ushr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-object v3
.end method

.method public engineReset()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x1

    const v3, -0x10325477

    aput v3, v0, v2

    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x2

    const v3, -0x67452302

    aput v3, v0, v2

    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x3

    const v3, 0x10325476

    aput v3, v0, v2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljcifs/util/MD4;->count:J

    move v0, v1

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public engineUpdate(B)V
    .locals 6

    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v2, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/util/MD4;->count:J

    iget-object v1, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte p1, v1, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljcifs/util/MD4;->transform([BI)V

    :cond_0
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 7

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    array-length v0, p1

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-wide v2, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v4, 0x40

    rem-long/2addr v2, v4

    long-to-int v0, v2

    iget-wide v2, p0, Ljcifs/util/MD4;->count:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/util/MD4;->count:J

    rsub-int/lit8 v2, v0, 0x40

    if-lt p3, v2, :cond_2

    iget-object v3, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-direct {p0, v0, v1}, Ljcifs/util/MD4;->transform([BI)V

    move v0, v2

    :goto_0
    add-int/lit8 v2, v0, 0x40

    add-int/lit8 v2, v2, -0x1

    if-ge v2, p3, :cond_3

    add-int v2, p2, v0

    invoke-direct {p0, p1, v2}, Ljcifs/util/MD4;->transform([BI)V

    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_2
    move v6, v1

    move v1, v0

    move v0, v6

    :cond_3
    if-ge v0, p3, :cond_4

    add-int v2, p2, v0

    iget-object v3, p0, Ljcifs/util/MD4;->buffer:[B

    sub-int v0, p3, v0

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-void
.end method
