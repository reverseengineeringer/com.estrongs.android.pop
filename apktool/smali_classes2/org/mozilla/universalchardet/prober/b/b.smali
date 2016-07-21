.class public Lorg/mozilla/universalchardet/prober/b/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/mozilla/universalchardet/prober/b/d;

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/b/b;->a:Lorg/mozilla/universalchardet/prober/b/d;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->c:I

    return v0
.end method

.method public a(B)I
    .locals 3

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->a:Lorg/mozilla/universalchardet/prober/b/d;

    invoke-virtual {v0, p1}, Lorg/mozilla/universalchardet/prober/b/d;->a(B)I

    move-result v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/b/b;->b:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/universalchardet/prober/b/b;->d:I

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/b/b;->a:Lorg/mozilla/universalchardet/prober/b/d;

    invoke-virtual {v1, v0}, Lorg/mozilla/universalchardet/prober/b/d;->a(I)I

    move-result v1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/b/b;->c:I

    :cond_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/b/b;->a:Lorg/mozilla/universalchardet/prober/b/d;

    iget v2, p0, Lorg/mozilla/universalchardet/prober/b/b;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/universalchardet/prober/b/d;->a(II)I

    move-result v0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->b:I

    iget v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->d:I

    iget v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->b:I

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/b/b;->b:I

    return-void
.end method
