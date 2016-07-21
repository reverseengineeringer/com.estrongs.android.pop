.class public Ljcifs/http/NtlmSsp;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/ntlmssp/NtlmFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 7

    const/4 v0, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x0

    const-string v1, "Authorization"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    aget-byte v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Ljcifs/ntlmssp/Type1Message;

    invoke-direct {v2, v1}, Ljcifs/ntlmssp/Type1Message;-><init>([B)V

    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    invoke-direct {v1, v2, p2, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/ntlmssp/Type2Message;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WWW-Authenticate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NTLM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 v1, 0x191

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    :goto_1
    return-object v0

    :cond_1
    aget-byte v2, v1, v4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljcifs/ntlmssp/Type3Message;

    invoke-direct {v2, v1}, Ljcifs/ntlmssp/Type3Message;-><init>([B)V

    invoke-virtual {v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v4

    if-nez v4, :cond_2

    new-array v4, v6, [B

    :cond_2
    invoke-virtual {v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v5

    if-nez v5, :cond_3

    new-array v5, v6, [B

    :cond_3
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V

    goto :goto_1

    :cond_4
    const-string v1, "WWW-Authenticate"

    const-string v2, "NTLM"

    invoke-interface {p1, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public doAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 1

    invoke-static {p1, p2, p3}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    return-object v0
.end method
