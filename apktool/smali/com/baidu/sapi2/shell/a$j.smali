.class Lcom/baidu/sapi2/shell/a$j;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/sapi2/shell/b;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ZLcom/baidu/sapi2/shell/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$j;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-boolean p3, p0, Lcom/baidu/sapi2/shell/a$j;->b:Z

    iput-object p4, p0, Lcom/baidu/sapi2/shell/a$j;->c:Lcom/baidu/sapi2/shell/b;

    iput-object p5, p0, Lcom/baidu/sapi2/shell/a$j;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/shell/a$j;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$j;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-boolean v4, p0, Lcom/baidu/sapi2/shell/a$j;->b:Z

    iget-object v5, p0, Lcom/baidu/sapi2/shell/a$j;->c:Lcom/baidu/sapi2/shell/b;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/shell/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/shell/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->b()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$j;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$j;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/baidu/sapi2/shell/a$j;->b:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$j;->f:Lcom/baidu/sapi2/shell/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$j;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-boolean v4, p0, Lcom/baidu/sapi2/shell/a$j;->b:Z

    iget-object v5, p0, Lcom/baidu/sapi2/shell/a$j;->c:Lcom/baidu/sapi2/shell/b;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/shell/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/shell/b;)V

    return-void
.end method
