.class Lcom/baidu/sapi2/shell/a$n;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

.field final synthetic b:Lcom/baidu/sapi2/shell/b;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/shell/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$n;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$n;->b:Lcom/baidu/sapi2/shell/b;

    iput-object p4, p0, Lcom/baidu/sapi2/shell/a$n;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/shell/a$n;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/shell/a$n;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, ""

    :try_start_0
    const-string v2, "failure_info"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    invoke-static {v1}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    invoke-static {v1}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    const/16 v2, -0x64

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$n;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a$n;->b:Lcom/baidu/sapi2/shell/b;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$n;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$n;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$n;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a$n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cert"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "cert_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$n;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$n;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$n;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a$n;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/shell/a$n;->b:Lcom/baidu/sapi2/shell/b;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$n;->f:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v2, p2}, Lcom/baidu/sapi2/shell/a;->b(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$n;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a$n;->b:Lcom/baidu/sapi2/shell/b;

    invoke-static {v1, v2, v3, p2, v4}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
