.class public Lcom/estrongs/android/pop/zeroconf/g;
.super Lcom/estrongs/android/pop/zeroconf/DNSEntry;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/h;->a:[I

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/g;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/j;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/k;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/k;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/i;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/l;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/m;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V
    .locals 9
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

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    if-eqz v0, :cond_3

    iget-object v7, p1, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/g;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/g;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/p;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x1

    const/16 v4, 0xe10

    iget-object v5, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/p;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/q;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x1

    const/16 v4, 0xe10

    iget-object v5, p1, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/q;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/r;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/w;->a:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x0

    const/16 v4, 0xe10

    iget-object v5, v7, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/r;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/s;

    iget-object v1, v7, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x1

    const/16 v4, 0xe10

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v7, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    iget-object v8, p1, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/zeroconf/s;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public b(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V
    .locals 0
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

    return-void
.end method
