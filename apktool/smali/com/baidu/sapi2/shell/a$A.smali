.class Lcom/baidu/sapi2/shell/a$A;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$A;->a:Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$A;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/shell/a$A;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$A;->a:Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->b()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$A;->a:Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$A;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a$A;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$A;->d:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$A;->a:Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;)V

    return-void
.end method
