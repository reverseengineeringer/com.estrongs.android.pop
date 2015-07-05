.class public Lcom/dropbox/client2/exception/DropboxServerException;
.super Lcom/dropbox/client2/exception/DropboxException;


# static fields
.field public static final _200_OK:I = 0xc8

.field public static final _206_PARTIAL_CONTENT:I = 0xce

.field public static final _302_FOUND:I = 0x12e

.field public static final _304_NOT_MODIFIED:I = 0x130

.field public static final _400_BAD_REQUEST:I = 0x190

.field public static final _401_UNAUTHORIZED:I = 0x191

.field public static final _403_FORBIDDEN:I = 0x193

.field public static final _404_NOT_FOUND:I = 0x194

.field public static final _405_METHOD_NOT_ALLOWED:I = 0x195

.field public static final _406_NOT_ACCEPTABLE:I = 0x196

.field public static final _409_CONFLICT:I = 0x199

.field public static final _411_LENGTH_REQUIRED:I = 0x19b

.field public static final _415_UNSUPPORTED_MEDIA:I = 0x19f

.field public static final _500_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final _501_NOT_IMPLEMENTED:I = 0x1f5

.field public static final _502_BAD_GATEWAY:I = 0x1f6

.field public static final _503_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final _507_INSUFFICIENT_STORAGE:I = 0x1fb

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

.field public error:I

.field public location:Ljava/lang/String;

.field public parsedResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public reason:Ljava/lang/String;

.field public server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 2

    invoke-direct {p0}, Lcom/dropbox/client2/exception/DropboxException;-><init>()V

    invoke-virtual {p0}, Lcom/dropbox/client2/exception/DropboxServerException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->reason:Ljava/lang/String;

    const-string v0, "server"

    invoke-static {p1, v0}, Lcom/dropbox/client2/exception/DropboxServerException;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->server:Ljava/lang/String;

    const-string v0, "location"

    invoke-static {p1, v0}, Lcom/dropbox/client2/exception/DropboxServerException;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->location:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;)V

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/dropbox/client2/exception/DropboxServerException;->parsedResponse:Ljava/util/Map;

    new-instance v0, Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->parsedResponse:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxServerException$Error;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    :cond_0
    return-void
.end method

.method private static getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isValidWithNullBody(Lorg/apache/http/HttpResponse;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_1

    const-string v2, "location"

    invoke-static {p0, v2}, Lcom/dropbox/client2/exception/DropboxServerException;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dropbox.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v3, 0x130

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isDuplicateAccount()Z
    .locals 2

    iget v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v0, v0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->error:Ljava/lang/String;

    const-string v1, "taken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DropboxServerException ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v1, v1, Lcom/dropbox/client2/exception/DropboxServerException$Error;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
