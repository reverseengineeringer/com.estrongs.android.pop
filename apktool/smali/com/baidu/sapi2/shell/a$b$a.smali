.class Lcom/baidu/sapi2/shell/a$b$a;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/a$b;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->e:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v0, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v1, v1, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v1, v1, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v1}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    iput v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v2, "stoken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$b$a;->a:Lcom/baidu/sapi2/shell/a$b;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/a$b;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onPhoneUnavailable()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
