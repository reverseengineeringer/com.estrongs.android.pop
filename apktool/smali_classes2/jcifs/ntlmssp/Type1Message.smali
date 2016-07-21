.class public Ljcifs/ntlmssp/Type1Message;
.super Ljcifs/ntlmssp/NtlmMessage;


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;


# instance fields
.field private suppliedDomain:Ljava/lang/String;

.field private suppliedWorkstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sput-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type1Message;->setFlags(I)V

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type1Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    sget v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method private parse([B)V
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-byte v2, p1, v1

    sget-object v3, Ljcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an NTLMSSP message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v4}, Ljcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a Type 1 message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0xc

    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v2

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object v3

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_3

    const/16 v0, 0x18

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type1Message;->setFlags(I)V

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getSuppliedDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppliedWorkstation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public setSuppliedDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-void
.end method

.method public setSuppliedWorkstation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-void
.end method

.method public toByteArray()[B
    .locals 10

    const/16 v0, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v5

    const/4 v1, 0x0

    new-array v1, v1, [B

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit16 v3, v5, 0x1000

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v4, v1

    move v5, v3

    move v3, v2

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit16 v3, v5, 0x2000

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_0

    array-length v0, v4

    add-int/lit8 v0, v0, 0x20

    array-length v5, v1

    add-int/2addr v0, v5

    :cond_0
    new-array v0, v0, [B

    sget-object v5, Ljcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Ljcifs/ntlmssp/Type1Message;->writeULong([BII)V

    const/16 v5, 0xc

    invoke-static {v0, v5, v3}, Ljcifs/ntlmssp/Type1Message;->writeULong([BII)V

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v4}, Ljcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V

    const/16 v2, 0x18

    array-length v3, v4

    add-int/lit8 v3, v3, 0x20

    invoke-static {v0, v2, v3, v1}, Ljcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :cond_2
    and-int/lit16 v4, v5, -0x1001

    move v5, v4

    move-object v4, v1

    goto :goto_0

    :cond_3
    and-int/lit16 v2, v5, -0x2001

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type1Message[suppliedDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",suppliedWorkstation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
