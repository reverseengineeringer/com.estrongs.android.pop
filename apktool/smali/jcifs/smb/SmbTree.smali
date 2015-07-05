.class Ljcifs/smb/SmbTree;
.super Ljava/lang/Object;


# static fields
.field private static tree_conn_counter:I


# instance fields
.field connectionState:I

.field inDfs:Z

.field inDomainDfs:Z

.field service:Ljava/lang/String;

.field service0:Ljava/lang/String;

.field session:Ljcifs/smb/SmbSession;

.field share:Ljava/lang/String;

.field tid:I

.field tree_num:I


# direct methods
.method constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "?????"

    iput-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string v0, "??"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_0

    check-cast p1, Ljcifs/smb/SmbTree;

    iget-object v0, p1, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "??"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
    .locals 5

    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v1}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v1, :cond_2

    :cond_1
    monitor-exit v2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v3, "A:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-byte v1, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    move-object v1, v0

    iget-byte v1, v1, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_1

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :sswitch_1
    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I

    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->tid:I

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v3, "IPC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x1000

    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v3}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v3

    iget-object v3, v3, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_2
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v3

    const v4, -0x3fffff37    # -2.000048f

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    :cond_5
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_data_0
    .sparse-switch
        -0x5e -> :sswitch_1
        0x4 -> :sswitch_1
        0x25 -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_1
        0x2f -> :sswitch_1
        0x32 -> :sswitch_0
        0x71 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x10 -> :sswitch_1
        0x23 -> :sswitch_1
        0x26 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x68 -> :sswitch_1
        0xd7 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmbTree[share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",inDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",inDomainDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 6

    const/4 v3, 0x2

    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v1

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    if-eqz v0, :cond_2

    iget v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput v0, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0}, Ljcifs/smb/SmbTransport;->connect()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v2, v2, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "treeConnect: unc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;

    invoke-direct {v2, p2}, Ljcifs/smb/SmbComTreeConnectAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    new-instance v3, Ljcifs/smb/SmbComTreeConnectAndX;

    iget-object v4, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v5, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v5, p1}, Ljcifs/smb/SmbComTreeConnectAndX;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v0, v3, v2}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;->tid:I

    iput v0, p0, Ljcifs/smb/SmbTree;->tid:I

    iget-object v0, v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iget-boolean v0, v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    sget v0, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    iput v0, p0, Ljcifs/smb/SmbTree;->tree_num:I

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    const/4 v2, 0x0

    iput v2, p0, Ljcifs/smb/SmbTree;->connectionState:I

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method treeDisconnect(Z)V
    .locals 4

    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    if-nez p1, :cond_1

    iget v0, p0, Ljcifs/smb/SmbTree;->tid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljcifs/smb/SmbComTreeDisconnect;

    invoke-direct {v0}, Ljcifs/smb/SmbComTreeDisconnect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    iget-object v0, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
