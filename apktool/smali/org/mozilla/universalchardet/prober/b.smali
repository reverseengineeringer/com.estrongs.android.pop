.class public Lorg/mozilla/universalchardet/prober/b;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# instance fields
.field private a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private c:[Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-array v0, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->c:[Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x0

    new-instance v2, Lorg/mozilla/universalchardet/prober/a;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/a;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/b;->c()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/b;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/b;->b()F

    iget v0, p0, Lorg/mozilla/universalchardet/prober/b;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b;->d:I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v1, p0, Lorg/mozilla/universalchardet/prober/b;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v4, p3, [B

    add-int v5, p2, p3

    move v1, v3

    move v0, v2

    :goto_0
    if-lt p2, v5, :cond_0

    move v0, v3

    :goto_1
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :goto_2
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_0
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-byte v6, p1, p2

    aput-byte v6, v4, v1

    move v1, v2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    aget-byte v6, p1, p2

    aput-byte v6, v4, v1

    move v1, v3

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/b;->c:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4, v3, v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v2

    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v2, v5, :cond_5

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b;->d:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2

    :cond_5
    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/b;->c:[Z

    aput-boolean v3, v2, v0

    iget v2, p0, Lorg/mozilla/universalchardet/prober/b;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/b;->e:I

    iget v2, p0, Lorg/mozilla/universalchardet/prober/b;->e:I

    if-gtz v2, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2

    :cond_6
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3
.end method

.method public b()F
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v2, :cond_1

    const v1, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v2, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/b;->c:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b;->d:I

    move v1, v2

    goto :goto_2
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b;->e:I

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b;->d:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/b;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/b;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c()V

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/b;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/b;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
