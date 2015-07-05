.class public Lorg/apache/commons/net/DefaultDatagramSocketFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/net/DatagramSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    return-object v0
.end method

.method public createDatagramSocket(I)Ljava/net/DatagramSocket;
    .locals 1

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    return-object v0
.end method

.method public createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;
    .locals 1

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    return-object v0
.end method
