.class Ljcifs/netbios/NameServiceClient;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_RCV_BUF_SIZE:I = 0x240

.field static final DEFAULT_RETRY_COUNT:I = 0x2

.field static final DEFAULT_RETRY_TIMEOUT:I = 0xbb8

.field static final DEFAULT_SND_BUF_SIZE:I = 0x240

.field static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final LADDR:Ljava/net/InetAddress;

.field private static final LPORT:I

.field static final NAME_SERVICE_UDP_PORT:I = 0x89

.field private static final RCV_BUF_SIZE:I

.field static final RESOLVER_BCAST:I = 0x2

.field static final RESOLVER_LMHOSTS:I = 0x1

.field static final RESOLVER_WINS:I = 0x3

.field private static final RETRY_COUNT:I

.field private static final RETRY_TIMEOUT:I

.field private static final RO:Ljava/lang/String;

.field private static final SND_BUF_SIZE:I

.field private static final SO_TIMEOUT:I

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field baddr:Ljava/net/InetAddress;

.field private closeTimeout:I

.field private in:Ljava/net/DatagramPacket;

.field laddr:Ljava/net/InetAddress;

.field private lport:I

.field private nextNameTrnId:I

.field private out:Ljava/net/DatagramPacket;

.field private rcv_buf:[B

.field private resolveOrder:[I

.field private responseTable:Ljava/util/HashMap;

.field private snd_buf:[B

.field private socket:Ljava/net/DatagramSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x240

    const-string v0, "jcifs.netbios.snd_buf_size"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    const-string v0, "jcifs.netbios.rcv_buf_size"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    const-string v0, "jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    const-string v0, "jcifs.netbios.retryCount"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    const-string v0, "jcifs.netbios.retryTimeout"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    const-string v0, "jcifs.netbios.lport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    const-string v0, "jcifs.netbios.laddr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    const-string v0, "jcifs.resolveOrder"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    sget v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    sget-object v1, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Ljcifs/netbios/NameServiceClient;-><init>(ILjava/net/InetAddress;)V

    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    iput v1, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    iput p1, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    :try_start_0
    const-string v0, "jcifs.netbios.baddr"

    const-string v2, "255.255.255.255"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v0, v2}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v0, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    sget v0, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    sget v3, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    const/16 v5, 0x89

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    sget v3, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    sget-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v9, [I

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v8, v0, v1

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v9, v0, v8

    :goto_1
    return-void

    :cond_1
    new-array v0, v10, [I

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v8, v0, v1

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v10, v0, v8

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v9, v0, v9

    goto :goto_1

    :cond_2
    new-array v3, v10, [I

    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v4, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LMHOSTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v2, v0, 0x1

    aput v8, v3, v0

    move v0, v2

    goto :goto_2

    :cond_4
    const-string v5, "WINS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v2, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-le v2, v8, :cond_3

    sget-object v2, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v5, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v2, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v0, 0x1

    aput v10, v3, v0

    move v0, v2

    goto :goto_2

    :cond_6
    const-string v5, "BCAST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v2, v0, 0x1

    aput v9, v3, v0

    move v0, v2

    goto :goto_2

    :cond_7
    const-string v5, "DNS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-le v5, v8, :cond_3

    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown resolver method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-array v2, v0, [I

    iput-object v2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method ensureOpen(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    if-eqz v0, :cond_0

    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JCIFS-NameServiceClient"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v3, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    new-instance v4, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v4}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, v3, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    iget-object v0, v3, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    iget-boolean v0, v3, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v0, v3, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    sget v0, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    :cond_0
    :goto_2
    :try_start_0
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v3, v4, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v2, v4, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v2, :cond_5

    iget v2, v4, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v2, :cond_5

    iget-object v0, v4, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    return-object v0

    :cond_1
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iput-boolean v2, v3, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v2, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-le v2, v1, :cond_4

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_6

    iget-boolean v2, v3, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-nez v2, :cond_0

    :cond_6
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v4, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v4, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    new-instance v5, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v5}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    if-eqz p2, :cond_5

    iput-object p2, v4, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    aget-byte v2, v2, v7

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, v4, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    sget v0, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    :cond_1
    :try_start_0
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v4, v5, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v2, v5, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v2, :cond_3

    iget v2, v5, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v2, :cond_3

    iget-object v0, v5, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v5, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v1, v1, v0

    iget-object v1, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    iput v2, v1, Ljcifs/netbios/Name;->srcHashCode:I

    iget-object v1, v5, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-le v2, v1, :cond_2

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_4

    iget-boolean v2, v4, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-nez v2, :cond_1

    :cond_4
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    :try_start_1
    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_0

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, v2, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    const/4 v6, 0x0

    iput v6, v3, Ljcifs/netbios/Name;->srcHashCode:I

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v2, v2, v0

    if-ne v2, v7, :cond_7

    iget-object v2, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    const-string v3, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v2, v3, :cond_7

    iget v2, p1, Ljcifs/netbios/Name;->hexCode:I

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_7

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v4, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    const/4 v2, 0x0

    iput-boolean v2, v4, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    :goto_3
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_6

    :try_start_2
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v4, v5, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-boolean v2, v5, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v2, :cond_9

    iget v2, v5, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v2, :cond_9

    iget-object v2, v5, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v3, v4, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    iput v3, v2, Ljcifs/netbios/Name;->srcHashCode:I

    iget-object v2, v5, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v2, v4, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    const/4 v2, 0x1

    iput-boolean v2, v4, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-le v3, v1, :cond_8

    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8
    new-instance v2, Ljava/net/UnknownHostException;

    iget-object v3, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v2, v2, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v2, v7, :cond_6

    move v2, v3

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getNextNameTrnId()I
    .locals 2

    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    :cond_0
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    return v0
.end method

.method getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .locals 6

    const/4 v0, 0x0

    new-instance v3, Ljcifs/netbios/NodeStatusResponse;

    invoke-direct {v3, p1}, Ljcifs/netbios/NodeStatusResponse;-><init>(Ljcifs/netbios/NbtAddress;)V

    new-instance v4, Ljcifs/netbios/NodeStatusRequest;

    new-instance v1, Ljcifs/netbios/Name;

    const-string v2, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v4, v1}, Ljcifs/netbios/NodeStatusRequest;-><init>(Ljcifs/netbios/Name;)V

    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v4, Ljcifs/netbios/NodeStatusRequest;->addr:Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    :try_start_0
    sget v1, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v4, v3, v1}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, v3, Ljcifs/netbios/NodeStatusResponse;->received:Z

    if-eqz v1, :cond_3

    iget v1, v3, Ljcifs/netbios/NodeStatusResponse;->resultCode:I

    if-nez v1, :cond_3

    iget-object v1, v4, Ljcifs/netbios/NodeStatusRequest;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    :goto_1
    iget-object v2, v3, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, v3, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    aget-object v2, v2, v0

    iget-object v2, v2, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput v1, v2, Ljcifs/netbios/Name;->srcHashCode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v3, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    return-object v0

    :cond_2
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v1, v1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x3

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    sget v1, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-le v0, v5, :cond_1

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v1, "NetBIOS: new data read from socket"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/netbios/NameServicePacket;->readNameTrnId([BI)I

    move-result v0

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NameServicePacket;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    if-nez v1, :cond_0

    monitor-enter v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljcifs/netbios/NameServicePacket;->readWireFormat([BI)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-le v1, v5, :cond_2

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    throw v0
.end method

.method send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    .locals 10

    const/4 v2, 0x0

    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-enter p2

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_4

    :try_start_0
    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->getNextNameTrnId()I

    move-result v0

    iput v0, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    new-instance v1, Ljava/lang/Integer;

    iget v0, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v2, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Ljcifs/netbios/NameServicePacket;->writeWireFormat([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    const/4 v0, 0x0

    iput-boolean v0, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v0, p3, 0x3e8

    invoke-virtual {p0, v0}, Ljcifs/netbios/NameServiceClient;->ensureOpen(I)V

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v5, 0x0

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v0, v2, v5, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_1
    if-lez p3, :cond_3

    int-to-long v6, p3

    invoke-virtual {p2, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v0, :cond_2

    iget v0, p1, Ljcifs/netbios/NameServicePacket;->questionType:I

    iget v2, p2, Ljcifs/netbios/NameServicePacket;->recordType:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v2, :cond_2

    :try_start_4
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_7
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :goto_5
    :try_start_8
    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    int-to-long v6, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v8

    sub-long/2addr v8, v4

    sub-long/2addr v6, v8

    long-to-int p3, v6

    goto :goto_1

    :cond_3
    :try_start_a
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-object v0, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_4
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    :cond_5
    :try_start_d
    iget-object v0, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-ne v0, v4, :cond_6

    invoke-static {}, Ljcifs/netbios/NbtAddress;->switchWINS()Ljava/net/InetAddress;

    :cond_6
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    monitor-exit v2

    move v0, v3

    move-object v2, v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method tryClose()V
    .locals 2

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
