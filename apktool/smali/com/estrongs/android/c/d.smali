.class Lcom/estrongs/android/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/estrongs/android/c/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/c/d;->a:Lcom/estrongs/android/c/c;

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

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v1, Lorg/apache/http/impl/auth/DigestScheme;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/DigestScheme;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/c/d;->a:Lcom/estrongs/android/c/c;

    invoke-static {v2}, Lcom/estrongs/android/c/c;->a(Lcom/estrongs/android/c/c;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "EEE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resp_auth_head is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/estrongs/android/c/d;->a:Lcom/estrongs/android/c/c;

    invoke-static {v5}, Lcom/estrongs/android/c/c;->a(Lcom/estrongs/android/c/c;)Lorg/apache/http/Header;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/estrongs/android/c/d;->a:Lcom/estrongs/android/c/c;

    invoke-static {v2}, Lcom/estrongs/android/c/c;->a(Lcom/estrongs/android/c/c;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    goto :goto_1

    :cond_2
    const-string v2, "EEE"

    const-string v3, "resp_auth_head is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/http/impl/auth/NTLMScheme;

    new-instance v2, Lcom/estrongs/android/c/e;

    iget-object v3, p0, Lcom/estrongs/android/c/d;->a:Lcom/estrongs/android/c/c;

    invoke-direct {v2, v3}, Lcom/estrongs/android/c/e;-><init>(Lcom/estrongs/android/c/c;)V

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/NTLMScheme;-><init>(Lorg/apache/http/impl/auth/NTLMEngine;)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method
