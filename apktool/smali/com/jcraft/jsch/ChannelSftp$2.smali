.class Lcom/jcraft/jsch/ChannelSftp$2;
.super Ljava/io/InputStream;


# instance fields
.field a:J

.field b:Z

.field c:I

.field d:[B

.field e:[B

.field f:Lcom/jcraft/jsch/ChannelSftp$Header;

.field g:I

.field h:J

.field final synthetic i:Lcom/jcraft/jsch/ChannelSftp;

.field private final synthetic j:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private final synthetic k:[B


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/SftpProgressMonitor;

    iput-object p5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->k:[B

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->g:I

    iget-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    iput-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->a()V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->k:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12

    const/16 v9, 0x65

    const/16 v0, 0x400

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:Z

    if-eqz v1, :cond_1

    move p3, v6

    :cond_0
    :goto_0
    return p3

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    move p3, v7

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-lez v1, :cond_8

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-le v0, p3, :cond_1a

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    invoke-static {v0, v7, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-eq p3, v0, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    sub-int/2addr v2, p3

    invoke-static {v0, p3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->a(J)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    move p3, v6

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0xd

    if-ge v1, p3, :cond_9

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    add-int/lit8 p3, v1, -0xd

    :cond_9
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->d(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    if-nez v1, :cond_a

    if-le p3, v0, :cond_a

    move p3, v0

    :cond_a
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    add-int/lit8 v4, v1, -0xd

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->d(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    if-nez v1, :cond_b

    move v4, v0

    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b()I

    move-result v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->g:I

    if-lt v0, v1, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    :try_end_0
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    if-eq v0, v9, :cond_e

    const/16 v1, 0x67

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->k:[B

    iget-wide v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:J

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:J

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    iget-wide v0, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->offset:J

    iput-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:J

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$2;->skip(J)J

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    move p3, v7

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-ne v0, v9, :cond_10

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v0

    iput v7, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    move p3, v6

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v7, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BII)I

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    sub-int v1, v0, v4

    iget-wide v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    int-to-long v10, v4

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:J

    if-lez v4, :cond_18

    if-le v4, p3, :cond_19

    :goto_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-gez p3, :cond_11

    move p3, v6

    goto/16 :goto_0

    :cond_11
    sub-int v0, v4, p3

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:I

    if-lez v0, :cond_13

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    array-length v2, v2

    if-ge v2, v0, :cond_12

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    :cond_12
    :goto_4
    if-gtz v0, :cond_17

    :cond_13
    if-lez v1, :cond_14

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    :cond_14
    int-to-long v0, v4

    iget-wide v2, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->k:[B

    iget-wide v2, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    int-to-long v10, v4

    add-long/2addr v2, v10

    iget-wide v10, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    int-to-long v4, v4

    sub-long v4, v10, v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    iget-wide v0, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    iget-wide v2, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->h:J

    :cond_15
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->g:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->e(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c()I

    move-result v1

    if-ge v0, v1, :cond_16

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->g:I

    :cond_16
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    move p3, v6

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->i:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:[B

    invoke-virtual {v2, v3, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_13

    add-int/2addr v7, v2

    sub-int/2addr v0, v2

    goto :goto_4

    :catch_3
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move p3, v7

    goto/16 :goto_0

    :cond_19
    move p3, v4

    goto/16 :goto_3

    :cond_1a
    move p3, v0

    goto/16 :goto_1
.end method
