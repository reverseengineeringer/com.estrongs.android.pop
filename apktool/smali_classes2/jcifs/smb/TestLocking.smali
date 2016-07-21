.class public Ljcifs/smb/TestLocking;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field delay:J

.field ltime:J

.field numComplete:I

.field numIter:I

.field numThreads:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljcifs/smb/TestLocking;->numThreads:I

    iput v0, p0, Ljcifs/smb/TestLocking;->numIter:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->delay:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->ltime:J

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    const/4 v3, 0x1

    const-wide/16 v4, 0x2

    const/4 v1, 0x0

    array-length v0, p0

    if-ge v0, v3, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v6, Ljcifs/smb/TestLocking;

    invoke-direct {v6}, Ljcifs/smb/TestLocking;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Ljcifs/smb/TestLocking;->ltime:J

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget-object v2, p0, v0

    const-string v3, "-t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Ljcifs/smb/TestLocking;->numThreads:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, p0, v0

    const-string v3, "-i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Ljcifs/smb/TestLocking;->numIter:I

    goto :goto_1

    :cond_2
    aget-object v2, p0, v0

    const-string v3, "-d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v6, Ljcifs/smb/TestLocking;->delay:J

    goto :goto_1

    :cond_3
    aget-object v2, p0, v0

    iput-object v2, v6, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget v0, v6, Ljcifs/smb/TestLocking;->numThreads:I

    new-array v7, v0, [Ljava/lang/Thread;

    move v0, v1

    :goto_2
    iget v2, v6, Ljcifs/smb/TestLocking;->numThreads:I

    if-ge v0, v2, :cond_5

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v2, v7, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, v7, v0

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget v0, v6, Ljcifs/smb/TestLocking;->numComplete:I

    iget v2, v6, Ljcifs/smb/TestLocking;->numThreads:I

    if-ge v0, v2, :cond_8

    :cond_6
    monitor-enter v6

    :try_start_0
    iget-wide v2, v6, Ljcifs/smb/TestLocking;->ltime:J

    iget-wide v8, v6, Ljcifs/smb/TestLocking;->delay:J

    add-long/2addr v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-lez v0, :cond_a

    sub-long/2addr v2, v8

    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delay="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    monitor-enter v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_8
    :goto_5
    iget v0, v6, Ljcifs/smb/TestLocking;->numThreads:I

    if-ge v1, v0, :cond_9

    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, v7, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_a
    move-wide v2, v4

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    new-instance v2, Ljcifs/smb/SmbFile;

    iget-object v0, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v4, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Ljcifs/smb/TestLocking;->numIter:I

    if-ge v1, v0, :cond_4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ljcifs/smb/TestLocking;->ltime:J

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fd54fdf3b645a1dL    # 0.333

    cmpg-double v0, v6, v8

    if-gez v0, :cond_1

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    :goto_2
    return-void

    :cond_1
    const-wide v8, 0x3fe55810624dd2f2L    # 0.667

    cmpg-double v0, v6, v8

    if-gez v0, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    throw v0

    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :cond_4
    iget v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    goto :goto_2
.end method
