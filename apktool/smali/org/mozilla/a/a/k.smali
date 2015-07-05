.class public Lorg/mozilla/a/a/k;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field public d:[I

.field public e:[I

.field public f:[F

.field public g:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x5e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/mozilla/a/a/k;->a:I

    const/16 v0, 0xc8

    iput v0, p0, Lorg/mozilla/a/a/k;->b:I

    iput v2, p0, Lorg/mozilla/a/a/k;->c:I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/a/a/k;->d:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/a/a/k;->e:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/mozilla/a/a/k;->f:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/mozilla/a/a/k;->g:[F

    invoke-virtual {p0}, Lorg/mozilla/a/a/k;->a()V

    return-void
.end method


# virtual methods
.method a([FF[FF)F
    .locals 2

    iget-object v0, p0, Lorg/mozilla/a/a/k;->f:[F

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/a/a/k;->a([F[F)F

    move-result v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lorg/mozilla/a/a/k;->g:[F

    invoke-virtual {p0, p3, v1}, Lorg/mozilla/a/a/k;->a([F[F)F

    move-result v1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    return v0
.end method

.method a([F[F)F
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x5e

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42bc0000    # 94.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public a()V
    .locals 4

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/a/a/k;->a:I

    iput v1, p0, Lorg/mozilla/a/a/k;->c:I

    move v0, v1

    :goto_0
    const/16 v2, 0x5e

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/a/a/k;->d:[I

    iget-object v3, p0, Lorg/mozilla/a/a/k;->e:[I

    aput v1, v3, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a([BI)Z
    .locals 9

    const/16 v8, 0xff

    const/16 v7, 0xa1

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lorg/mozilla/a/a/k;->c:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, p2, :cond_7

    iget v4, p0, Lorg/mozilla/a/a/k;->c:I

    if-eq v0, v4, :cond_7

    iget v4, p0, Lorg/mozilla/a/a/k;->c:I

    packed-switch v4, :pswitch_data_0

    iput v0, p0, Lorg/mozilla/a/a/k;->c:I

    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_1
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_2

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_3

    :cond_2
    iput v0, p0, Lorg/mozilla/a/a/k;->c:I

    goto :goto_2

    :cond_3
    iget v4, p0, Lorg/mozilla/a/a/k;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/a/a/k;->a:I

    iget-object v4, p0, Lorg/mozilla/a/a/k;->d:[I

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    const/4 v4, 0x2

    iput v4, p0, Lorg/mozilla/a/a/k;->c:I

    goto :goto_2

    :pswitch_2
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_4

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_5

    :cond_4
    iput v0, p0, Lorg/mozilla/a/a/k;->c:I

    goto :goto_2

    :cond_5
    iget v4, p0, Lorg/mozilla/a/a/k;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/a/a/k;->a:I

    iget-object v4, p0, Lorg/mozilla/a/a/k;->e:[I

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    iput v1, p0, Lorg/mozilla/a/a/k;->c:I

    goto :goto_2

    :cond_6
    iput v0, p0, Lorg/mozilla/a/a/k;->c:I

    goto :goto_2

    :cond_7
    iget v2, p0, Lorg/mozilla/a/a/k;->c:I

    if-eq v0, v2, :cond_8

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method b()Z
    .locals 2

    iget v0, p0, Lorg/mozilla/a/a/k;->a:I

    iget v1, p0, Lorg/mozilla/a/a/k;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/mozilla/a/a/k;->a:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/a/a/k;->f:[F

    iget-object v2, p0, Lorg/mozilla/a/a/k;->d:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/a/a/k;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lorg/mozilla/a/a/k;->g:[F

    iget-object v2, p0, Lorg/mozilla/a/a/k;->e:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/a/a/k;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
