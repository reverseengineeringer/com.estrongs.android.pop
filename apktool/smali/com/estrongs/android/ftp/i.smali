.class public Lcom/estrongs/android/ftp/i;
.super Ljava/lang/Thread;


# instance fields
.field public a:Ljava/net/ServerSocket;

.field public b:Ljava/net/InetAddress;

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:Ljava/util/concurrent/locks/Lock;

.field final synthetic h:Lcom/estrongs/android/ftp/h;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ftp/h;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    iput-object v0, p0, Lcom/estrongs/android/ftp/i;->b:Ljava/net/InetAddress;

    iput v1, p0, Lcom/estrongs/android/ftp/i;->d:I

    iput-object v0, p0, Lcom/estrongs/android/ftp/i;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/estrongs/android/ftp/i;->f:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0, p0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    iget-boolean v1, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/estrongs/android/ftp/i;->d:I

    if-nez v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_4
    if-nez v0, :cond_5

    :try_start_a
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->b:Ljava/net/InetAddress;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/estrongs/android/ftp/i;->c:I

    if-eqz v1, :cond_5

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->b:Ljava/net/InetAddress;

    iget v3, p0, Lcom/estrongs/android/ftp/i;->c:I

    invoke-direct {v0, v1, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    move-object v4, v0

    :goto_5
    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_6
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "425 Cannot open data connection.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :cond_7
    :try_start_d
    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    if-eq v0, v8, :cond_8

    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    if-ne v0, v7, :cond_18

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "501 Can\'t list target dir.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-eqz v4, :cond_9

    :try_start_e
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_a
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0

    :cond_b
    :try_start_11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List dir:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    if-eq v0, v7, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "501 Can\'t list target dir.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    if-eqz v4, :cond_c

    :try_start_12
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_d
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v0

    :cond_e
    :try_start_15
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v3, "150 Opening data connection for list.\r\n"

    invoke-static {v0, v3}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v2, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    iget v3, p0, Lcom/estrongs/android/ftp/i;->d:I

    invoke-virtual {v2, v3, v1}, Lcom/estrongs/android/ftp/h;->a(ILjava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 Transfer complete.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :cond_10
    :goto_8
    if-eqz v4, :cond_11

    :try_start_17
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_18
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_12
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    :try_start_19
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_f

    iget-boolean v3, p0, Lcom/estrongs/android/ftp/i;->f:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v3, :cond_16

    if-eqz v4, :cond_14

    :try_start_1a
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    :cond_14
    :goto_b
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_1b
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_15
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v0

    :cond_16
    :try_start_1d
    iget-object v3, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    iget v5, p0, Lcom/estrongs/android/ftp/i;->d:I

    aget-object v6, v1, v2

    invoke-virtual {v3, v5, v6}, Lcom/estrongs/android/ftp/h;->a(ILjava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    :try_start_1e
    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->e:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/ftp/j;

    iget-object v1, v0, Lcom/estrongs/android/ftp/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v5, v1}, Lcom/estrongs/android/ftp/h;->b(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_19
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "501 target is dir.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    if-eqz v4, :cond_1a

    :try_start_1f
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8

    :cond_1a
    :goto_c
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_20
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_1b
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    throw v0

    :cond_1c
    :try_start_22
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v5, "150 Opening data connection for file.\r\n"

    invoke-static {v1, v5}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    :try_start_23
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/estrongs/android/ftp/j;->a:J

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    if-eqz v0, :cond_1f

    if-eqz v4, :cond_1d

    :try_start_24
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    :cond_1d
    :goto_d
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_25
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_1e
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    throw v0

    :cond_1f
    :try_start_27
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 Transfer complete.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_4
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move v1, v8

    :goto_e
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "426 Data connection unexpectedly closed.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    :cond_20
    if-eqz v4, :cond_21

    :try_start_29
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d

    :cond_21
    :goto_f
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_2a
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_22
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_23
    :try_start_2b
    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    if-eq v0, v6, :cond_24

    iget v0, p0, Lcom/estrongs/android/ftp/i;->d:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    :cond_24
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->e:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/ftp/j;

    iget-object v1, v0, Lcom/estrongs/android/ftp/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v5, v1}, Lcom/estrongs/android/ftp/h;->b(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "501 target is directory.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_f
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    if-eqz v4, :cond_26

    :try_start_2c
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_a

    :cond_26
    :goto_10
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_2d
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_27
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    throw v0

    :cond_28
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p0, Lcom/estrongs/android/ftp/i;->d:I

    if-ne v1, v6, :cond_29

    iget-wide v6, v0, Lcom/estrongs/android/ftp/j;->a:J

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-nez v1, :cond_29

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_29
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v5, "150 Opening data connection for file.\r\n"

    invoke-static {v1, v5}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_b

    :try_start_30
    iget-boolean v1, p0, Lcom/estrongs/android/ftp/i;->f:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_4
    .catchall {:try_start_30 .. :try_end_30} :catchall_b

    if-eqz v1, :cond_2c

    if-eqz v4, :cond_2a

    :try_start_31
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_b

    :cond_2a
    :goto_11
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_32
    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v0}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_2b
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 ABOR succ.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_a
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_a

    throw v0

    :cond_2c
    :try_start_34
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v5, 0x1

    iget-wide v6, v0, Lcom/estrongs/android/ftp/j;->a:J

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V

    iget-object v0, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v1, "226 Transfer complete.\r\n"

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_4
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    goto/16 :goto_8

    :catchall_b
    move-exception v0

    if-eqz v4, :cond_2d

    :try_start_35
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_e

    :cond_2d
    :goto_12
    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_36
    iget-object v2, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    invoke-static {v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2e

    iget-object v2, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v2, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;

    :cond_2e
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_e

    iget-boolean v1, p0, Lcom/estrongs/android/ftp/i;->f:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/estrongs/android/ftp/i;->h:Lcom/estrongs/android/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V

    :cond_2f
    throw v0

    :catchall_c
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    throw v0

    :catchall_d
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_d

    throw v0

    :catchall_e
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_e

    throw v0

    :catch_5
    move-exception v0

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_7

    :catch_7
    move-exception v0

    goto/16 :goto_b

    :catch_8
    move-exception v0

    goto/16 :goto_c

    :catch_9
    move-exception v0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    goto/16 :goto_10

    :catch_b
    move-exception v0

    goto/16 :goto_11

    :catch_c
    move-exception v0

    goto/16 :goto_9

    :catch_d
    move-exception v0

    goto/16 :goto_f

    :catch_e
    move-exception v1

    goto :goto_12

    :catch_f
    move-exception v0

    move v1, v2

    goto/16 :goto_e

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_1

    :cond_30
    move-object v0, v4

    goto/16 :goto_0
.end method
