.class public Lcom/dianxinos/library/b/b/b/d;
.super Lcom/dianxinos/library/b/b/b/a;


# instance fields
.field private d:[C

.field private final e:Lcom/dianxinos/library/b/b/c/a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dianxinos/library/b/b/c/a;[C)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/b/a;-><init>()V

    iput-object p1, p0, Lcom/dianxinos/library/b/b/b/d;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/dianxinos/library/b/b/b/d;->d:[C

    iput-object p2, p0, Lcom/dianxinos/library/b/b/b/d;->e:Lcom/dianxinos/library/b/b/c/a;

    return-void
.end method

.method private a([B)Ljavax/crypto/SecretKey;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static a([C[B)Ljavax/crypto/SecretKey;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x25

    const/16 v3, 0x80

    invoke-direct {v0, p0, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string v2, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private c()Ljavax/crypto/SecretKey;
    .locals 2

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dianxinos/library/b/b/b/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "tb295d117135a9763da282e7dae73a5ca7d3e5b11"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/dianxinos/library/b/b/b/d;->e:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v0, v4}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/dianxinos/library/b/b/b/b;->a(I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/dianxinos/library/b/b/b/d;->e:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v3, v4, v0}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;[B)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/dianxinos/library/b/b/b/d;->d:[C

    invoke-static {v3, v0}, Lcom/dianxinos/library/b/b/b/d;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Lcom/dianxinos/library/b/b/b/d;->a(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Lcom/dianxinos/library/b/b/b/d;->a(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    if-eqz v3, :cond_3

    if-nez v4, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v3, v4}, Lcom/dianxinos/library/b/b/b/d;->a(Ljavax/crypto/SecretKey;Ljavax/crypto/Cipher;Ljavax/crypto/Cipher;)V

    iget-object v0, p0, Lcom/dianxinos/library/b/b/b/d;->d:[C

    invoke-static {v0}, Lcom/dianxinos/library/b/b/b/c;->a([C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/b/b/b/d;->d:[C

    move v0, v2

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lcom/dianxinos/library/b/b/b/e;
    .locals 6

    const/16 v4, 0x10

    const/4 v1, 0x0

    invoke-static {}, Lcom/dianxinos/library/b/c/i;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ta727348c8aa7823aa5f18dc02a066498bfd8b132"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/dianxinos/library/b/b/b/d;->e:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v0, v2}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/b/d;->c()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v4}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/dianxinos/library/b/b/b/d;->a([B[B)[B

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/dianxinos/library/b/b/b/d;->e:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v4, v2, v3}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;[B)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v2, v4}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/dianxinos/library/b/b/b/d;->b([B[B)[B

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/dianxinos/library/b/b/b/d;->a([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/dianxinos/library/b/b/b/e;

    invoke-direct {v2, v0}, Lcom/dianxinos/library/b/b/b/e;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v2}, Lcom/dianxinos/library/b/b/b/e;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dianxinos/library/b/b/b/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "t26a26ebfab9b4e5f9f39784402706fd6efdf7081"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/dianxinos/library/b/b/b/d;->e:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v2, v3}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_1

    move v2, v0

    :goto_0
    const/16 v5, 0x10

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/dianxinos/library/b/b/c/c;->a(I)[B

    move-result-object v2

    invoke-static {v3, v5}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/dianxinos/library/b/b/b/d;->a([B[B)[B

    move-result-object v2

    iget-object v4, p0, Lcom/dianxinos/library/b/b/b/d;->e:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v4, v3, v2}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;[B)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {v3, v5}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/dianxinos/library/b/b/b/d;->b([B[B)[B

    move-result-object v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lcom/dianxinos/library/b/b/c/c;->a([B)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_1
.end method
