.class public Lcom/estrongs/fs/impl/h/b;
.super Lcom/estrongs/fs/l;


# static fields
.field private static c:Lorg/apache/http/params/HttpParams;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/h/b;->c:Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcom/estrongs/fs/impl/h/b;->c:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/estrongs/fs/impl/h/b;->c:Lorg/apache/http/params/HttpParams;

    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/l;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/fs/impl/h/b;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/impl/h/b;->b:I

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0}, Lcom/estrongs/fs/impl/h/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "Range"

    const-string v3, "bytes=0-1"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/fs/impl/h/b;->c:Lorg/apache/http/params/HttpParams;

    invoke-static {v2}, Lcom/estrongs/android/util/ac;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v3, 0xce

    if-eq v2, v3, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/impl/h/b;->b(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    .locals 14

    const/4 v4, 0x0

    const/16 v12, 0xce

    const/16 v9, 0xc8

    const-wide/16 v10, 0x0

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/estrongs/fs/impl/h/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)"

    invoke-virtual {v5, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_b

    :try_start_0
    const-string v2, "end_offset"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "end_offset"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    cmp-long v3, p2, v10

    if-gtz v3, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const-string v3, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/estrongs/fs/impl/h/b;->c:Lorg/apache/http/params/HttpParams;

    invoke-static {v2}, Lcom/estrongs/android/util/ac;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/estrongs/android/util/TypedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v3, Lorg/apache/http/impl/client/AbstractHttpClient;

    if-nez v2, :cond_4

    :cond_3
    invoke-interface {v3, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0x191

    if-ne v7, v8, :cond_6

    cmp-long v2, p2, v10

    if-lez v2, :cond_5

    const-string v2, "Range"

    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpGet;->removeHeaders(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v2, v9, :cond_5

    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    const-string v3, "UnsupportResume"

    invoke-direct {v2, v3}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    new-instance v3, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    :try_start_1
    new-instance v6, Lcom/estrongs/android/c/c;

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    move-object v2, v0

    const-string v7, "NEW_USERNAME"

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NEW_PASSWORD"

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v2, v7, v8}, Lcom/estrongs/android/c/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/estrongs/android/c/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    const-string v3, "File is unauthorized"

    invoke-direct {v2, v3}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    if-eq v7, v9, :cond_7

    if-eq v7, v12, :cond_7

    :try_start_2
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    new-instance v3, Lcom/estrongs/fs/FileSystemException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v3

    const-string v4, "HttpFileSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when HttpGet.abort()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    cmp-long v2, p2, v10

    if-lez v2, :cond_8

    if-eqz p4, :cond_8

    if-ne v7, v12, :cond_9

    const-string v2, "RBT"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_8
    :goto_3
    if-eqz v6, :cond_a

    new-instance v2, Lcom/estrongs/fs/impl/h/c;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/estrongs/fs/impl/h/c;-><init>(Lcom/estrongs/fs/impl/h/b;Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpGet;)V

    :goto_4
    return-object v2

    :cond_9
    const-string v2, "RBT"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_a
    move-object v2, v4

    goto :goto_4

    :cond_b
    move-object v2, v4

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Lcom/estrongs/fs/h;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/estrongs/fs/impl/h/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v3, "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/fs/impl/h/b;->c:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lcom/estrongs/android/util/ac;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/estrongs/android/util/TypedMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0x194

    if-ne v0, v3, :cond_2

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "File is not found"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    instance-of v3, v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    if-eqz v3, :cond_7

    new-instance v3, Lcom/estrongs/android/c/c;

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    const-string v1, "NEW_USERNAME"

    invoke-virtual {p2, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "NEW_PASSWORD"

    invoke-virtual {p2, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/estrongs/android/c/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/c/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v3}, Lcom/estrongs/android/c/c;->a()Lorg/apache/http/protocol/HttpContext;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/16 v3, 0x193

    if-ne v0, v3, :cond_3

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "File is forbidden"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/16 v3, 0x191

    if-ne v0, v3, :cond_4

    :try_start_2
    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "File is unauthorized"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "http.request"

    invoke-interface {v1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_1
    new-instance v0, Lcom/estrongs/fs/impl/h/a;

    invoke-direct {v0, p1, v2}, Lcom/estrongs/fs/impl/h/a;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http.target_host"

    invoke-interface {v1, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
