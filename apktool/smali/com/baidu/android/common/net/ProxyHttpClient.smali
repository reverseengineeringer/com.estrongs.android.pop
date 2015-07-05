.class public Lcom/baidu/android/common/net/ProxyHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# static fields
.field private static final DEBUG:Z = false

.field private static final HTTP_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLeakedException:Ljava/lang/RuntimeException;

.field private mPort:Ljava/lang/String;

.field private mProxy:Ljava/lang/String;

.field private mUseWap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/android/common/net/ProxyHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/common/net/ProxyHttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/common/net/ConnectManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V
    .locals 4

    const/16 v3, 0x7530

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProxyHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-nez p3, :cond_0

    new-instance p3, Lcom/baidu/android/common/net/ConnectManager;

    invoke-direct {p3, p1}, Lcom/baidu/android/common/net/ConnectManager;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->isWapNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mUseWap:Z

    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->getProxy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->getProxyPort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mPort:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mPort:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    return-object v0
.end method

.method public executeSafely(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/android/common/net/ProxyHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected finalize()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/android/common/net/ProxyHttpClient;->TAG:Ljava/lang/String;

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/common/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public isWap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mUseWap:Z

    return v0
.end method
