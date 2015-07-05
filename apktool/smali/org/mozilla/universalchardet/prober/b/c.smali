.class public Lorg/mozilla/universalchardet/prober/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:[I


# direct methods
.method public constructor <init>(IIII[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/universalchardet/prober/b/c;->a:I

    iput p2, p0, Lorg/mozilla/universalchardet/prober/b/c;->b:I

    iput p3, p0, Lorg/mozilla/universalchardet/prober/b/c;->c:I

    iput p4, p0, Lorg/mozilla/universalchardet/prober/b/c;->d:I

    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/b/c;->e:[I

    return-void
.end method

.method public static a(II)I
    .locals 1

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p0

    return v0
.end method

.method public static a(IIII)I
    .locals 2

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/universalchardet/prober/b/c;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(IIIIIIII)I
    .locals 4

    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    shl-int/lit8 v1, p3, 0x4

    or-int/2addr v1, p2

    shl-int/lit8 v2, p5, 0x4

    or-int/2addr v2, p4

    shl-int/lit8 v3, p7, 0x4

    or-int/2addr v3, p6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/universalchardet/prober/b/c;->a(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b/c;->e:[I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/b/c;->a:I

    shr-int v1, p1, v1

    aget v0, v0, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/b/c;->b:I

    and-int/2addr v1, p1

    iget v2, p0, Lorg/mozilla/universalchardet/prober/b/c;->c:I

    shl-int/2addr v1, v2

    shr-int/2addr v0, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/b/c;->d:I

    and-int/2addr v0, v1

    return v0
.end method
