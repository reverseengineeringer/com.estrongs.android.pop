.class public Lcom/estrongs/fs/util/c;
.super Lcom/estrongs/fs/util/f;


# instance fields
.field private a:I

.field private h:I

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:Z

.field private n:Ljavax/crypto/Cipher;

.field private o:Ljava/lang/String;

.field private p:Ljava/io/File;

.field private q:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/h;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/util/c;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/h;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/fs/util/f;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->n:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    iput-object p1, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->b:[B

    iput-boolean p3, p0, Lcom/estrongs/fs/util/c;->m:Z

    iput-object p4, p0, Lcom/estrongs/fs/util/c;->o:Ljava/lang/String;

    return-void
.end method

.method protected static a([B[BI)I
    .locals 4

    if-nez p1, :cond_2

    add-int/lit8 v0, p2, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "String to long"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    :cond_1
    return v0

    :cond_2
    array-length v0, p1

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_3

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "String to long"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p1

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x1

    move v2, v1

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p0, v0

    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->o:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/fs/util/c;->m:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/estrongs/fs/util/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".eslock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".eslock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/RandomAccessFile;)V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/estrongs/fs/util/c;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->i:[B

    iget v1, p0, Lcom/estrongs/fs/util/c;->a:I

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v0, p0, Lcom/estrongs/fs/util/c;->d:J

    iget v2, p0, Lcom/estrongs/fs/util/c;->g:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->j:[B

    iget v1, p0, Lcom/estrongs/fs/util/c;->h:I

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/estrongs/fs/util/c;->b(Ljava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lcom/estrongs/fs/util/c;->d:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/estrongs/fs/util/c;->i:[B

    iget-object v2, p0, Lcom/estrongs/fs/util/c;->b:[B

    invoke-direct {p0, v1, v2}, Lcom/estrongs/fs/util/c;->b([B[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/util/c;->l:[B

    iget-object v1, p0, Lcom/estrongs/fs/util/c;->l:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/estrongs/fs/util/c;->i:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Encrypt error!"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/fs/util/c;->c()V

    iget-object v1, p0, Lcom/estrongs/fs/util/c;->l:[B

    iget v2, p0, Lcom/estrongs/fs/util/c;->a:I

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v2, p0, Lcom/estrongs/fs/util/c;->d:J

    iget v1, p0, Lcom/estrongs/fs/util/c;->g:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/estrongs/fs/util/c;->j:[B

    iget-object v2, p0, Lcom/estrongs/fs/util/c;->b:[B

    invoke-direct {p0, v1, v2}, Lcom/estrongs/fs/util/c;->b([B[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/util/c;->l:[B

    iget-object v1, p0, Lcom/estrongs/fs/util/c;->l:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/estrongs/fs/util/c;->j:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Encrypt error!"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/fs/util/c;->l:[B

    iget v2, p0, Lcom/estrongs/fs/util/c;->h:I

    invoke-virtual {p1, v1, v6, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/fs/util/c;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Invalid RandomAccessFile operation"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/fs/util/c;->k:[B

    invoke-virtual {p1, v1, v6, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/fs/util/c;->m:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->b:[B

    invoke-direct {p0, v0, v3}, Lcom/estrongs/fs/util/c;->b([B[B)[B

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_1

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/estrongs/fs/util/c;->e:Z

    if-nez v3, :cond_4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/util/c;->g:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object v3, v2

    :goto_2
    if-nez v3, :cond_2

    move v2, v1

    :goto_3
    iget-object v5, p0, Lcom/estrongs/fs/util/c;->b:[B

    invoke-static {v5}, Lcom/estrongs/fs/util/c;->b([B)[B

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    array-length v2, v5

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v0, 0x4

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->k:[B

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->k:[B

    invoke-static {v0, v3, v1}, Lcom/estrongs/fs/util/c;->a([B[BI)I

    move-result v0

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->k:[B

    invoke-static {v3, v4, v0}, Lcom/estrongs/fs/util/c;->a([B[BI)I

    move-result v0

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->k:[B

    invoke-static {v3, v5, v0}, Lcom/estrongs/fs/util/c;->a([B[BI)I

    move-result v3

    iget-boolean v0, p0, Lcom/estrongs/fs/util/c;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    int-to-byte v0, v0

    :goto_4
    iget-boolean v4, p0, Lcom/estrongs/fs/util/c;->e:Z

    if-eqz v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_0
    iget-object v4, p0, Lcom/estrongs/fs/util/c;->k:[B

    add-int/lit8 v5, v3, 0x1

    aput-byte v0, v4, v3

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->k:[B

    invoke-virtual {p0, v0, v1, v5}, Lcom/estrongs/fs/util/c;->b([BII)[B

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->k:[B

    array-length v4, v0

    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/util/c;->k:[B

    array-length v5, v3

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2

    :cond_1
    array-length v0, v4

    goto :goto_1

    :cond_2
    array-length v2, v3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    move-object v3, v2

    goto :goto_2

    :cond_5
    move-object v4, v2

    goto/16 :goto_0
.end method

.method private b(Ljava/io/RandomAccessFile;)V
    .locals 4

    iget v0, p0, Lcom/estrongs/fs/util/c;->g:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->i:[B

    iget v0, p0, Lcom/estrongs/fs/util/c;->g:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->j:[B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/util/c;->d:J

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->i:[B

    iget v1, p0, Lcom/estrongs/fs/util/c;->g:I

    invoke-static {p1, v0, v1}, Lcom/estrongs/fs/util/c;->a(Ljava/io/RandomAccessFile;[BI)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/util/c;->a:I

    iget-wide v0, p0, Lcom/estrongs/fs/util/c;->d:J

    iget v2, p0, Lcom/estrongs/fs/util/c;->g:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->j:[B

    iget v1, p0, Lcom/estrongs/fs/util/c;->g:I

    invoke-static {p1, v0, v1}, Lcom/estrongs/fs/util/c;->a(Ljava/io/RandomAccessFile;[BI)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/util/c;->h:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/fs/util/c;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "RandomAccessFile error!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private b([B[B)[B
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/fs/util/c;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/c;->a([B[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/util/c;->n:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/util/EncryptException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->q:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/util/c;->i:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/estrongs/fs/util/c;->a:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->j:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/estrongs/fs/util/c;->h:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    new-instance v2, Lcom/estrongs/fs/util/EncryptException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private c([B)V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    const-string v0, "2.16.840.1.101.3.4.1.4/CFB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->n:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/estrongs/fs/util/c;->a([B)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->n:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "AES/CFB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->n:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-boolean v4, p0, Lcom/estrongs/fs/util/c;->f:Z

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method


# virtual methods
.method public a()Z
    .locals 15

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v0, 0x9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/estrongs/fs/util/c;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_0
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x32000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x41000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/fs/util/c;->e:Z

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->b:[B

    invoke-direct {p0, v0}, Lcom/estrongs/fs/util/c;->c([B)V

    iget-boolean v0, p0, Lcom/estrongs/fs/util/c;->e:Z

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v3, v7, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/util/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-wide/16 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v4, 0x0

    const/16 v0, 0x4000

    new-array v0, v0, [B

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/estrongs/fs/util/c;->d:J

    :cond_4
    :goto_1
    const/4 v2, 0x0

    array-length v8, v0

    invoke-virtual {v3, v0, v2, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_f

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    const/4 v0, 0x0

    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    :goto_3
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_9
    int-to-long v8, v2

    add-long/2addr v4, v8

    :try_start_5
    iget-object v8, p0, Lcom/estrongs/fs/util/c;->b:[B

    invoke-direct {p0, v0, v8}, Lcom/estrongs/fs/util/c;->b([B[B)[B

    move-result-object v8

    iput-object v8, p0, Lcom/estrongs/fs/util/c;->l:[B

    iget-object v8, p0, Lcom/estrongs/fs/util/c;->l:[B

    array-length v8, v8

    array-length v9, v0

    if-eq v8, v9, :cond_d

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v2, "Encrypt error!"

    invoke-direct {v0, v2}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_6
    iget-object v3, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_5
    if-eqz v1, :cond_b

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_c
    :goto_7
    throw v0

    :cond_d
    :try_start_9
    iget-wide v8, p0, Lcom/estrongs/fs/util/c;->d:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_e

    iget-object v2, p0, Lcom/estrongs/fs/util/c;->l:[B

    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v1, v2, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_8
    if-eqz v6, :cond_4

    const/16 v2, 0x9

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/estrongs/fs/util/c;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v2, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_e
    iget-object v8, p0, Lcom/estrongs/fs/util/c;->l:[B

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/estrongs/fs/util/c;->d:J

    int-to-long v12, v2

    sub-long v12, v4, v12

    sub-long/2addr v10, v12

    long-to-int v2, v10

    invoke-virtual {v1, v8, v9, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_8

    :cond_f
    iget-wide v8, p0, Lcom/estrongs/fs/util/c;->d:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid RandomAccessFile operation"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/estrongs/fs/util/c;->d:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_11

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v2, "Invalid RandomAccessFile operation"

    invoke-direct {v0, v2}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/util/c;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/fs/util/c;->k:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    sget-object v0, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_12

    const/4 v0, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v6, v0, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_12
    const/4 v0, 0x1

    if-eqz v1, :cond_13

    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_13
    :goto_9
    if-eqz v3, :cond_7

    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_14
    if-nez v1, :cond_15

    const/16 v0, 0x400

    iput v0, p0, Lcom/estrongs/fs/util/c;->g:I

    :goto_a
    :try_start_c
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, v7, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/estrongs/fs/util/c;->b(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/util/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_15
    const v0, 0x20800

    iput v0, p0, Lcom/estrongs/fs/util/c;->g:I

    goto :goto_a

    :catch_7
    move-exception v0

    throw v0

    :cond_16
    :try_start_d
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/estrongs/fs/util/c;->q:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/util/c;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_17

    const/16 v0, 0x9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/estrongs/fs/util/c;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/estrongs/fs/util/c;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/fs/util/c;->c:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_3

    :catch_8
    move-exception v0

    throw v0

    :catch_9
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid file access "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v7, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/estrongs/fs/util/c;->a(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_a
    move-exception v0

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_4

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/util/c;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
