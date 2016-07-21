.class public final Lcom/dianxinos/dxservice/stat/u;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:Ljava/lang/Double;

.field private static c:Ljava/lang/String;

.field private static d:[B

.field private static final e:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/dianxinos/dxservice/stat/u;->a:J

    sput-object v2, Lcom/dianxinos/dxservice/stat/u;->b:Ljava/lang/Double;

    sput-object v2, Lcom/dianxinos/dxservice/stat/u;->e:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/stat/u;->d:[B

    if-nez v0, :cond_0

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/stat/u;->d:[B

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/dianxinos/dxservice/stat/u;->d:[B

    invoke-static {v1}, Ldianxinos/dxstat/org/apache/commons/codec/a/a;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/dianxinos/dxservice/stat/u;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "stat.EventConfig"

    const-string v1, "Failed to generate the aes key."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dianxinos/dxservice/stat/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiiByw0W40uhK+khvIEneisE1pPtvId6ewOeFm4ohO0UVmcnB6RCJz7/J+xk4jlEfqJyfXm5BcRyxdERcbK4uzmDOwSgd4XaV2X+A4iN2EgJ5PdY6kZuWzJ0L2/gyFgbIs+0FWUOc449VoLojPcH/CNmwZultVSU2oBx0+GS7e8QIDAQAB"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 10

    const-wide v0, 0x3fb999999999999aL    # 0.1

    sget-object v2, Lcom/dianxinos/dxservice/stat/u;->b:Ljava/lang/Double;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/dianxinos/dxservice/stat/u;->b:Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v6, 0xa00000

    mul-long v8, v2, v4

    long-to-double v8, v8

    mul-double/2addr v0, v8

    double-to-long v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/dianxinos/dxservice/stat/u;->a:J

    sget-wide v0, Lcom/dianxinos/dxservice/stat/u;->a:J

    const-wide/32 v6, 0x100000

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/dianxinos/dxservice/stat/u;->a:J

    sget-wide v0, Lcom/dianxinos/dxservice/stat/u;->a:J

    mul-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/dianxinos/dxservice/stat/u;->a:J

    :cond_1
    sget-wide v0, Lcom/dianxinos/dxservice/stat/u;->a:J

    return-wide v0
.end method

.method public static b()[B
    .locals 1

    sget-object v0, Lcom/dianxinos/dxservice/stat/u;->d:[B

    return-object v0
.end method
