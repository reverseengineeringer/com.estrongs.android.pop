.class public final Ljcifs/smb/SmbSession;
.super Ljava/lang/Object;


# static fields
.field private static final CACHE_POLICY:I

.field private static final DOMAIN:Ljava/lang/String;

.field private static final LOGON_SHARE:Ljava/lang/String;

.field private static final LOOKUP_RESP_LIMIT:I

.field private static final USERNAME:Ljava/lang/String;

.field static dc_list:[Ljcifs/netbios/NbtAddress;

.field static dc_list_counter:I

.field static dc_list_expiration:J


# instance fields
.field private address:Ljcifs/UniAddress;

.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field connectionState:I

.field expiration:J

.field private localAddr:Ljava/net/InetAddress;

.field private localPort:I

.field netbiosName:Ljava/lang/String;

.field private port:I

.field public server_is_windows:Z

.field transport:Ljcifs/smb/SmbTransport;

.field trees:Ljava/util/Vector;

.field uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "jcifs.smb.client.logonShare"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const-string v0, "jcifs.netbios.lookupRespLimit"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    sput-object v2, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    return-void
.end method

.method constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljcifs/smb/SmbSession;->server_is_windows:Z

    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iput-object v0, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    iput p2, p0, Ljcifs/smb/SmbSession;->port:I

    iput-object p3, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    iput p4, p0, Ljcifs/smb/SmbSession;->localPort:I

    iput-object p5, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    iput v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    return-void
.end method

.method public static getChallenge(Ljcifs/UniAddress;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getChallenge(Ljcifs/UniAddress;I)[B
    .locals 1

    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/smb/SmbTransport;->connect()V

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    return-object v0
.end method

.method public static getChallengeForDomain()Ljcifs/smb/NtlmChallenge;
    .locals 14

    const-wide/32 v12, 0xdbba0

    const/4 v11, 0x2

    sget-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "A domain was not specified"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v3, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    sget-wide v0, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    sget-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const/16 v1, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v1, v6, v7}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    sget v1, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    int-to-long v6, v1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    sput-wide v6, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    sput-object v0, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    :cond_1
    :goto_1
    sget-object v0, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    array-length v0, v0

    sget v1, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_5

    sget v0, Ljcifs/smb/SmbSession;->dc_list_counter:I

    add-int/lit8 v7, v0, 0x1

    sput v7, Ljcifs/smb/SmbSession;->dc_list_counter:I

    rem-int v7, v0, v6

    sget-object v0, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v0, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    sget-object v0, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v0, v0, v7

    invoke-static {v0}, Ljcifs/smb/SmbSession;->interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v3

    return-object v0

    :cond_2
    add-long v0, v4, v12

    sput-wide v0, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v11, :cond_1

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const-string v1, "Failed to retrieve DC list from WINS"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v8, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v8, Ljcifs/util/LogStream;->level:I

    if-lt v8, v11, :cond_3

    sget-object v8, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed validate DC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v11, :cond_3

    sget-object v8, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v8}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    sget-object v0, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    const/4 v8, 0x0

    aput-object v8, v0, v7

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x0

    sput-wide v0, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    add-int/lit8 v0, v2, -0x1

    if-gtz v2, :cond_6

    add-long v0, v4, v12

    sput-wide v0, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to negotiate with a suitable domain controller for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v2, v0

    goto/16 :goto_0
.end method

.method private static interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljcifs/UniAddress;

    invoke-direct {v0, p0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v1

    sget-object v2, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljcifs/smb/SmbTransport;->connect()V

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const-string v3, "Default credentials (jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation."

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v2, Ljcifs/smb/NtlmChallenge;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-direct {v2, v1, v0}, Ljcifs/smb/NtlmChallenge;-><init>([BLjcifs/UniAddress;)V

    return-object v2

    :cond_1
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v2

    sget-object v3, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0
.end method

.method public static logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 5

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    sget-object v1, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    sget-object v1, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2, v2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljcifs/smb/Trans2FindFirst2;

    const-string v2, "\\"

    const-string v3, "*"

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {v2}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0
.end method

.method public static logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method


# virtual methods
.method declared-synchronized getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "IPC$"

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbTree;

    invoke-virtual {v0, p1, p2}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljcifs/smb/SmbTree;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/smb/SmbTree;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method logoff(Z)V
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbTree;

    invoke-virtual {v0, p1}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v0, :cond_2

    new-instance v0, Ljcifs/smb/SmbComLogoffAndX;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljcifs/smb/SmbComLogoffAndX;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iget v2, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v2, v0, Ljcifs/smb/SmbComLogoffAndX;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_2
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Ljcifs/smb/SmbSession;->uid:I

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbSession;->connectionState:I

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 8

    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v3

    monitor-enter v3

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljcifs/smb/SmbSession;->expiration:J

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p2, :cond_1

    iget-boolean v2, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v2, :cond_1

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    instance-of v2, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTreeConnectAndX;

    move-object v2, v0

    iget-object v4, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    const-string v5, "\\IPC$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\IPC$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    :cond_2
    iget v2, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v2, p1, Ljcifs/smb/ServerMessageBlock;->uid:I

    iget-object v2, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v2, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v2, p1, p2}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    :try_start_3
    instance-of v4, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljcifs/smb/SmbSession;->logoff(Z)V

    :cond_3
    const/4 v4, 0x0

    iput-object v4, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 11

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v7

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [B

    const/16 v0, 0xa

    :goto_0
    iget v5, p0, Ljcifs/smb/SmbSession;->connectionState:I

    if-eqz v5, :cond_2

    iget v5, p0, Ljcifs/smb/SmbSession;->connectionState:I

    if-eq v5, v8, :cond_0

    iget v5, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v5, 0x1

    :try_start_3
    iput v5, p0, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v5}, Ljcifs/smb/SmbTransport;->connect()V

    iget-object v5, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v5, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v5, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sessionSetup: accountName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v8, v8, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",primaryDomain="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v8, v8, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Ljcifs/smb/SmbSession;->uid:I

    move v5, v0

    move-object v6, v1

    move-object v1, v4

    :goto_2
    sparse-switch v5, :sswitch_data_0

    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected session setup state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, Ljcifs/smb/SmbSession;->logoff(Z)V

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :sswitch_0
    :try_start_7
    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v5, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/high16 v5, -0x80000000

    invoke-virtual {v0, v5}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z
    :try_end_7
    .catch Ljcifs/smb/SmbException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    const/16 v5, 0x14

    move v0, v5

    move-object v5, v1

    move-object v1, v6

    :goto_3
    if-nez v0, :cond_17

    :try_start_8
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :cond_4
    :try_start_9
    new-instance v5, Ljcifs/smb/SmbComSessionSetupAndX;

    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v5, p0, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    new-instance v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    invoke-direct {v8, p2}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v9, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v9}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    const-string v9, ""

    if-eq v0, v9, :cond_6

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v9, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v9}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    sget-object v9, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_5
    :goto_4
    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, v5, Ljcifs/smb/SmbComSessionSetupAndX;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_9
    .catch Ljcifs/smb/SmbException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0, v5, v8}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_a
    .catch Ljcifs/smb/SmbAuthException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljcifs/smb/SmbException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_5
    :try_start_b
    iget-boolean v0, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v0, :cond_7

    const-string v0, "GUEST"

    iget-object v9, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v9, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, v9, :cond_7

    new-instance v0, Ljcifs/smb/SmbAuthException;

    const v1, -0x3fffff93    # -2.000026f

    invoke-direct {v0, v1}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :cond_6
    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v9, v9, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v9, v9, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v0, v9}, Ljcifs/smb/NtlmPasswordAuthentication;->getSigningKey([B)[B

    move-result-object v0

    new-instance v9, Ljcifs/smb/SigningDigest;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v9, v5, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    goto :goto_4

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    move-object v4, v0

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    throw v4

    :cond_8
    iget v0, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->uid:I

    iput v0, p0, Ljcifs/smb/SmbSession;->uid:I

    iget-object v0, v5, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v5, v5, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    iput-object v5, v0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbSession;->connectionState:I

    iget-object v0, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "windows"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Ljcifs/smb/SmbSession;->server_is_windows:Z

    move v0, v3

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_3

    :cond_b
    move v0, v3

    goto :goto_6

    :sswitch_1
    if-nez v1, :cond_c

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    move v1, v2

    :goto_7
    new-instance v0, Ljcifs/smb/NtlmContext;

    iget-object v8, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v8, v1}, Ljcifs/smb/NtlmContext;-><init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V

    move-object v1, v0

    :cond_c
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v8, 0x4

    if-lt v0, v8, :cond_d

    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v1}, Ljcifs/smb/NtlmContext;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Ljcifs/smb/NtlmContext;->getNetbiosName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_b
    .catch Ljcifs/smb/SmbException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move v0, v3

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_3

    :cond_e
    move v1, v3

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :try_start_c
    array-length v8, v6

    invoke-virtual {v1, v6, v0, v8}, Ljcifs/smb/NtlmContext;->initSecContext([BII)[B
    :try_end_c
    .catch Ljcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v6

    if-eqz v6, :cond_16

    :try_start_d
    new-instance v8, Ljcifs/smb/SmbComSessionSetupAndX;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0, v6}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    new-instance v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v6, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v6}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Ljcifs/smb/NtlmContext;->getSigningKey()[B

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v6, Ljcifs/smb/SigningDigest;

    const/4 v10, 0x1

    invoke-direct {v6, v0, v10}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v6, v8, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    :cond_10
    iget v0, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v0, v8, Ljcifs/smb/SmbComSessionSetupAndX;->uid:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbSession;->uid:I
    :try_end_d
    .catch Ljcifs/smb/SmbException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0, v8, v9}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_e
    .catch Ljcifs/smb/SmbAuthException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljcifs/smb/SmbException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_8
    :try_start_f
    iget-boolean v0, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v0, :cond_11

    const-string v0, "GUEST"

    iget-object v6, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v6, v6, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljcifs/smb/SmbAuthException;

    const v1, -0x3fffff93    # -2.000026f

    invoke-direct {v0, v1}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0
    :try_end_f
    .catch Ljcifs/smb/SmbException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catch_4
    move-exception v0

    :try_start_10
    iget-object v1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljcifs/smb/SmbException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_9
    const/4 v1, 0x0

    :try_start_11
    iput v1, p0, Ljcifs/smb/SmbSession;->uid:I

    throw v0

    :catch_5
    move-exception v0

    throw v0
    :try_end_11
    .catch Ljcifs/smb/SmbException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_6
    move-exception v0

    :try_start_12
    iget-object v4, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljcifs/smb/SmbException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v4, v0

    goto :goto_8

    :catch_7
    move-exception v4

    move-object v4, v0

    goto :goto_8

    :cond_11
    if-eqz v4, :cond_12

    :try_start_13
    throw v4

    :cond_12
    iget v0, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->uid:I

    iput v0, p0, Ljcifs/smb/SmbSession;->uid:I

    iget-object v0, v8, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v6, v8, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    iput-object v6, v0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    :cond_13
    iget-object v6, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    iget-object v0, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v8, "windows"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Ljcifs/smb/SmbSession;->server_is_windows:Z
    :try_end_13
    .catch Ljcifs/smb/SmbException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move v0, v5

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_3

    :cond_15
    move v0, v3

    goto :goto_a

    :catch_8
    move-exception v1

    goto :goto_9

    :cond_16
    move v0, v5

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_3

    :cond_17
    move-object v6, v1

    move-object v1, v5

    move v5, v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmbSession[accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized transport()Ljcifs/smb/SmbTransport;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbSession;->port:I

    iget-object v2, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    iget v3, p0, Ljcifs/smb/SmbSession;->localPort:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
