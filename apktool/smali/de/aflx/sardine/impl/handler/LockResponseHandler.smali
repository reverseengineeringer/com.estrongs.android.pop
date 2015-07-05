.class public Lde/aflx/sardine/impl/handler/LockResponseHandler;
.super Lde/aflx/sardine/impl/handler/ValidatingResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/aflx/sardine/impl/handler/ValidatingResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lde/aflx/sardine/impl/handler/ValidatingResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getToken(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    const-string v0, "XXX"

    return-object v0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lde/aflx/sardine/impl/handler/LockResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4

    invoke-super {p0, p1}, Lde/aflx/sardine/impl/handler/ValidatingResponseHandler;->validateResponse(Lorg/apache/http/HttpResponse;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    new-instance v1, Lde/aflx/sardine/impl/SardineException;

    const-string v2, "No entity found in response"

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lde/aflx/sardine/impl/SardineException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/aflx/sardine/impl/handler/LockResponseHandler;->getToken(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
