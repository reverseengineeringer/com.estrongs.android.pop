.class public final Lcom/google/android/gms/internal/zo;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zo;->a:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zo;->b:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zo;->c:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zo;->d:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zo;->e:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zo;->f:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zo;->g:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zo;->h:[B

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final a(Lcom/google/android/gms/internal/zc;I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zc;->o()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zc;->b(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zc;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zc;->b(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zc;->e(I)V

    return v0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
