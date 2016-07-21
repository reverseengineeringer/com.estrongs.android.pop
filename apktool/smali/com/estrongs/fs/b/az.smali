.class Lcom/estrongs/fs/b/az;
.super Ljava/lang/Thread;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/estrongs/fs/b/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/aw;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/fs/b/az;->c:Lcom/estrongs/fs/b/aw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/fs/b/az;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    sget v3, Lcom/estrongs/a/b/d;->a:I

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v0, 0x7d0

    invoke-virtual {v5, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "connect timeout!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    if-eqz v1, :cond_f

    :try_start_4
    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v3

    div-int/2addr v1, v3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v3

    rem-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/estrongs/fs/b/az;->c:Lcom/estrongs/fs/b/aw;

    invoke-static {v0}, Lcom/estrongs/fs/b/aw;->b(Lcom/estrongs/fs/b/aw;)J

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_5
    return-void

    :cond_3
    const/16 v0, 0x2710

    :try_start_5
    invoke-virtual {v5, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET /hostname HTTP/1.1\r\nConnection: Keep-Alive\r\nAccept-Encoding: gzip\r\nUser-Agent: Dalvik\r\nHost: localhost\r\nContent-Length: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "utf-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v3, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v6, "200 OK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v8

    :goto_7
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_7
    :goto_9
    :try_start_a
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    if-eqz v1, :cond_10

    :try_start_b
    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v5

    div-int/2addr v3, v5

    aget-object v1, v1, v3

    iget v3, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v5

    rem-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_8
    :goto_b
    iget-object v1, p0, Lcom/estrongs/fs/b/az;->c:Lcom/estrongs/fs/b/aw;

    invoke-static {v1}, Lcom/estrongs/fs/b/aw;->b(Lcom/estrongs/fs/b/aw;)J

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :cond_9
    :try_start_c
    const-string v7, "Server: ES Name Response Server"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v1

    if-eqz v2, :cond_b

    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :cond_b
    :goto_c
    if-eqz v0, :cond_c

    :try_start_e
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :cond_c
    :goto_d
    :try_start_f
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    :goto_e
    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    if-eqz v1, :cond_e

    :try_start_10
    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v4

    div-int/2addr v3, v4

    aget-object v0, v0, v3

    iget v3, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v4

    rem-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_d
    :goto_f
    iget-object v0, p0, Lcom/estrongs/fs/b/az;->c:Lcom/estrongs/fs/b/aw;

    invoke-static {v0}, Lcom/estrongs/fs/b/aw;->b(Lcom/estrongs/fs/b/aw;)J

    monitor-exit v2

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :cond_e
    :try_start_11
    iget-object v0, p0, Lcom/estrongs/fs/b/az;->c:Lcom/estrongs/fs/b/aw;

    invoke-static {v0}, Lcom/estrongs/fs/b/aw;->a(Lcom/estrongs/fs/b/aw;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v3

    div-int/2addr v1, v3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v3

    rem-int/2addr v1, v3

    const/4 v3, 0x0

    aput-object v3, v0, v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_f

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_f
    :try_start_12
    iget-object v0, p0, Lcom/estrongs/fs/b/az;->c:Lcom/estrongs/fs/b/aw;

    invoke-static {v0}, Lcom/estrongs/fs/b/aw;->a(Lcom/estrongs/fs/b/aw;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v3

    div-int/2addr v1, v3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v3

    rem-int/2addr v1, v3

    const/4 v3, 0x0

    aput-object v3, v0, v1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw v0

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :cond_10
    :try_start_13
    iget-object v1, p0, Lcom/estrongs/fs/b/az;->c:Lcom/estrongs/fs/b/aw;

    invoke-static {v1}, Lcom/estrongs/fs/b/aw;->a(Lcom/estrongs/fs/b/aw;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/fs/b/az;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/estrongs/fs/b/aw;->a()[[Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v4

    div-int/2addr v3, v4

    aget-object v1, v1, v3

    iget v3, p0, Lcom/estrongs/fs/b/az;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/aw;->b()I

    move-result v4

    rem-int/2addr v3, v4

    const/4 v4, 0x0

    aput-object v4, v1, v3

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_7

    :catch_b
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method
