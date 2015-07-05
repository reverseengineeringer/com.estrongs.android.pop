.class public final Lcom/gmail/yuyang226/flickr/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[B

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0xff

    new-array v1, v1, [B

    sput-object v1, Lcom/gmail/yuyang226/flickr/d/a;->a:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-lt v1, v2, :cond_0

    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v1, v2, :cond_2

    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    sget-object v1, Lcom/gmail/yuyang226/flickr/d/a;->a:[B

    aput-byte v7, v1, v5

    sget-object v1, Lcom/gmail/yuyang226/flickr/d/a;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    :goto_4
    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-le v2, v3, :cond_5

    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-le v1, v2, :cond_6

    sget-object v0, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    aput-byte v5, v0, v7

    sget-object v0, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    aput-byte v6, v0, v8

    return-void

    :cond_0
    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    add-int/lit8 v3, v1, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    add-int/lit8 v4, v1, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    add-int/lit8 v3, v0, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static declared-synchronized a([B)[B
    .locals 13

    const/4 v0, 0x0

    const-class v5, Lcom/gmail/yuyang226/flickr/d/a;

    monitor-enter v5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v5

    return-object v0

    :cond_1
    :try_start_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    rem-int/lit8 v6, v0, 0x18

    div-int/lit8 v7, v0, 0x18

    const/4 v0, 0x0

    check-cast v0, [B

    if-eqz v6, :cond_2

    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    :goto_1
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-lt v4, v7, :cond_3

    mul-int/lit8 v1, v4, 0x3

    mul-int/lit8 v3, v4, 0x4

    const/16 v2, 0x8

    if-ne v6, v2, :cond_8

    aget-byte v1, p0, v1

    and-int/lit8 v2, v1, 0x3

    int-to-byte v2, v2

    and-int/lit8 v4, v1, -0x80

    if-nez v4, :cond_7

    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :goto_3
    sget-object v4, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    add-int/lit8 v1, v3, 0x1

    sget-object v4, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    shl-int/lit8 v2, v2, 0x4

    aget-byte v2, v4, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x2

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x3

    const/16 v2, 0x3d

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_2
    mul-int/lit8 v0, v7, 0x4

    :try_start_1
    new-array v0, v0, [B

    goto :goto_1

    :cond_3
    mul-int/lit8 v1, v4, 0x3

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v8, p0, v3

    add-int/lit8 v1, v1, 0x2

    aget-byte v9, p0, v1

    and-int/lit8 v1, v8, 0xf

    int-to-byte v10, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v11, v1

    mul-int/lit8 v12, v4, 0x4

    and-int/lit8 v1, v2, -0x80

    if-nez v1, :cond_4

    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v3, v1

    :goto_4
    and-int/lit8 v1, v8, -0x80

    if-nez v1, :cond_5

    shr-int/lit8 v1, v8, 0x4

    int-to-byte v1, v1

    move v2, v1

    :goto_5
    and-int/lit8 v1, v9, -0x80

    if-nez v1, :cond_6

    shr-int/lit8 v1, v9, 0x6

    int-to-byte v1, v1

    :goto_6
    sget-object v8, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    aget-byte v3, v8, v3

    aput-byte v3, v0, v12

    add-int/lit8 v3, v12, 0x1

    sget-object v8, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    shl-int/lit8 v11, v11, 0x4

    or-int/2addr v2, v11

    aget-byte v2, v8, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v12, 0x2

    sget-object v3, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    shl-int/lit8 v8, v10, 0x2

    or-int/2addr v1, v8

    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v12, 0x3

    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    and-int/lit8 v3, v9, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_4
    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v3, v1

    goto :goto_4

    :cond_5
    shr-int/lit8 v1, v8, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move v2, v1

    goto :goto_5

    :cond_6
    shr-int/lit8 v1, v9, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    goto :goto_6

    :cond_7
    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    goto/16 :goto_3

    :cond_8
    const/16 v2, 0x10

    if-ne v6, v2, :cond_0

    aget-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, p0, v1

    and-int/lit8 v1, v4, 0xf

    int-to-byte v6, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v7, v1

    and-int/lit8 v1, v2, -0x80

    if-nez v1, :cond_9

    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v2, v1

    :goto_7
    and-int/lit8 v1, v4, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v1, v4, 0x4

    int-to-byte v1, v1

    :goto_8
    sget-object v4, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v1, v7

    aget-byte v1, v4, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x2

    sget-object v2, Lcom/gmail/yuyang226/flickr/d/a;->b:[B

    shl-int/lit8 v4, v6, 0x2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x3

    const/16 v2, 0x3d

    aput-byte v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_9
    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v2, v1

    goto :goto_7

    :cond_a
    shr-int/lit8 v1, v4, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    goto :goto_8
.end method
