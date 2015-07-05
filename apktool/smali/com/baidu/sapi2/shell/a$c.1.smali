.class Lcom/baidu/sapi2/shell/a$c;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$c;->c:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->b()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onFinish()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->c:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v0, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;-><init>()V

    iput v1, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->errorCode:I

    const-string v3, "errmsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->errorMsg:Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http://himg.bdimg.com/sys/portrait/item/%s.jpg"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->portrait:Ljava/lang/String;

    :cond_0
    const-string v3, "username"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->username:Ljava/lang/String;

    const-string v3, "userid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->uid:Ljava/lang/String;

    const-string v3, "displayname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->displayname:Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "incomplete_user"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->incompleteUser:Z

    const-string v3, "securemobil"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->secureMobile:Ljava/lang/String;

    const-string v3, "secureemail"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->secureEmail:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSystemError(I)V

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$c;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onBdussInvalid()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x61a95 -> :sswitch_1
    .end sparse-switch
.end method
