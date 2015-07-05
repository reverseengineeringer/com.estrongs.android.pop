.class public abstract Lcom/estrongs/android/pop/zeroconf/n;
.super Lcom/estrongs/android/pop/zeroconf/DNSEntry;


# static fields
.field public static final b:[B


# instance fields
.field private c:I

.field private d:J

.field private e:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/n;->b:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI)V
    .locals 2

    const/16 v0, 0xe10

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    if-le p5, v0, :cond_0

    iput v0, p0, Lcom/estrongs/android/pop/zeroconf/n;->c:I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/zeroconf/n;->d:J

    return-void

    :cond_0
    iput p5, p0, Lcom/estrongs/android/pop/zeroconf/n;->c:I

    goto :goto_0
.end method


# virtual methods
.method a(J)I
    .locals 7

    const-wide/16 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/zeroconf/n;->a(I)J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method a(I)J
    .locals 6

    iget-wide v0, p0, Lcom/estrongs/android/pop/zeroconf/n;->d:J

    iget v2, p0, Lcom/estrongs/android/pop/zeroconf/n;->c:I

    mul-int/2addr v2, p1

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method abstract a(Lcom/estrongs/android/pop/zeroconf/f;)V
.end method

.method public a(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/n;->e:Ljava/net/InetAddress;

    return-void
.end method

.method a(Lcom/estrongs/android/pop/zeroconf/a;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/a;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/n;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/n;->b(Lcom/estrongs/android/pop/zeroconf/n;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method abstract a(Lcom/estrongs/android/pop/zeroconf/n;)Z
.end method

.method public b(J)Z
    .locals 3

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/n;->a(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/estrongs/android/pop/zeroconf/n;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/zeroconf/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/estrongs/android/pop/zeroconf/n;->c:I

    iget v1, p0, Lcom/estrongs/android/pop/zeroconf/n;->c:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/pop/zeroconf/n;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/zeroconf/DNSEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/estrongs/android/pop/zeroconf/n;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/zeroconf/n;->a(Lcom/estrongs/android/pop/zeroconf/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/n;->c:I

    return v0
.end method
