.class public final Lcom/dianxinos/library/b/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Ljavax/crypto/Cipher;

.field c:Ljava/io/OutputStream;

.field d:Lcom/dianxinos/library/b/a/f;

.field e:Ljavax/crypto/CipherOutputStream;

.field f:Ljava/util/zip/GZIPOutputStream;

.field g:Ljava/io/OutputStream;

.field h:Ljava/io/OutputStream;

.field i:Ljava/io/OutputStream;

.field j:Ljava/io/DataOutputStream;

.field k:J

.field l:Lcom/dianxinos/library/b/a/h;


# direct methods
.method static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;JLjava/io/OutputStream;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v1, 0x0

    invoke-static {p4, v1}, Lcom/dianxinos/library/b/c/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    :try_start_1
    new-instance v0, Lcom/dianxinos/library/b/a/a;

    invoke-direct {v0}, Lcom/dianxinos/library/b/a/a;-><init>()V

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dianxinos/library/b/a/a;->a(Ljava/io/InputStream;JLjava/io/OutputStream;Ljava/security/Key;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lcom/dianxinos/library/b/a/b;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->j:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->j:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->g:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->f:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->e:Ljavax/crypto/CipherOutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->d:Lcom/dianxinos/library/b/a/f;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/a/f;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dianxinos/library/b/a/b;->k:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/library/b/a/b;->l:Lcom/dianxinos/library/b/a/h;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/library/b/a/b;->l:Lcom/dianxinos/library/b/a/h;

    invoke-interface {v2, v0, v1}, Lcom/dianxinos/library/b/a/h;->a(J)V

    goto :goto_0
.end method

.method public b()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/a/b;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/library/b/a/b;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/library/b/a/b;->a:Z

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->j:Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->g:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->f:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->e:Ljavax/crypto/CipherOutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->d:Lcom/dianxinos/library/b/a/f;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/a/f;->c()J

    move-result-wide v0

    sget-boolean v2, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encrypted Length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/dianxinos/library/b/a/b;->d:Lcom/dianxinos/library/b/a/f;

    invoke-virtual {v1}, Lcom/dianxinos/library/b/a/f;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/dianxinos/library/b/a/b;->d:Lcom/dianxinos/library/b/a/f;

    invoke-virtual {v1}, Lcom/dianxinos/library/b/a/f;->c()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/dianxinos/library/b/a/c;->a(Ljava/io/OutputStream;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->d:Lcom/dianxinos/library/b/a/f;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/a/f;->a()V

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->b:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->d:Lcom/dianxinos/library/b/a/f;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/a/b;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/dianxinos/library/b/a/b;->a(Ljava/io/Closeable;)V

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->c:Ljava/io/OutputStream;

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->d:Lcom/dianxinos/library/b/a/f;

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->e:Ljavax/crypto/CipherOutputStream;

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->f:Ljava/util/zip/GZIPOutputStream;

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->h:Ljava/io/OutputStream;

    iput-object v6, p0, Lcom/dianxinos/library/b/a/b;->i:Ljava/io/OutputStream;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/dianxinos/library/b/a/b;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
