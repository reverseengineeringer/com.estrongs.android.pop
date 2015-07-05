.class Lcom/baidu/sapi2/shell/a$l;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$l;->c:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$l;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$l;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$l;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$l;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$l;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$l;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$l;->a:Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$l;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
