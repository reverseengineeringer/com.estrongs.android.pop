.class public Lcom/dropbox/client2/RESTUtility;
.super Ljava/lang/Object;


# static fields
.field private static final dateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy kk:mm:ss ZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/dropbox/client2/RESTUtility;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2F"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/dropbox/client2/RESTUtility;->urlencode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":443"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .locals 6

    invoke-static {p0}, Lcom/dropbox/client2/RESTUtility;->updatedHttpClient(Lcom/dropbox/client2/session/Session;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {p0, p1}, Lcom/dropbox/client2/session/Session;->setRequestTimeout(Lorg/apache/http/client/methods/HttpUriRequest;)V

    if-ltz p2, :cond_0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_0
    invoke-static {p1}, Lcom/dropbox/client2/RESTUtility;->isRequestRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    const/4 v4, 0x5

    if-lt v1, v4, :cond_2

    :cond_1
    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Lcom/dropbox/client2/exception/DropboxIOException;

    const-string v1, "Apache HTTPClient encountered an error. No response, try again."

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dropbox/client2/exception/DropboxSSLException;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/exception/DropboxSSLException;-><init>(Ljavax/net/ssl/SSLException;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-interface {v2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    :try_start_2
    invoke-static {v2, p0}, Lcom/dropbox/client2/RESTUtility;->updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V

    if-nez v3, :cond_3

    new-instance v0, Lcom/dropbox/client2/exception/DropboxProxyChangeException;

    invoke-direct {v0}, Lcom/dropbox/client2/exception/DropboxProxyChangeException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    const/16 v2, 0xce

    if-eq v1, v2, :cond_5

    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private static isRequestRepeatable(Lorg/apache/http/HttpRequest;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v0, 0x4000

    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x4000

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->mark(I)V

    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x191

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/dropbox/client2/exception/DropboxUnlinkedException;

    invoke-direct {v0}, Lcom/dropbox/client2/exception/DropboxUnlinkedException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    new-instance v2, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v2, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_1
    move-exception v0

    :goto_5
    :try_start_5
    invoke-static {p0}, Lcom/dropbox/client2/exception/DropboxServerException;->isValidWithNullBody(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/dropbox/client2/exception/DropboxServerException;

    invoke-direct {v0, p0}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    invoke-direct {v0, v2}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/io/BufferedReader;)V

    throw v0

    :catch_2
    move-exception v0

    :goto_6
    new-instance v1, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    new-instance v0, Lcom/dropbox/client2/exception/DropboxServerException;

    invoke-direct {v0, p0, v2}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_1

    :cond_4
    return-object v2

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public static parseAsQueryString(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v1, "Bad response from Dropbox."

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v1, "Bad query string from Dropbox."

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/dropbox/client2/RESTUtility;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/dropbox/client2/RESTUtility;->streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;
    .locals 6

    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    if-ne p0, v0, :cond_0

    invoke-static {p1, p3, p2, p4}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p5, v0}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    invoke-static {p5, v0}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    new-instance v2, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    array-length v0, p4

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    array-length v0, p4

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must have an even number of elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, p4

    if-lt v0, v3, :cond_3

    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p4, v3

    if-eqz v3, :cond_4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v4, p4, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p4, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V
    .locals 3

    invoke-interface {p1}, Lcom/dropbox/client2/session/Session;->getProxyInfo()Lcom/dropbox/client2/session/Session$ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->port:I

    if-gez v0, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    iget v1, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->port:I

    invoke-direct {v0, v2, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private static declared-synchronized updatedHttpClient(Lcom/dropbox/client2/session/Session;)Lorg/apache/http/client/HttpClient;
    .locals 2

    const-class v1, Lcom/dropbox/client2/RESTUtility;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Lcom/dropbox/client2/session/Session;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/dropbox/client2/RESTUtility;->updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static urlencode([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must have an even number of elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, ""

    const/4 v0, 0x1

    move v2, v3

    :goto_0
    :try_start_0
    array-length v4, p0

    if-lt v2, v4, :cond_1

    :goto_1
    return-object v1

    :cond_1
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p0, v2

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method
