.class Lcom/dianxinos/library/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/io/InputStream;

.field b:Lcom/dianxinos/library/b/a/e;

.field c:Lcom/dianxinos/library/b/a/g;

.field d:Ljavax/crypto/CipherInputStream;

.field e:Ljava/util/zip/GZIPInputStream;

.field f:Ljava/io/InputStream;

.field g:Ljava/io/InputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->b:Lcom/dianxinos/library/b/a/e;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->c:Lcom/dianxinos/library/b/a/g;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->d:Ljavax/crypto/CipherInputStream;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->e:Ljava/util/zip/GZIPInputStream;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->f:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->g:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;JLjava/io/OutputStream;Ljava/security/Key;)Z
    .locals 8

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v0, 0x2

    invoke-virtual {v5, v0, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "AES/CFB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const/high16 v0, 0x10000

    new-array v7, v0, [B

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/dianxinos/library/b/a/a;->a(Ljava/io/InputStream;JLjava/io/OutputStream;Ljavax/crypto/Cipher;Ljavax/crypto/Cipher;[B)Z

    move-result v0

    goto :goto_1
.end method

.method public a(Ljava/io/InputStream;JLjava/io/OutputStream;Ljavax/crypto/Cipher;Ljavax/crypto/Cipher;[B)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/dianxinos/library/b/a/a;->a:Ljava/io/InputStream;

    new-instance v0, Lcom/dianxinos/library/b/a/e;

    iget-object v1, p0, Lcom/dianxinos/library/b/a/a;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/dianxinos/library/b/a/e;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->b:Lcom/dianxinos/library/b/a/e;

    iget-object v0, p0, Lcom/dianxinos/library/b/a/a;->b:Lcom/dianxinos/library/b/a/e;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->f:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/dianxinos/library/b/a/a;->f:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/c;->b(Ljava/io/InputStream;)Lcom/dianxinos/library/b/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/b/a/a;->f:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/dianxinos/library/b/c/d;->b(Ljava/io/InputStream;)I

    move-result v1

    iget-object v2, v0, Lcom/dianxinos/library/b/a/d;->c:[B

    invoke-virtual {p5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v2}, Lcom/dianxinos/library/b/a/c;->a([B)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {p6, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    add-int/lit8 v1, v1, 0x10

    int-to-long v2, v1

    sub-long v2, p2, v2

    new-instance v1, Lcom/dianxinos/library/b/a/g;

    iget-object v4, p0, Lcom/dianxinos/library/b/a/a;->b:Lcom/dianxinos/library/b/a/e;

    invoke-direct {v1, v4, v2, v3}, Lcom/dianxinos/library/b/a/g;-><init>(Ljava/io/InputStream;J)V

    iput-object v1, p0, Lcom/dianxinos/library/b/a/a;->c:Lcom/dianxinos/library/b/a/g;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    iget-object v2, p0, Lcom/dianxinos/library/b/a/a;->c:Lcom/dianxinos/library/b/a/g;

    invoke-direct {v1, v2, p6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v1, p0, Lcom/dianxinos/library/b/a/a;->d:Ljavax/crypto/CipherInputStream;

    iget-boolean v0, v0, Lcom/dianxinos/library/b/a/d;->d:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/dianxinos/library/b/a/a;->d:Ljavax/crypto/CipherInputStream;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->e:Ljava/util/zip/GZIPInputStream;

    iget-object v0, p0, Lcom/dianxinos/library/b/a/a;->e:Ljava/util/zip/GZIPInputStream;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->g:Ljava/io/InputStream;

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/a/a;->g:Ljava/io/InputStream;

    invoke-virtual {v0, p7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p4, p7, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-gtz v0, :cond_1

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/a;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/a;->b:Lcom/dianxinos/library/b/a/e;

    iget-object v1, p0, Lcom/dianxinos/library/b/a/a;->b:Lcom/dianxinos/library/b/a/e;

    invoke-virtual {v1}, Lcom/dianxinos/library/b/a/e;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/dianxinos/library/b/a/a;->b:Lcom/dianxinos/library/b/a/e;

    invoke-virtual {v1}, Lcom/dianxinos/library/b/a/e;->b()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/dianxinos/library/b/a/c;->a(Ljava/io/InputStream;JJ)V

    sget-boolean v0, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "Decode sucess. data integraty is verified."

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/dianxinos/library/b/a/a;->d:Ljavax/crypto/CipherInputStream;

    iput-object v0, p0, Lcom/dianxinos/library/b/a/a;->g:Ljava/io/InputStream;

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/dianxinos/library/b/a/a;->g:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
