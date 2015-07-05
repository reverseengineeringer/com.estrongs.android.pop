.class Lcom/baidu/sapi2/utils/a$a$a;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/utils/a$a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/utils/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/utils/a$a$a;->a:Lcom/baidu/sapi2/utils/a$a;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSuccess(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/utils/a$a$a;->a:Lcom/baidu/sapi2/utils/a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/utils/a$a;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/utils/a$a$a;->a:Lcom/baidu/sapi2/utils/a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/utils/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/c;->e(Ljava/lang/String;)V

    return-void
.end method
