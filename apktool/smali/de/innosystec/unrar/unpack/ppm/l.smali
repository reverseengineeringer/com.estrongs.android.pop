.class public Lde/innosystec/unrar/unpack/ppm/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field static final synthetic b:Z


# instance fields
.field private c:I

.field private d:[I

.field private e:[I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:[Lde/innosystec/unrar/unpack/ppm/h;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[B

.field private p:I

.field private q:I

.field private r:Lde/innosystec/unrar/unpack/ppm/h;

.field private s:Lde/innosystec/unrar/unpack/ppm/g;

.field private t:Lde/innosystec/unrar/unpack/ppm/g;

.field private u:Lde/innosystec/unrar/unpack/ppm/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/innosystec/unrar/unpack/ppm/l;->b:Z

    sget v0, Lde/innosystec/unrar/unpack/ppm/c;->a:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x26

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    new-array v0, v2, [Lde/innosystec/unrar/unpack/ppm/h;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->r:Lde/innosystec/unrar/unpack/ppm/h;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->s:Lde/innosystec/unrar/unpack/ppm/g;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->t:Lde/innosystec/unrar/unpack/ppm/g;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->u:Lde/innosystec/unrar/unpack/ppm/g;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/l;->a()V

    return-void
.end method

.method private b(III)V
    .locals 5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v0, v0, p2

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v1, v1, p3

    sub-int v1, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v0, v0, p3

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    aget v2, v2, v3

    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v3, -0x1

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v2, v3, v2

    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    return-void
.end method

.method private c(II)V
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->r:Lde/innosystec/unrar/unpack/ppm/h;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/h;->c(I)V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/h;->a(I)V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/h;->a(Lde/innosystec/unrar/unpack/ppm/h;)V

    return-void
.end method

.method private d(II)I
    .locals 1

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private e(I)I
    .locals 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->r:Lde/innosystec/unrar/unpack/ppm/h;

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/h;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v2, v2, p1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/h;->a(I)V

    return v0
.end method

.method private f(I)I
    .locals 1

    sget v0, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    mul-int/2addr v0, p1

    return v0
.end method

.method private g(I)I
    .locals 4

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->f:I

    if-nez v0, :cond_0

    const/16 v0, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->f:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/l;->k()V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/l;->e(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v0, 0x26

    if-ne v1, v0, :cond_2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->f:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v1, v1, p1

    mul-int/lit8 v1, v1, 0xc

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->n:I

    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->k:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_1

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->n:I

    sub-int v1, v2, v1

    iput v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->n:I

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->l:I

    sub-int v0, v1, v0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->l:I

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->l:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->e(I)I

    move-result v0

    invoke-direct {p0, v0, v1, p1}, Lde/innosystec/unrar/unpack/ppm/l;->b(III)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private k()V
    .locals 8

    const v7, 0xffff

    const/16 v6, 0x80

    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->s:Lde/innosystec/unrar/unpack/ppm/g;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->q:I

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->t:Lde/innosystec/unrar/unpack/ppm/g;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->u:Lde/innosystec/unrar/unpack/ppm/g;

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    aput-byte v0, v4, v5

    :cond_0
    invoke-virtual {v2, v2}, Lde/innosystec/unrar/unpack/ppm/g;->c(Lde/innosystec/unrar/unpack/ppm/g;)V

    invoke-virtual {v2, v2}, Lde/innosystec/unrar/unpack/ppm/g;->b(Lde/innosystec/unrar/unpack/ppm/g;)V

    :goto_0
    const/16 v4, 0x26

    if-ge v0, v4, :cond_2

    :goto_1
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/l;->e(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    invoke-virtual {v3, v2}, Lde/innosystec/unrar/unpack/ppm/g;->a(Lde/innosystec/unrar/unpack/ppm/g;)V

    invoke-virtual {v3, v7}, Lde/innosystec/unrar/unpack/ppm/g;->e(I)V

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/g;->b(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    :goto_2
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v0

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v4

    if-eq v0, v4, :cond_4

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->c()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lde/innosystec/unrar/unpack/ppm/l;->d(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    :goto_3
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/g;->f()I

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->c()I

    move-result v0

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/g;->c()I

    move-result v4

    add-int/2addr v0, v4

    const/high16 v4, 0x10000

    if-ge v0, v4, :cond_3

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/g;->a()V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->c()I

    move-result v0

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/g;->c()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/g;->b(I)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->c()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lde/innosystec/unrar/unpack/ppm/l;->d(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    :goto_4
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v0

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->a()V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->c()I

    move-result v0

    move v1, v0

    :goto_5
    if-le v1, v6, :cond_5

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v0

    const/16 v4, 0x25

    invoke-direct {p0, v0, v4}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    add-int/lit8 v0, v1, -0x80

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v1

    invoke-direct {p0, v1, v6}, Lde/innosystec/unrar/unpack/ppm/l;->d(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    move v1, v0

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v5, v1, -0x1

    aget v0, v0, v5

    aget v4, v4, v0

    if-eq v4, v1, :cond_6

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v4, v4, v0

    sub-int v4, v1, v4

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v5

    sub-int/2addr v1, v4

    invoke-direct {p0, v5, v1}, Lde/innosystec/unrar/unpack/ppm/l;->d(II)I

    move-result v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v1, v4}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    :cond_6
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method private l()I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a(II)I
    .locals 5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v1, p2, -0x1

    aget v1, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/l;->b(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v4

    invoke-static {v2, p1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v1}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method public a(III)I
    .locals 5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v1, p2, -0x1

    aget v1, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v2, p3, -0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/l;->e(I)I

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    invoke-direct {p0, p3}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v4

    invoke-static {v2, p1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v1}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    move p1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lde/innosystec/unrar/unpack/ppm/l;->b(III)V

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    return-void
.end method

.method public a(I)Z
    .locals 9

    const/high16 v0, 0x400000

    const/16 v8, 0xc

    const/4 v7, 0x1

    shl-int/lit8 v1, p1, 0x14

    if-le v1, v0, :cond_3

    :goto_0
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    if-ne v1, v0, :cond_0

    :goto_1
    return v7

    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/l;->c()V

    div-int/lit8 v1, v0, 0xc

    sget v2, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    mul-int/2addr v1, v2

    sget v2, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    add-int/lit16 v1, v1, 0x98

    iput v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->q:I

    add-int/lit8 v3, v1, 0xc

    :try_start_0
    new-array v1, v3, [B

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput v7, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    add-int/2addr v1, v2

    sget v4, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    sub-int/2addr v1, v4

    iput v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->m:I

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->p:I

    sget-boolean v0, Lde/innosystec/unrar/unpack/ppm/l;->b:Z

    if-nez v0, :cond_1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->q:I

    sub-int v0, v3, v0

    if-eq v0, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_0
    move-exception v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->p:I

    :goto_3
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    new-instance v3, Lde/innosystec/unrar/unpack/ppm/h;

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    invoke-direct {v3, v4}, Lde/innosystec/unrar/unpack/ppm/h;-><init>([B)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/h;->c(I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_2
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/h;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/h;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->r:Lde/innosystec/unrar/unpack/ppm/h;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/g;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->s:Lde/innosystec/unrar/unpack/ppm/g;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/g;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->t:Lde/innosystec/unrar/unpack/ppm/g;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/g;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->u:Lde/innosystec/unrar/unpack/ppm/g;

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public b(I)I
    .locals 4

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v1, p1, -0x1

    aget v1, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->e(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/l;->f(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->g(I)I

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->k:I

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/l;->c(II)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->r:Lde/innosystec/unrar/unpack/ppm/h;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->s:Lde/innosystec/unrar/unpack/ppm/g;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->t:Lde/innosystec/unrar/unpack/ppm/g;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->u:Lde/innosystec/unrar/unpack/ppm/g;

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/l;->k:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    return v0
.end method

.method public d(I)V
    .locals 1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/l;->c(I)V

    return-void
.end method

.method public e()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    sget v1, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->j:[Lde/innosystec/unrar/unpack/ppm/h;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/l;->e(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/l;->g(I)I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->n:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->m:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->k:I

    return v0
.end method

.method public i()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/l;->p:I

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->p:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/l;->l()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0, v3, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->k:I

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    div-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0xc

    div-int/lit8 v3, v0, 0xc

    sget v4, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    mul-int/2addr v3, v4

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    sub-int v0, v4, v0

    div-int/lit8 v4, v0, 0xc

    sget v5, Lde/innosystec/unrar/unpack/ppm/l;->a:I

    mul-int/2addr v4, v5

    rem-int/lit8 v5, v0, 0xc

    add-int/2addr v4, v5

    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    add-int/2addr v5, v6

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    add-int/2addr v4, v5

    iput v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->l:I

    iput v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    add-int/2addr v0, v4

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->n:I

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    move v0, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_2
    const/16 v4, 0xc

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_3
    const/16 v4, 0x26

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_3
    iput v2, p0, Lde/innosystec/unrar/unpack/ppm/l;->f:I

    move v3, v2

    move v4, v2

    :goto_4
    const/16 v0, 0x80

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->d:[I

    aget v0, v0, v4

    add-int/lit8 v5, v3, 0x1

    if-ge v0, v5, :cond_4

    move v0, v1

    :goto_5
    add-int/2addr v4, v0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->e:[I

    and-int/lit16 v5, v4, 0xff

    aput v5, v0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    return-void
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/l;->o:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubAllocator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  subAllocatorSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  glueCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  heapStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  loUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  hiUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  pText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  unitsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/l;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
