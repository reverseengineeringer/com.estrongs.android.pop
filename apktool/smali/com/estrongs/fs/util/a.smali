.class public Lcom/estrongs/fs/util/a;
.super Lcom/estrongs/fs/util/f;


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/util/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:I

.field private i:I

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljavax/crypto/Cipher;

.field private r:Ljava/io/File;

.field private s:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/h;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/util/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->q:Ljavax/crypto/Cipher;

    iput-object p1, p0, Lcom/estrongs/fs/util/a;->c:Lcom/estrongs/fs/h;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->b:[B

    iput-boolean p3, p0, Lcom/estrongs/fs/util/a;->p:Z

    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/estrongs/fs/util/a;->g:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->j:[B

    iget v0, p0, Lcom/estrongs/fs/util/a;->g:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->k:[B

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->j:[B

    iget v1, p0, Lcom/estrongs/fs/util/a;->g:I

    invoke-static {p1, v0, v1}, Lcom/estrongs/fs/util/a;->a(Ljava/io/RandomAccessFile;[BI)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/util/a;->h:I

    iget-wide v0, p0, Lcom/estrongs/fs/util/a;->d:J

    iget v2, p0, Lcom/estrongs/fs/util/a;->g:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->k:[B

    iget v1, p0, Lcom/estrongs/fs/util/a;->g:I

    invoke-static {p1, v0, v1}, Lcom/estrongs/fs/util/a;->a(Ljava/io/RandomAccessFile;[BI)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/util/a;->i:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/util/EncryptException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/io/RandomAccessFile;Z)V
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->j:[B

    iget-object v1, p0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/util/a;->b([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->m:[B

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->m:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/estrongs/fs/util/a;->j:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Decrypt error!"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/util/EncryptException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/fs/util/a;->c()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/util/a;->m:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/fs/util/a;->h:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v0, p0, Lcom/estrongs/fs/util/a;->d:J

    iget v2, p0, Lcom/estrongs/fs/util/a;->g:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->k:[B

    iget-object v1, p0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/util/a;->b([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->m:[B

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->m:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/estrongs/fs/util/a;->k:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Decrypt error!"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/util/a;->m:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/fs/util/a;->i:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    if-nez p2, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/fs/util/a;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Invalid RandomAccessFile operation"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-wide v0, p0, Lcom/estrongs/fs/util/a;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private b(Ljava/io/RandomAccessFile;)V
    .locals 6

    const/4 v1, 0x4

    new-array v0, v1, [B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p1, v0, v1}, Lcom/estrongs/fs/util/a;->a(Ljava/io/RandomAccessFile;[BI)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/fs/util/a;->d:J

    iget-wide v2, p0, Lcom/estrongs/fs/util/a;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Invalid filelocker file"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/estrongs/fs/util/a;->l:[B

    iget-wide v2, p0, Lcom/estrongs/fs/util/a;->d:J

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/estrongs/fs/util/a;->l:[B

    invoke-static {p1, v1, v0}, Lcom/estrongs/fs/util/a;->a(Ljava/io/RandomAccessFile;[BI)I

    return-void
.end method

.method private b([B[B)[B
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/fs/util/a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/a;->a([B[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/util/a;->q:Ljavax/crypto/Cipher;

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

    iget-object v3, p0, Lcom/estrongs/fs/util/a;->s:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/util/a;->j:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/estrongs/fs/util/a;->h:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->k:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/estrongs/fs/util/a;->i:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->l:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/fs/util/a;->l:[B

    array-length v3, v3

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

.method private c(Ljava/io/RandomAccessFile;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->j:[B

    iget v1, p0, Lcom/estrongs/fs/util/a;->h:I

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v0, p0, Lcom/estrongs/fs/util/a;->d:J

    iget v2, p0, Lcom/estrongs/fs/util/a;->g:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->k:[B

    iget v1, p0, Lcom/estrongs/fs/util/a;->i:I

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->l:[B

    iget-object v1, p0, Lcom/estrongs/fs/util/a;->l:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private c([B)V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, p1, v2, v0}, Lcom/estrongs/fs/util/a;->b([BII)[B

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [B

    array-length v5, v4

    invoke-static {p1, v0, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/estrongs/fs/util/EncryptException;

    const-string v1, "Locked file is corrupted"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    aget-byte v3, p1, v0

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/fs/util/a;->f:Z

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/estrongs/fs/util/a;->e:Z

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-direct {p0, v0}, Lcom/estrongs/fs/util/a;->d([B)V

    aget-byte v0, p1, v2

    if-ltz v0, :cond_5

    new-array v3, v0, [B

    array-length v4, v3

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/estrongs/fs/util/a;->g:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v0, 0x1

    :goto_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v0, p1, v1

    if-gez v0, :cond_1

    if-eq v0, v6, :cond_1

    and-int/lit16 v0, v0, 0xff

    :cond_1
    if-ltz v0, :cond_6

    new-array v4, v0, [B

    array-length v5, v4

    invoke-static {p1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-direct {p0, v4, v3}, Lcom/estrongs/fs/util/a;->b([B[B)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/estrongs/fs/util/a;->o:Ljava/lang/String;

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_3
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->n:[B

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->n:[B

    iget-object v3, p0, Lcom/estrongs/fs/util/a;->n:[B

    array-length v3, v3

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iput v6, p0, Lcom/estrongs/fs/util/a;->g:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->o:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    goto :goto_3
.end method

.method private d([B)V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/fs/util/a;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "2.16.840.1.101.3.4.1.4/CFB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->q:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1}, Lcom/estrongs/fs/util/a;->a([B)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->q:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "AES/CFB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/a;->q:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    nop

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
    .locals 18

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/fs/util/a;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->c:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v8, v7, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/estrongs/fs/util/a;->b(Ljava/io/RandomAccessFile;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->l:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/estrongs/fs/util/a;->c([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->n:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-static {v3}, Lcom/estrongs/fs/util/a;->b([B)[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/estrongs/fs/util/EncryptException;

    const-string v3, "Password is incorrect"

    invoke-direct {v2, v3}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->o:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".eslock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/estrongs/fs/util/a;->e:Z

    if-eqz v2, :cond_13

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v8, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v4, 0x0

    const/16 v2, 0x4000

    new-array v2, v2, [B

    :cond_3
    :goto_0
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v8, v2, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_d

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/estrongs/fs/util/a;->d:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_d

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v2, 0x0

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    if-eqz v8, :cond_6

    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_2
    return v2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_7
    int-to-long v10, v9

    add-long/2addr v4, v10

    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/fs/util/a;->b:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/estrongs/fs/util/a;->b([B[B)[B

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/estrongs/fs/util/a;->m:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/fs/util/a;->m:[B

    array-length v10, v10

    array-length v11, v2

    if-eq v10, v11, :cond_b

    new-instance v2, Lcom/estrongs/fs/util/EncryptException;

    const-string v4, "Encrypt error!"

    invoke-direct {v2, v4}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    move-exception v2

    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_8
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v3, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_9
    :goto_5
    if-eqz v8, :cond_a

    :try_start_7
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_a
    :goto_6
    throw v2

    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/estrongs/fs/util/a;->d:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/fs/util/a;->m:[B

    const/4 v10, 0x0

    array-length v11, v2

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_7
    if-eqz v6, :cond_3

    const/16 v9, 0x9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/fs/util/a;->d:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/fs/util/a;->m:[B

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/fs/util/a;->d:J

    int-to-long v14, v9

    sub-long v14, v4, v14

    sub-long/2addr v12, v14

    long-to-int v9, v12

    invoke-virtual {v3, v10, v11, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/estrongs/fs/util/a;->p:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->o:Ljava/lang/String;

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    move v4, v2

    :goto_8
    sget-object v5, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/estrongs/fs/util/b;

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v4, :cond_12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11, v4, v2}, Lcom/estrongs/fs/util/b;-><init>(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v6, :cond_f

    const/4 v2, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/util/a;->c:Lcom/estrongs/fs/h;

    invoke-interface {v7}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v6, v2, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_f
    const/4 v2, 0x1

    if-eqz v3, :cond_10

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_10
    :goto_a
    if-eqz v8, :cond_6

    :try_start_a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_11
    const/4 v2, 0x0

    move v4, v2

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    goto :goto_9

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_13
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/estrongs/fs/util/a;->a(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto/16 :goto_2

    :catch_7
    move-exception v2

    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    const-string v4, "ftruncate failed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "Invalid argument"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :try_start_d
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    mul-long v10, v2, v4

    cmp-long v8, v8, v10

    if-lez v8, :cond_1a

    if-eqz v6, :cond_1a

    const/16 v8, 0xc

    new-instance v9, Lcom/estrongs/a/q;

    const-string v10, "Error"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Long;

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-direct {v9, v10, v11}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v9}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_14
    :try_start_e
    new-instance v2, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".deraw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/estrongs/fs/util/a;->s:Ljava/io/File;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/estrongs/fs/util/a;->a(Ljava/io/RandomAccessFile;Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/estrongs/fs/util/a;->p:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->o:Ljava/lang/String;

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move v3, v2

    :goto_b
    sget-object v4, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/estrongs/fs/util/b;

    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v3, :cond_18

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9, v3, v2}, Lcom/estrongs/fs/util/b;-><init>(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    if-eqz v6, :cond_16

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/fs/util/a;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/fs/util/a;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/util/a;->c:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_2

    :catch_9
    move-exception v2

    :try_start_10
    throw v2

    :cond_17
    const/4 v2, 0x0

    move v3, v2

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    :catch_a
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_19

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid file access "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v7, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/estrongs/fs/util/a;->c(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v8, v7, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_11
    new-instance v3, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_13
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const-wide/16 v4, 0x0

    :try_start_12
    invoke-virtual {v8, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v4, 0x0

    const/16 v2, 0x4000

    new-array v2, v2, [B

    :cond_1b
    :goto_d
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v8, v2, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_23

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/estrongs/fs/util/a;->d:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_23

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v10

    if-eqz v10, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_1c
    const/4 v2, 0x0

    if-eqz v3, :cond_1d

    :try_start_13
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :cond_1d
    :goto_e
    if-eqz v8, :cond_6

    :try_start_14
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto/16 :goto_2

    :catch_c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :cond_1e
    int-to-long v10, v9

    add-long/2addr v4, v10

    :try_start_15
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/estrongs/fs/util/a;->d:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_22

    const/4 v10, 0x0

    array-length v11, v2

    invoke-virtual {v3, v2, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_f
    if-eqz v6, :cond_1b

    const/16 v10, 0x9

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/estrongs/fs/util/a;->d:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    int-to-long v14, v9

    const-wide/16 v16, 0x0

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v12

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/fs/util/a;->c:Lcom/estrongs/fs/h;

    invoke-interface {v12}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v6, v10, v11}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_d

    :catch_e
    move-exception v2

    :goto_10
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1f
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :catchall_1
    move-exception v2

    :goto_11
    if-eqz v3, :cond_20

    :try_start_17
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    :cond_20
    :goto_12
    if-eqz v8, :cond_21

    :try_start_18
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    :cond_21
    :goto_13
    throw v2

    :cond_22
    const/4 v10, 0x0

    :try_start_19
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/fs/util/a;->d:J

    int-to-long v14, v9

    sub-long v14, v4, v14

    sub-long/2addr v12, v14

    long-to-int v11, v12

    invoke-virtual {v3, v2, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_f

    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/estrongs/fs/util/a;->a(Ljava/io/RandomAccessFile;Z)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/estrongs/fs/util/a;->p:Z

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->o:Ljava/lang/String;

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    move v4, v2

    :goto_14
    sget-object v5, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/estrongs/fs/util/b;

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/util/a;->b:[B

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v4, :cond_27

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_15
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10, v4, v2}, Lcom/estrongs/fs/util/b;-><init>(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_24
    const/4 v2, 0x1

    if-eqz v3, :cond_25

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10

    :cond_25
    :goto_16
    if-eqz v8, :cond_6

    :try_start_1b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f

    goto/16 :goto_2

    :catch_f
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_26
    const/4 v2, 0x0

    move v4, v2

    goto :goto_14

    :cond_27
    const/4 v2, 0x0

    goto :goto_15

    :catch_10
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :catch_11
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :catch_12
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_28
    throw v2

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto/16 :goto_11

    :catch_13
    move-exception v2

    move-object v3, v4

    goto/16 :goto_10

    :catchall_3
    move-exception v2

    move-object v3, v4

    goto/16 :goto_4

    :catch_14
    move-exception v2

    move-object v3, v4

    goto/16 :goto_3
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/util/a;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
