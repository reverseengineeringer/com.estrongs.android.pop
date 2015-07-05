.class Lde/aflx/sardine/impl/SardineImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic this$0:Lde/aflx/sardine/impl/SardineImpl;


# direct methods
.method constructor <init>(Lde/aflx/sardine/impl/SardineImpl;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/impl/SardineImpl$1;->this$0:Lde/aflx/sardine/impl/SardineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7

    const-string v0, "http.auth.target-scope"

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthState;

    const-string v1, "http.auth.credentials-provider"

    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/CredentialsProvider;

    const-string v2, "http.target_host"

    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lde/aflx/sardine/impl/SardineImpl;->authTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    invoke-virtual {v0, v4}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    new-instance v2, Lorg/apache/http/impl/auth/DigestScheme;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/DigestScheme;-><init>()V

    sget-object v1, Lde/aflx/sardine/impl/SardineImpl;->digest_resp_header:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    if-eqz v1, :cond_2

    invoke-interface {v2, v1}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    const-string v1, "EEE"

    const-string v3, "resp_auth_head is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/http/impl/auth/NTLMScheme;

    new-instance v2, Lde/aflx/sardine/impl/SardineImpl$JCIFSEngine;

    iget-object v3, p0, Lde/aflx/sardine/impl/SardineImpl$1;->this$0:Lde/aflx/sardine/impl/SardineImpl;

    invoke-direct {v2, v3}, Lde/aflx/sardine/impl/SardineImpl$JCIFSEngine;-><init>(Lde/aflx/sardine/impl/SardineImpl;)V

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/NTLMScheme;-><init>(Lorg/apache/http/impl/auth/NTLMEngine;)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method
