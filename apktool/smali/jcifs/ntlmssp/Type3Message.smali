.class public Ljcifs/ntlmssp/Type3Message;
.super Ljcifs/ntlmssp/NtlmMessage;


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_PASSWORD:Ljava/lang/String;

.field private static final DEFAULT_USER:Ljava/lang/String;

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private domain:Ljava/lang/String;

.field private lmResponse:[B

.field private masterKey:[B

.field private ntResponse:[B

.field private sessionKey:[B

.field private user:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sput-object v2, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v2

    sget v3, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    packed-switch v3, :pswitch_data_0

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x8

    new-array v3, v3, [B

    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v4, 0x18

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v0

    or-int/2addr v0, p6

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    if-nez p5, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p5

    :cond_0
    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    sget v0, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_0

    :cond_2
    new-array v0, v4, [B

    sget-object v1, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v6, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv1(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v4

    invoke-static {v1, v4, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLM2Response([B[B[B)[B

    move-result-object v4

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v3, :cond_1

    new-array v4, v3, [B

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v5

    invoke-static {v5, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2, v4, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0}, Ljcifs/util/MD4;-><init>()V

    invoke-virtual {v0, v1}, Ljcifs/util/MD4;->update([B)V

    invoke-virtual {v0}, Ljcifs/util/MD4;->digest()[B

    move-result-object v0

    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {v1, v4}, Ljcifs/util/HMACT64;->update([B)V

    invoke-virtual {v1}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_3

    new-array v0, v3, [B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    iget-object v4, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v4, v3, [B

    new-instance v0, Ljcifs/util/RC4;

    invoke-direct {v0, v1}, Ljcifs/util/RC4;-><init>([B)V

    iget-object v1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/util/RC4;->update([BII[BI)V

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_0

    :cond_3
    iput-object v1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p3, p4, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-array v1, v6, [B

    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, p3, p4, p2, v1}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    new-array v1, v6, [B

    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v0, v1}, Ljcifs/ntlmssp/Type3Message;->getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v3, :cond_1

    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    invoke-virtual {v1, v0, v2, v3}, Ljcifs/util/HMACT64;->update([BII)V

    invoke-virtual {v1}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_4

    new-array v0, v3, [B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    iget-object v4, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v4, v3, [B

    new-instance v0, Ljcifs/util/RC4;

    invoke-direct {v0, v1}, Ljcifs/util/RC4;-><init>([B)V

    iget-object v1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/util/RC4;->update([BII[BI)V

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_0

    :cond_4
    iput-object v1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type3Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I
    .locals 2

    if-nez p0, :cond_0

    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x200

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static getDefaultPassword()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultUser()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method public static getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    invoke-static {p1, p2, p3, v0, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B
    .locals 7

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long v4, v0, v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMv2Response([B[B[BJ[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private parse([B)V
    .locals 13

    const/16 v3, 0x8

    const/16 v11, 0x34

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-byte v1, p1, v0

    sget-object v2, Ljcifs/ntlmssp/Type3Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an NTLMSSP message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a Type 3 message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0xc

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v3

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v4

    const/16 v0, 0x18

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v2

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v5

    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v6

    const/16 v0, 0x24

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v7

    const/16 v0, 0x28

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v8

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v9

    const/16 v0, 0x30

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v10

    const/4 v0, 0x0

    if-eq v1, v11, :cond_3

    if-eq v2, v11, :cond_3

    if-eq v6, v11, :cond_3

    if-eq v8, v11, :cond_3

    if-ne v10, v11, :cond_4

    :cond_3
    const/16 v2, 0x202

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {p1, v11}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v1

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v2

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_5

    const-string v0, "UTF-16LE"

    :goto_2
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_1

    :cond_5
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLMResponse()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-object v0
.end method

.method public getMasterKey()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    return-object v0
.end method

.method public getNTResponse()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-object v0
.end method

.method public getSessionKey()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-void
.end method

.method public setLMResponse([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-void
.end method

.method public setNTResponse([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-void
.end method

.method public setSessionKey([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-void
.end method

.method public setWorkstation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-void
.end method

.method public toByteArray()[B
    .locals 21

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v13

    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v6, v4

    :goto_0
    if-eqz v6, :cond_1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v6, :cond_2

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_2
    move-object v12, v4

    :goto_3
    if-eqz v12, :cond_3

    array-length v4, v12

    move v11, v4

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v6, :cond_4

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_5
    move-object v10, v4

    :goto_6
    if-eqz v10, :cond_5

    array-length v4, v10

    move v9, v4

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v6, :cond_6

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_8
    move-object v8, v4

    :goto_9
    if-eqz v8, :cond_7

    array-length v4, v8

    move v7, v4

    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v14

    if-eqz v14, :cond_8

    array-length v4, v14

    move v6, v4

    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v15

    if-eqz v15, :cond_9

    array-length v4, v15

    move v5, v4

    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v16

    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    array-length v4, v0

    :goto_d
    add-int/lit8 v17, v11, 0x40

    add-int v17, v17, v9

    add-int v17, v17, v7

    add-int v17, v17, v6

    add-int v17, v17, v5

    add-int v4, v4, v17

    new-array v4, v4, [B

    sget-object v17, Ljcifs/ntlmssp/Type3Message;->NTLMSSP_SIGNATURE:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v17, 0x8

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Ljcifs/ntlmssp/Type3Message;->writeULong([BII)V

    const/16 v17, 0x40

    const/16 v18, 0xc

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1, v14}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int v6, v6, v17

    const/16 v14, 0x14

    invoke-static {v4, v14, v6, v15}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v5, v6

    const/16 v6, 0x1c

    invoke-static {v4, v6, v5, v12}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v5, v11

    const/16 v6, 0x24

    invoke-static {v4, v6, v5, v10}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v5, v9

    const/16 v6, 0x2c

    invoke-static {v4, v6, v5, v8}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v5, v7

    const/16 v6, 0x34

    move-object/from16 v0, v16

    invoke-static {v4, v6, v5, v0}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    const/16 v5, 0x3c

    invoke-static {v4, v5, v13}, Ljcifs/ntlmssp/Type3Message;->writeULong([BII)V

    return-object v4

    :cond_0
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_5

    :cond_5
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_8

    :cond_7
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_a

    :cond_8
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_b

    :cond_9
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_c

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_d

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    move-object v8, v4

    goto/16 :goto_9

    :cond_c
    move-object v10, v4

    goto/16 :goto_6

    :cond_d
    move-object v12, v4

    goto/16 :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v3

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v4

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type3Message[domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",user="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",workstation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lmResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ntResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v5, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

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

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v4

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

    array-length v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
