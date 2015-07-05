.class public interface abstract Lcom/dropbox/client2/session/Session;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAPIServer()Ljava/lang/String;
.end method

.method public abstract getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;
.end method

.method public abstract getAccessType()Lcom/dropbox/client2/session/Session$AccessType;
.end method

.method public abstract getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;
.end method

.method public abstract getContentServer()Ljava/lang/String;
.end method

.method public abstract getHttpClient()Lorg/apache/http/client/HttpClient;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getProxyInfo()Lcom/dropbox/client2/session/Session$ProxyInfo;
.end method

.method public abstract getWebServer()Ljava/lang/String;
.end method

.method public abstract isLinked()Z
.end method

.method public abstract setRequestTimeout(Lorg/apache/http/client/methods/HttpUriRequest;)V
.end method

.method public abstract sign(Lorg/apache/http/HttpRequest;)V
.end method

.method public abstract unlink()V
.end method
