.class public Lcom/estrongs/android/util/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljavax/crypto/Cipher;

.field private c:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "estrongs"

    sput-object v0, Lcom/estrongs/android/util/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/util/j;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/util/j;->b:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/estrongs/android/util/j;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/util/j;->d([B)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/util/j;->b:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/estrongs/android/util/j;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/util/j;->c:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/estrongs/android/util/j;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x10

    array-length v2, p0

    new-instance v3, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v2, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-byte v0, p0, v1

    :goto_1
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_0
    if-ge v0, v5, :cond_1

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v0, v5}, Ljava/lang/String;-><init>([BII)V

    div-int/lit8 v5, v0, 0x2

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private d([B)Ljava/security/Key;
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/j;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/j;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b([B)[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/j;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/util/j;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/util/j;->c([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public c([B)[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/j;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
