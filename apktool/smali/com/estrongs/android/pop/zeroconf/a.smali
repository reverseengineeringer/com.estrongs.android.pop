.class public final Lcom/estrongs/android/pop/zeroconf/a;
.super Lcom/estrongs/android/pop/zeroconf/d;


# instance fields
.field private final f:Ljava/net/DatagramPacket;

.field private final g:J

.field private final h:Lcom/estrongs/android/pop/zeroconf/c;

.field private i:I


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 9

    const/16 v2, 0x14e9

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v1, v0}, Lcom/estrongs/android/pop/zeroconf/d;-><init>(IIZ)V

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/a;->f:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/estrongs/android/pop/zeroconf/c;-><init>([BI)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/estrongs/android/pop/zeroconf/a;->g:J

    const/16 v0, 0x5b4

    iput v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->i:I

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/a;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/a;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v3

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v4

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v6

    if-lez v3, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    iget-object v7, p0, Lcom/estrongs/android/pop/zeroconf/a;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/a;->p()Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-lez v4, :cond_4

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/zeroconf/a;->a(Ljava/net/InetAddress;)Lcom/estrongs/android/pop/zeroconf/n;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/estrongs/android/pop/zeroconf/a;->c:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-lez v5, :cond_6

    move v0, v1

    :goto_3
    if-ge v0, v5, :cond_6

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/zeroconf/a;->a(Ljava/net/InetAddress;)Lcom/estrongs/android/pop/zeroconf/n;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/estrongs/android/pop/zeroconf/a;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-lez v6, :cond_8

    :goto_4
    if-ge v1, v6, :cond_8

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/zeroconf/a;->a(Ljava/net/InetAddress;)Lcom/estrongs/android/pop/zeroconf/n;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/a;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "DNSIncoming corrupted message"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_8
    return-void
.end method

.method private a(Ljava/net/InetAddress;)Lcom/estrongs/android/pop/zeroconf/n;
    .locals 10

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->typeForIndex(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v5

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_IGNORE:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    if-ne v5, v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v6

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_OPT:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    if-ne v5, v0, :cond_4

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    :goto_0
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_UNKNOWN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_OPT:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    if-eq v5, v0, :cond_1

    :cond_1
    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->isUnique(I)Z

    move-result v3

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->b()I

    move-result v4

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v7

    const/4 v0, 0x0

    sget-object v8, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    invoke-virtual {v5}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/zeroconf/c;->skip(J)J

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/zeroconf/n;->a(Ljava/net/InetAddress;)V

    :cond_3
    return-object v0

    :cond_4
    invoke-static {v6}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->classForIndex(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v2

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/p;

    iget-object v5, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v5, v7}, Lcom/estrongs/android/pop/zeroconf/c;->a(I)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/p;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI[B)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/q;

    iget-object v5, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v5, v7}, Lcom/estrongs/android/pop/zeroconf/c;->a(I)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/q;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI[B)V

    goto :goto_1

    :pswitch_2
    const-string v5, ""

    iget-object v5, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/zeroconf/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/r;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/r;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/t;

    iget-object v5, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v5, v7}, Lcom/estrongs/android/pop/zeroconf/c;->a(I)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/t;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI[B)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v6

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v7

    const-string v0, ""

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->c()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/s;

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/zeroconf/s;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/a;->b()I

    move-result v1

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;->resultCodeForFlags(II)Lcom/estrongs/android/pop/zeroconf/constants/DNSResultCode;

    const/high16 v1, 0xff0000

    and-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    iput v6, p0, Lcom/estrongs/android/pop/zeroconf/a;->i:I

    :goto_2
    :pswitch_6
    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/c;->available()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/c;->available()I

    move-result v1

    if-lt v1, v9, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->resultCodeForFlags(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/zeroconf/c;->available()I

    move-result v2

    if-lt v2, v9, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v2

    const/4 v3, 0x0

    new-array v3, v3, [B

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/zeroconf/c;->available()I

    move-result v3

    if-lt v3, v2, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/zeroconf/c;->a(I)[B

    :cond_5
    sget-object v2, Lcom/estrongs/android/pop/zeroconf/b;->b:[I

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private p()Lcom/estrongs/android/pop/zeroconf/g;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/c;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->typeForIndex(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_IGNORE:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    if-ne v1, v2, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/a;->h:Lcom/estrongs/android/pop/zeroconf/c;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/zeroconf/c;->a()I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->classForIndex(I)Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->isUnique(I)Z

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lcom/estrongs/android/pop/zeroconf/g;->a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v0

    return-object v0
.end method
