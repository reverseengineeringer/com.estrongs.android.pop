.class public Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;


# instance fields
.field private final context:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->context:Ljavax/net/ssl/SSLContext;

    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->init(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->init(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->init(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;->init(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 2

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    return-object p1
.end method
