.class public Lde/a/a/a/a/i;
.super Ljava/util/zip/ZipEntry;


# instance fields
.field protected a:I

.field protected b:J

.field protected c:I

.field private d:Lde/a/a/a/a/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lde/a/a/a/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lde/a/a/a/a/i;->d:Lde/a/a/a/a/g;

    return-void
.end method

.method public static b(J)J
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x7bc

    if-ge v0, v2, :cond_0

    const-wide/32 v0, 0x210000

    :goto_0
    return-wide v0

    :cond_0
    add-int/lit16 v0, v0, -0x7bc

    shl-int/lit8 v0, v0, 0x19

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v0, v2

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v0, v2

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static c(J)J
    .locals 10

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x19

    shr-long v2, p0, v1

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v1, v1, 0x7bc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    shr-long v2, p0, v8

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    shr-long v2, p0, v7

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    shl-long v2, p0, v6

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lde/a/a/a/a/i;->setCrc(J)V

    iget v0, p0, Lde/a/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/a/a/a/a/i;->a:I

    iget v0, p0, Lde/a/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lde/a/a/a/a/i;->a:I

    const/16 v0, 0x63

    iput v0, p0, Lde/a/a/a/a/i;->c:I

    const/16 v0, 0xb

    new-array v0, v0, [B

    const/16 v0, 0xb

    new-array v0, v0, [B

    aput-byte v3, v0, v2

    const/16 v1, -0x67

    aput-byte v1, v0, v3

    aput-byte v6, v0, v4

    aput-byte v2, v0, v5

    const/4 v1, 0x4

    aput-byte v4, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    aput-byte v1, v0, v6

    const/16 v1, 0x8

    aput-byte v5, v0, v1

    const/16 v1, 0x9

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getMethod()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getMethod()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lde/a/a/a/a/i;->setExtra([B)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lde/a/a/a/a/i;->c:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lde/a/a/a/a/i;->b:J

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lde/a/a/a/a/i;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lde/a/a/a/a/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/a/a/a/a/i;->d:Lde/a/a/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/a/a/a/a/i;->d:Lde/a/a/a/a/g;

    invoke-virtual {v0}, Lde/a/a/a/a/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lde/a/a/a/a/i;->a:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lde/a/a/a/a/i;->b:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lde/a/a/a/a/i;->c:I

    return v0
.end method

.method public g()Lde/a/a/a/a/g;
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/i;->d:Lde/a/a/a/a/g;

    return-object v0
.end method

.method public h()J
    .locals 2

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lde/a/a/a/a/i;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
