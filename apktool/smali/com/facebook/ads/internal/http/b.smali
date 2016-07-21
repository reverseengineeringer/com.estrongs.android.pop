.class Lcom/facebook/ads/internal/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/facebook/ads/internal/http/c;

.field private e:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/facebook/ads/internal/http/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/http/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/facebook/ads/internal/http/b;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/facebook/ads/internal/http/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p4, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/http/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/facebook/ads/internal/http/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/http/c;->a(Lorg/apache/http/HttpResponse;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/http/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/http/b;->a()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    const-string v2, "can\'t resolve host"

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/internal/http/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    const-string v2, "can\'t resolve host"

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/internal/http/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    const-string v2, "socket time out"

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/internal/http/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    iget v1, p0, Lcom/facebook/ads/internal/http/b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/http/b;->e:I

    iget-object v3, p0, Lcom/facebook/ads/internal/http/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_0

    :catch_4
    move-exception v1

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NPE in HttpClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/ads/internal/http/b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/http/b;->e:I

    iget-object v3, p0, Lcom/facebook/ads/internal/http/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/net/ConnectException;

    invoke-direct {v1}, Ljava/net/ConnectException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/http/c;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/http/b;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/http/c;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/http/c;->d()V

    iget-object v2, p0, Lcom/facebook/ads/internal/http/b;->d:Lcom/facebook/ads/internal/http/c;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/internal/http/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
