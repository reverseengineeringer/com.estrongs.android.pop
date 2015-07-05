.class public abstract Ljcifs/http/NtlmServlet;
.super Ljavax/servlet/http/HttpServlet;


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 3

    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->init(Ljavax/servlet/ServletConfig;)V

    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "300000"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "600"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "jcifs."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    const-string v0, "jcifs.http.domainController"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const-string v0, "jcifs.http.loadBalance"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    :cond_2
    const-string v0, "jcifs.http.enableBasic"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    const-string v0, "jcifs.http.insecureBasic"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    const-string v0, "jcifs.http.basicRealm"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "jCIFS"

    iput-object v0, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9

    const/16 v8, 0x191

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Authorization"

    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v3, "NTLM "

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_c

    const-string v3, "Basic "

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_1
    iget-boolean v3, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    if-eqz v3, :cond_3

    new-instance v1, Ljcifs/UniAddress;

    iget-object v3, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const/16 v5, 0x1c

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v3

    invoke-direct {v1, v3}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    :goto_1
    const-string v3, "NTLM "

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v2

    invoke-static {p1, p2, v2}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    invoke-static {v3, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v7, :cond_7

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eq v5, v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v7, :cond_f

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v6, v5

    :goto_5
    if-eq v6, v7, :cond_9

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_6
    if-eq v6, v7, :cond_a

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    new-instance v4, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v4, v5, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    :cond_5
    :try_start_0
    invoke-static {v1, v2}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    const-string v1, "NtlmHttpAuth"

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ntlmdomain"

    invoke-virtual {v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ntlmuser"

    invoke-virtual {v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    :cond_7
    move-object v4, v3

    goto :goto_3

    :cond_8
    const-string v3, ""

    goto :goto_4

    :cond_9
    iget-object v2, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    move-object v5, v2

    goto :goto_6

    :cond_a
    move-object v2, v4

    goto :goto_7

    :catch_0
    move-exception v1

    const-string v1, "WWW-Authenticate"

    const-string v2, "NTLM"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_b

    const-string v0, "WWW-Authenticate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto/16 :goto_2

    :cond_c
    invoke-interface {p1, v2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "NtlmHttpAuth"

    invoke-interface {v1, v2}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_d
    const-string v1, "WWW-Authenticate"

    const-string v2, "NTLM"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_e

    const-string v0, "WWW-Authenticate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-interface {p2, v8}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto/16 :goto_2

    :cond_f
    move v6, v5

    goto/16 :goto_5
.end method
