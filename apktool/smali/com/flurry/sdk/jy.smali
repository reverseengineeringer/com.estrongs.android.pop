.class public Lcom/flurry/sdk/jy;
.super Ljava/security/MessageDigest;


# instance fields
.field private a:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CRC"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jy;->a:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/jy;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/jy;->engineDigest()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method protected engineDigest()[B
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/jy;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v0

    const/16 v3, 0x18

    shr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    const/4 v3, 0x1

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v0

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v0

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    shr-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    return-object v2
.end method

.method protected engineReset()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/jy;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/jy;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/jy;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
