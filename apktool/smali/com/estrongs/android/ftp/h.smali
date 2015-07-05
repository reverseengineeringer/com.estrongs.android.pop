.class public Lcom/estrongs/android/ftp/h;
.super Ljava/lang/Thread;


# instance fields
.field a:Z

.field private b:Ljava/net/Socket;

.field private c:Lcom/estrongs/android/ftp/a;

.field private d:Ljava/io/BufferedOutputStream;

.field private e:Ljava/io/BufferedReader;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Integer;

.field private l:Lcom/estrongs/android/ftp/i;

.field private m:Lcom/estrongs/android/ftp/i;

.field private n:J

.field private o:Ljava/io/File;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/estrongs/android/ftp/a;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    iput-boolean v3, p0, Lcom/estrongs/android/ftp/h;->f:Z

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->h:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/ftp/h;->i:Z

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->k:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->l:Lcom/estrongs/android/ftp/i;

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ftp/h;->n:J

    iput-boolean v3, p0, Lcom/estrongs/android/ftp/h;->a:Z

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->o:Ljava/io/File;

    iput-boolean v3, p0, Lcom/estrongs/android/ftp/h;->p:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/ftp/h;->r:Z

    iput-object p1, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    iput-object p2, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;)Lcom/estrongs/android/ftp/i;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/h;->l:Lcom/estrongs/android/ftp/i;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/h;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/h;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/h;->k:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(ILjava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_d

    :cond_0
    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "-a "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-A "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-l "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-L "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_9

    move-object p2, v0

    :cond_3
    :goto_1
    move-object v0, p2

    :goto_2
    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_3
    return-object v0

    :cond_5
    :try_start_1
    const-string v1, "-la "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "-LA "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "-al "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "-AL "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    const-string v1, "-a"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "-A"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "-la"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "-LA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "-AL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "-al"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "-L"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "-l"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_8
    move-object p2, v0

    goto/16 :goto_0

    :cond_9
    const-string v1, ".."

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const/16 v2, 0x2f

    iget-object v3, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    :goto_4
    if-ltz v1, :cond_4

    if-nez v1, :cond_b

    const-string p2, "/"

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    const/4 v1, 0x5

    if-eq p1, v1, :cond_e

    const/4 v1, 0x6

    if-eq p1, v1, :cond_e

    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    :cond_e
    new-instance v0, Lcom/estrongs/android/ftp/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ftp/j;-><init>(Lcom/estrongs/android/ftp/h;)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ftp/j;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/estrongs/android/ftp/h;->n:J

    iput-wide v2, v0, Lcom/estrongs/android/ftp/j;->a:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/android/ftp/h;->n:J

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/h;Lcom/estrongs/android/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/ftp/h;->a(Lcom/estrongs/android/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/h;Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ftp/h;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V
    .locals 9

    if-eqz p4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->a()V

    :goto_0
    if-eqz p4, :cond_2

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {v0, p5, p6}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_3
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    iget-object v4, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-boolean v4, v4, Lcom/estrongs/android/ftp/a;->e:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p1, Lcom/estrongs/android/ftp/i;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->b()V

    :goto_4
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p4, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/a;->b()V

    :goto_5
    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->d()V

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p4, :cond_6

    iget-object v4, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/ftp/a;->b(J)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/ftp/a;->a(J)V

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    if-eqz p4, :cond_8

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->j(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    if-eqz p4, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->b()V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->d()V

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/a;->d()V

    goto :goto_5
.end method

.method private declared-synchronized a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ftp/h;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "LIST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "NLST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "MLSD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "MLST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "RETR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string v0, "STOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-string v0, "APPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x5

    const/4 v2, 0x0

    const/4 v6, 0x1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recv cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v3, v6, :cond_2

    :cond_0
    const-string v0, "500 Command unrecognized.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/estrongs/android/ftp/h;->a:Z

    if-eqz v4, :cond_6

    const-string v0, "RNTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "550 Target exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    :goto_1
    iput-boolean v2, p0, Lcom/estrongs/android/ftp/h;->a:Z

    iput-object v1, p0, Lcom/estrongs/android/ftp/h;->o:Ljava/io/File;

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ftp/h;->o:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, "250 RNTO command successful.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_4
    const-string v0, "550 RNTO failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "503 Bad sequence of commands.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v4, "USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->g:Ljava/lang/String;

    :goto_3
    const-string v0, "331 User name okay, need password.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->g:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string v4, "PASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->h:Ljava/lang/String;

    :goto_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anonymous:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-boolean v2, v2, Lcom/estrongs/android/ftp/a;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v2, v2, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v2, v2, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",recv user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recv_pass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-boolean v0, v0, Lcom/estrongs/android/ftp/a;->g:Z

    if-eqz v0, :cond_d

    iput-boolean v6, p0, Lcom/estrongs/android/ftp/h;->f:Z

    :cond_b
    :goto_5
    iget-boolean v0, p0, Lcom/estrongs/android/ftp/h;->f:Z

    if-eqz v0, :cond_10

    const-string v0, "230 User logged in, proceed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->h:Ljava/lang/String;

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_f
    iput-boolean v6, p0, Lcom/estrongs/android/ftp/h;->f:Z

    goto :goto_5

    :cond_10
    const-string v0, "530 Not logged in.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v4, p0, Lcom/estrongs/android/ftp/h;->f:Z

    if-nez v4, :cond_12

    const-string v0, "530 Not logged in.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v4, "REST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ftp/h;->n:J

    const-string v0, "350 REST succ.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ftp/h;->n:J

    const-string v0, "501 Invalid args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    invoke-direct {p0, v3}, Lcom/estrongs/android/ftp/h;->d(Ljava/lang/String;)I

    move-result v4

    iget-boolean v5, p0, Lcom/estrongs/android/ftp/h;->p:Z

    if-eqz v5, :cond_16

    if-nez v4, :cond_15

    :cond_14
    const-string v4, "SYST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v0, "215 UNIX Type: L8\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x5

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_6
    iget-object v3, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iput v4, v3, Lcom/estrongs/android/ftp/i;->d:I

    iget-object v3, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-direct {p0, v4, v0}, Lcom/estrongs/android/ftp/h;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/ftp/i;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iget-object v0, v0, Lcom/estrongs/android/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-object v1, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iput-boolean v2, p0, Lcom/estrongs/android/ftp/h;->p:Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :cond_16
    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    if-nez v4, :cond_14

    const-string v0, "503 Bad sequence of commands.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v4, "TYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_18

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const-string v0, "501 Command invalid args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    aget-object v1, v0, v6

    const-string v3, "I"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "200 Type set to I.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/estrongs/android/ftp/h;->i:Z

    goto/16 :goto_0

    :cond_1a
    aget-object v0, v0, v6

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "200 Type set to A.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/estrongs/android/ftp/h;->i:Z

    goto/16 :goto_0

    :cond_1b
    const-string v0, "501 Command invalid args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const-string v4, "PWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "257 \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is current directory.\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const-string v4, "CDUP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "550 Failed to change directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v3, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    :goto_7
    if-gez v0, :cond_20

    const-string v0, "550 Failed to change directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_7

    :cond_20
    if-nez v0, :cond_21

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    :goto_8
    const-string v0, "250 Directory successfully changed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    goto :goto_8

    :cond_22
    const-string v4, "CWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "250 Directory successfully changed.\r\n"

    invoke-direct {p0, v1}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_23
    const-string v0, "550 Failed to change directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    const-string v4, "FEAT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v0, "211-Features\r\nSIZE\r\nPASV\r\n UTF8\r\n211 End\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    const-string v4, "LIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "NLST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "MLST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "MLSD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "RETR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "PASV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/i;->a()V

    iput-object v1, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    :cond_26
    :try_start_3
    new-instance v0, Ljava/net/ServerSocket;

    iget-object v3, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v3}, Lcom/estrongs/android/ftp/a;->f()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    :goto_9
    if-nez v1, :cond_27

    const/16 v0, 0x14

    if-lt v2, v0, :cond_26

    :cond_27
    const/16 v0, 0x14

    if-ge v2, v0, :cond_28

    if-nez v1, :cond_29

    :cond_28
    const-string v0, "502 open data port failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    if-eqz v0, :cond_2a

    if-gtz v2, :cond_2b

    :cond_2a
    const-string v0, "502 get local ip/port failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "502 open data port failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "227 Entering Passive Mode ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    const/16 v5, 0x2c

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v0, v2, 0x100

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v0, v2, 0x100

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/estrongs/android/ftp/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ftp/i;-><init>(Lcom/estrongs/android/ftp/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iput-object v1, v0, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iget-object v0, v0, Lcom/estrongs/android/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-boolean v6, p0, Lcom/estrongs/android/ftp/h;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/i;->start()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    const-string v1, "NOOP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, "200 NOOP OK.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    const-string v1, "DELE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v0, 0x5

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "550 File not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v0, "450 DELE fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2e
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "550 Target is dir.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :cond_2f
    :try_start_7
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v2

    :goto_a
    if-eqz v2, :cond_30

    :try_start_8
    const-string v0, "250 DELE command successful.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const-string v0, "450 DELE fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :cond_31
    const-string v1, "RMD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v0, 0x4

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "550 Directory not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v0, "450 RMD fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_32
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "550 Target is not a dir.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :cond_33
    :try_start_b
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;)Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result v2

    :goto_b
    if-eqz v2, :cond_34

    :try_start_c
    const-string v0, "250 RMD command successful.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    const-string v0, "450 RMD fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    :cond_35
    const-string v1, "MKD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, 0x4

    :try_start_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v0, "550 Target exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string v0, "550 Directory create failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    :try_start_e
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->g(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    move-result v2

    :goto_c
    if-eqz v2, :cond_37

    :try_start_f
    const-string v0, "257 Directory created.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    const-string v0, "550 Directory create failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_0

    :cond_38
    const-string v1, "OPTS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    aget-object v1, v0, v6

    if-eqz v1, :cond_39

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_39

    aget-object v0, v0, v6

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_39
    const-string v0, "550 OPTS wrong args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    iput-boolean v2, p0, Lcom/estrongs/android/ftp/h;->r:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    :try_start_10
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :cond_3b
    :goto_d
    const-string v0, "200 OPTS UTF8 is set to ON.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_3c
    const-string v0, "PORT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :try_start_11
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    :cond_3d
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v0, "550 IPV6 addr.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3e
    :try_start_12
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3f

    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3f
    move v0, v2

    :goto_e
    array-length v1, v3

    if-ge v0, v1, :cond_42

    aget-object v1, v3, v0

    const-string v4, "[0-9]+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_41

    :cond_40
    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_42
    const/4 v0, 0x4

    new-array v4, v0, [B
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    move v1, v2

    :goto_f
    if-ge v1, v8, :cond_44

    :try_start_13
    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x80

    if-lt v0, v2, :cond_43

    add-int/lit16 v0, v0, -0x100

    :cond_43
    int-to-byte v0, v0

    aput-byte v0, v4, v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :catch_9
    move-exception v0

    :try_start_14
    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_0

    :cond_44
    :try_start_15
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_15
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    move-result-object v0

    const/4 v1, 0x4

    :try_start_16
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Lcom/estrongs/android/ftp/i;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ftp/i;-><init>(Lcom/estrongs/android/ftp/h;)V

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/estrongs/android/ftp/i;->a:Ljava/net/ServerSocket;

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iput-object v0, v2, Lcom/estrongs/android/ftp/i;->b:Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iput v1, v0, Lcom/estrongs/android/ftp/i;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    iget-object v0, v0, Lcom/estrongs/android/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ftp/h;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/i;->start()V

    const-string v0, "227 Entering Active Mode.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const-string v0, "550 Unknown host.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_0

    :cond_45
    const-string v0, "ABOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "226 ABOR succ.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_46
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->l:Lcom/estrongs/android/ftp/i;

    iput-boolean v6, v0, Lcom/estrongs/android/ftp/i;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->l:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/i;->a()V

    goto/16 :goto_0

    :cond_47
    const-string v0, "SIZE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "550 Target not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_48
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "550 Target is a directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "213 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4a
    const-string v0, "QUIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "221 Byte.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    :try_start_17
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    goto/16 :goto_0

    :cond_4b
    const-string v0, "RNFR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "550 Target not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4c
    const-string v0, "350 Target exists, ready for destination name.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/estrongs/android/ftp/h;->a:Z

    iput-object v1, p0, Lcom/estrongs/android/ftp/h;->o:Ljava/io/File;

    goto/16 :goto_0

    :cond_4d
    const-string v0, "502 Command not implemented.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_c
    move-exception v0

    goto/16 :goto_c

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_9
.end method


# virtual methods
.method public a(ILjava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "drwxr-xr-x 1 nobody nobody"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "-rw-r--r-- 1 nobody nobody"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v4, -0x61075000

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " MMM dd HH:mm "

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_3
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " MMM dd  yyyy "

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    :cond_1
    const-string v0, "220 ESFtpServer 0.1 ready.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ftp/h;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->c:Lcom/estrongs/android/ftp/a;

    iget-boolean v2, v2, Lcom/estrongs/android/ftp/a;->e:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v2}, Lcom/estrongs/android/ftp/h;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget-boolean v2, p0, Lcom/estrongs/android/ftp/h;->r:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/ftp/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/estrongs/android/ftp/a;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ftp/h;->q:Ljava/lang/String;

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "client exception, exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "client exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/i;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/ftp/h;->m:Lcom/estrongs/android/ftp/i;

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_c
    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/ftp/h;->d:Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/ftp/h;->e:Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/estrongs/android/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method
