.class public Ljcifs/util/HMACT64;
.super Ljava/security/MessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40

.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct


# instance fields
.field private ipad:[B

.field private md5:Ljava/security/MessageDigest;

.field private opad:[B


# direct methods
.method private constructor <init>(Ljcifs/util/HMACT64;)V
    .locals 2

    const/16 v1, 0x40

    const-string v0, "HMACT64"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    new-array v0, v1, [B

    iput-object v0, p0, Ljcifs/util/HMACT64;->ipad:[B

    new-array v0, v1, [B

    iput-object v0, p0, Ljcifs/util/HMACT64;->opad:[B

    iget-object v0, p1, Ljcifs/util/HMACT64;->ipad:[B

    iput-object v0, p0, Ljcifs/util/HMACT64;->ipad:[B

    iget-object v0, p1, Ljcifs/util/HMACT64;->opad:[B

    iput-object v0, p0, Ljcifs/util/HMACT64;->opad:[B

    iget-object v0, p1, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    iput-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    const/16 v4, 0x40

    const-string v0, "HMACT64"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [B

    iput-object v0, p0, Ljcifs/util/HMACT64;->ipad:[B

    new-array v0, v4, [B

    iput-object v0, p0, Ljcifs/util/HMACT64;->opad:[B

    array-length v0, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ljcifs/util/HMACT64;->ipad:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Ljcifs/util/HMACT64;->opad:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v1, p0, Ljcifs/util/HMACT64;->ipad:[B

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    iget-object v1, p0, Ljcifs/util/HMACT64;->opad:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljcifs/util/HMACT64;->engineReset()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Ljcifs/util/HMACT64;

    invoke-direct {v0, p0}, Ljcifs/util/HMACT64;-><init>(Ljcifs/util/HMACT64;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineDigest([BII)I
    .locals 3

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Ljcifs/util/HMACT64;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    :try_start_0
    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected engineDigest()[B
    .locals 3

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Ljcifs/util/HMACT64;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .locals 2

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Ljcifs/util/HMACT64;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Ljcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
