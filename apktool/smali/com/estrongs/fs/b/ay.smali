.class public Lcom/estrongs/fs/b/ay;
.super Lcom/estrongs/a/a;


# instance fields
.field a:Landroid/content/Context;

.field private b:Lcom/estrongs/fs/h;

.field private c:Ljava/lang/String;

.field private d:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/ay;->d:Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/estrongs/fs/b/ay;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/fs/b/ay;->b:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ay;->canRestart:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ay;->canPause:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/fs/b/ay;->task_type:I

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ay;->d:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)Lcom/estrongs/fs/b/ay;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/b/ay;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/fs/b/ay;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/fs/b/az;

    invoke-direct {v1}, Lcom/estrongs/fs/b/az;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ay;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    invoke-static {}, Lcom/estrongs/android/c/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/fs/b/ay;->execute()V

    goto :goto_0
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lcom/estrongs/android/c/h;->i()V

    return-void
.end method


# virtual methods
.method public a()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ay;->d:Ljava/net/InetAddress;

    return-object v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ay;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ay;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/ay;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ay;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ay;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public task()Z
    .locals 15

    const/4 v1, 0x1

    const/16 v14, 0x2710

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/c/h;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ay;->processData:Lcom/estrongs/a/a/m;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing media file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/ay;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/b/ay;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v7

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v3, Ljava/net/InetSocketAddress;

    sget v5, Lcom/estrongs/a/b/d;->a:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v4, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v3, "connect timeout!"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "Connection closed."

    invoke-direct {v3, v4, v1}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v14, v3}, Lcom/estrongs/fs/b/ay;->setTaskResult(ILjava/lang/Object;)V

    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/c/h;->d(Ljava/lang/String;)V

    :goto_2
    return v0

    :cond_0
    :try_start_3
    new-instance v8, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lcom/estrongs/fs/b/ay;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/fs/b/au;->a(Landroid/content/Context;)[B

    move-result-object v10

    const/4 v3, 0x0

    aget-byte v3, v10, v3

    if-ltz v3, :cond_2

    const/4 v3, 0x0

    aget-byte v3, v10, v3

    move v6, v3

    :goto_3
    const/4 v3, 0x1

    aget-byte v3, v10, v3

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    aget-byte v3, v10, v3

    move v5, v3

    :goto_4
    const/4 v3, 0x2

    aget-byte v3, v10, v3

    if-ltz v3, :cond_4

    const/4 v3, 0x2

    aget-byte v3, v10, v3

    move v4, v3

    :goto_5
    const/4 v3, 0x3

    aget-byte v3, v10, v3

    if-ltz v3, :cond_5

    const/4 v3, 0x3

    aget-byte v3, v10, v3

    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MYPOST "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/estrongs/fs/b/ay;->b:Lcom/estrongs/fs/h;

    invoke-interface {v11}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " HTTP/1.1\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Connection: Keep-Alive\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Content-Type: media/realtime\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/estrongs/fs/b/ay;->b:Lcom/estrongs/fs/h;

    invoke-interface {v11}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "User-Agent: Dalvik\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Host: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/c/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->write([B)V

    :cond_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v3

    if-nez v3, :cond_6

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "You canceled transfering."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/fs/b/ay;->setTaskResult(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/c/h;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const/4 v3, 0x0

    aget-byte v3, v10, v3

    add-int/lit16 v3, v3, 0x100

    move v6, v3

    goto/16 :goto_3

    :cond_3
    const/4 v3, 0x1

    aget-byte v3, v10, v3

    add-int/lit16 v3, v3, 0x100

    move v5, v3

    goto/16 :goto_4

    :cond_4
    const/4 v3, 0x2

    aget-byte v3, v10, v3

    add-int/lit16 v3, v3, 0x100

    move v4, v3

    goto/16 :goto_5

    :cond_5
    const/4 v3, 0x3

    aget-byte v3, v10, v3

    add-int/lit16 v3, v3, 0x100

    goto/16 :goto_6

    :cond_6
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const-string v3, ""

    :cond_7
    :goto_7
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v3, "content-length"

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v8, v3}, Ljava/io/DataInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "OK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v1, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "Receiver rejected."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/fs/b/ay;->setTaskResult(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ay;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/c/h;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\r\n\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :cond_9
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_8
    move v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v1

    move-object v2, v3

    goto/16 :goto_0
.end method
