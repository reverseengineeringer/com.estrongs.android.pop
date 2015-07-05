.class Lcom/estrongs/android/pop/zeroconf/i;
.super Lcom/estrongs/android/pop/zeroconf/g;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/zeroconf/g;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    return-void
.end method


# virtual methods
.method public b(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/zeroconf/w;",
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0xe10

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/p;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    iget-object v5, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/p;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/q;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    iget-object v5, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/q;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/l;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/i;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_PTR:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/i;->d()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/i;->e()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/l;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/zeroconf/l;->b(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/zeroconf/i;->a(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V

    goto :goto_0
.end method
