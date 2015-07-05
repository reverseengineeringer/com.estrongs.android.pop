.class public Ljcifs/smb/SmbTransport;
.super Ljcifs/util/transport/Transport;

# interfaces
.implements Ljcifs/smb/SmbConstants;


# static fields
.field static final BUF:[B

.field static final NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

.field static dfsRoots:Ljava/util/HashMap;

.field static log:Ljcifs/util/LogStream;


# instance fields
.field address:Ljcifs/UniAddress;

.field capabilities:I

.field digest:Ljcifs/smb/SigningDigest;

.field flags2:I

.field in:Ljava/io/InputStream;

.field key:Ljcifs/smb/SmbComBlankResponse;

.field localAddr:Ljava/net/InetAddress;

.field localPort:I

.field maxMpxCount:I

.field mid:I

.field out:Ljava/io/OutputStream;

.field port:I

.field rcv_buf_size:I

.field referrals:Ljava/util/LinkedList;

.field sbuf:[B

.field server:Ljcifs/smb/SmbTransport$ServerData;

.field sessionExpiration:J

.field sessionKey:I

.field sessions:Ljava/util/LinkedList;

.field snd_buf_size:I

.field socket:Ljava/net/Socket;

.field tconHostName:Ljava/lang/String;

.field useUnicode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xffff

    new-array v0, v0, [B

    sput-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    new-instance v0, Ljcifs/smb/SmbComNegotiate;

    invoke-direct {v0}, Ljcifs/smb/SmbComNegotiate;-><init>()V

    sput-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const/4 v0, 0x0

    sput-object v0, Ljcifs/smb/SmbTransport;->dfsRoots:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljcifs/util/transport/Transport;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->referrals:Ljava/util/LinkedList;

    iput-object v4, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    new-instance v0, Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbTransport$ServerData;-><init>(Ljcifs/smb/SmbTransport;)V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    sget v0, Ljcifs/smb/SmbTransport;->FLAGS2:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    sget v0, Ljcifs/smb/SmbTransport;->MAX_MPX_COUNT:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    sget v0, Ljcifs/smb/SmbTransport;->SND_BUF_SIZE:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    sget v0, Ljcifs/smb/SmbTransport;->RCV_BUF_SIZE:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    sget v0, Ljcifs/smb/SmbTransport;->CAPABILITIES:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbTransport;->sessionKey:I

    sget-boolean v0, Ljcifs/smb/SmbTransport;->USE_UNICODE:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-object v4, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    iput p2, p0, Ljcifs/smb/SmbTransport;->port:I

    iput-object p3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iput p4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    return-void
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    .locals 4

    const-class v1, Ljcifs/smb/SmbTransport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljcifs/smb/SmbTransport;->LADDR:Ljava/net/InetAddress;

    sget v2, Ljcifs/smb/SmbTransport;->LPORT:I

    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    .locals 9

    const-class v6, Ljcifs/smb/SmbTransport;

    monitor-enter v6

    :try_start_0
    sget-object v7, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget v0, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbTransport;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbTransport;->matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-eqz v1, :cond_1

    iget-object v1, v0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-ge v1, v2, :cond_0

    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v6

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, Ljcifs/smb/SmbTransport;

    invoke-direct {v0, p0, p1, p2, p3}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    sget-object v1, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private negotiate(ILjcifs/smb/ServerMessageBlock;)V
    .locals 9

    const v8, 0xffff

    const/4 v7, 0x6

    const/4 v6, 0x4

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    monitor-enter v1

    const/16 v0, 0x8b

    if-ne p1, v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->ssn139()V

    :goto_0
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v2, 0x7d00

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    :cond_0
    sget-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget v2, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v2, v0, Ljcifs/smb/SmbComNegotiate;->mid:I

    sget-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljcifs/smb/SmbComNegotiate;->encode([BI)I

    move-result v0

    and-int v2, v0, v8

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v6, :cond_1

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v3, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_1

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_1
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v2, "transport closed in negotiate"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    if-nez p1, :cond_3

    const/16 p1, 0x1bd

    :cond_3
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_4
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v3, Ljcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v2

    and-int/2addr v2, v8

    const/16 v3, 0x21

    if-lt v2, v3, :cond_6

    add-int/lit8 v3, v2, 0x4

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    array-length v4, v4

    if-le v3, v4, :cond_7

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid payload size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x24

    add-int/lit8 v2, v2, -0x20

    invoke-static {v3, v4, v5, v2}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v6, :cond_8

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_8

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method __getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)[Ljcifs/smb/DfsReferral;
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    const-string v1, "IPC$"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    new-instance v1, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    new-instance v2, Ljcifs/smb/Trans2GetDfsReferral;

    invoke-direct {v2, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p3, :cond_0

    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v0, p3, :cond_1

    :cond_0
    iget p3, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    :cond_1
    new-array v2, p3, [Ljcifs/smb/DfsReferral;

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    const/4 v0, 0x0

    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_3

    new-instance v6, Ljcifs/smb/DfsReferral;

    invoke-direct {v6}, Ljcifs/smb/DfsReferral;-><init>()V

    iget-boolean v7, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v7, v6, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v7, v7, v0

    iget v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v8, v7

    iput-wide v8, v6, Ljcifs/smb/DfsReferral;->ttl:J

    iput-wide v4, v6, Ljcifs/smb/DfsReferral;->expiration:J

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v7, v7, v0

    iget-object v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    :goto_1
    iget v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v7, v6, Ljcifs/smb/DfsReferral;->pathConsumed:I

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v7, v7, v0

    iget-object v7, v7, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v7, v3}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v7, v3, v10

    iput-object v7, v6, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v7, v3, v7

    iput-object v7, v6, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v7, v3, v7

    iput-object v7, v6, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v0}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v0

    iput v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    iget v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v0, v1, v3}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :sswitch_0
    new-instance v0, Ljcifs/smb/SmbAuthException;

    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v0, v1}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :sswitch_1
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v0, v1, v3}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v0, v1, v3}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_1
    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljcifs/smb/Dfs;->insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V

    throw v0

    :sswitch_2
    iget-boolean v0, p2, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Signature verification failed."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ffffffb -> :sswitch_2
        -0x3fffffea -> :sswitch_2
        -0x3fffffde -> :sswitch_0
        -0x3fffff96 -> :sswitch_0
        -0x3fffff93 -> :sswitch_0
        -0x3fffff92 -> :sswitch_0
        -0x3fffff91 -> :sswitch_0
        -0x3fffff90 -> :sswitch_0
        -0x3fffff8f -> :sswitch_0
        -0x3fffff8e -> :sswitch_0
        -0x3ffffe74 -> :sswitch_0
        -0x3ffffdcc -> :sswitch_0
        -0x3ffffda9 -> :sswitch_1
        0x0 -> :sswitch_2
    .end sparse-switch
.end method

.method public connect()V
    .locals 4

    :try_start_0
    sget v0, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-super {p0, v0, v1}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_0
    .catch Ljcifs/util/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    array-length v1, p2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v0

    move v1, v0

    :goto_0
    if-ne v1, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    :cond_0
    return-void

    :cond_1
    if-eq v3, v5, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x5c

    if-ne v2, v6, :cond_4

    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v0, v3, 0x1

    move v1, v0

    move v0, v2

    :goto_1
    add-int/lit8 v2, v3, 0x1

    if-lt v3, v5, :cond_3

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, ""

    aput-object v2, p2, v0

    move v0, v1

    goto :goto_2

    :cond_3
    move v3, v2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_4
    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_1
.end method

.method protected doConnect()V
    .locals 6

    const/16 v1, 0x8b

    const/4 v5, 0x1

    const/16 v0, 0x1bd

    const/high16 v4, -0x80000000

    new-instance v2, Ljcifs/smb/SmbComNegotiateResponse;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v2, v3}, Ljcifs/smb/SmbComNegotiateResponse;-><init>(Ljcifs/smb/SmbTransport$ServerData;)V

    :try_start_0
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v0, v2, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "This client does not support the negotiated dialect."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v3

    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v3, :cond_0

    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v3, v0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput v0, p0, Ljcifs/smb/SmbTransport;->port:I

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v0, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    :catch_1
    move-exception v3

    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v3, :cond_2

    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v3, v0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iput v0, p0, Ljcifs/smb/SmbTransport;->port:I

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v0, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    sget v0, Ljcifs/smb/SmbTransport;->LM_COMPATIBILITY:I

    if-nez v0, :cond_5

    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected encryption key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v0, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v0, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Ljcifs/smb/SmbTransport;->SIGNPREF:Z

    if-eqz v0, :cond_a

    :cond_6
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    :goto_1
    iget v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    iget v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    if-ge v0, v5, :cond_7

    iput v5, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    :cond_7
    iget v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_8

    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/2addr v0, v4

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    :cond_8
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    sget-boolean v0, Ljcifs/smb/SmbTransport;->FORCE_UNICODE:Z

    if-eqz v0, :cond_b

    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    :cond_9
    :goto_2
    return-void

    :cond_a
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    const v1, 0xfffb

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit16 v0, v0, 0x7fff

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_2
.end method

.method protected doDisconnect(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbSession;

    invoke-virtual {v0, p1}, Ljcifs/smb/SmbSession;->logoff(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    return-void
.end method

.method protected doRecv(Ljcifs/util/transport/Response;)V
    .locals 10

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v9, 0x4

    move-object v1, p1

    check-cast v1, Ljcifs/smb/ServerMessageBlock;

    iget-boolean v3, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v3, v1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v1, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x0

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x0

    const/16 v7, 0x24

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v2

    const v4, 0xffff

    and-int/2addr v4, v2

    const/16 v2, 0x21

    if-lt v4, v2, :cond_1

    add-int/lit8 v2, v4, 0x4

    iget v5, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v2, v5, :cond_2

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid payload size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    sget-object v2, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v5, 0x9

    invoke-static {v2, v5}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v2

    and-int/lit8 v2, v2, -0x1

    iget-byte v5, v1, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_8

    if-eqz v2, :cond_3

    const v5, -0x7ffffffb

    if-ne v2, v5, :cond_8

    :cond_3
    move-object v0, v1

    check-cast v0, Ljcifs/smb/SmbComReadAndXResponse;

    move-object v2, v0

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v6, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v7, 0x24

    const/16 v8, 0x1b

    invoke-static {v5, v6, v7, v8}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    iget v5, v2, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    add-int/lit8 v5, v5, -0x3b

    iget v6, v2, Ljcifs/smb/SmbComReadAndXResponse;->byteCount:I

    if-lez v6, :cond_4

    if-lez v5, :cond_4

    if-ge v5, v9, :cond_4

    iget-object v6, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v8, 0x3f

    invoke-static {v6, v7, v8, v5}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    :cond_4
    iget v5, v2, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-lez v5, :cond_5

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v6, v2, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v7, v2, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    iget v2, v2, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-static {v5, v6, v7, v2}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    :cond_5
    :goto_0
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v2, :cond_6

    iget v2, v1, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v2, :cond_6

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6, v1}, Ljcifs/smb/SigningDigest;->verify([BILjcifs/smb/ServerMessageBlock;)Z

    :cond_6
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v9, :cond_7

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_7

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v2, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v5, 0x4

    invoke-static {v1, v2, v5, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_7
    monitor-exit v3

    return-void

    :cond_8
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v6, 0x24

    add-int/lit8 v7, v4, -0x20

    invoke-static {v2, v5, v6, v7}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    sget-object v2, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v5}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    instance-of v2, v1, Ljcifs/smb/SmbComTransactionResponse;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Ljcifs/smb/SmbComTransactionResponse;

    move-object v2, v0

    invoke-virtual {v2}, Ljcifs/smb/SmbComTransactionResponse;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected doSend(Ljcifs/util/transport/Request;)V
    .locals 6

    const/4 v5, 0x4

    sget-object v1, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v1

    :try_start_0
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    sget-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    move-result v2

    const v0, 0xffff

    and-int/2addr v0, v2

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v5, :cond_2

    move-object v0, p1

    :cond_0
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    instance-of v3, v0, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_1

    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    iget-object v0, v0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-nez v0, :cond_0

    :cond_1
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_2

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v4, 0x4

    invoke-static {v0, v3, v4, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected doSend0(Ljcifs/util/transport/Request;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend(Ljcifs/util/transport/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    throw v0

    :catch_1
    move-exception v1

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected doSkip()V
    .locals 4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    add-int/lit8 v0, v0, -0x20

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0
.end method

.method getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v1

    const-string v2, "IPC$"

    invoke-virtual {v1, v2, v0}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v1

    new-instance v2, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v2}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    new-instance v3, Ljcifs/smb/Trans2GetDfsReferral;

    invoke-direct {v3, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v1, v2, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    iget v0, v2, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v0, p3, :cond_2

    :cond_1
    iget p3, v2, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    :cond_2
    new-instance v1, Ljcifs/smb/DfsReferral;

    invoke-direct {v1}, Ljcifs/smb/DfsReferral;-><init>()V

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    const/4 v0, 0x0

    :goto_1
    iget-boolean v6, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v6, v1, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    iget-object v6, v2, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v0

    iget v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v6, v6

    iput-wide v6, v1, Ljcifs/smb/DfsReferral;->ttl:J

    iput-wide v4, v1, Ljcifs/smb/DfsReferral;->expiration:J

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v0

    iget-object v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    :goto_2
    iget v6, v2, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v6, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_4

    iget-object v0, v1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_0

    :cond_3
    iget-object v6, v2, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v0

    iget-object v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v6, v3, v10

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v3, v6

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v6, Ljcifs/smb/DfsReferral;

    invoke-direct {v6}, Ljcifs/smb/DfsReferral;-><init>()V

    invoke-virtual {v1, v6}, Ljcifs/smb/DfsReferral;->append(Ljcifs/smb/DfsReferral;)V

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_1
.end method

.method declared-synchronized getSmbSession()Ljcifs/smb/SmbSession;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbSession;

    invoke-virtual {v0, p1}, Ljcifs/smb/SmbSession;->matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    sget v0, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    sget v0, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbSession;

    iget-wide v4, v0, Ljcifs/smb/SmbSession;->expiration:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljcifs/smb/SmbSession;->logoff(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Ljcifs/smb/SmbSession;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    iget v2, p0, Ljcifs/smb/SmbTransport;->port:I

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbSession;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    iput-object p0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method hasCapability(I)Z
    .locals 3

    :try_start_0
    sget v0, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbTransport;->connect(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1

    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-nez v0, :cond_0

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeKey(Ljcifs/util/transport/Request;)V
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v1, 0x7d00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    :cond_0
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    return-void
.end method

.method matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .locals 2

    if-nez p5, :cond_0

    invoke-virtual {p1}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object p5

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {p1, v0}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1bd

    if-ne p2, v0, :cond_4

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eq p3, v0, :cond_3

    if-eqz p3, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    invoke-virtual {p3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Ljcifs/smb/SmbTransport;->localPort:I

    if-ne p4, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected peekKey()Ljcifs/util/transport/Request;
    .locals 8

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/16 v5, 0x20

    const/4 v2, 0x0

    const/4 v6, 0x4

    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v1, v3, v2, v6}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ge v1, v6, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v1, v1, v2

    const/16 v3, -0x7b

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v1, v3, v6, v5}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v1

    if-lt v1, v5, :cond_1

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v6, :cond_3

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New data read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v1, v3, v6, v5}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_3
    :goto_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v1, v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v1, v1, v6

    if-ne v1, v7, :cond_4

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x5

    aget-byte v1, v1, v3

    const/16 v3, 0x53

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x6

    aget-byte v1, v1, v3

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x7

    aget-byte v1, v1, v3

    const/16 v3, 0x42

    if-ne v1, v3, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v2, 0x22

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Ljcifs/smb/SmbComBlankResponse;->mid:I

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_2
    const/16 v3, 0x23

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v7, :cond_1

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v4, 0x23

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    goto :goto_1
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 8

    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    iget v2, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/2addr v2, v3

    iput v2, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget-boolean v2, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v2, p1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iput-object p2, p1, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-nez v2, :cond_0

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v2, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    :goto_0
    return-void

    :cond_1
    instance-of v2, p1, Ljcifs/smb/SmbComTransaction;

    if-eqz v2, :cond_9

    iget-byte v2, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v2, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    move-object v2, v0

    move-object v0, p2

    check-cast v0, Ljcifs/smb/SmbComTransactionResponse;

    move-object v3, v0

    iget v4, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v4, v2, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    invoke-virtual {v3}, Ljcifs/smb/SmbComTransactionResponse;->reset()V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v2, v3}, Ljcifs/smb/BufferCache;->getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    invoke-virtual {v2}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v4}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    sget v5, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v6, v5

    invoke-super {p0, v2, v4, v6, v7}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V

    iget v5, v4, Ljcifs/smb/SmbComBlankResponse;->errorCode:I

    if-eqz v5, :cond_2

    invoke-virtual {p0, v2, v4}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_2
    invoke-virtual {v2}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljcifs/smb/SmbComTransactionResponse;->isReceived:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, v2}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_4
    sget v4, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v3, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    :cond_5
    invoke-virtual {v3}, Ljcifs/smb/SmbComTransactionResponse;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-wide v4, v3, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_5

    new-instance v4, Ljcifs/util/transport/TransportException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timedout waiting for response to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v4

    :try_start_4
    new-instance v5, Ljcifs/util/transport/TransportException;

    invoke-direct {v5, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_5
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v4

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v4

    :try_start_7
    iget-object v2, v2, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    iget-object v2, v3, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw v4
    :try_end_7
    .catch Ljcifs/smb/SmbException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_1
    move-exception v2

    throw v2

    :cond_6
    :try_start_8
    invoke-virtual {p0, v2}, Ljcifs/smb/SmbTransport;->makeKey(Ljcifs/util/transport/Request;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :cond_7
    :try_start_9
    iget v4, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v4, :cond_8

    invoke-virtual {p0, v2, v3}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    :try_start_a
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object v2, v2, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    iget-object v2, v3, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V
    :try_end_b
    .catch Ljcifs/smb/SmbException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :goto_2
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto/16 :goto_0

    :cond_9
    :try_start_c
    iget-byte v2, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v2, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    sget v2, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v2, v2

    invoke-super {p0, p1, p2, v2, v3}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    :try_end_c
    .catch Ljcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v3, Ljcifs/smb/SmbException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method ssn139()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljcifs/netbios/Name;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8b

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v3, Ljcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    new-instance v1, Ljcifs/netbios/SessionRequestPacket;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalName()Ljcifs/netbios/Name;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-virtual {v1, v4, v5}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v1

    invoke-virtual {v2, v3, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v1, v2, v5, v8}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ge v1, v8, :cond_2

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF during NetBIOS session request"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, v6}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v7, v5}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :sswitch_0
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v8, :cond_3

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session established ok with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :sswitch_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v6}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v7, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :pswitch_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to establish session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    invoke-virtual {p0, v6}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    const/4 v1, -0x1

    invoke-direct {v0, v7, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/util/transport/Transport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
