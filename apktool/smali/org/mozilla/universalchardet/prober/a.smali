.class public Lorg/mozilla/universalchardet/prober/a;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# static fields
.field private static final e:Lorg/mozilla/universalchardet/prober/b/d;


# instance fields
.field private a:Lorg/mozilla/universalchardet/prober/b/b;

.field private b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private c:Lorg/mozilla/universalchardet/prober/a/a;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/b/a;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/b/a;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/a;->e:Lorg/mozilla/universalchardet/prober/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-instance v0, Lorg/mozilla/universalchardet/prober/b/b;

    sget-object v1, Lorg/mozilla/universalchardet/prober/a;->e:Lorg/mozilla/universalchardet/prober/b/d;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/b/b;-><init>(Lorg/mozilla/universalchardet/prober/b/d;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->a:Lorg/mozilla/universalchardet/prober/b/b;

    new-instance v0, Lorg/mozilla/universalchardet/prober/a/a;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/a/a;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->c:Lorg/mozilla/universalchardet/prober/a/a;

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->d:[B

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/a;->c()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/universalchardet/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    add-int v1, p2, p3

    move v0, p2

    :goto_0
    if-lt v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->d:[B

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->c:Lorg/mozilla/universalchardet/prober/a/a;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/a;->b()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/a;->a:Lorg/mozilla/universalchardet/prober/b/b;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/mozilla/universalchardet/prober/b/b;->a(B)I

    move-result v2

    if-ne v2, v6, :cond_2

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/a;->a:Lorg/mozilla/universalchardet/prober/b/b;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/b/b;->a()I

    move-result v2

    if-ne v0, p2, :cond_5

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/a;->d:[B

    aget-byte v4, p1, p2

    aput-byte v4, v3, v6

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/a;->c:Lorg/mozilla/universalchardet/prober/a/a;

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/a;->d:[B

    invoke-virtual {v3, v4, v5, v2}, Lorg/mozilla/universalchardet/prober/a/a;->a([BII)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/a;->c:Lorg/mozilla/universalchardet/prober/a/a;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, p1, v4, v2}, Lorg/mozilla/universalchardet/prober/a/a;->a([BII)V

    goto :goto_2
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->c:Lorg/mozilla/universalchardet/prober/a/a;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/a/a;->a()F

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->a:Lorg/mozilla/universalchardet/prober/b/b;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/b/b;->b()V

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->c:Lorg/mozilla/universalchardet/prober/a/a;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/a/a;->b()V

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/a;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
