.class public abstract Lorg/mozilla/universalchardet/prober/b/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/mozilla/universalchardet/prober/b/c;

.field protected b:I

.field protected c:Lorg/mozilla/universalchardet/prober/b/c;

.field protected d:[I

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/b/c;ILorg/mozilla/universalchardet/prober/b/c;[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/b/d;->a:Lorg/mozilla/universalchardet/prober/b/c;

    iput p2, p0, Lorg/mozilla/universalchardet/prober/b/d;->b:I

    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/b/d;->c:Lorg/mozilla/universalchardet/prober/b/c;

    iput-object p4, p0, Lorg/mozilla/universalchardet/prober/b/d;->d:[I

    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/b/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(B)I
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/b/d;->a:Lorg/mozilla/universalchardet/prober/b/c;

    invoke-virtual {v1, v0}, Lorg/mozilla/universalchardet/prober/b/c;->a(I)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b/d;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method public a(II)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/b/d;->c:Lorg/mozilla/universalchardet/prober/b/c;

    iget v1, p0, Lorg/mozilla/universalchardet/prober/b/d;->b:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/universalchardet/prober/b/c;->a(I)I

    move-result v0

    return v0
.end method
