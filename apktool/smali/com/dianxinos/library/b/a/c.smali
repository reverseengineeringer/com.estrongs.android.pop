.class Lcom/dianxinos/library/b/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/InputStream;)I
    .locals 4

    invoke-static {p0}, Lcom/dianxinos/library/b/c/d;->b(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x61744951

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static a(Ljava/io/InputStream;JJ)V
    .locals 7

    invoke-static {p0}, Lcom/dianxinos/library/b/a/c;->a(Ljava/io/InputStream;)I

    invoke-static {p0}, Lcom/dianxinos/library/b/c/d;->b(Ljava/io/InputStream;)I

    move-result v0

    long-to-int v1, p1

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad crc: real="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/dianxinos/library/b/c/d;->b(Ljava/io/InputStream;)I

    move-result v0

    const-wide/16 v2, 0x10

    add-long/2addr v2, p3

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad fileSize: real="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "SSED"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/dianxinos/library/b/c/d;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad magic: SSED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public static a(Ljava/io/OutputStream;JJ)V
    .locals 1

    const v0, 0x61744951

    invoke-static {p0, v0}, Lcom/dianxinos/library/b/c/d;->a(Ljava/io/OutputStream;I)V

    long-to-int v0, p1

    invoke-static {p0, v0}, Lcom/dianxinos/library/b/c/d;->a(Ljava/io/OutputStream;I)V

    long-to-int v0, p3

    add-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0}, Lcom/dianxinos/library/b/c/d;->a(Ljava/io/OutputStream;I)V

    const-string v0, "SSED"

    invoke-static {p0, v0}, Lcom/dianxinos/library/b/c/d;->a(Ljava/io/OutputStream;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static a([B)[B
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x10

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-array v0, v5, [B

    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-byte v4, v3, v2

    aput-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;)Lcom/dianxinos/library/b/a/d;
    .locals 5

    const-string v0, "SSBG"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/dianxinos/library/b/c/d;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/dianxinos/library/b/a/c;->a(Ljava/io/InputStream;)I

    const-string v1, "SSBG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/dianxinos/library/b/c/d;->c(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p0}, Lcom/dianxinos/library/b/a/c;->a(Ljava/io/InputStream;)I

    invoke-static {p0}, Lcom/dianxinos/library/b/c/d;->c(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/dianxinos/library/b/a/c;->a(Ljava/io/InputStream;)I

    invoke-static {p0}, Lcom/dianxinos/library/b/c/d;->a(Ljava/io/InputStream;)Z

    move-result v3

    invoke-static {p0}, Lcom/dianxinos/library/b/a/c;->a(Ljava/io/InputStream;)I

    new-instance v4, Lcom/dianxinos/library/b/a/d;

    invoke-direct {v4}, Lcom/dianxinos/library/b/a/d;-><init>()V

    iput-object v0, v4, Lcom/dianxinos/library/b/a/d;->a:Ljava/lang/String;

    iput-object v1, v4, Lcom/dianxinos/library/b/a/d;->b:[B

    iput-object v2, v4, Lcom/dianxinos/library/b/a/d;->c:[B

    iput-boolean v3, v4, Lcom/dianxinos/library/b/a/d;->d:Z

    sget-boolean v0, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "read header done"

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method
