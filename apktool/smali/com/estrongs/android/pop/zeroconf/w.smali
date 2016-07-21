.class public Lcom/estrongs/android/pop/zeroconf/w;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected f:Ljava/lang/String;

.field protected g:Ljava/net/InetAddress;

.field protected h:Lcom/estrongs/android/pop/zeroconf/u;

.field private i:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/u;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private volatile o:Ljava/net/InetAddress;

.field private volatile p:Ljava/net/MulticastSocket;

.field private q:Lcom/estrongs/android/pop/zeroconf/x;

.field private r:Lcom/estrongs/android/pop/zeroconf/v;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->j:Ljava/lang/String;

    const-string v0, "_esfileshare._tcp.local."

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->a:Ljava/lang/String;

    const-string v0, "_esdevice._tcp.local."

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->b:Ljava/lang/String;

    const-string v0, "_smb._tcp.local."

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->c:Ljava/lang/String;

    const-string v0, "_webdav._tcp.local."

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->d:Ljava/lang/String;

    const-string v0, "_ftp._tcp.local."

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->u:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/w;->v:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/zeroconf/w;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x14e9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    const-string v0, "224.0.0.251"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->l:Ljava/lang/String;

    const-string v0, "FF02::FB"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->m:Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/pop/zeroconf/w;->n:I

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->q:Lcom/estrongs/android/pop/zeroconf/x;

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->r:Lcom/estrongs/android/pop/zeroconf/v;

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->s:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    invoke-static {}, Lcom/estrongs/android/util/an;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "network error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v2, "mylockthereturn"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    if-nez p2, :cond_2

    const-string v0, "224.0.0.251"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->l:Ljava/lang/String;

    const-string v0, "FF02::FB"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->m:Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/pop/zeroconf/w;->n:I

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->g:Ljava/net/InetAddress;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".local."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/net/InetAddress;)V

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/zeroconf/x;-><init>(Lcom/estrongs/android/pop/zeroconf/w;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->q:Lcom/estrongs/android/pop/zeroconf/x;

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->q:Lcom/estrongs/android/pop/zeroconf/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/x;->start()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    if-ne p2, v4, :cond_3

    const-string v0, "239.2.0.251"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->l:Ljava/lang/String;

    const-string v0, "FF02::FC"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->m:Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/pop/zeroconf/w;->n:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string v0, "239.2.0.252"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->l:Ljava/lang/String;

    const-string v0, "FF02::FD"

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->m:Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/pop/zeroconf/w;->n:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcom/estrongs/android/pop/zeroconf/u;)Lcom/estrongs/android/pop/zeroconf/u;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/u;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/zeroconf/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/u;
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v0, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->q:Lcom/estrongs/android/pop/zeroconf/x;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/pop/zeroconf/d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/d;->f()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/estrongs/android/pop/zeroconf/u;Lcom/estrongs/android/pop/zeroconf/o;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/estrongs/android/pop/zeroconf/p;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/estrongs/android/pop/zeroconf/o;->g()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/net/Inet4Address;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/estrongs/android/pop/zeroconf/q;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/estrongs/android/pop/zeroconf/o;->g()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/net/Inet6Address;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/zeroconf/w;Lcom/estrongs/android/pop/zeroconf/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/d;)V

    return-void
.end method

.method private a(Ljava/net/InetAddress;)V
    .locals 5

    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->o:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->o:Ljava/net/InetAddress;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/w;->c()V

    :cond_1
    new-instance v0, Ljava/net/MulticastSocket;

    iget v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->n:I

    invoke-direct {v0, v2}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/w;->o:Ljava/net/InetAddress;

    iget v4, p0, Lcom/estrongs/android/pop/zeroconf/w;->n:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->o:Ljava/net/InetAddress;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/estrongs/android/pop/zeroconf/n;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/estrongs/android/pop/zeroconf/r;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->r:Lcom/estrongs/android/pop/zeroconf/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->r:Lcom/estrongs/android/pop/zeroconf/v;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/zeroconf/v;->b(Lcom/estrongs/android/pop/zeroconf/u;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    instance-of v1, v0, Lcom/estrongs/android/pop/zeroconf/s;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######## get serivce "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/pop/zeroconf/s;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/zeroconf/u;

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/pop/zeroconf/s;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/s;->a()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/pop/zeroconf/s;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/s;->h()I

    move-result v1

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/s;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/s;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v1, v0}, Lcom/estrongs/android/pop/zeroconf/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/u;)Lcom/estrongs/android/pop/zeroconf/u;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v1, v2, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->s:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/w;->u:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/w;->u:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/net/Inet4Address;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "#########domain4Map add service"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/w;->v:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/w;->v:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/u;->a(Ljava/net/Inet6Address;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "#########domain6Map add service"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    :try_start_4
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/e;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/zeroconf/e;-><init>(I)V

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    sget-object v5, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_SRV:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    sget-object v6, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lcom/estrongs/android/pop/zeroconf/g;->a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    sget-object v5, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_TXT:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    sget-object v6, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lcom/estrongs/android/pop/zeroconf/g;->a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, v1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    sget-object v5, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_A:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    sget-object v6, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lcom/estrongs/android/pop/zeroconf/g;->a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    iget-object v1, v1, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_AAAA:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    sget-object v5, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v6, 0x0

    invoke-static {v1, v2, v5, v6}, Lcom/estrongs/android/pop/zeroconf/g;->a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    :cond_7
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/e;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    instance-of v1, v0, Lcom/estrongs/android/pop/zeroconf/p;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/p;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    if-eqz v1, :cond_9

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######## get IPv4 address "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    sget-object v2, Lcom/estrongs/android/pop/zeroconf/w;->u:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_5
    sget-object v5, Lcom/estrongs/android/pop/zeroconf/w;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/p;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/p;->g()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/zeroconf/w;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/zeroconf/u;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/u;Lcom/estrongs/android/pop/zeroconf/o;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/u;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_b
    instance-of v1, v0, Lcom/estrongs/android/pop/zeroconf/q;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/q;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    if-eqz v1, :cond_c

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######## get IPv6 address "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    sget-object v2, Lcom/estrongs/android/pop/zeroconf/w;->v:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_7
    sget-object v5, Lcom/estrongs/android/pop/zeroconf/w;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/q;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/q;->g()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/zeroconf/w;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/zeroconf/u;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/u;Lcom/estrongs/android/pop/zeroconf/o;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/u;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_e
    instance-of v1, v0, Lcom/estrongs/android/pop/zeroconf/t;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/t;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/t;->g()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/u;->a([B)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->r:Lcom/estrongs/android/pop/zeroconf/v;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    if-eqz v0, :cond_10

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "#########to add service"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->r:Lcom/estrongs/android/pop/zeroconf/v;

    invoke-interface {v2, v0}, Lcom/estrongs/android/pop/zeroconf/v;->a(Lcom/estrongs/android/pop/zeroconf/u;)V

    goto :goto_4

    :cond_11
    return-void

    :cond_12
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/zeroconf/w;)Ljava/net/MulticastSocket;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/u;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v4, v0, Lcom/estrongs/android/pop/zeroconf/u;->e:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method private b(Lcom/estrongs/android/pop/zeroconf/d;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/zeroconf/w;->c(Lcom/estrongs/android/pop/zeroconf/d;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/zeroconf/w;Lcom/estrongs/android/pop/zeroconf/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/zeroconf/w;->b(Lcom/estrongs/android/pop/zeroconf/d;)V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->o:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    iput-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->o:Ljava/net/InetAddress;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private c(Lcom/estrongs/android/pop/zeroconf/d;)V
    .locals 5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/d;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/g;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/pop/zeroconf/g;->b(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/zeroconf/e;

    const v0, 0x8400

    const/4 v3, 0x1

    const/16 v4, 0x5b4

    invoke-direct {v1, v0, v3, v4}, Lcom/estrongs/android/pop/zeroconf/e;-><init>(IZI)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/d;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(I)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/n;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/a;Lcom/estrongs/android/pop/zeroconf/n;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->i:Z

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "#########handleQuery send answer"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/e;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/u;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/w;->s:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/pop/zeroconf/e;

    invoke-direct {v2, v6}, Lcom/estrongs/android/pop/zeroconf/e;-><init>(I)V

    :try_start_0
    sget-object v3, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_PTR:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/estrongs/android/pop/zeroconf/g;->a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    int-to-long v0, p2

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->k:Ljava/util/ArrayList;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Lcom/estrongs/android/pop/zeroconf/e;)V
    .locals 5

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/e;->q()[B

    move-result-object v0

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/w;->o:Ljava/net/InetAddress;

    iget v4, p0, Lcom/estrongs/android/pop/zeroconf/w;->n:I

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/pop/zeroconf/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/w;->r:Lcom/estrongs/android/pop/zeroconf/v;

    return-void
.end method

.method public a()Z
    .locals 14

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    if-nez v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v11, Lcom/estrongs/android/pop/zeroconf/e;

    const v0, 0x8400

    invoke-direct {v11, v0}, Lcom/estrongs/android/pop/zeroconf/e;-><init>(I)V

    const/4 v6, 0x0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/r;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v1, v1, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v5, v5, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/zeroconf/r;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {v11, v6, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/a;Lcom/estrongs/android/pop/zeroconf/n;)V

    const/4 v12, 0x0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/s;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v1, v1, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    iget v7, v7, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    iget-object v8, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/zeroconf/s;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/a;Lcom/estrongs/android/pop/zeroconf/n;)V

    const/4 v0, 0x2

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v11}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/e;)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_1

    :cond_1
    iput-object v13, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    move v0, v10

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v13, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v13, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v9, Lcom/estrongs/android/pop/zeroconf/e;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/estrongs/android/pop/zeroconf/e;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_ANY:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/g;->a(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)Lcom/estrongs/android/pop/zeroconf/g;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/s;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x0

    const/16 v4, 0xe10

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/zeroconf/s;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/n;)V

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    invoke-virtual {p0, v9}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/e;)V

    const-wide/16 v4, 0x104

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v9, Lcom/estrongs/android/pop/zeroconf/e;

    const v0, 0x8400

    invoke-direct {v9, v0}, Lcom/estrongs/android/pop/zeroconf/e;-><init>(I)V

    const/4 v0, 0x0

    new-instance v2, Lcom/estrongs/android/pop/zeroconf/r;

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v5, 0x0

    const/16 v6, 0xe10

    move-object v3, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/zeroconf/r;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {v9, v0, v2}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/a;Lcom/estrongs/android/pop/zeroconf/n;)V

    const/4 v10, 0x0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/s;

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;->CLASS_IN:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;

    const/4 v3, 0x1

    const/16 v4, 0xe10

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/zeroconf/s;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/a;Lcom/estrongs/android/pop/zeroconf/n;)V

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    invoke-virtual {p0, v9}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/e;)V

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move v0, v2

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->f:Ljava/lang/String;

    invoke-direct {v0, v1, p3, v2}, Lcom/estrongs/android/pop/zeroconf/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method a(Ljava/net/DatagramPacket;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/w;->p:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->h:Lcom/estrongs/android/pop/zeroconf/u;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->q:Lcom/estrongs/android/pop/zeroconf/x;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->r:Lcom/estrongs/android/pop/zeroconf/v;

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/w;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/w;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/zeroconf/w;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/w;->t:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
