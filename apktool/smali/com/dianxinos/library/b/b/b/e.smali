.class public Lcom/dianxinos/library/b/b/b/e;
.super Lcom/dianxinos/library/b/b/b/a;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/b/a;-><init>()V

    iput-object p1, p0, Lcom/dianxinos/library/b/b/b/e;->a:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Lcom/dianxinos/library/b/b/b/e;->a(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Lcom/dianxinos/library/b/b/b/e;->a(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/dianxinos/library/b/b/b/e;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {p0, v2, v0, v1}, Lcom/dianxinos/library/b/b/b/e;->a(Ljavax/crypto/SecretKey;Ljavax/crypto/Cipher;Ljavax/crypto/Cipher;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
