.class public abstract Ljcifs/util/transport/Transport;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static id:I

.field static log:Ljcifs/util/LogStream;


# instance fields
.field name:Ljava/lang/String;

.field protected response_map:Ljava/util/HashMap;

.field state:I

.field te:Ljcifs/util/transport/TransportException;

.field thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Ljcifs/util/transport/Transport;->id:I

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Ljcifs/util/transport/Transport;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljcifs/util/transport/Transport;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    return-void
.end method

.method private loop()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "Read timed out"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v2

    :goto_1
    if-nez v4, :cond_5

    move v1, v2

    :goto_2
    if-nez v4, :cond_0

    sget-object v4, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    sget-object v4, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/util/transport/Response;

    if-nez v0, :cond_3

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    const-string v1, "Invalid key, skipping message"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doSkip()V

    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :try_start_5
    invoke-virtual {p0, v0}, Ljcifs/util/transport/Transport;->doRecv(Ljcifs/util/transport/Response;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcifs/util/transport/Response;->isReceived:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized connect(J)V
    .locals 7

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljcifs/util/transport/TransportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    new-instance v1, Ljcifs/util/transport/TransportException;

    invoke-direct {v1, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v1, :cond_1

    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v1, v5, :cond_1

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v3, :cond_0

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_3
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v0, :cond_3

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v0, v5, :cond_3

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v3, :cond_2

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_2
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    new-instance v0, Ljcifs/util/transport/TransportException;

    const-string v1, "Connection in error"

    iget-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    invoke-direct {v0, v1, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch v0, :pswitch_data_1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v0, :cond_3

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v0, v5, :cond_3

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v3, :cond_4

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    :try_start_7
    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    new-instance v0, Ljcifs/util/transport/TransportException;

    const-string v2, "Connection timeout"

    invoke-direct {v0, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :pswitch_5
    :try_start_9
    iget-object v0, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    throw v0

    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v0, :cond_3

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v0, v5, :cond_3

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v3, :cond_6

    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v1, :cond_0

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    move p1, v1

    :pswitch_2
    :try_start_1
    iget-object v1, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doDisconnect(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :pswitch_3
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/Transport;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :pswitch_4
    monitor-exit p0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract doConnect()V
.end method

.method protected abstract doDisconnect(Z)V
.end method

.method protected abstract doRecv(Ljcifs/util/transport/Response;)V
.end method

.method protected abstract doSend(Ljcifs/util/transport/Request;)V
.end method

.method protected abstract doSkip()V
.end method

.method protected abstract makeKey(Ljcifs/util/transport/Request;)V
.end method

.method protected abstract peekKey()Ljcifs/util/transport/Request;
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_0

    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    new-instance v2, Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Ljcifs/util/transport/Transport;->loop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_4

    if-eqz v0, :cond_3

    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_3

    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    if-eqz v0, :cond_5

    :try_start_4
    new-instance v2, Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-enter v1

    :try_start_5
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v1, v3, :cond_7

    if-eqz v0, :cond_6

    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_6

    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_7
    if-eqz v0, :cond_8

    :try_start_6
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method public declared-synchronized sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->makeKey(Ljcifs/util/transport/Request;)V

    const/4 v0, 0x0

    iput-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doSend(Ljcifs/util/transport/Request;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p2, Ljcifs/util/transport/Response;->expiration:J

    :cond_0
    iget-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    iget-wide v0, p2, Ljcifs/util/transport/Response;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long p3, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljcifs/util/transport/TransportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timedout waiting for response to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0, v1}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_6
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    :try_start_7
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljcifs/util/transport/TransportException;

    invoke-direct {v1, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    return-object v0
.end method
