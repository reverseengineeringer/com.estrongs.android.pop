.class public abstract Lcom/dropbox/client2/session/AbstractSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dropbox/client2/session/Session;


# static fields
.field private static final API_SERVER:Ljava/lang/String; = "api.dropbox.com"

.field private static final CONTENT_SERVER:Ljava/lang/String; = "api-content.dropbox.com"

.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x7530

.field private static final KEEP_ALIVE_DURATION_SECS:I = 0x14

.field private static final KEEP_ALIVE_MONITOR_INTERVAL_SECS:I = 0x5

.field private static final WEB_SERVER:Ljava/lang/String; = "www.dropbox.com"


# instance fields
.field private final accessType:Lcom/dropbox/client2/session/Session$AccessType;

.field private final appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

.field private client:Lorg/apache/http/client/HttpClient;

.field private oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

.field private oauth2AccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 1

    sget-object v0, Lcom/dropbox/client2/session/Session$AccessType;->AUTO:Lcom/dropbox/client2/session/Session$AccessType;

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'appKeyPair\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    iput-object p2, p0, Lcom/dropbox/client2/session/AbstractSession;->accessType:Lcom/dropbox/client2/session/Session$AccessType;

    iput-object p3, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    iput-object p2, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    return-void
.end method

.method private static buildOAuth1Header(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OAuth oauth_version=\"1.0\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", oauth_signature_method=\"PLAINTEXT\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", oauth_consumer_key=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v0, ", oauth_token=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/dropbox/client2/session/AccessTokenPair;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/dropbox/client2/session/AccessTokenPair;->secret:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, ", oauth_signature=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "UTF-8 isn\'t available"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public getAPIServer()Ljava/lang/String;
    .locals 1

    const-string v0, "api.dropbox.com"

    return-object v0
.end method

.method public getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    return-object v0
.end method

.method public getAccessType()Lcom/dropbox/client2/session/Session$AccessType;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->accessType:Lcom/dropbox/client2/session/Session$AccessType;

    return-object v0
.end method

.method public getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    return-object v0
.end method

.method public getContentServer()Ljava/lang/String;
    .locals 1

    const-string v0, "api-content.dropbox.com"

    return-object v0
.end method

.method public declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    new-instance v1, Lcom/dropbox/client2/session/AbstractSession$1;

    invoke-direct {v1, p0}, Lcom/dropbox/client2/session/AbstractSession$1;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lcom/dropbox/client2/SecureSSLSocketFactory;

    invoke-direct {v1}, Lcom/dropbox/client2/SecureSSLSocketFactory;-><init>()V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OfficialDropboxJavaSDK/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/dropbox/client2/DropboxAPI;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v2, Lcom/dropbox/client2/session/AbstractSession$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/dropbox/client2/session/AbstractSession$2;-><init>(Lcom/dropbox/client2/session/AbstractSession;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$3;

    invoke-direct {v0, p0}, Lcom/dropbox/client2/session/AbstractSession$3;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$4;

    invoke-direct {v0, p0}, Lcom/dropbox/client2/session/AbstractSession$4;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    iput-object v2, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    :cond_0
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0
.end method

.method public getOAuth2AccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProxyInfo()Lcom/dropbox/client2/session/Session$ProxyInfo;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getWebServer()Ljava/lang/String;
    .locals 1

    const-string v0, "www.dropbox.com"

    return-object v0
.end method

.method public isLinked()Z
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'oauth1AccessToken\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    return-void
.end method

.method public setOAuth2AccessToken(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'oauth2AccessToken\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    return-void
.end method

.method public setRequestTimeout(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2

    const/16 v1, 0x7530

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public sign(Lorg/apache/http/HttpRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Authorization"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-static {v0, v1}, Lcom/dropbox/client2/session/AbstractSession;->buildOAuth1Header(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public unlink()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    return-void
.end method
