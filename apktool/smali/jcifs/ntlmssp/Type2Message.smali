.class public Ljcifs/ntlmssp/Type2Message;
.super Ljcifs/ntlmssp/NtlmMessage;


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_TARGET_INFORMATION:[B


# instance fields
.field private challenge:[B

.field private context:[B

.field private target:Ljava/lang/String;

.field private targetInformation:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    new-array v0, v5, [B

    sget-object v3, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_0
    :goto_1
    array-length v7, v0

    new-array v3, v5, [B

    :try_start_1
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_2
    const-string v6, "UTF-16LE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :cond_1
    :goto_2
    array-length v8, v3

    if-lez v7, :cond_4

    add-int/lit8 v4, v7, 0x4

    move v6, v4

    :goto_3
    if-lez v8, :cond_5

    add-int/lit8 v4, v8, 0x4

    :goto_4
    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    if-lez v7, :cond_6

    invoke-static {v4, v5, v2}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    invoke-static {v4, v2, v7}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    const/4 v2, 0x4

    invoke-static {v0, v5, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v7, 0x4

    :goto_5
    if-lez v8, :cond_2

    invoke-static {v4, v0, v1}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v8}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v5, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    sput-object v4, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v6, v5

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags()I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setFlags(I)V

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultTargetInformation()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I

    move-result v0

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/ntlmssp/Type1Message;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type2Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    sget v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I
    .locals 3

    if-nez p0, :cond_1

    sget v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x200

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v2

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x10004

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static getDefaultTargetInformation()[B
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-object v0
.end method

.method private parse([B)V
    .locals 9

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v8, 0x28

    const/16 v2, 0x20

    const/16 v7, 0x8

    move v0, v4

    :goto_0
    if-ge v0, v7, :cond_1

    aget-byte v1, p1, v0

    sget-object v5, Ljcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v5, v5, v0

    if-eq v1, v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an NTLMSSP message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v7}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a Type 2 message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type2Message;->setFlags(I)V

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object v6

    array-length v1, v6

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_6

    const-string v0, "UTF-16LE"

    :goto_1
    invoke-direct {v1, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_4

    aget-byte v1, p1, v0

    if-eqz v1, :cond_7

    new-array v0, v7, [B

    invoke-static {p1, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    :cond_4
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v1

    if-eq v1, v2, :cond_5

    array-length v0, p1

    if-ne v0, v2, :cond_8

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_4
    if-ge v0, v8, :cond_9

    aget-byte v3, p1, v0

    if-eqz v3, :cond_a

    new-array v0, v7, [B

    invoke-static {p1, v2, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type2Message;->setContext([B)V

    :cond_9
    if-eq v1, v8, :cond_5

    array-length v0, p1

    if-eq v0, v8, :cond_5

    invoke-static {p1, v8}, Ljcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getChallenge()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    return-object v0
.end method

.method public getContext()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetInformation()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-object v0
.end method

.method public setChallenge([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    return-void
.end method

.method public setContext([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-void
.end method

.method public setTargetInformation([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-void
.end method

.method public toByteArray()[B
    .locals 11

    const/16 v3, 0x28

    const/16 v4, 0x20

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v5

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v8

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v6

    const/4 v0, 0x0

    new-array v0, v0, [B

    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_9

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_2

    const-string v0, "UTF-16LE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    move-object v7, v0

    move v0, v6

    :goto_1
    if-eqz v8, :cond_8

    const/high16 v6, 0x800000

    or-int/2addr v0, v6

    if-nez v5, :cond_8

    const/16 v5, 0x8

    new-array v5, v5, [B

    move-object v6, v5

    move v5, v0

    :goto_2
    if-eqz v6, :cond_7

    move v0, v3

    :goto_3
    if-eqz v8, :cond_6

    add-int/lit8 v0, v0, 0x8

    move v3, v0

    :goto_4
    array-length v0, v7

    add-int v4, v3, v0

    if-eqz v8, :cond_4

    array-length v0, v8

    :goto_5
    add-int/2addr v0, v4

    new-array v2, v0, [B

    sget-object v0, Ljcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static {v0, v4, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    const/4 v4, 0x2

    invoke-static {v2, v0, v4}, Ljcifs/ntlmssp/Type2Message;->writeULong([BII)V

    const/16 v0, 0xc

    invoke-static {v2, v0, v3, v7}, Ljcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V

    const/16 v0, 0x14

    invoke-static {v2, v0, v5}, Ljcifs/ntlmssp/Type2Message;->writeULong([BII)V

    if-eqz v1, :cond_5

    move-object v0, v1

    :goto_6
    const/4 v1, 0x0

    const/16 v4, 0x18

    const/16 v5, 0x8

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v4, 0x8

    invoke-static {v6, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-eqz v8, :cond_1

    const/16 v0, 0x28

    array-length v1, v7

    add-int/2addr v1, v3

    invoke-static {v2, v0, v1, v8}, Ljcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    and-int/lit8 v6, v6, -0x5

    move-object v7, v0

    move v0, v6

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    const/16 v0, 0x8

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move v3, v0

    goto :goto_4

    :cond_7
    move v0, v4

    goto :goto_3

    :cond_8
    move-object v6, v5

    move v5, v0

    goto :goto_2

    :cond_9
    move-object v7, v0

    move v0, v6

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type2Message[target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",challenge="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",targetInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

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

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
