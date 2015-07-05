.class Lcom/baidu/sapi2/SapiCache$b$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiCache$a;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiCache$b$a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiCache$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/b$a$a;)V
    .locals 5

    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v2, v2, Lcom/baidu/sapi2/b$a$a;->c:Lcom/baidu/sapi2/b$a$a$a;

    iget-object v2, v2, Lcom/baidu/sapi2/b$a$a$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->c()Lcom/baidu/cloudsdk/common/http/RequestParams;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/SapiCache$b$a$a$a;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiCache$b$a$a$a;-><init>(Lcom/baidu/sapi2/SapiCache$b$a$a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    return-void
.end method

.method public a(Lcom/baidu/sapi2/b$a$a;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$b$a;->c:Lcom/baidu/sapi2/b;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/b;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/sapi2/b$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/sapi2/SapiCache;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
