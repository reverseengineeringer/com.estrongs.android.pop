.class Lcom/estrongs/android/pop/zeroconf/j;
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

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/h;->a:[I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/j;->c()Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/p;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    iget-object v5, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/p;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    :cond_2
    :pswitch_1
    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/q;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    iget-object v5, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/q;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
