.class Lcom/baidu/sapi2/shell/a$w;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$w;->b:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$w;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$w;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$w;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    const/16 v1, -0x64

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    :cond_0
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$w;->b:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v0, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x1adb0

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$w;->b:Lcom/baidu/sapi2/shell/a;

    invoke-static {v1}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/c;->b(I)V

    new-instance v0, Lcom/baidu/sapi2/shell/response/SapiResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$w;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$w;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$w;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$w;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    const/16 v1, -0x64

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0
.end method
