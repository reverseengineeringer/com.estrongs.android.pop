.class Lcom/baidu/sapi2/shell/a$h;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

.field final synthetic c:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$h;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$h;->b:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$h;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->b()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$h;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$h;->b:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$h;->c:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$h;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method
