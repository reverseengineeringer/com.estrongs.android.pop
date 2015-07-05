.class public Lcom/estrongs/android/pop/zeroconf/p;
.super Lcom/estrongs/android/pop/zeroconf/o;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 7

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_A:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

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

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_A:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

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
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/p;->c:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/p;->c:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/p;->c:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    :goto_0
    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Lcom/estrongs/android/pop/zeroconf/f;->a([BII)V

    :cond_0
    return-void

    :cond_1
    new-array v1, v4, [B

    const/16 v2, 0xc

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method
