.class Lcom/baidu/sapi2/shell/a$m;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

.field final synthetic b:Lcom/baidu/sapi2/shell/b;

.field final synthetic c:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/shell/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$m;->c:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$m;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$m;->b:Lcom/baidu/sapi2/shell/b;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$m;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$m;->c:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/shell/a;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$m;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$m;->b:Lcom/baidu/sapi2/shell/b;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$m;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$m;->c:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/shell/a;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$m;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$m;->b:Lcom/baidu/sapi2/shell/b;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V

    return-void
.end method
