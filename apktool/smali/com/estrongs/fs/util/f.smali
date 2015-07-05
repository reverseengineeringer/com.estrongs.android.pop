.class public Lcom/estrongs/fs/util/f;
.super Ljava/lang/Object;


# instance fields
.field protected b:[B

.field protected c:Lcom/estrongs/fs/h;

.field protected d:J

.field protected e:Z

.field protected f:Z

.field protected g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/fs/util/f;->g:I

    return-void
.end method

.method protected static a(Ljava/io/RandomAccessFile;[BI)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    if-eq v0, p2, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid RandomAccessFile operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of file reached"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return p2
.end method

.method protected static a([B)[B
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/estrongs/fs/util/f;->b([B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)[B
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/util/EncryptException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/util/EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static a([B[B)[B
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    new-array v3, v0, [B

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty security key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    aget-byte v4, p0, v0

    aget-byte v5, p1, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    array-length v4, p1

    if-lt v2, v4, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static b([B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/estrongs/fs/util/f;->a([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b([BII)[B
    .locals 3

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
