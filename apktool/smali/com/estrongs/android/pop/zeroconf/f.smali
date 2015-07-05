.class public Lcom/estrongs/android/pop/zeroconf/f;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field private final a:Lcom/estrongs/android/pop/zeroconf/e;

.field private final b:I


# direct methods
.method constructor <init>(ILcom/estrongs/android/pop/zeroconf/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;I)V

    return-void
.end method

.method constructor <init>(ILcom/estrongs/android/pop/zeroconf/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p2, p0, Lcom/estrongs/android/pop/zeroconf/f;->a:Lcom/estrongs/android/pop/zeroconf/e;

    iput p3, p0, Lcom/estrongs/android/pop/zeroconf/f;->b:I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->write(I)V

    return-void
.end method

.method a(Lcom/estrongs/android/pop/zeroconf/g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/g;->c()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/g;->d()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    return-void
.end method

.method a(Lcom/estrongs/android/pop/zeroconf/n;J)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/n;->c()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/n;->d()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->indexValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/f;->a:Lcom/estrongs/android/pop/zeroconf/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/n;->f()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->c(I)V

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    const/16 v2, 0x200

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/f;->a:Lcom/estrongs/android/pop/zeroconf/e;

    iget v4, p0, Lcom/estrongs/android/pop/zeroconf/f;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/f;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;I)V

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/n;->a(Lcom/estrongs/android/pop/zeroconf/f;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/f;->toByteArray()[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/zeroconf/f;->write([BII)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/n;->a(J)I

    move-result v0

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method a(Ljava/lang/String;II)V
    .locals 7

    const/16 v6, 0x7ff

    const/16 v5, 0x7f

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, p3, :cond_2

    add-int v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_0

    if-gt v3, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, v6, :cond_1

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    move v0, v1

    :goto_2
    if-ge v0, p3, :cond_5

    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_3

    if-gt v1, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-le v1, v6, :cond_4

    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    goto :goto_3

    :cond_4
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    :cond_0
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    :goto_1
    if-gtz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3

    sget-boolean v0, Lcom/estrongs/android/pop/zeroconf/e;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/f;->a:Lcom/estrongs/android/pop/zeroconf/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/zeroconf/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/f;->a:Lcom/estrongs/android/pop/zeroconf/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/zeroconf/e;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/f;->size()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/pop/zeroconf/f;->b:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v5, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Ljava/lang/String;II)V

    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v5, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Ljava/lang/String;II)V

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method a([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/zeroconf/f;->a(I)V

    return-void
.end method

.method c(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    return-void
.end method
