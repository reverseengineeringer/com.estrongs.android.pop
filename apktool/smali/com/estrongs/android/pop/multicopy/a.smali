.class public Lcom/estrongs/android/pop/multicopy/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/estrongs/a/a;

.field private h:J

.field private i:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

.field private j:Z

.field private k:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Lcom/estrongs/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/multicopy/a;->k:Landroid/os/ConditionVariable;

    iput-object p1, p0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/multicopy/a;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/a;->k:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/multicopy/a;->d:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/multicopy/a;->b:J

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/multicopy/a;->i:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/multicopy/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/multicopy/a;->j:Z

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/multicopy/a;->f:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/multicopy/a;->c:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/multicopy/a;->e:Ljava/lang/String;

    return-void
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/multicopy/a;->h:J

    return-void
.end method

.method public run()V
    .locals 18

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/pop/multicopy/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is started at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    instance-of v5, v2, Lcom/estrongs/fs/b/ad;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    new-instance v3, Lcom/estrongs/android/pop/multicopy/b;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/android/pop/multicopy/b;-><init>(Lcom/estrongs/android/pop/multicopy/a;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/pop/multicopy/a;->f:I

    new-array v10, v2, [B

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->i:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    iget-wide v6, v2, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->totalWriteLen:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/estrongs/android/util/am;->m(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    new-instance v2, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v2}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v11, "end_offset"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/estrongs/android/util/am;->m(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/pop/multicopy/a;->c:J

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v11, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/pop/multicopy/a;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/android/pop/multicopy/a;->b:J

    add-long/2addr v12, v6

    invoke-virtual {v8, v9, v12, v13, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/android/pop/multicopy/a;->b:J

    add-long/2addr v12, v6

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v12, v13, v9}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JZ)Ljava/io/OutputStream;

    move-result-object v3

    :cond_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/pop/multicopy/a;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/android/pop/multicopy/a;->b:J

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    cmp-long v2, v6, v8

    if-gez v2, :cond_d

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/pop/multicopy/a;->f:I

    int-to-long v8, v2

    add-long/2addr v8, v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/android/pop/multicopy/a;->c:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/estrongs/android/pop/multicopy/a;->b:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    cmp-long v2, v8, v12

    if-lez v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/pop/multicopy/a;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/android/pop/multicopy/a;->b:J

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    sub-long/2addr v8, v6

    long-to-int v8, v8

    invoke-virtual {v4, v10, v2, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_1
    const/4 v8, -0x1

    if-ne v2, v8, :cond_9

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/pop/multicopy/a;->c:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/estrongs/android/pop/multicopy/a;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-gez v2, :cond_d

    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/pop/multicopy/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ended at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/pop/multicopy/a;->c:J

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/estrongs/android/pop/multicopy/a;->f:I

    invoke-virtual {v4, v10, v2, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close input stream of http connection failed, IO Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v3, v10, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->i:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    iput-wide v6, v8, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->totalWriteLen:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    const/16 v9, 0xe

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/estrongs/android/pop/multicopy/a;->h:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    int-to-long v14, v2

    const-wide/16 v16, 0x0

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v11}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    const/4 v9, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    int-to-long v14, v2

    const-wide/16 v16, 0x0

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/pop/multicopy/a;->a:Ljava/lang/String;

    aput-object v12, v11, v2

    invoke-virtual {v8, v9, v11}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/multicopy/a;->g:Lcom/estrongs/a/a;

    invoke-virtual {v2}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_b

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_b
    :goto_5
    if-eqz v4, :cond_c

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_c
    :goto_6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/pop/multicopy/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ended at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_1
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close input stream of http connection failed, IO Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/estrongs/android/pop/multicopy/a;->j:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_e

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_e
    :goto_7
    if-eqz v4, :cond_f

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_f
    :goto_8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/pop/multicopy/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ended at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_2
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close input stream of http connection failed, IO Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v2

    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_10

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_10
    :goto_9
    if-eqz v4, :cond_11

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_11
    :goto_a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/pop/multicopy/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ended at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_4
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close input stream of http connection failed, IO Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :catchall_0
    move-exception v2

    if-eqz v3, :cond_12

    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_12
    :goto_b
    if-eqz v4, :cond_13

    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_13
    :goto_c
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The download thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/estrongs/android/pop/multicopy/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is ended at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v2

    :catch_5
    move-exception v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close input stream of http connection failed, IO Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    :catch_6
    move-exception v2

    goto/16 :goto_2

    :catch_7
    move-exception v2

    goto/16 :goto_5

    :catch_8
    move-exception v2

    goto/16 :goto_7

    :catch_9
    move-exception v2

    goto/16 :goto_9

    :catch_a
    move-exception v3

    goto :goto_b
.end method
