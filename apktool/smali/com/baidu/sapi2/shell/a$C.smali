.class Lcom/baidu/sapi2/shell/a$C;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$C;->b:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$C;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$C;->b:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$C;->b:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/shell/a;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$C;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, v1, v2, p2}, Lcom/baidu/sapi2/shell/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$C;->b:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$C;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/sapi2/shell/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    return-void
.end method
