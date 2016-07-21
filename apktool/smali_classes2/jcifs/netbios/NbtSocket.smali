.class public Ljcifs/netbios/NbtSocket;
.super Ljava/net/Socket;


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final SSN_SRVC_PORT:I = 0x8b

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private address:Ljcifs/netbios/NbtAddress;

.field private calledName:Ljcifs/netbios/Name;

.field private soTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljcifs/netbios/NbtSocket;-><init>(Ljcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljcifs/netbios/NbtSocket;-><init>(Ljcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3

    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez p3, :cond_0

    const/16 p3, 0x8b

    :cond_0
    invoke-direct {p0, v0, p3, p4, p5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    iput-object p1, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    if-nez p2, :cond_1

    iget-object v0, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput-object v0, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    :goto_0
    const-string v0, "jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NbtSocket;->soTimeout:I

    invoke-direct {p0}, Ljcifs/netbios/NbtSocket;->connect()V

    return-void

    :cond_1
    new-instance v0, Ljcifs/netbios/Name;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    goto :goto_0
.end method

.method private connect()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v0, 0x200

    new-array v0, v0, [B

    :try_start_0
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Ljcifs/netbios/SessionRequestPacket;

    iget-object v4, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    sget-object v5, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-direct {v3, v4, v5}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v3

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v2, p0, Ljcifs/netbios/NbtSocket;->soTimeout:I

    invoke-virtual {p0, v2}, Ljcifs/netbios/NbtSocket;->setSoTimeout(I)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v7, v6}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    throw v0

    :sswitch_0
    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-le v0, v7, :cond_0

    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session established ok with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    new-instance v1, Ljcifs/netbios/NbtException;

    invoke-direct {v1, v7, v0}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v1

    :sswitch_2
    new-instance v0, Ljcifs/netbios/NbtException;

    const/4 v1, -0x1

    invoke-direct {v0, v7, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljcifs/netbios/SocketInputStream;

    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/netbios/SocketInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-super {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getNbtAddress()Ljcifs/netbios/NbtAddress;
    .locals 1

    iget-object v0, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Ljcifs/netbios/SocketOutputStream;

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/netbios/SocketOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NbtSocket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
