.class public Lcom/estrongs/android/pop/zeroconf/q;
.super Lcom/estrongs/android/pop/zeroconf/o;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 7

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_AAAA:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/zeroconf/o;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI[B)V
    .locals 7

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_AAAA:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/zeroconf/o;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI[B)V

    return-void
.end method


# virtual methods
.method a(Lcom/estrongs/android/pop/zeroconf/f;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/q;->c:Ljava/net/InetAddress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/q;->c:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/q;->c:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    new-array v0, v5, [B

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    const/16 v4, 0xb

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, -0xc

    aget-byte v4, v1, v4

    aput-byte v4, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aput-byte v3, v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Lcom/estrongs/android/pop/zeroconf/f;->a([BII)V

    :cond_3
    return-void
.end method
