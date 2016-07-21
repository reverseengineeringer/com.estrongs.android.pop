.class Lcom/google/android/gms/internal/zf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Lcom/google/android/gms/internal/zg;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Lcom/google/android/gms/internal/zg;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zf;->a:Lcom/google/android/gms/internal/zg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zf;->b:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zf;->c(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/zf;->c:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/zg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    iput v2, p0, Lcom/google/android/gms/internal/zf;->e:I

    return-void
.end method

.method private a([I[II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a([Lcom/google/android/gms/internal/zg;[Lcom/google/android/gms/internal/zg;I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private c(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zf;->d(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private d(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/zf;->e:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zf;->c:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, Lcom/google/android/gms/internal/zf;->a:Lcom/google/android/gms/internal/zg;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zf;->b:Z

    iput v0, p0, Lcom/google/android/gms/internal/zf;->e:I

    return-void
.end method

.method private e(I)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zf;->e:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zf;->c:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zf;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zf;->d()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zf;->e:I

    return v0
.end method

.method public a(I)Lcom/google/android/gms/internal/zg;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zf;->e(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zf;->a:Lcom/google/android/gms/internal/zg;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public a(ILcom/google/android/gms/internal/zg;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zf;->e(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aput-object p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/zf;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zf;->a:Lcom/google/android/gms/internal/zg;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aput-object p2, v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zf;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zf;->e:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zf;->d()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zf;->e(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zf;->e:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/zf;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zf;->c(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/zg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zf;->c:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/zf;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zf;->c:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/zf;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->c:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zf;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zf;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/zf;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zf;->e:I

    goto :goto_0
.end method

.method public b(I)Lcom/google/android/gms/internal/zg;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zf;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zf;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zf;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/zf;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zf;->a()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/zf;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zf;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zf;->c:[I

    iget-object v4, v2, Lcom/google/android/gms/internal/zf;->c:[I

    invoke-static {v3, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zg;->b()Lcom/google/android/gms/internal/zg;

    move-result-object v4

    aput-object v4, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, v2, Lcom/google/android/gms/internal/zf;->e:I

    return-object v2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zf;->c()Lcom/google/android/gms/internal/zf;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zf;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zf;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zf;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->c:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zf;->c:[I

    iget v4, p0, Lcom/google/android/gms/internal/zf;->e:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zf;->a([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    iget v4, p0, Lcom/google/android/gms/internal/zf;->e:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zf;->a([Lcom/google/android/gms/internal/zg;[Lcom/google/android/gms/internal/zg;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zf;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zf;->d()V

    :cond_0
    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zf;->e:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->c:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zf;->d:[Lcom/google/android/gms/internal/zg;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zg;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
