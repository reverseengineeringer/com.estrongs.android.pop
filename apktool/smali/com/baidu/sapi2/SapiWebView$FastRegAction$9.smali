.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/shell/callback/SapiCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
        "<",
        "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkFailed()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .locals 2

    new-instance v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v1}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    iget-object v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    .locals 0

    check-cast p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method public onSystemError(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;)V

    return-void
.end method
