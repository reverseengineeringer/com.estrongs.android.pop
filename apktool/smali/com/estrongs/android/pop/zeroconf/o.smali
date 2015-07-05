.class public abstract Lcom/estrongs/android/pop/zeroconf/o;
.super Lcom/estrongs/android/pop/zeroconf/n;


# static fields
.field private static d:Ljava/util/logging/Logger;


# instance fields
.field c:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/o;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/zeroconf/n;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI)V

    iput-object p6, p0, Lcom/estrongs/android/pop/zeroconf/o;->c:Ljava/net/InetAddress;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI[B)V
    .locals 4

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/zeroconf/n;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZI)V

    :try_start_0
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/o;->c:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/o;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Address() exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/estrongs/android/pop/zeroconf/n;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/pop/zeroconf/o;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/pop/zeroconf/o;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/o;->g()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/o;->g()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/o;->g()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/o;->g()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method g()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/o;->c:Ljava/net/InetAddress;

    return-object v0
.end method
