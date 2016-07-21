.class public abstract Lorg/mozilla/a/a/z;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/mozilla/a/a/z;BB)B
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/a/a/z;->b()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/a/a/z;->c()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p0}, Lorg/mozilla/a/a/z;->a()[I

    move-result-object v2

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    and-int/lit8 v3, p1, 0x7

    shl-int/lit8 v3, v3, 0x2

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0}, Lorg/mozilla/a/a/z;->c()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p0}, Lorg/mozilla/a/a/z;->a()[I

    move-result-object v2

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    and-int/lit8 v3, p1, 0x7

    shl-int/lit8 v3, v3, 0x2

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0xf

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public abstract a()[I
.end method

.method public abstract b()[I
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method
