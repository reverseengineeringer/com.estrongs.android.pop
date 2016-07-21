.class Ljcifs/http/NtlmHttpServletRequest;
.super Ljavax/servlet/http/HttpServletRequestWrapper;


# instance fields
.field principal:Ljava/security/Principal;


# direct methods
.method constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    iput-object p2, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 1

    const-string v0, "NTLM"

    return-object v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    return-object v0
.end method
