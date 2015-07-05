.class final Lcom/baidu/sapi2/SapiCache$b;
.super Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->k()Lcom/baidu/sapi2/b;

    move-result-object v3

    invoke-static {p1}, Lcom/baidu/sapi2/b;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->i()Lcom/baidu/sapi2/b$a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/b;)V

    invoke-static {}, Lcom/baidu/sapi2/share/b;->c()V

    invoke-static {}, Lcom/baidu/sapi2/share/b;->d()V

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/baidu/sapi2/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/b$a$a;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->g()Ljava/util/List;

    move-result-object v5

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/b$a$a;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->i()Lcom/baidu/sapi2/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/b$a$a;

    iget-object v7, v1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    move-object v2, v1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/baidu/sapi2/b$a$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->c()Lcom/baidu/cloudsdk/common/http/RequestParams;

    move-result-object v8

    new-instance v9, Lcom/baidu/sapi2/SapiCache$b$a;

    invoke-direct {v9, p0, v0, v2, v4}, Lcom/baidu/sapi2/SapiCache$b$a;-><init>(Lcom/baidu/sapi2/SapiCache$b;Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/b;)V

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method
