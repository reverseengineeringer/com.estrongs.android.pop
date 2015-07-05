.class public Lcom/estrongs/android/pop/zeroconf/r;
.super Lcom/estrongs/android/pop/zeroconf/n;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/lang/String;)V
    .locals 6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_PTR:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/n;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI)V

    iput-object p5, p0, Lcom/estrongs/android/pop/zeroconf/r;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lcom/estrongs/android/pop/zeroconf/f;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/estrongs/android/pop/zeroconf/n;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/pop/zeroconf/r;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/pop/zeroconf/r;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/r;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/r;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/r;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/r;->c:Ljava/lang/String;

    return-object v0
.end method
