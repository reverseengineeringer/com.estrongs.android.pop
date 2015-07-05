.class public Lcom/dropbox/client2/session/WebAuthSession;
.super Lcom/dropbox/client2/session/AbstractSession;


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    return-void
.end method

.method private setUpToken(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "locale"

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    move-object v2, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsQueryString(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "oauth_token"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oauth_token_secret"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v1, "Did not get tokens from Dropbox"

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Lcom/dropbox/client2/session/AccessTokenPair;

    const-string v0, "oauth_token"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lcom/dropbox/client2/session/AccessTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/dropbox/client2/session/WebAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    return-object v2
.end method


# virtual methods
.method public getAuthInfo()Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/session/WebAuthSession;->getAuthInfo(Ljava/lang/String;)Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthInfo(Ljava/lang/String;)Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "/oauth/request_token"

    invoke-direct {p0, v0}, Lcom/dropbox/client2/session/WebAuthSession;->setUpToken(Ljava/lang/String;)Ljava/util/Map;

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;

    move-result-object v0

    new-instance v1, Lcom/dropbox/client2/session/RequestTokenPair;

    iget-object v2, v0, Lcom/dropbox/client2/session/AccessTokenPair;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/dropbox/client2/session/AccessTokenPair;->secret:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/dropbox/client2/session/RequestTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "oauth_token"

    aput-object v2, v0, v3

    iget-object v2, v1, Lcom/dropbox/client2/session/RequestTokenPair;->key:Ljava/lang/String;

    aput-object v2, v0, v4

    const-string v2, "oauth_callback"

    aput-object v2, v0, v5

    aput-object p1, v0, v6

    const-string v2, "locale"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/oauth/authorize"

    invoke-static {v2, v4, v3, v0}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;-><init>(Ljava/lang/String;Lcom/dropbox/client2/session/RequestTokenPair;Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;)V

    return-object v2

    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "oauth_token"

    aput-object v2, v0, v3

    iget-object v2, v1, Lcom/dropbox/client2/session/RequestTokenPair;->key:Ljava/lang/String;

    aput-object v2, v0, v4

    const-string v2, "locale"

    aput-object v2, v0, v5

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    goto :goto_0
.end method

.method public retrieveWebAccessToken(Lcom/dropbox/client2/session/RequestTokenPair;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dropbox/client2/session/WebAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    const-string v0, "/oauth/access_token"

    invoke-direct {p0, v0}, Lcom/dropbox/client2/session/WebAuthSession;->setUpToken(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
