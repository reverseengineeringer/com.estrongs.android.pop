.class public Lcom/estrongs/android/c/c;
.super Ljava/lang/Object;


# static fields
.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lde/aflx/sardine/util/Logger;


# instance fields
.field protected a:Z

.field c:Lorg/apache/http/HttpRequestInterceptor;

.field private e:Lorg/apache/http/Header;

.field private f:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private g:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lde/aflx/sardine/util/Logger;

    invoke-direct {v0}, Lde/aflx/sardine/util/Logger;-><init>()V

    sput-object v0, Lcom/estrongs/android/c/c;->d:Lde/aflx/sardine/util/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/c/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/estrongs/android/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/ProxySelector;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/ProxySelector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/c/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/c/c;->e:Lorg/apache/http/Header;

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/c/c;->g:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lcom/estrongs/android/c/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/c/d;-><init>(Lcom/estrongs/android/c/c;)V

    iput-object v0, p0, Lcom/estrongs/android/c/c;->c:Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {p0, p3}, Lcom/estrongs/android/c/c;->a(Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/AbstractHttpClient;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/estrongs/android/c/c;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/c/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/c/c;->e:Lorg/apache/http/Header;

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/c/c;->g:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lcom/estrongs/android/c/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/c/d;-><init>(Lcom/estrongs/android/c/c;)V

    iput-object v0, p0, Lcom/estrongs/android/c/c;->c:Lorg/apache/http/HttpRequestInterceptor;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/c/c;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/c/c;)Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/c/c;->e:Lorg/apache/http/Header;

    return-object v0
.end method

.method private a(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/c/c;->f:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v0, p0, Lcom/estrongs/android/c/c;->f:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/estrongs/android/c/c;->c:Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/c/c;->d:Lde/aflx/sardine/util/Logger;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Lde/aflx/sardine/util/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 7

    const/4 v2, 0x2

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/c/c;->f:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/estrongs/android/c/c;->g:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v4, 0x191

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/c/c;->g:Lorg/apache/http/protocol/HttpContext;

    const-string v4, "http.target_host"

    invoke-interface {v0, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/estrongs/android/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v5, "WWW-Authenticate"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_1

    const-string v6, "basic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-ne v0, v1, :cond_2

    const-string v6, "digest"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-ne v0, v2, :cond_4

    const-string v6, "ntlm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File is unauthorized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    throw v0

    :cond_4
    if-nez v0, :cond_6

    :try_start_1
    const-string v0, "EEE"

    const-string v5, "basic auth failed, try get digest auth header"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WWW-Authenticate"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v5, v0

    if-lez v5, :cond_6

    const/4 v5, 0x0

    aget-object v5, v0, v5

    iput-object v5, p0, Lcom/estrongs/android/c/c;->e:Lorg/apache/http/Header;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    :try_start_2
    aget-object v5, v0, v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NTLM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ntlm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move v0, v2

    :goto_0
    :try_start_3
    sget-object v1, Lcom/estrongs/android/c/c;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpPut;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v0, :cond_6

    :try_start_4
    const-string v0, "EEE"

    const-string v1, "execute request again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/c/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    move-object v0, v3

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method protected a(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {p0}, Lcom/estrongs/android/c/c;->b()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected a(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method protected a(Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/AbstractHttpClient;
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/c/c;->c()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/c/c;->a(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/c/c;->b()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/c/c;->a(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    return-object v3
.end method

.method public a()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/c/c;->g:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/estrongs/android/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/c/c;->f:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    const-string v4, "NTLM"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/auth/NTCredentials;

    invoke-direct {v2, p1, p2, p4, p3}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    iget-object v0, p0, Lcom/estrongs/android/c/c;->f:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    const-string v4, "Basic"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    iget-object v0, p0, Lcom/estrongs/android/c/c;->f:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    const-string v4, "Digest"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_0
    return-void
.end method

.method protected b()Lorg/apache/http/params/HttpParams;
    .locals 4

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    invoke-static {}, Lde/aflx/sardine/Version;->getSpecification()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UNAVAILABLE"

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sardine/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "ISO-8859-1"

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    return-object v1
.end method

.method protected c()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-virtual {p0}, Lcom/estrongs/android/c/c;->d()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v2, Lcom/estrongs/android/c/f;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/c/f;-><init>(Lcom/estrongs/android/c/c;Ljava/security/KeyStore;)V

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected d()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .locals 1

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v0

    return-object v0
.end method
