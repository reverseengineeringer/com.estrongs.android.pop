.class Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic this$0:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$2;->this$0:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
