.class Lcom/jcraft/jsch/PortWatcher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static i:Ljava/util/Vector;

.field private static j:Ljava/net/InetAddress;


# instance fields
.field a:Lcom/jcraft/jsch/Session;

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/net/InetAddress;

.field f:Ljava/lang/Runnable;

.field g:Ljava/net/ServerSocket;

.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/net/InetAddress;

    :try_start_0
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/jcraft/jsch/PortWatcher;->h:I

    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    iput p3, p0, Lcom/jcraft/jsch/PortWatcher;->b:I

    iput-object p4, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/String;

    iput p5, p0, Lcom/jcraft/jsch/PortWatcher;->c:I

    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    if-nez p6, :cond_1

    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    invoke-direct {v0, p3, v1, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    :goto_0
    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/jcraft/jsch/PortWatcher;->b:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    invoke-interface {p6, p3, v0, v1}, Lcom/jcraft/jsch/ServerSocketFactory;->a(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PortForwardingL: local port "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be bound."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v2, v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    monitor-enter v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PortForwardingL: invalid address "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_2
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/PortWatcher;

    iget-object v4, v0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    if-ne v4, p0, :cond_3

    iget v4, v0, Lcom/jcraft/jsch/PortWatcher;->b:I

    if-ne v4, p2, :cond_3

    sget-object v4, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/net/InetAddress;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, v0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    invoke-virtual {v4, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static a(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;
    .locals 7

    invoke-static {p1}, Lcom/jcraft/jsch/PortWatcher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/jcraft/jsch/PortWatcher;->a(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PortForwardingL: local port "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/PortWatcher;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/PortWatcher;-><init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V

    sget-object v1, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string p0, "0.0.0.0"

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string v0, "localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "127.0.0.1"

    goto :goto_0
.end method

.method static a(Lcom/jcraft/jsch/Session;)V
    .locals 7

    const/4 v3, 0x0

    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [Lcom/jcraft/jsch/PortWatcher;

    move v4, v3

    move v2, v3

    :goto_0
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_0

    move v0, v3

    :goto_1
    if-lt v0, v2, :cond_1

    monitor-exit v5

    return-void

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/PortWatcher;

    iget-object v1, v0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    if-ne v1, p0, :cond_2

    invoke-virtual {v0}, Lcom/jcraft/jsch/PortWatcher;->a()V

    add-int/lit8 v1, v2, 0x1

    aput-object v0, v6, v2

    move v0, v1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :cond_1
    aget-object v1, v6, v0

    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/lang/Runnable;

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/PortWatcher;->h:I

    return-void
.end method

.method public run()V
    .locals 4

    iput-object p0, p0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/lang/Runnable;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/PortWatcher;->a()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b()V

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->a(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->a(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/jcraft/jsch/PortWatcher;->c:I

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->i(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j(I)V

    iget v0, p0, Lcom/jcraft/jsch/PortWatcher;->h:I

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b(I)V

    iget v0, v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;->q:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
