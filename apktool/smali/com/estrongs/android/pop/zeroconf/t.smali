.class public Lcom/estrongs/android/pop/zeroconf/t;
.super Lcom/estrongs/android/pop/zeroconf/n;


# instance fields
.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI[B)V
    .locals 6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_TXT:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/n;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI)V

    if-eqz p5, :cond_0

    array-length v0, p5

    if-lez v0, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    return-void

    :cond_0
    sget-object p5, Lcom/estrongs/android/pop/zeroconf/t;->b:[B

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/estrongs/android/pop/zeroconf/f;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/estrongs/android/pop/zeroconf/f;->a([BII)V

    return-void
.end method

.method a(Lcom/estrongs/android/pop/zeroconf/n;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/pop/zeroconf/t;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/pop/zeroconf/t;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    array-length v1, v1

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    aget-byte v1, v1, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    aget-byte v3, v3, v2

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g()[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/t;->c:[B

    return-object v0
.end method
