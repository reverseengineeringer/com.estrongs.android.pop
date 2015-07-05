.class Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v3}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    const-string v4, "passuid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    const-string v4, "username"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    const-string v4, "displayname"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    const-string v4, "bduss"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    const-string v4, "ptoken"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    const-string v4, "stoken"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->o(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->o(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
