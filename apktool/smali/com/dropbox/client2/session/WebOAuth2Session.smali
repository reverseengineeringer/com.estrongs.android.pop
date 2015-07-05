.class public Lcom/dropbox/client2/session/WebOAuth2Session;
.super Lcom/dropbox/client2/session/AbstractSession;


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthorizeURL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAuthorizeURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const-string v1, "code"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "client_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v2

    iget-object v2, v2, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "redirect_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    const/4 v1, 0x6

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p2, v0, v1

    const-string v1, "/oauth2/authorize"

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getWebServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v1, v0}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveWebAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'code\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "grant_type"

    aput-object v2, v0, v1

    const-string v1, "authorization_code"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "code"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, "client_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v2

    iget-object v2, v2, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "client_secret"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v2

    iget-object v2, v2, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "redirect_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p2, v0, v1

    const-string v1, "/oauth2/token"

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAPIServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v1, v0}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "access_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/session/WebOAuth2Session;->setOAuth2AccessToken(Ljava/lang/String;)V

    return-object v0
.end method
