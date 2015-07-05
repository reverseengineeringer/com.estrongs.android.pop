.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ak:[B

.field private static final al:[B

.field static f:Lcom/jcraft/jsch/Random;


# instance fields
.field private A:[B

.field private B:[B

.field private C:[B

.field private D:[B

.field private E:[B

.field private F:[B

.field private G:I

.field private H:I

.field private I:Lcom/jcraft/jsch/Cipher;

.field private J:Lcom/jcraft/jsch/Cipher;

.field private K:Lcom/jcraft/jsch/MAC;

.field private L:Lcom/jcraft/jsch/MAC;

.field private M:[B

.field private N:[B

.field private O:Lcom/jcraft/jsch/Compression;

.field private P:Lcom/jcraft/jsch/Compression;

.field private Q:Lcom/jcraft/jsch/IO;

.field private R:Ljava/net/Socket;

.field private S:I

.field private volatile T:Z

.field private U:Z

.field private V:Ljava/lang/Thread;

.field private W:Ljava/lang/Object;

.field private X:Ljava/util/Hashtable;

.field private Y:Lcom/jcraft/jsch/Proxy;

.field private Z:Lcom/jcraft/jsch/UserInfo;

.field a:[Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:I

.field private ac:I

.field private ad:Lcom/jcraft/jsch/IdentityRepository;

.field private ae:Lcom/jcraft/jsch/HostKeyRepository;

.field private af:J

.field private ag:Z

.field private ah:I

.field private ai:I

.field private aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field private am:Lcom/jcraft/jsch/HostKey;

.field b:Z

.field c:Z

.field d:Ljava/io/InputStream;

.field e:Ljava/io/OutputStream;

.field g:Lcom/jcraft/jsch/Buffer;

.field h:Lcom/jcraft/jsch/Packet;

.field i:Lcom/jcraft/jsch/SocketFactory;

.field protected j:Z

.field k:I

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:I

.field p:Ljava/lang/String;

.field q:[B

.field r:Lcom/jcraft/jsch/JSch;

.field s:[I

.field t:[I

.field u:Ljava/lang/Runnable;

.field private v:[B

.field private w:[B

.field private x:[B

.field private y:[B

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "keepalive@jcraft.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->ak:[B

    const-string v0, "no-more-sessions@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->al:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-JSCH-0.1.51"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->w:[B

    iput v3, p0, Lcom/jcraft/jsch/Session;->G:I

    iput v3, p0, Lcom/jcraft/jsch/Session;->H:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->S:I

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->T:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->U:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->b:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->c:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->d:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->e:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->X:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->aa:Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->ab:I

    iput v4, p0, Lcom/jcraft/jsch/Session;->ac:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ae:Lcom/jcraft/jsch/HostKeyRepository;

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Session;->af:J

    const/4 v0, 0x6

    iput v0, p0, Lcom/jcraft/jsch/Session;->k:I

    iput v3, p0, Lcom/jcraft/jsch/Session;->l:I

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->n:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, Lcom/jcraft/jsch/Session;->o:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->q:[B

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->ag:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->t:[I

    iput v5, p0, Lcom/jcraft/jsch/Session;->ah:I

    iput v5, p0, Lcom/jcraft/jsch/Session;->ai:I

    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$GlobalRequestReply;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->am:Lcom/jcraft/jsch/HostKey;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    iput-object p2, p0, Lcom/jcraft/jsch/Session;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->n:Ljava/lang/String;

    iput p4, p0, Lcom/jcraft/jsch/Session;->o:I

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->m()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "user.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "username is not given."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)I
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a(Ljava/lang/Thread;)V

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v4, p2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    const-string v4, "tcpip-forward"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b()I

    move-result v0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a(Ljava/lang/Thread;)V

    if-eq v0, v6, :cond_3

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remote port forwarding failed for listen port "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a(Ljava/lang/Thread;)V

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    const-wide/16 v4, 0x3e8

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :try_start_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c()I

    move-result v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v1, 0x40000

    if-eq p4, v1, :cond_5

    if-eqz p3, :cond_5

    :goto_0
    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int v1, p5, v0

    :goto_1
    if-gtz v1, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-interface {p3, v0, v4}, Lcom/jcraft/jsch/MAC;->a([BI)V

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    if-le v1, v0, :cond_4

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v3, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/IO;->c([BII)V

    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-interface {p3, v2, v4, v0}, Lcom/jcraft/jsch/MAC;->a([BII)V

    :cond_3
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move-object p3, v0

    goto :goto_0
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    return-void
.end method

.method private a(Lcom/jcraft/jsch/ChannelSession;)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->a(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "ForwardAgent"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/ChannelSession;->a(Z)V

    :cond_2
    const-string v1, "RequestTTY"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSession;->b(Z)V

    goto :goto_0
.end method

.method private a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->d()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->e()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->f()Lcom/jcraft/jsch/HASH;

    move-result-object v5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->z:[B

    if-nez v0, :cond_0

    array-length v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->z:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v1, v3

    invoke-static {v3, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->z:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v0, v6, v1}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->A:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v1, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->B:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v1, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->C:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v1, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->D:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v1, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->E:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v0, v6, v1}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->F:[B

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->D:[B

    array-length v1, v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->D:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->B:[B

    invoke-interface {v0, v1, v4, v6}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->ah:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->F:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->F:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->F:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->M:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->N:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->C:[B

    array-length v1, v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->C:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->A:[B

    invoke-interface {v0, v1, v4, v6}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->ai:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->E:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->E:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->E:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->D:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->D:[B

    array-length v1, v1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->D:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->D:[B

    array-length v8, v8

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->D:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->D:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_3

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->C:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v5, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->C:[B

    array-length v1, v1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->C:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->C:[B

    array-length v8, v8

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->C:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->C:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_3
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "StrictHostKeyChecking"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aa:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->aa:Ljava/lang/String;

    :cond_0
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->g()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aa:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->j()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v1

    const-string v0, "HashKnownHosts"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "yes"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, v1, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v0, p1, v5}, Lcom/jcraft/jsch/KnownHosts;->b(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->am:Lcom/jcraft/jsch/HostKey;

    :goto_0
    monitor-enter v1

    :try_start_0
    invoke-interface {v1, p1, v5}, Lcom/jcraft/jsch/HostKeyRepository;->a(Ljava/lang/String;[B)I

    move-result v8

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ask"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_2
    if-ne v8, v11, :cond_19

    monitor-enter v1

    :try_start_1
    invoke-interface {v1}, Lcom/jcraft/jsch/HostKeyRepository;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    const-string v0, "known_hosts"

    :cond_3
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " host key has just been changed.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "The fingerprint for the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " key sent by the remote host is\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Please contact your system administrator.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Add correct host key in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " to get rid of this message."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ask"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HostKey has been changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v0, p1, v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->am:Lcom/jcraft/jsch/HostKey;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v9, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    monitor-enter v1

    :try_start_4
    const-string v0, "DSA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ssh-dss"

    :goto_2
    const/4 v9, 0x0

    invoke-interface {v1, p1, v0, v9}, Lcom/jcraft/jsch/HostKeyRepository;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v0, v3

    :goto_3
    const-string v9, "ask"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "yes"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_8
    if-eqz v8, :cond_c

    if-nez v0, :cond_c

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reject HostKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :try_start_5
    const-string v0, "ssh-rsa"

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "The authenticity of host \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' can\'t be established.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " key fingerprint is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "Are you sure you want to continue connecting?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reject HostKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v3

    :cond_c
    const-string v7, "no"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    if-ne v3, v8, :cond_18

    move v4, v3

    :goto_4
    if-nez v8, :cond_d

    const-string v0, "DSA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "ssh-dss"

    :goto_5
    invoke-interface {v1, p1, v0}, Lcom/jcraft/jsch/HostKeyRepository;->a(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    array-length v7, v5

    invoke-static {v5, v2, v7}, Lcom/jcraft/jsch/Util;->b([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v5

    :goto_6
    array-length v7, v0

    if-lt v2, v7, :cond_14

    :cond_d
    if-nez v8, :cond_e

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Host \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' is known and mathces the "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " host key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_e
    if-eqz v4, :cond_f

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Permanently added \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to the list of known hosts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_f
    if-eqz v4, :cond_10

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->am:Lcom/jcraft/jsch/HostKey;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/HostKeyRepository;->a(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_10
    return-void

    :cond_11
    if-ne v8, v3, :cond_12

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnknownHostKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key fingerprint is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HostKey has been changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const-string v0, "ssh-rsa"

    goto/16 :goto_5

    :cond_14
    aget-object v7, v0, v8

    invoke-virtual {v7}, Lcom/jcraft/jsch/HostKey;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    aget-object v7, v0, v2

    invoke-virtual {v7}, Lcom/jcraft/jsch/HostKey;->e()Ljava/lang/String;

    move-result-object v7

    const-string v9, "@revoked"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " host key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is marked as revoked.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This could mean that a stolen key is being used to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "impersonate this host."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has provided revoked key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_16
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "revoked HostKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_18
    move v4, v0

    goto/16 :goto_4

    :cond_19
    move v0, v2

    goto/16 :goto_3
.end method

.method static a(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->b()I

    move-result v1

    :goto_0
    array-length v0, p4

    if-lt v0, p6, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->k()V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->c([B)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->a([B)V

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {p5, v0, v4, v2}, Lcom/jcraft/jsch/HASH;->a([BII)V

    array-length v0, p4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v2, p4

    invoke-static {p4, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v2

    array-length v3, p4

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->d([B)V

    move-object p4, v0

    goto :goto_0
.end method

.method private b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->y:[B

    :goto_0
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v1, p1, Lcom/jcraft/jsch/Buffer;->d:I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->y:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->k()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->y:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->x:[B

    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->a([B[B)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Algorithm negotiation fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->y:[B

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->U:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->v:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->w:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->x:[B

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Lcom/jcraft/jsch/Packet;)V
    .locals 2

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->a(Lcom/jcraft/jsch/Packet;)V

    iget v0, p0, Lcom/jcraft/jsch/Session;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->H:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static f(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v4

    new-array v4, v4, [B

    invoke-interface {v0, v2, v3, v4}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/Session$Forwarding;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$Forwarding;)V

    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_5

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseForwarding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseForwarding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :try_start_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    const/4 v0, 0x0

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_6

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseForwarding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_a

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v0, "0.0.0.0"

    :cond_8
    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "127.0.0.1"

    :cond_9
    iput-object v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    :goto_3
    return-object v1

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    const-string v0, "127.0.0.1"

    iput-object v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Compression;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->U:Z

    if-eqz v1, :cond_0

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x6

    :try_start_1
    const-string v1, "compression_level"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Compression;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Compression;->a(II)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Compression;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->U:Z

    if-eqz v1, :cond_0

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Compression;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Compression;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckCiphers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_3
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cipher.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    :goto_1
    array-length v7, v6

    if-lt v0, v7, :cond_4

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_4
    aget-object v7, v6, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private k()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "cipher.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CheckCiphers"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->j(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v2, "kex"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckKexes"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/Session;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available kexes."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-boolean v10, p0, Lcom/jcraft/jsch/Session;->ag:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jcraft/jsch/Session;->af:J

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v4, Lcom/jcraft/jsch/Packet;

    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->a(B)V

    sget-object v5, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    iget-object v7, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v8, v3, Lcom/jcraft/jsch/Buffer;->c:I

    const/16 v9, 0x10

    invoke-interface {v6, v7, v8, v9}, Lcom/jcraft/jsch/Random;->a([BII)V

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/jcraft/jsch/Buffer;->b(I)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v2, "server_host_key"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "mac.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "mac.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "compression.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "compression.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "lang.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "lang.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v3, v11}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v3, v11}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->c(I)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->x:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->x:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v10, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private k(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckKexes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_3
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_4

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v2

    goto :goto_0

    :cond_4
    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository;->a(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v6

    invoke-interface {v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->p:Ljava/lang/String;

    :cond_2
    invoke-interface {v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    :cond_3
    invoke-interface {v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iput v2, p0, Lcom/jcraft/jsch/Session;->o:I

    :cond_4
    const-string v2, "kex"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "server_host_key"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.c2s"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.s2c"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.c2s"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.s2c"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.c2s"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.s2c"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression_level"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "StrictHostKeyChecking"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "HashKnownHosts"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "PreferredAuthentications"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "MaxAuthTries"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "ClearAllForwardings"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "HostKeyAlias"

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->e(Ljava/lang/String;)V

    :cond_5
    const-string v2, "UserKnownHostsFile"

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lcom/jcraft/jsch/KnownHosts;

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-direct {v3, v5}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/HostKeyRepository;)V

    :cond_6
    const-string v2, "IdentityFile"

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository;->a(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v2, "IdentityFile"

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move v0, v1

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_b

    move-object v0, v2

    :goto_2
    array-length v2, v7

    array-length v3, v0

    sub-int/2addr v2, v3

    if-lez v2, :cond_7

    new-instance v8, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch;->a()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v8, v2, v3}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    move v2, v1

    :goto_3
    array-length v3, v7

    if-lt v2, v3, :cond_d

    invoke-virtual {p0, v8}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/IdentityRepository;)V

    :cond_7
    const-string v0, "ServerAliveInterval"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->c(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    :goto_4
    const-string v0, "ConnectTimeout"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->b(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    :goto_5
    const-string v0, "MaxAuthTries"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "MaxAuthTries"

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "ClearAllForwardings"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ClearAllForwardings"

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_2

    :cond_d
    aget-object v5, v7, v2

    move v3, v1

    :goto_6
    array-length v9, v0

    if-lt v3, v9, :cond_e

    move-object v3, v5

    :goto_7
    if-nez v3, :cond_10

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    aget-object v9, v0, v3

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    move-object v3, v4

    goto :goto_7

    :cond_10
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-static {v3, v4, v5}, Lcom/jcraft/jsch/IdentityFile;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->a(Lcom/jcraft/jsch/Identity;)V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private n()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "ClearAllForwardings"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository;->a(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v2

    const-string v0, "LocalForward"

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_3

    :cond_2
    const-string v0, "RemoteForward"

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->c(Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->b(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 4

    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/PortWatcher;->a(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/PortWatcher;->a(I)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PortWatcher Thread for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget v0, v0, Lcom/jcraft/jsch/PortWatcher;->b:I

    return v0
.end method

.method public a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .locals 11

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget v3, p0, Lcom/jcraft/jsch/Session;->ah:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget v1, p0, Lcom/jcraft/jsch/Session;->ah:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/jcraft/jsch/Session;->ah:I

    iget-object v4, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_1
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int v4, v0, v1

    const/4 v0, 0x5

    if-lt v4, v0, :cond_2

    const/high16 v0, 0x40000

    if-le v4, v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    const/high16 v5, 0x40000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_3
    add-int/lit8 v0, v4, 0x4

    iget v1, p0, Lcom/jcraft/jsch/Session;->ah:I

    sub-int v8, v0, v1

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    new-array v0, v0, [B

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    :cond_4
    iget v0, p0, Lcom/jcraft/jsch/Session;->ah:I

    rem-int v0, v8, v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad packet length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x40000

    iget v1, p0, Lcom/jcraft/jsch/Session;->ah:I

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_6
    if-lez v8, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    iget-object v6, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v7, p0, Lcom/jcraft/jsch/Session;->ah:I

    iget-object v9, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v10, p0, Lcom/jcraft/jsch/Session;->ah:I

    invoke-interface/range {v5 .. v10}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    iget v1, p0, Lcom/jcraft/jsch/Session;->G:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/MAC;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->M:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/MAC;->a([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->N:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->N:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->N:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, 0x40000

    if-le v8, v0, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x40000

    sub-int v5, v0, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/jcraft/jsch/Session;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->G:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->s:[I

    const/4 v2, 0x0

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v3, v3, -0x5

    sub-int v0, v3, v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Compression;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->s:[I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Compression;->b([BI[I)[B

    move-result-object v0

    if-eqz v0, :cond_b

    iput-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_a
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH_MSG_DISCONNECT: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "fail in inflater"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()V

    return-object p1

    :cond_d
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jsch/Channel;->b(J)V

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x34

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->U:Z

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->i(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 3

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->T:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "session is down"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->b()V

    instance-of v1, v2, Lcom/jcraft/jsch/ChannelSession;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/jcraft/jsch/ChannelSession;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/ChannelSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 13

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->T:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is already connected"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    sget-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "random"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Random;

    sput-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    sget-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    invoke-static {v0}, Lcom/jcraft/jsch/Packet;->a(Lcom/jcraft/jsch/Random;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connecting to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jcraft/jsch/Session;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/Session;->o:I

    invoke-static {v0, v1, p1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    :goto_1
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->T:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Connection established"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->a(Lcom/jcraft/jsch/Session;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->w:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->w:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->w:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jcraft/jsch/IO;->a([BII)V

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_6
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v2, v2

    if-lt v1, v2, :cond_a

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_2
    if-gez v1, :cond_c

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "connection is closed by foreign host"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->ag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->T:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x54

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->e(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const-string v2, "en"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->T:Z

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->q:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->d([B)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->q:[B

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->o:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/SocketFactory;->b(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    iget v4, p0, Lcom/jcraft/jsch/Session;->o:I

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/jcraft/jsch/Proxy;->a(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->b()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->c()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->a()I

    move-result v0

    if-gez v0, :cond_b

    move v12, v0

    move v0, v1

    move v1, v12

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    move v12, v0

    move v0, v1

    move v1, v12

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_d

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_d

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    add-int/lit8 v0, v0, -0x1

    :cond_d
    const/4 v1, 0x3

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/16 v2, 0x48

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_5

    :cond_e
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x7

    if-lt v0, v1, :cond_f

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x31

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    const/16 v2, 0x39

    if-eq v1, v2, :cond_10

    :cond_f
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid server\'s version string"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->v:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->v:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remote version string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->v:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Local version string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->w:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_11
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->k()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SSH_MSG_KEXINIT received"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v2

    if-ne v1, v2, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jcraft/jsch/Session;->af:J

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Buffer;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol(kex): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->b()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    if-nez v1, :cond_14

    :try_start_9
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->o:I

    invoke-direct {p0, v1, v2, v0}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    :try_end_9
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->l()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1b

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "SSH_MSG_NEWKEYS received"

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_17
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    const-string v0, "MaxAuthTries"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->k:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_18
    const/4 v3, 0x0

    :try_start_c
    const-string v0, "userauth.none"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    move-result v4

    const-string v1, "PreferredAuthentications"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ","

    invoke-static {v2, v1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-nez v4, :cond_30

    check-cast v0, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v0}, Lcom/jcraft/jsch/UserAuthNone;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_19
    :goto_5
    const-string v0, ","

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v5, v0

    move-object v6, v2

    move v0, v1

    move v2, v4

    :goto_6
    if-nez v2, :cond_2c

    if-eqz v7, :cond_2c

    array-length v1, v7

    if-lt v0, v1, :cond_1c

    move v0, v3

    :goto_7
    if-nez v2, :cond_25

    iget v1, p0, Lcom/jcraft/jsch/Session;->l:I

    iget v2, p0, Lcom/jcraft/jsch/Session;->k:I

    if-lt v1, v2, :cond_1a

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Login trials exceeds "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/jcraft/jsch/Session;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_1a
    if-eqz v0, :cond_24

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth cancel"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->ag:Z

    throw v0

    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol(newkyes): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MaxAuthTries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MaxAuthTries"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    add-int/lit8 v1, v0, 0x1

    aget-object v8, v7, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_8
    array-length v9, v5

    if-lt v4, v9, :cond_1d

    :goto_9
    if-nez v0, :cond_1f

    move v0, v1

    goto/16 :goto_6

    :cond_1d
    aget-object v9, v5, v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v0, 0x1

    goto :goto_9

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1f
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v4, "Authentications that can continue: "

    add-int/lit8 v0, v1, -0x1

    move v12, v0

    move-object v0, v4

    move v4, v12

    :goto_a
    array-length v9, v7

    if-lt v4, v9, :cond_21

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v4, v9, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Next authentication method: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v4, v9}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_20
    const/4 v4, 0x0

    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "userauth."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "userauth."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_b
    if-eqz v0, :cond_2f

    const/4 v3, 0x0

    :try_start_f
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z
    :try_end_f
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_10
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Authentication succeeded ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move v2, v0

    move v0, v1

    goto/16 :goto_6

    :cond_21
    :try_start_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v7, v4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v9, v4, 0x1

    array-length v10, v7

    if-ge v9, v10, :cond_22

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    :catch_5
    move-exception v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "failed to load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_23
    move-object v0, v4

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move v0, v2

    :goto_c
    const/4 v3, 0x1

    move v2, v0

    move v0, v1

    goto/16 :goto_6

    :catch_7
    move-exception v0

    :goto_d
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    move-result-object v4

    const-string v0, ","

    invoke-static {v4, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x0

    move-object v5, v3

    move-object v6, v4

    move v3, v1

    goto/16 :goto_6

    :catch_8
    move-exception v0

    throw v0

    :catch_9
    move-exception v0

    throw v0

    :catch_a
    move-exception v0

    :goto_f
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "an exception during authentication\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    move v0, v3

    goto/16 :goto_7

    :cond_24
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    if-eqz v0, :cond_27

    if-gtz p1, :cond_26

    iget v0, p0, Lcom/jcraft/jsch/Session;->S:I

    if-lez v0, :cond_27

    :cond_26
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    iget v1, p0, Lcom/jcraft/jsch/Session;->S:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->U:Z

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/Object;

    monitor-enter v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->T:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connect thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_28
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->n()V

    :cond_29
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->q:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->d([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->q:[B

    return-void

    :catchall_2
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_2a
    :try_start_15
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_2b

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_2b
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session.connect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto/16 :goto_f

    :catch_e
    move-exception v2

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    goto/16 :goto_d

    :catch_f
    move-exception v2

    goto/16 :goto_c

    :cond_2c
    move v0, v3

    goto/16 :goto_7

    :cond_2d
    move v0, v1

    goto/16 :goto_e

    :cond_2e
    move v2, v0

    move v0, v1

    goto/16 :goto_6

    :cond_2f
    move v0, v1

    goto/16 :goto_6

    :cond_30
    move-object v2, v1

    goto/16 :goto_5
.end method

.method a(Lcom/jcraft/jsch/Channel;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->b(Lcom/jcraft/jsch/Session;)V

    return-void
.end method

.method public a(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->ae:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method

.method public a(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/IdentityRepository;

    return-void
.end method

.method public a(Lcom/jcraft/jsch/Packet;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->t:[I

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    aput v1, v0, v2

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Compression;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->t:[I

    invoke-interface {v1, v3, v4, v5}, Lcom/jcraft/jsch/Compression;->a([BI[I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->t:[I

    aget v1, v1, v2

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/jcraft/jsch/Session;->ai:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->a(I)V

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    sget-object v1, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v5, v0

    invoke-interface {v3, v4, v5, v0}, Lcom/jcraft/jsch/Random;->a([BII)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    iget v1, p0, Lcom/jcraft/jsch/Session;->H:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/MAC;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v3}, Lcom/jcraft/jsch/MAC;->a([BI)V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    move-object v4, v1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->a(I)V

    goto :goto_0
.end method

.method a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->e()I

    move-result v0

    int-to-long v6, v0

    :goto_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    if-eqz v0, :cond_1

    cmp-long v0, v6, v10

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->af:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "timeout in wating for rekeying process."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-enter p2

    :try_start_1
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, p3

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    :try_start_2
    iget v0, p2, Lcom/jcraft/jsch/Channel;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->t:I

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v0, p2, Lcom/jcraft/jsch/Channel;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->t:I

    :cond_2
    :goto_1
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v4, p3

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    :cond_3
    return-void

    :catch_1
    move-exception v0

    :try_start_4
    iget v0, p2, Lcom/jcraft/jsch/Channel;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->t:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget v1, p2, Lcom/jcraft/jsch/Channel;->t:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Lcom/jcraft/jsch/Channel;->t:I

    throw v0

    :cond_4
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-boolean v0, p2, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->i()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "channel is broken"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, -0x1

    monitor-enter p2

    :try_start_6
    iget-wide v4, p2, Lcom/jcraft/jsch/Channel;->h:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_e

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v4, p3

    cmp-long v3, v0, v4

    if-lez v3, :cond_d

    int-to-long v0, p3

    move-wide v4, v0

    :goto_3
    int-to-long v0, p3

    cmp-long v0, v4, v0

    if-eqz v0, :cond_c

    long-to-int v3, v4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/jcraft/jsch/Session;->ai:I

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    :goto_5
    invoke-virtual {p1, v3, v1, v0}, Lcom/jcraft/jsch/Packet;->a(III)I

    move-result v3

    :goto_6
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v1

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    int-to-long v8, p3

    sub-long/2addr v8, v4

    long-to-int p3, v8

    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->h:J

    sub-long v4, v8, v4

    iput-wide v4, p2, Lcom/jcraft/jsch/Channel;->h:J

    const/4 v4, 0x1

    :goto_7
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    if-eqz p3, :cond_3

    invoke-virtual {p1, v1, v0, v3, p3}, Lcom/jcraft/jsch/Packet;->a(BIII)V

    :cond_7
    monitor-enter p2

    :try_start_7
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->ag:Z

    if-eqz v0, :cond_a

    monitor-exit p2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_8
    const/16 v0, 0x8

    move v1, v0

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_a
    :try_start_9
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v4, p3

    cmp-long v0, v0, v4

    if-ltz v0, :cond_b

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    monitor-exit p2

    goto/16 :goto_2

    :cond_b
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    :cond_c
    move v3, v2

    goto :goto_6

    :cond_d
    move-wide v4, v0

    goto :goto_3

    :cond_e
    move v1, v2

    move v3, v2

    move v4, v2

    goto :goto_7
.end method

.method public a(Lcom/jcraft/jsch/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->X:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->X:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->X:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->z:[B

    return-object v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->g(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object v0

    iget-object v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    iget v2, v0, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    iget-object v3, v0, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    iget v0, v0, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->T:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disconnecting from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jcraft/jsch/Session;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->T:Z

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->a(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->c(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->d(Lcom/jcraft/jsch/Session;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->V:Ljava/lang/Thread;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->u:Ljava/lang/Runnable;

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_1
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/IO;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->b(Lcom/jcraft/jsch/Session;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->d()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/Proxy;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid timeout value"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/jcraft/jsch/Session;->S:I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->S:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lcom/jcraft/jsch/Packet;)V
    .locals 7

    const/16 v6, 0x1f

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->e()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->ag:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->af:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "timeout in wating for rekeying process."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v6, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->g(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object v0

    iget-object v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    iget v2, v0, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;I)I

    move-result v3

    iget-object v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    iget v2, v0, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    iget-object v4, v0, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    iget v5, v0, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return v3
.end method

.method public c()Lcom/jcraft/jsch/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Z:Lcom/jcraft/jsch/UserInfo;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->b(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->ab:I

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->X:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->X:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->T:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Session;->S:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->aa:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    sget-object v2, Lcom/jcraft/jsch/Session;->ak:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:Ljava/lang/String;

    return-object v0
.end method

.method i()Lcom/jcraft/jsch/IdentityRepository;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/IdentityRepository;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->a()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/IdentityRepository;

    goto :goto_0
.end method

.method public j()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ae:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->c()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ae:Lcom/jcraft/jsch/HostKeyRepository;

    goto :goto_0
.end method

.method public run()V
    .locals 14

    const/4 v5, 0x0

    const/16 v13, 0x51

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p0, p0, Lcom/jcraft/jsch/Session;->u:Ljava/lang/Runnable;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v7, Lcom/jcraft/jsch/Packet;

    invoke-direct {v7, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    new-array v8, v1, [I

    new-array v9, v1, [I

    move-object v4, v5

    move-object v3, v0

    move v0, v2

    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/jcraft/jsch/Session;->T:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->u:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->T:Z

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    :try_start_3
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyExchange;->b()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/jcraft/jsch/Session;->af:J

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Buffer;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "verify: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->ag:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caught an exception, leaving main loop due to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_4
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->ag:Z

    if-nez v10, :cond_2

    iget v10, p0, Lcom/jcraft/jsch/Session;->ac:I

    if-ge v0, v10, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->ag:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/jcraft/jsch/Session;->ac:I

    if-ge v0, v10, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    throw v6

    :cond_4
    sparse-switch v3, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown SSH message type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-direct {p0, v6}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    move-object v4, v0

    move-object v3, v6

    move v0, v2

    goto/16 :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->l()V

    invoke-direct {p0, v6, v4}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    move v0, v2

    move-object v4, v5

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->g()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->g()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v3

    invoke-virtual {v6, v8, v9}, Lcom/jcraft/jsch/Buffer;->a([I[I)[B

    move-result-object v0

    if-nez v3, :cond_5

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    aget v10, v9, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v10, :cond_6

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    :try_start_5
    aget v10, v8, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v3, v0, v10, v11}, Lcom/jcraft/jsch/Channel;->a([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v0, 0x0

    :try_start_6
    aget v0, v9, v0

    iget v10, v3, Lcom/jcraft/jsch/Channel;->f:I

    sub-int v0, v10, v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Channel;->d(I)V

    iget v0, v3, Lcom/jcraft/jsch/Channel;->f:I

    iget v10, v3, Lcom/jcraft/jsch/Channel;->e:I

    div-int/lit8 v10, v10, 0x2

    if-ge v0, v10, :cond_17

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v0, v3, Lcom/jcraft/jsch/Channel;->e:I

    iget v10, v3, Lcom/jcraft/jsch/Channel;->f:I

    sub-int/2addr v0, v10

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-boolean v0, v3, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget v0, v3, Lcom/jcraft/jsch/Channel;->e:I

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Channel;->d(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->h()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0

    :sswitch_3
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v3

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6, v8, v9}, Lcom/jcraft/jsch/Buffer;->a([I[I)[B

    move-result-object v0

    if-nez v3, :cond_8

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    aget v10, v9, v10

    if-nez v10, :cond_9

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v3, v0, v10, v11}, Lcom/jcraft/jsch/Channel;->b([BII)V

    const/4 v0, 0x0

    aget v0, v9, v0

    iget v10, v3, Lcom/jcraft/jsch/Channel;->f:I

    sub-int v0, v10, v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Channel;->d(I)V

    iget v0, v3, Lcom/jcraft/jsch/Channel;->f:I

    iget v10, v3, Lcom/jcraft/jsch/Channel;->e:I

    div-int/lit8 v10, v10, 0x2

    if-ge v0, v10, :cond_17

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v0, v3, Lcom/jcraft/jsch/Channel;->e:I

    iget v10, v3, Lcom/jcraft/jsch/Channel;->f:I

    sub-int/2addr v0, v10

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    iget-boolean v0, v3, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v0, :cond_a

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_a
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget v0, v3, Lcom/jcraft/jsch/Channel;->e:I

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Channel;->d(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0

    :sswitch_4
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/jcraft/jsch/Channel;->b(J)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->e()V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->h()V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v3

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v12

    if-eqz v0, :cond_17

    invoke-virtual {v0, v10, v11}, Lcom/jcraft/jsch/Channel;->a(J)V

    invoke-virtual {v0, v12}, Lcom/jcraft/jsch/Channel;->f(I)V

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/jcraft/jsch/Channel;->p:Z

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->a(I)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->g(I)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/jcraft/jsch/Channel;->n:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/jcraft/jsch/Channel;->m:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->a(I)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v10

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    :goto_3
    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v11

    if-eqz v11, :cond_17

    const/16 v0, 0x64

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v10

    const-string v12, "exit-status"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/jcraft/jsch/Channel;->g(I)V

    const/16 v0, 0x63

    :cond_c
    if-eqz v3, :cond_17

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v11}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_d
    move v3, v2

    goto :goto_3

    :sswitch_a
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v3, "forwarded-tcpip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "x11"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->b:Z

    if-nez v3, :cond_10

    :cond_e
    const-string v3, "auth-agent@openssh.com"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->c:Z

    if-nez v3, :cond_10

    :cond_f
    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x5c

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_10
    invoke-static {v0}, Lcom/jcraft/jsch/Channel;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v3, v6}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->b()V

    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Channel "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_11
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x1

    iput v3, v0, Lcom/jcraft/jsch/Channel;->r:I

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_13
    const/4 v3, 0x0

    iput v3, v0, Lcom/jcraft/jsch/Channel;->r:I

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j()[B

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_4
    if-eqz v0, :cond_17

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x52

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_14
    move v0, v2

    goto :goto_4

    :sswitch_e
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a()Ljava/lang/Thread;

    move-result-object v10

    if-eqz v10, :cond_17

    iget-object v11, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    if-ne v3, v13, :cond_16

    move v0, v1

    :goto_5
    invoke-virtual {v11, v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a(I)V

    if-ne v3, v13, :cond_15

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aj:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b(I)V

    :cond_15
    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_16
    move v0, v2

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :cond_17
    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x50 -> :sswitch_d
        0x51 -> :sswitch_e
        0x52 -> :sswitch_e
        0x5a -> :sswitch_a
        0x5b -> :sswitch_7
        0x5c -> :sswitch_8
        0x5d -> :sswitch_4
        0x5e -> :sswitch_2
        0x5f -> :sswitch_3
        0x60 -> :sswitch_5
        0x61 -> :sswitch_6
        0x62 -> :sswitch_9
        0x63 -> :sswitch_b
        0x64 -> :sswitch_c
    .end sparse-switch
.end method
