.class Lcom/baidu/sapi2/shell/a$b;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/shell/a$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/shell/a$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 6

    const/16 v5, -0x64

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v2}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v2}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v1}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v2}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "upsmschannel"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bduss"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vcode"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v2}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    new-instance v2, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v1}, Lcom/baidu/sapi2/shell/a;->d(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v2}, Lcom/baidu/sapi2/shell/a;->c(Lcom/baidu/sapi2/shell/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v1}, Lcom/baidu/sapi2/shell/a;->d(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-static {v2}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v3}, Lcom/baidu/sapi2/shell/a;->K()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v4, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    new-instance v0, Lcom/baidu/sapi2/shell/a$b$a;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/shell/a$b$a;-><init>(Lcom/baidu/sapi2/shell/a$b;)V

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
