.class public Lcom/estrongs/android/pop/zeroconf/s;
.super Lcom/estrongs/android/pop/zeroconf/n;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZIIIILjava/lang/String;)V
    .locals 6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_SRV:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/n;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI)V

    iput p5, p0, Lcom/estrongs/android/pop/zeroconf/s;->c:I

    iput p6, p0, Lcom/estrongs/android/pop/zeroconf/s;->d:I

    iput p7, p0, Lcom/estrongs/android/pop/zeroconf/s;->e:I

    iput-object p8, p0, Lcom/estrongs/android/pop/zeroconf/s;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lcom/estrongs/android/pop/zeroconf/f;)V
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/s;->c:I

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/s;->d:I

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/s;->e:I

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/s;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/estrongs/android/pop/zeroconf/n;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/pop/zeroconf/s;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/pop/zeroconf/s;

    iget v1, p0, Lcom/estrongs/android/pop/zeroconf/s;->c:I

    iget v2, p1, Lcom/estrongs/android/pop/zeroconf/s;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/estrongs/android/pop/zeroconf/s;->d:I

    iget v2, p1, Lcom/estrongs/android/pop/zeroconf/s;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/estrongs/android/pop/zeroconf/s;->e:I

    iget v2, p1, Lcom/estrongs/android/pop/zeroconf/s;->e:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/s;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/estrongs/android/pop/zeroconf/s;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/s;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/s;->e:I

    return v0
.end method
